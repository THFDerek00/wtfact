<?php
// Daumen hoch/runter je Fakt aus der Datenbank der Seiten-API (public/api/index.php, Tabelle ratings).
// Nur lesend. Gleicher Ort wie dort: MySQL laut httpdocs/api/config.local.php, sonst wtfact-data/community.sqlite.

declare(strict_types=1);

function community_db(): ?PDO
{
    try {
        $local = site_dir() . '/api/config.local.php';
        $c = is_file($local) ? (array) require $local : [];
        if (!empty($c['dsn'])) {
            $db = new PDO($c['dsn'], $c['user'] ?? null, $c['password'] ?? null);
        } else {
            $file = null;
            foreach ([webspace() . '/wtfact-data/community.sqlite', site_dir() . '/api/data/community.sqlite'] as $f) {
                if (is_file($f)) { $file = $f; break; }
            }
            if (!$file) return null;
            $db = new PDO('sqlite:' . $file, null, null, [PDO::SQLITE_ATTR_OPEN_FLAGS => PDO::SQLITE_OPEN_READONLY]);
        }
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $db;
    } catch (Throwable $e) {
        error_log('wtfact steuerung: Bewertungen nicht lesbar: ' . $e->getMessage());
        return null;
    }
}

/** [key => ['like' => n, 'meh' => n]] für alle Fakten, oder null, wenn die Datenbank fehlt. */
function all_ratings(): ?array
{
    $db = community_db();
    if (!$db) return null;
    try {
        $out = [];
        foreach ($db->query('SELECT fact_key, verdict, COUNT(*) AS n FROM ratings GROUP BY fact_key, verdict') as $r) {
            $out[$r['fact_key']] = $out[$r['fact_key']] ?? ['like' => 0, 'meh' => 0];
            $out[$r['fact_key']][$r['verdict'] === 'like' ? 'like' : 'meh'] += (int) $r['n'];
        }
        return $out;
    } catch (Throwable $e) {
        return []; // Tabelle gibt es erst nach der ersten Bewertung
    }
}

/**
 * Zahlen für die Übersicht: Bewertungen je Tag (letzte 30 Tage, UTC), Personen, Montags-Abstimmungen.
 * null, wenn die Datenbank fehlt.
 */
function community_stats(): ?array
{
    $db = community_db();
    if (!$db) return null;
    $out = ['ratings' => 0, 'voters' => 0, 'voters7' => 0, 'days' => [], 'polls' => []];
    $since = gmdate('Y-m-d', time() - 29 * 86400);
    $week = gmdate('Y-m-d H:i:s', time() - 7 * 86400);
    try {
        $r = $db->query('SELECT COUNT(*) AS n, COUNT(DISTINCT voter) AS v FROM ratings')->fetch();
        $out['ratings'] = (int) $r['n'];
        $out['voters'] = (int) $r['v'];
        $s = $db->prepare('SELECT COUNT(DISTINCT voter) AS v FROM ratings WHERE created_at >= ?');
        $s->execute([$week]);
        $out['voters7'] = (int) $s->fetch()['v'];
        $s = $db->prepare('SELECT substr(created_at, 1, 10) AS d, verdict, COUNT(*) AS n FROM ratings
            WHERE created_at >= ? GROUP BY substr(created_at, 1, 10), verdict');
        $s->execute([$since]);
        foreach ($s as $row) {
            $d = $row['d'];
            $out['days'][$d] = $out['days'][$d] ?? ['like' => 0, 'meh' => 0];
            $out['days'][$d][$row['verdict'] === 'like' ? 'like' : 'meh'] += (int) $row['n'];
        }
    } catch (Throwable $e) {
        // Tabelle gibt es erst nach der ersten Bewertung
    }
    try {
        foreach ($db->query('SELECT poll, COUNT(*) AS n FROM votes GROUP BY poll ORDER BY poll DESC LIMIT 8') as $row) {
            $out['polls'][] = ['poll' => $row['poll'], 'n' => (int) $row['n']];
        }
    } catch (Throwable $e) {
    }
    $out['days'] = (object) $out['days'];
    return $out;
}
