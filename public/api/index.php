<?php
// Server-Teil für Wisch-Bewertungen, Montags-Abstimmung und Fakt der Woche (PHP, läuft bei IONOS/Plesk).
// Die Seite ruft /api/index.php?r=<route> auf, dafür braucht es weder .htaccess noch Rewrite-Regeln.
//
//   GET  ?r=week     Stand der Woche: laufende Abstimmung (nur montags), Fakt der Woche und Fakt des Tages
//   POST ?r=vote     { voter, poll, key }        Stimme abgeben oder ändern (nur montags)
//   POST ?r=rate     { voter, key, verdict }     Wisch-Bewertung, verdict = like | meh
//   GET  ?r=history  Verlauf für die WTF-Charts: Fakten des Tages (30 Tage) und der Woche (12 Wochen)
//   GET  ?r=rating&key=<key>  Daumen hoch/runter für einen Fakt (Faktseite)
//   GET  ?r=top      Die 10 beliebtesten Fakten: meiste Daumen hoch minus runter (WTF-Charts);
//                    mit &since=JJJJ-MM-TT nur Fakten ab diesem Tag (Top 5 der Woche auf der Startseite)
//   GET  ?r=counts   Daumen je Fakt und Zahlen für die Übersicht im Dashboard (steuerung/lib/ratings.php)
//   POST ?r=answer   { voter, game, id, pick }   Antwort in einem Mitmach-Spiel (src/scripts/quiz.ts):
//                    game = wof (Wahr oder Fake, pick 0/1), first (Was war zuerst, 0/1), guess (Schätzfrage, 0-2), baro (WTF-Barometer, 0-10)
//   GET  ?r=quiz&game=<game>[&id=<id>]   Zählung je Frage und Antwort, ohne Kennungen
//
// Gespeichert wird in SQLite (Standard, Datei neben dem Webordner, siehe wtf_db()) oder in MySQL/MariaDB,
// wenn api/config.local.php das festlegt (Vorlage: api/config.example.php). Tabellen legt die API selbst an.
// Der Browser-Teil steht in src/scripts/community.ts, der Kalender in week.php (gleich wie src/week.ts).

declare(strict_types=1);
require __DIR__ . '/week.php';

const VOTER = '/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i';
const VERDICTS = ['like', 'meh'];
// Schutz gegen Mehrfachstimmen: so viele Stimmen bzw. Bewertungen pro Anschluss und Tag.
const LIMITS = ['vote' => 30, 'rate' => 600, 'answer' => 1500];
// Mitmach-Spiele: höchste erlaubte Antwort je Spiel. Fragen von wof/first stehen in /quiz.json, guess/baro gehören zu einem Fakt.
const GAMES = ['wof' => 1, 'first' => 1, 'guess' => 2, 'baro' => 10];

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
    // Antworten in den Mitmach-Spielen. Eine Antwort pro Kennung und Frage, die letzte zählt.
    $db->exec("CREATE TABLE IF NOT EXISTS answers (
        game $t NOT NULL, item $t NOT NULL, voter $t NOT NULL, pick INTEGER NOT NULL, created_at $t NOT NULL,
        PRIMARY KEY (game, item, voter))");
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

/** Fragen-Kennungen der Quizspiele aus der beim Bauen erzeugten quiz.json: ['wof' => [...], 'first' => [...]]. */
function quiz_ids(): array
{
    static $ids = null;
    if ($ids === null) {
        $raw = @file_get_contents(dirname(__DIR__) . '/quiz.json');
        $ids = $raw ? (json_decode($raw, true) ?: []) : [];
    }
    return $ids;
}

/** Gibt es die Frage `id` im Spiel `game`? */
function quiz_item_ok(string $game, string $id): bool
{
    if ($game === 'guess' || $game === 'baro') return in_array($id, array_column(facts(), 'key'), true);
    return in_array($id, quiz_ids()[$game] ?? [], true);
}

