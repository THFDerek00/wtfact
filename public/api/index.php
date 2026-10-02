<?php
// Server-Teil für Wisch-Bewertungen, Montags-Abstimmung und Fakt der Woche (PHP, läuft bei IONOS/Plesk).
// Die Seite ruft /api/index.php?r=<route> auf, dafür braucht es weder .htaccess noch Rewrite-Regeln.
//
//   GET  ?r=week     Stand der Woche: laufende Abstimmung (nur montags), Fakt der Woche und Fakt des Tages
//   POST ?r=vote     { voter, poll, key }        Stimme abgeben oder ändern (nur montags)
//   POST ?r=rate     { voter, key, verdict }     Wisch-Bewertung, verdict = like | meh
//   GET  ?r=history  Verlauf für die Hall of Fame: Fakten des Tages (30 Tage) und der Woche (12 Wochen)
//
// Gespeichert wird in SQLite (Standard, Datei neben dem Webordner, siehe wtf_db()) oder in MySQL/MariaDB,
// wenn api/config.local.php das festlegt (Vorlage: api/config.example.php). Tabellen legt die API selbst an.
// Der Browser-Teil steht in src/scripts/community.ts, der Kalender in week.php (gleich wie src/week.ts).

declare(strict_types=1);
require __DIR__ . '/week.php';

const VOTER = '/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i';
const VERDICTS = ['like', 'meh'];
// Schutz gegen Mehrfachstimmen: so viele Stimmen bzw. Bewertungen pro Anschluss und Tag.
const LIMITS = ['vote' => 30, 'rate' => 600];

function out($data, int $status = 200, string $cache = 'no-store'): void
{
    http_response_code($status);
    header('Content-Type: application/json; charset=utf-8');
    header('Cache-Control: ' . $cache);
    header('X-Content-Type-Options: nosniff');
    echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    exit;
}

function config(): array
{
    $local = __DIR__ . '/config.local.php';
    return is_file($local) ? (array) require $local : [];
}

/** Ordner für die SQLite-Datei: am liebsten neben dem Webordner (nicht abrufbar), sonst api/data/ (per .htaccess gesperrt). */
function data_dir(): string
{
    foreach ([dirname(__DIR__, 2) . '/wtfact-data', __DIR__ . '/data'] as $dir) {
        if (!(is_dir($dir) ? is_writable($dir) : @mkdir($dir, 0750, true))) continue;
        if (!is_file("$dir/.htaccess")) @file_put_contents("$dir/.htaccess", "Require all denied\n");
        return $dir;
    }
    out(['error' => 'not-configured', 'reason' => 'no-writable-data-dir'], 503);
}

function wtf_db(): PDO
{
    static $db = null;
    if ($db) return $db;
    $c = config();
    try {
        if (!empty($c['dsn'])) {
            $db = new PDO($c['dsn'], $c['user'] ?? null, $c['password'] ?? null);
        } else {
            if (!in_array('sqlite', PDO::getAvailableDrivers(), true)) out(['error' => 'not-configured', 'reason' => 'no-pdo-sqlite'], 503);
            $db = new PDO('sqlite:' . data_dir() . '/community.sqlite');
            $db->exec('PRAGMA journal_mode = WAL');
            $db->exec('PRAGMA busy_timeout = 5000');
        }
    } catch (PDOException $e) {
        error_log('wtfact api: ' . $e->getMessage());
        out(['error' => 'not-configured', 'reason' => 'db-connect'], 503);
    }
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    migrate($db);
    return $db;
}

function is_mysql(PDO $db): bool
{
    return $db->getAttribute(PDO::ATTR_DRIVER_NAME) === 'mysql';
}

