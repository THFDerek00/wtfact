<?php
// Die Fakten aus dem Repository: Spiegel von db/ aus GitHub, als SQLite im Speicher abfragbar,
// und Änderungen an Termin, Slot und Sichtbarkeit als Commit zurück nach main.
//
// Ein Fakt ist eine SQL-Datei db/facts/<key>.sql (Format: factSql in scripts/facts-db.mjs).
// Das Dashboard ändert darin nur die Zeile INSERT INTO facts (…) mit date, draft und slot,
// im selben Format wie factSql. Texte, Produkte und Quellen bleiben unberührt.

declare(strict_types=1);

const SCHEMA_PATH = 'db/facts-schema.sql';
const FACTS_PREFIX = 'db/facts/';

/**
 * Stand von main: ['head' => Commit, 'tree' => Baum, 'files' => [Pfad => Blob-SHA]] für Schema und Fakten.
 * Wird höchstens alle 10 Sekunden bei GitHub nachgefragt, außer $fresh.
 */
function mirror(bool $fresh = false): array
{
    $cached = json_decode(meta_get('mirror') ?? 'null', true);
    if (!$fresh && $cached && time() - (int) ($cached['checked'] ?? 0) < 10) return $cached;
    $ref = gh_ok('GET', '/git/ref/heads/' . gh_branch());
    $head = $ref['object']['sha'];
    if ($cached && $cached['head'] === $head) {
        $cached['checked'] = time();
        meta_set('mirror', json_encode($cached));
        return $cached;
    }
    $commit = gh_ok('GET', "/git/commits/$head");
    $tree = gh_ok('GET', '/git/trees/' . $commit['tree']['sha'] . '?recursive=1');
    $files = [];
    foreach ($tree['tree'] ?? [] as $e) {
        if ($e['type'] !== 'blob') continue;
        if ($e['path'] === SCHEMA_PATH || (str_starts_with($e['path'], FACTS_PREFIX) && str_ends_with($e['path'], '.sql') && substr_count($e['path'], '/') === 2)) {
            $files[$e['path']] = $e['sha'];
        }
    }
    if (!isset($files[SCHEMA_PATH])) fail('github-error', 502, ['message' => SCHEMA_PATH . ' fehlt in ' . gh_branch()]);
    $m = ['head' => $head, 'tree' => $commit['tree']['sha'], 'files' => $files, 'checked' => time()];
    load_blobs(array_values($files));
    meta_set('mirror', json_encode($m));
    return $m;
}

/** Fehlende Dateiinhalte nachladen und speichern. */
function load_blobs(array $shas): void
{
    if (!$shas) return;
    $have = [];
    foreach (array_chunk($shas, 400) as $part) {
        $s = store()->prepare('SELECT sha FROM blobs WHERE sha IN (' . implode(',', array_fill(0, count($part), '?')) . ')');
        $s->execute($part);
        $have = array_merge($have, $s->fetchAll(PDO::FETCH_COLUMN));
    }
    $missing = array_values(array_diff($shas, $have));
    if (!$missing) return;
    $ins = store()->prepare('INSERT OR REPLACE INTO blobs (sha, content) VALUES (?, ?)');
    foreach (gh_blobs($missing) as $sha => $content) $ins->execute([$sha, $content]);
}

function blob(string $sha): string
{
    $s = store()->prepare('SELECT content FROM blobs WHERE sha = ?');
    $s->execute([$sha]);
    $c = $s->fetchColumn();
    if ($c === false) {
        load_blobs([$sha]);
        return blob($sha);
    }
    return $c;
}

/** Alle Fakten von main in einer SQLite-Datenbank im Speicher, gleiches Schema wie db/wtfact.sqlite. */
function facts_db(array $m): PDO
{
    $db = new PDO('sqlite::memory:');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->exec(blob($m['files'][SCHEMA_PATH]));
    foreach ($m['files'] as $path => $sha) {
        if ($path === SCHEMA_PATH) continue;
        try {
            $db->exec(blob($sha));
        } catch (PDOException $e) {
            error_log("wtfact steuerung: $path: " . $e->getMessage());
        }
    }
    return $db;
}