/** Zählung je Frage: [item => [pick => n]]. */
function answer_counts(PDO $db, string $game, ?string $item = null): array
{
    $sql = 'SELECT item, pick, COUNT(*) AS n FROM answers WHERE game = ?' . ($item !== null ? ' AND item = ?' : '') . ' GROUP BY item, pick';
    $s = $db->prepare($sql);
    $s->execute($item !== null ? [$game, $item] : [$game]);
    $out = [];
    foreach ($s as $r) $out[$r['item']][(string) $r['pick']] = (int) $r['n'];
    return $out;
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

if ($route === 'rating' && $method === 'GET') {
    $key = str($_GET['key'] ?? null);
    if (!in_array($key, array_column(facts(), 'key'), true)) out(['error' => 'unknown-fact'], 400);
    out(ratings_for(wtf_db(), [$key])[$key] ?? ['like' => 0, 'meh' => 0], 200, 'public, max-age=30');
}

// Top 10: Daumen hoch minus Daumen runter, bei Gleichstand mehr Daumen hoch, dann der neuere Fakt.
// Nur Fakten mit mindestens einem Daumen hoch. Gleiche Zählung wie topTen in src/week.ts.
if ($route === 'top' && $method === 'GET') {
    $all = facts();
    $since = str($_GET['since'] ?? null);
    if (preg_match('/^\d{4}-\d{2}-\d{2}$/', $since)) $all = array_values(array_filter($all, function ($f) use ($since) { return $f['date'] >= $since; }));
    $ratings = ratings_for(wtf_db(), array_column($all, 'key'));
    $dateOf = array_column($all, 'date', 'key');
    $list = [];
    foreach ($ratings as $key => $r) if ($r['like'] > 0) $list[] = ['key' => $key, 'like' => $r['like'], 'meh' => $r['meh']];
    usort($list, function ($a, $b) use ($dateOf) {
        return ($b['like'] - $b['meh']) <=> ($a['like'] - $a['meh']) ?: $b['like'] <=> $a['like'] ?: strcmp($dateOf[$b['key']] ?? '', $dateOf[$a['key']] ?? '') ?: strcmp($a['key'], $b['key']);
    });
    out(array_slice($list, 0, 10), 200, 'public, max-age=120');
}

// Für das Dashboard, falls es die Datenbank nicht direkt lesen kann. Nur Summen, keine Kennungen.
if ($route === 'counts' && $method === 'GET') {
    out(count_community(wtf_db()), 200, 'private, max-age=30');
}

/** Zählt Bewertungen und Stimmen. Gleicher Code wie in steuerung/lib/ratings.php (count_community). */
function count_community(PDO $db): array
{
    $ratings = [];
    $stats = ['ratings' => 0, 'voters' => 0, 'voters7' => 0, 'days' => [], 'polls' => []];
    $since = gmdate('Y-m-d', time() - 29 * 86400);
    $week = gmdate('Y-m-d H:i:s', time() - 7 * 86400);
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
    foreach ($db->query('SELECT poll, COUNT(*) AS n FROM votes GROUP BY poll ORDER BY poll DESC LIMIT 8') as $row) {
        $stats['polls'][] = ['poll' => $row['poll'], 'n' => (int) $row['n']];
    }
    $stats['days'] = (object) $stats['days'];
    return ['ratings' => (object) $ratings, 'stats' => $stats];
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

if ($route === 'answer' && $method === 'POST') {
    $b = body();
    $voter = str($b['voter'] ?? null);
    $game = str($b['game'] ?? null);
    $id = str($b['id'] ?? null);
    $pick = $b['pick'] ?? null;
    if (!preg_match(VOTER, $voter) || !isset(GAMES[$game]) || !is_int($pick) || $pick < 0 || $pick > GAMES[$game]) out(['error' => 'bad-request'], 400);
    if (!quiz_item_ok($game, $id)) out(['error' => 'unknown-item'], 400);
    $db = wtf_db();
    if (!allowed($db, 'answer', $today)) out(['error' => 'too-many'], 429);
    upsert($db, 'answers', ['game' => $game, 'item' => $id, 'voter' => $voter, 'pick' => $pick, 'created_at' => now_utc()], ['game', 'item', 'voter']);
    out(['id' => $id, 'counts' => (object) (answer_counts($db, $game, $id)[$id] ?? [])]);
}

if ($route === 'quiz' && $method === 'GET') {
    $game = str($_GET['game'] ?? null);
    if (!isset(GAMES[$game])) out(['error' => 'bad-request'], 400);
    $id = isset($_GET['id']) ? str($_GET['id']) : null;
    if ($id !== null && !quiz_item_ok($game, $id)) out(['error' => 'unknown-item'], 400);
    $counts = answer_counts(wtf_db(), $game, $id);
    out((object) array_map(function ($c) { return (object) $c; }, $counts), 200, 'public, max-age=60');
}

out(['error' => 'not-found'], 404);