// Tabellen. `voter` ist eine zufällige Kennung aus dem Browser, kein Name, keine IP.
// created_at ist UTC im Format „JJJJ-MM-TT HH:MM:SS“ und wird von PHP gesetzt, damit SQLite und MySQL gleich zählen.
function migrate(PDO $db): void
{
    $t = is_mysql($db) ? 'VARCHAR(80)' : 'TEXT';
    $db->exec("CREATE TABLE IF NOT EXISTS ratings (
        fact_key $t NOT NULL, voter $t NOT NULL, verdict $t NOT NULL, created_at $t NOT NULL,
        PRIMARY KEY (fact_key, voter))");
    // poll = Datum des Abstimmungs-Montags. Eine Stimme pro Kennung und Montag, änderbar bis Mitternacht.
    $db->exec("CREATE TABLE IF NOT EXISTS votes (
        poll $t NOT NULL, voter $t NOT NULL, fact_key $t NOT NULL, created_at $t NOT NULL,
        PRIMARY KEY (poll, voter))");
    // Zähler gegen Mehrfachstimmen. bucket ist ein Hash aus IP-Adresse und einem Zufallswert des Tages;
    // beides wird nach einem Tag gelöscht, danach lässt sich keine IP mehr zurückrechnen.
    $db->exec("CREATE TABLE IF NOT EXISTS throttle (
        day $t NOT NULL, bucket $t NOT NULL, hits INTEGER NOT NULL, PRIMARY KEY (day, bucket))");
    $db->exec("CREATE TABLE IF NOT EXISTS salts (day $t NOT NULL PRIMARY KEY, salt $t NOT NULL)");
    if (!is_mysql($db)) $db->exec('CREATE INDEX IF NOT EXISTS votes_by_poll ON votes (poll, fact_key)');
}

function now_utc(): string
{
    return gmdate('Y-m-d H:i:s');
}

/** Einfügen oder ersetzen, je nach Datenbank. $keys sind die Spalten des Primärschlüssels. */
function upsert(PDO $db, string $table, array $row, array $keys): void
{
    $cols = array_keys($row);
    $ph = implode(',', array_fill(0, count($cols), '?'));
    $upd = array_diff($cols, $keys);
    $sql = "INSERT INTO $table (" . implode(',', $cols) . ") VALUES ($ph) " . (is_mysql($db)
        ? 'ON DUPLICATE KEY UPDATE ' . implode(',', array_map(function ($c) { return "$c = VALUES($c)"; }, $upd))
        : 'ON CONFLICT (' . implode(',', $keys) . ') DO UPDATE SET ' . implode(',', array_map(function ($c) { return "$c = excluded.$c"; }, $upd)));
    $db->prepare($sql)->execute(array_values($row));
}

/** false, wenn dieser Anschluss heute schon zu oft abgestimmt bzw. bewertet hat. */
function allowed(PDO $db, string $action, string $today): bool
{
    $db->prepare('DELETE FROM salts WHERE day < ?')->execute([$today]);
    $db->prepare('DELETE FROM throttle WHERE day < ?')->execute([$today]);
    $s = $db->prepare('SELECT salt FROM salts WHERE day = ?');
    $s->execute([$today]);
    $salt = $s->fetchColumn();
    if (!$salt) {
        $salt = bin2hex(random_bytes(16));
        try {
            $db->prepare('INSERT INTO salts (day, salt) VALUES (?, ?)')->execute([$today, $salt]);
        } catch (PDOException $e) {
            $s->execute([$today]); // gleichzeitig angelegt: den anderen nehmen
            $salt = $s->fetchColumn();
        }
    }
    $bucket = hash('sha256', $salt . '|' . $action . '|' . ($_SERVER['REMOTE_ADDR'] ?? ''));
    $q = $db->prepare('SELECT hits FROM throttle WHERE day = ? AND bucket = ?');
    $q->execute([$today, $bucket]);
    $hits = (int) $q->fetchColumn();
    if ($hits >= LIMITS[$action]) return false;
    upsert($db, 'throttle', ['day' => $today, 'bucket' => $bucket, 'hits' => $hits + 1], ['day', 'bucket']);
    return true;
}

