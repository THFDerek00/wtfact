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
