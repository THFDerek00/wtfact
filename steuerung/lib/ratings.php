<?php
// Daumen hoch/runter je Fakt aus der Datenbank der Seiten-API (public/api/index.php, Tabelle ratings).
// Nur lesend. Gleicher Ort wie dort: MySQL laut httpdocs/api/config.local.php, sonst wtfact-data/community.sqlite.
// Klappt das nicht (z. B. anderer Ordner oder fehlende Rechte auf dem Server), kommen die Zahlen über ?r=counts der Seiten-API.

declare(strict_types=1);

/** Warum die Bewertungen nicht direkt aus der Datenbank kamen (für den Hinweis im Dashboard). */
$GLOBALS['community_why'] = null;

function community_db(): ?PDO
{
    try {
        $local = site_dir() . '/api/config.local.php';
        $c = is_file($local) ? (array) require $local : [];
        if (!empty($c['dsn'])) {
            $db = new PDO($c['dsn'], $c['user'] ?? null, $c['password'] ?? null);
        } else {
            $file = null;
            $tried = array_values(array_filter([cfg('community_db'), webspace() . '/wtfact-data/community.sqlite', site_dir() . '/api/data/community.sqlite']));
            foreach ($tried as $f) {
                if (@is_file($f)) { $file = $f; break; }
            }
            if (!$file) {
                $GLOBALS['community_why'] = 'Datei nicht gefunden (' . implode(', ', $tried) . ')';
                return null;
            }
            // Nicht schreibgeschützt öffnen: Die API nutzt WAL, und das braucht auch beim Lesen Zugriff auf -shm.
            // Das Dashboard liest hier trotzdem nur.
            $db = new PDO('sqlite:' . $file);
            $db->exec('PRAGMA busy_timeout = 5000');
        }
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $db;
    } catch (Throwable $e) {
        $GLOBALS['community_why'] = $e->getMessage();
        error_log('wtfact steuerung: Bewertungen nicht lesbar: ' . $e->getMessage());
        return null;
    }
}

/**
 * Bewertungen je Fakt und Zahlen für die Übersicht, gleiche Zählung wie ?r=counts in public/api/index.php.
 * Erst direkt aus der Datenbank; geht das nicht (anderer Ordner, Rechte), über die API der Seite.
 * ['ratings' => [key => ['like' => n, 'meh' => n]], 'stats' => [...], 'via' => 'db'|'api'] oder null.
 */
function community_counts(): ?array
{
    static $done = false, $out = null;
    if ($done) return $out;
    $done = true;
    $db = community_db();
    if ($db) {
        try {
            return $out = count_community($db) + ['via' => 'db'];
        } catch (Throwable $e) {
            $GLOBALS['community_why'] = $e->getMessage();
        }
    }
    $site = rtrim((string) cfg('site', 'https://wtfact.xyz'), '/');
    $h = curl_init($site . '/api/index.php?r=counts');
    curl_setopt_array($h, [CURLOPT_RETURNTRANSFER => true, CURLOPT_TIMEOUT => 15, CURLOPT_CONNECTTIMEOUT => 5, CURLOPT_USERAGENT => 'wtfact-steuerung']);
    $body = curl_exec($h);
    $status = (int) curl_getinfo($h, CURLINFO_HTTP_CODE);
    $data = is_string($body) ? json_decode($body, true) : null;
    if ($status === 200 && is_array($data) && isset($data['ratings'], $data['stats'])) {
        $data['stats']['days'] = (object) ($data['stats']['days'] ?? []);
        return $out = ['ratings' => (array) $data['ratings'], 'stats' => $data['stats'], 'via' => 'api'];
    }
    $GLOBALS['community_why'] = trim(($GLOBALS['community_why'] ?? '') . '; API der Seite: ' . ($status ?: curl_error($h)), '; ');
    error_log('wtfact steuerung: Bewertungen auch über die API nicht lesbar: ' . $GLOBALS['community_why']);
    return null;
}

/** Zählt Bewertungen und Stimmen. Gleicher Code wie in public/api/index.php (count_community). */
function count_community(PDO $db): array
{
    $ratings = [];
    $stats = ['ratings' => 0, 'voters' => 0, 'voters7' => 0, 'days' => [], 'polls' => []];
    $since = gmdate('Y-m-d', time() - 29 * 86400);
    $week = gmdate('Y-m-d H:i:s', time() - 7 * 86400);
    try {
        foreach ($db->query('SELECT fact_key, verdict, COUNT(*) AS n FROM ratings GROUP BY fact_key, verdict') as $r) {
            $ratings[$r['fact_key']] = $ratings[$r['fact_key']] ?? ['like' => 0, 'meh' => 0];
            $ratings[$r['fact_key']][$r['verdict'] === 'like' ? 'like' : 'meh'] += (int) $r['n'];
        }
        $r = $db->query('SELECT COUNT(*) AS n, COUNT(DISTINCT voter) AS v FROM ratings')->fetch();
        $stats['ratings'] = (int) $r['n'];
        $stats['voters'] = (int) $r['v'];
        $s = $db->prepare('SELECT COUNT(DISTINCT voter) AS v FROM ratings WHERE created_at >= ?');
        $s->execute([$week]);
        $stats['voters7'] = (int) $s->fetch()['v'];
        $s = $db->prepare('SELECT substr(created_at, 1, 10) AS d, verdict, COUNT(*) AS n FROM ratings
            WHERE created_at >= ? GROUP BY substr(created_at, 1, 10), verdict');
        $s->execute([$since]);
        foreach ($s as $row) {
            $d = $row['d'];
            $stats['days'][$d] = $stats['days'][$d] ?? ['like' => 0, 'meh' => 0];
            $stats['days'][$d][$row['verdict'] === 'like' ? 'like' : 'meh'] += (int) $row['n'];
        }
    } catch (Throwable $e) {
        // Tabelle gibt es erst nach der ersten Bewertung
    }
    try {
        foreach ($db->query('SELECT poll, COUNT(*) AS n FROM votes GROUP BY poll ORDER BY poll DESC LIMIT 8') as $row) {
            $stats['polls'][] = ['poll' => $row['poll'], 'n' => (int) $row['n']];
        }
    } catch (Throwable $e) {
    }
    $stats['days'] = (object) $stats['days'];
    return ['ratings' => $ratings, 'stats' => $stats];
}