/** Alle veröffentlichten Fakten (key, date, cat), aus der beim Bauen erzeugten facts.json. */
function facts(): array
{
    static $all = null;
    if ($all === null) {
        $raw = @file_get_contents(dirname(__DIR__) . '/facts.json');
        $all = $raw ? (json_decode($raw, true) ?: []) : [];
    }
    return $all;
}

function vote_counts(PDO $db, string $poll): array
{
    $s = $db->prepare('SELECT fact_key, COUNT(*) AS n FROM votes WHERE poll = ? GROUP BY fact_key');
    $s->execute([$poll]);
    $out = [];
    foreach ($s as $r) $out[$r['fact_key']] = (int) $r['n'];
    return $out;
}

/**
 * Wisch-Bewertungen je Fakt. $cut liefert pro Fakt den Zeitpunkt (UTC), ab dem nicht mehr gezählt wird, oder null.
 * Gezählt wird in PHP, damit dieselbe Abfrage in SQLite und MySQL läuft.
 */
function ratings_for(PDO $db, array $keys, ?callable $cut = null): array
{
    $out = [];
    foreach (array_chunk(array_values(array_unique($keys)), 200) as $part) {
        $s = $db->prepare('SELECT fact_key, verdict, created_at FROM ratings WHERE fact_key IN (' . implode(',', array_fill(0, count($part), '?')) . ')');
        $s->execute($part);
        foreach ($s as $r) {
            $limit = $cut ? $cut($r['fact_key']) : null;
            if ($limit !== null && $r['created_at'] >= $limit) continue;
            $out[$r['fact_key']] = $out[$r['fact_key']] ?? ['like' => 0, 'meh' => 0];
            $out[$r['fact_key']][$r['verdict'] === 'like' ? 'like' : 'meh']++;
        }
    }
    return $out;
}

function counts_obj(string $id, array $counts): array
{
    return ['id' => $id, 'counts' => (object) $counts, 'total' => array_sum($counts)];
}

function body(): array
{
    $b = json_decode((string) file_get_contents('php://input'), true);
    return is_array($b) ? $b : [];
}

function str($v): string
{
    return is_string($v) ? $v : '';
}

// ---------- Routen ----------

$route = trim(str($_GET['r'] ?? ''), '/');
$method = $_SERVER['REQUEST_METHOD'] ?? 'GET';
$state = week_state(berlin_day());
$today = $state['today'];

if ($route === 'week' && $method === 'GET') {
    $db = wtf_db();
    $all = facts();
    $cands = array_values(array_filter($all, function ($f) use ($state) { return in_poll($f['date'], $state['featuredPoll']); }));
    $votes = vote_counts($db, $state['featuredPoll']);
    $winner = pick_winner($cands, $votes, ratings_for($db, array_column($cands, 'key')));
    $featured = $winner ? ['poll' => $state['featuredPoll'], 'key' => $winner, 'votes' => $votes[$winner], 'total' => array_sum($votes)] : null;
    // Fakt des Tages: Fakten von gestern, Bewertungen bis heute 0 Uhr.
    $yesterday = array_values(array_filter($all, function ($f) use ($today) { return $f['date'] === add_days($today, -1); }));
    $start = day_start_utc($today);
    $dayRatings = ratings_for($db, array_column($yesterday, 'key'), function () use ($start) { return $start; });
    $pick = pick_fact_of_day($yesterday, $dayRatings, $today);
    $daily = $pick ? $pick + ($dayRatings[$pick['key']] ?? ['like' => 0, 'meh' => 0]) : null;
    $poll = $state['openPoll'] ? counts_obj($state['openPoll'], vote_counts($db, $state['openPoll'])) : null;
    out($state + ['featured' => $featured, 'daily' => $daily, 'poll' => $poll]);
}