function fact_path(string $key): string
{
    return FACTS_PREFIX . $key . '.sql';
}

/** Zeitpunkt eines Fakts; reine Tage (alte Fakten) zählen ab 0 Uhr deutscher Zeit. */
function fact_time(?string $date): ?DateTimeImmutable
{
    if (!$date) return null;
    try {
        return strlen($date) === 10 ? new DateTimeImmutable($date . ' 00:00:00', tz()) : new DateTimeImmutable($date);
    } catch (Exception $e) {
        return null;
    }
}

/** Schlüssel der Fakten, die gerade auf der Seite stehen (facts.json vom letzten Upload), oder null. */
function live_keys(): ?array
{
    $raw = @file_get_contents(site_dir() . '/facts.json');
    if ($raw === false) return null;
    $list = json_decode($raw, true);
    return is_array($list) ? array_column($list, 'key') : null;
}

/**
 * Zustand eines Fakts:
 *   pool     geschrieben, noch kein Termin
 *   planned  Termin in der Zukunft
 *   due      Termin erreicht, aber noch nicht hochgeladen (wird gerade veröffentlicht)
 *   live     auf der Seite
 *   offline  von der Seite genommen (draft)
 */
function fact_status(array $f, DateTimeImmutable $now, ?array $live): string
{
    if ((int) $f['draft'] === 1) return 'offline';
    $t = fact_time($f['date']);
    if (!$t) return 'pool';
    if ($t > $now) return 'planned';
    if ($live !== null && !in_array($f['key'], $live, true)) return 'due';
    return 'live';
}

