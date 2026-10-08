<?php
// Grundlagen des Dashboards (steuerung.wtfact.xyz): Einstellungen, Antworten, eigene Datenbank, Zeit.
// Übersicht und Einrichtung: README.md, Abschnitt „Dashboard“.

declare(strict_types=1);

const APP_DIR = __DIR__ . '/..';

/**
 * Einstellungen aus lib/config.local.php (schreibt der Upload aus den GitHub-Secrets) oder config.local.php
 * neben index.php (von Hand angelegt, Vorlage: config.example.php). Ohne Datei läuft das Dashboard nicht.
 */
function cfg(string $key, $default = null)
{
    static $c = null;
    if ($c === null) {
        $c = [];
        foreach ([__DIR__ . '/config.local.php', APP_DIR . '/config.local.php'] as $f) {
            if (is_file($f)) $c = array_merge($c, (array) require $f);
        }
    }
    return array_key_exists($key, $c) && $c[$key] !== '' && $c[$key] !== null ? $c[$key] : $default;
}

function out($data, int $status = 200): void
{
    http_response_code($status);
    header('Content-Type: application/json; charset=utf-8');
    header('Cache-Control: no-store');
    header('X-Content-Type-Options: nosniff');
    header('X-Robots-Tag: noindex, nofollow');
    echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    exit;
}

function fail(string $error, int $status = 400, array $extra = []): void
{
    out(['error' => $error] + $extra, $status);
}

/** Webspace bei Plesk: darin liegen httpdocs/ (die Seite), wtfact-data/ und dieser Ordner. */
function webspace(): string
{
    return dirname(realpath(APP_DIR) ?: APP_DIR);
}

/** Ordner der öffentlichen Seite (für facts.json und die Datenbank der Bewertungen). */
function site_dir(): string
{
    return rtrim((string) cfg('site_dir', webspace() . '/httpdocs'), '/');
}

/** Gleicher Datenordner wie die API der Seite (public/api/index.php), nicht aus dem Netz erreichbar. */
function data_dir(): string
{
    foreach ([cfg('data_dir'), webspace() . '/wtfact-data', APP_DIR . '/data'] as $dir) {
        if (!$dir) continue;
        if (!(is_dir($dir) ? is_writable($dir) : @mkdir($dir, 0750, true))) continue;
        if (!is_file("$dir/.htaccess")) @file_put_contents("$dir/.htaccess", "Require all denied\n");
        return $dir;
    }
    fail('not-configured', 503, ['reason' => 'no-writable-data-dir']);
}

/** Eigene kleine Datenbank: Zwischenspeicher für die Fakten aus GitHub und Fehlversuche beim Anmelden. */
function store(): PDO
{
    static $db = null;
    if ($db) return $db;
    if (!in_array('sqlite', PDO::getAvailableDrivers(), true)) fail('not-configured', 503, ['reason' => 'no-pdo-sqlite']);
    $db = new PDO('sqlite:' . data_dir() . '/steuerung.sqlite');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->exec('PRAGMA journal_mode = WAL');
    $db->exec('PRAGMA busy_timeout = 5000');
    $db->exec('CREATE TABLE IF NOT EXISTS meta (name TEXT PRIMARY KEY, value TEXT NOT NULL)');
    // Inhalt jeder Datei aus db/, nach Git-Blob-SHA. So wird jede Fassung nur einmal geladen.
    $db->exec('CREATE TABLE IF NOT EXISTS blobs (sha TEXT PRIMARY KEY, content TEXT NOT NULL)');
    $db->exec('CREATE TABLE IF NOT EXISTS login_fail (bucket TEXT NOT NULL, at INTEGER NOT NULL)');
    return $db;
}

function meta_get(string $name): ?string
{
    $s = store()->prepare('SELECT value FROM meta WHERE name = ?');
    $s->execute([$name]);
    $v = $s->fetchColumn();
    return $v === false ? null : $v;
}

function meta_set(string $name, string $value): void
{
    store()->prepare('INSERT OR REPLACE INTO meta (name, value) VALUES (?, ?)')->execute([$name, $value]);
}

function tz(): DateTimeZone
{
    return new DateTimeZone('Europe/Berlin');
}

function now(): DateTimeImmutable
{
    return new DateTimeImmutable('now', tz());
}

/** Feste Veröffentlichungszeiten des Tages (deutsche Zeit), Slot 1 bis 3. */
function slot_times(): array
{
    $t = cfg('slots', ['08:00', '12:00', '16:00']); // wie SLOT_TIMES in src/config.ts
    return array_values(array_slice((array) $t, 0, 3));
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