if ($route === 'history' && $method === 'GET') {
    $db = wtf_db();
    $all = facts();
    // Fakten des Tages: für jeden Tag der Sieger unter den Fakten vom Vortag, Bewertungen bis 0 Uhr danach.
    $days = last_days($today);
    $oldest = add_days(end($days), -1);
    $pool = array_values(array_filter($all, function ($f) use ($oldest, $today) { return $f['date'] >= $oldest && $f['date'] < $today; }));
    $dateOf = array_column($pool, 'date', 'key');
    $dayRatings = ratings_for($db, array_keys($dateOf), function ($k) use ($dateOf) { return day_start_utc(add_days($dateOf[$k], 1)); });
    $dayPicks = [];
    foreach ($days as $d) {
        $p = pick_fact_of_day($pool, $dayRatings, $d);
        if ($p) $dayPicks[] = $p + ($dayRatings[$p['key']] ?? ['like' => 0, 'meh' => 0]);
    }
    // Fakten der Woche: Gewinner jeder abgeschlossenen Abstimmung.
    $polls = past_polls($today);
    $s = $db->prepare('SELECT poll, fact_key, COUNT(*) AS n FROM votes WHERE poll >= ? AND poll <= ? GROUP BY poll, fact_key');
    $s->execute([end($polls), $polls[0]]);
    $byPoll = [];
    foreach ($s as $r) $byPoll[$r['poll']][$r['fact_key']] = (int) $r['n'];
    $voted = array_values(array_filter($polls, function ($p) use ($byPoll) { return isset($byPoll[$p]); }));
    $cands = array_values(array_filter($all, function ($f) use ($voted) {
        foreach ($voted as $p) if (in_poll($f['date'], $p)) return true;
        return false;
    }));
    $allRatings = ratings_for($db, array_column($cands, 'key'));
    $weekPicks = [];
    foreach ($voted as $p) {
        $votes = $byPoll[$p];
        $inThis = array_values(array_filter($cands, function ($f) use ($p) { return in_poll($f['date'], $p); }));
        $key = pick_winner($inThis, $votes, $allRatings);
        if ($key) $weekPicks[] = ['poll' => $p, 'key' => $key, 'votes' => $votes[$key], 'total' => array_sum($votes)];
    }
    out(['today' => $today, 'days' => $dayPicks, 'weeks' => $weekPicks], 200, 'public, max-age=300');
}

if ($route === 'vote' && $method === 'POST') {
    $b = body();
    $voter = str($b['voter'] ?? null);
    $key = str($b['key'] ?? null);
    if (!preg_match(VOTER, $voter) || $key === '') out(['error' => 'bad-request'], 400);
    if (!$state['openPoll'] || ($b['poll'] ?? null) !== $state['openPoll']) out(['error' => 'closed'] + $state, 409);
    $ok = false;
    foreach (facts() as $f) if ($f['key'] === $key && in_poll($f['date'], $state['openPoll'])) $ok = true;
    if (!$ok) out(['error' => 'not-a-candidate'], 400);
    $db = wtf_db();
    if (!allowed($db, 'vote', $today)) out(['error' => 'too-many'], 429);
    upsert($db, 'votes', ['poll' => $state['openPoll'], 'voter' => $voter, 'fact_key' => $key, 'created_at' => now_utc()], ['poll', 'voter']);
    out(counts_obj($state['openPoll'], vote_counts($db, $state['openPoll'])));
}

if ($route === 'rate' && $method === 'POST') {
    $b = body();
    $voter = str($b['voter'] ?? null);
    $key = str($b['key'] ?? null);
    $verdict = str($b['verdict'] ?? null);
    if (!preg_match(VOTER, $voter) || $key === '' || !in_array($verdict, VERDICTS, true)) out(['error' => 'bad-request'], 400);
    if (!in_array($key, array_column(facts(), 'key'), true)) out(['error' => 'unknown-fact'], 400);
    $db = wtf_db();
    if (!allowed($db, 'rate', $today)) out(['error' => 'too-many'], 429);
    upsert($db, 'ratings', ['fact_key' => $key, 'voter' => $voter, 'verdict' => $verdict, 'created_at' => now_utc()], ['fact_key', 'voter']);
    out(ratings_for($db, [$key])[$key] ?? ['like' => 0, 'meh' => 0]);
}

out(['error' => 'not-found'], 404);