/** Alle Fakten für das Dashboard, neueste zuerst, Pool am Ende. */
function list_facts(PDO $db, ?array $live): array
{
    $now = now();
    $rows = $db->query("SELECT f.key, f.date, f.category, f.emoji, f.draft, f.slot,
            d.slug, d.title, d.teaser, d.hook, e.title AS title_en
        FROM facts f LEFT JOIN texts d ON d.fact = f.key AND d.lang = 'de' LEFT JOIN texts e ON e.fact = f.key AND e.lang = 'en'")->fetchAll();
    $out = [];
    foreach ($rows as $r) {
        $t = fact_time($r['date']);
        $out[] = [
            'key' => $r['key'],
            'date' => $r['date'],
            'at' => $t ? $t->format(DATE_ATOM) : null,
            'slot' => $r['slot'] === null ? null : (int) $r['slot'],
            'draft' => (int) $r['draft'] === 1,
            'status' => fact_status($r, $now, $live),
            'category' => $r['category'],
            'emoji' => $r['emoji'],
            'title' => $r['title'] ?? $r['key'],
            'titleEn' => $r['title_en'],
            'teaser' => $r['teaser'],
            'hook' => $r['hook'],
            'slug' => $r['slug'],
        ];
    }
    usort($out, function ($a, $b) {
        if (($a['at'] === null) !== ($b['at'] === null)) return $a['at'] === null ? 1 : -1;
        return strcmp((string) $b['at'], (string) $a['at']) ?: strcmp($a['key'], $b['key']);
    });
    return $out;
}

function sql_lit($v): string
{
    if ($v === null) return 'NULL';
    if (is_int($v)) return (string) $v;
    return "'" . str_replace("'", "''", (string) $v) . "'";
}

/** Zeile INSERT INTO facts, Format wie insert('facts', …) in scripts/facts-db.mjs. */
function facts_insert_sql(array $f): string
{
    $cols = ['key', 'date', 'category', 'emoji', 'draft'];
    $vals = [$f['key'], $f['date'], $f['category'], $f['emoji'], (int) $f['draft']];
    if ($f['slot'] !== null) {
        $cols[] = 'slot';
        $vals[] = (int) $f['slot'];
    }
    return 'INSERT INTO facts (' . implode(', ', $cols) . ") VALUES\n  (" . implode(', ', array_map('sql_lit', $vals)) . ");\n";
}

/** Ersetzt in einer Fakten-Datei die Zeile INSERT INTO facts. */
function rewrite_fact_file(string $content, array $f): string
{
    $n = 0;
    $new = preg_replace_callback('/INSERT INTO facts \([^)]*\) VALUES\n  \(.*?\);\n/s', function () use ($f) { return facts_insert_sql($f); }, $content, 1, $n);
    if ($n !== 1 || $new === null) fail('bad-fact-file', 500, ['key' => $f['key']]);
    return $new;
}

function fact_row(PDO $db, string $key): ?array
{
    $s = $db->prepare('SELECT key, date, category, emoji, draft, slot FROM facts WHERE key = ?');
    $s->execute([$key]);
    $r = $s->fetch();
    if (!$r) return null;
    $r['draft'] = (int) $r['draft'];
    $r['slot'] = $r['slot'] === null ? null : (int) $r['slot'];
    return $r;
}

function fact_title(PDO $db, string $key): string
{
    $s = $db->prepare("SELECT title FROM texts WHERE fact = ? AND lang = 'de'");
    $s->execute([$key]);
    return (string) ($s->fetchColumn() ?: $key);
}

/**
 * Ein Commit auf main mit geänderten Dateien ($files: Pfad => neuer Inhalt, null = löschen).
 * Gibt false zurück, wenn main sich inzwischen bewegt hat (dann neu laden und noch mal).
 */
function commit_files(array $m, array $files, string $message): bool
{
    $entries = [];
    foreach ($files as $path => $content) {
        $entries[] = $content === null
            ? ['path' => $path, 'mode' => '100644', 'type' => 'blob', 'sha' => null]
            : ['path' => $path, 'mode' => '100644', 'type' => 'blob', 'content' => $content];
    }
    $tree = gh_ok('POST', '/git/trees', ['base_tree' => $m['tree'], 'tree' => $entries]);
    $commit = gh_ok('POST', '/git/commits', ['message' => $message, 'tree' => $tree['sha'], 'parents' => [$m['head']]]);
    [$status] = gh('PATCH', '/git/refs/heads/' . gh_branch(), ['sha' => $commit['sha'], 'force' => false]);
    if ($status === 422 || $status === 409) return false;
    if ($status < 200 || $status >= 300) fail('github-error', 502, ['status' => $status]);
    // Spiegel gleich nachziehen, ohne GitHub erneut zu fragen.
    $ins = store()->prepare('INSERT OR REPLACE INTO blobs (sha, content) VALUES (?, ?)');
    foreach ($files as $path => $content) {
        if ($content === null) {
            unset($m['files'][$path]);
            continue;
        }
        $sha = git_blob_sha($content);
        $ins->execute([$sha, $content]);
        $m['files'][$path] = $sha;
    }
    $m['head'] = $commit['sha'];
    $m['tree'] = $tree['sha'];
    $m['checked'] = time();
    meta_set('mirror', json_encode($m));
    return true;
}

/**
 * Ändert Fakten und schreibt sie als einen Commit. $plan bekommt die Datenbank und gibt
 * [[key => neue Felder (oder null = Datei löschen)], Commit-Text] zurück. Bewegt sich main
 * zwischendurch, wird einmal neu geladen und neu geplant.
 */
function change_facts(callable $plan): void
{
    for ($try = 0; $try < 3; $try++) {
        $m = mirror(true);
        $db = facts_db($m);
        [$changes, $message] = $plan($db);
        if (!$changes) return;
        $files = [];
        foreach ($changes as $key => $fields) {
            $path = fact_path($key);
            if (!isset($m['files'][$path])) fail('unknown-fact', 404, ['key' => $key]);
            if ($fields === null) {
                $files[$path] = null;
                continue;
            }
            $row = array_merge(fact_row($db, $key), $fields);
            $files[$path] = rewrite_fact_file(blob($m['files'][$path]), $row);
        }
        if (commit_files($m, $files, "Steuerung: $message")) return;
    }
    fail('conflict', 409);
}
