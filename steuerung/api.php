<?php
// JSON-API des Dashboards (steuerung.wtfact.xyz). Die Oberfläche (app.html, gebaut aus
// src/pages/steuerung/index.astro) ruft api.php?r=<route> auf.
//
//   GET  ?r=session                              angemeldet? (liefert den CSRF-Schlüssel)
//   POST ?r=login       { user, password }
//   POST ?r=logout
//   GET  ?r=state                                alle Fakten mit Zustand, Slots, Bewertungen, Statistik, offene Fakten-PRs
//   POST ?r=schedule    { key, day, slot, time } einplanen: slot 1–3 = feste Zeit, 0 = Sonderveröffentlichung um time
//   POST ?r=unschedule  { key }                  zurück in den Pool
//   POST ?r=publish-now { key }                  sofort veröffentlichen
//   POST ?r=draft       { key, draft }           von der Seite nehmen bzw. wieder zeigen
//   POST ?r=delete      { key }                  löschen (nur Pool und offline)
//   POST ?r=merge       { number }               Wochen-PR mit neuen Fakten übernehmen
//   POST ?r=deploy                               Seite jetzt neu bauen und hochladen
//   GET  ?r=cron&token=…                         für die geplante Aufgabe in Plesk: lädt hoch, wenn ein Fakt fällig ist
//
// Jede Änderung ist ein Commit auf main (lib/facts.php). Der Upload zu IONOS folgt automatisch.

declare(strict_types=1);
require __DIR__ . '/lib/bootstrap.php';
require __DIR__ . '/lib/github.php';
require __DIR__ . '/lib/facts.php';
require __DIR__ . '/lib/ratings.php';
require __DIR__ . '/lib/auth.php';

const DAY = '/^\d{4}-\d{2}-\d{2}$/';
const TIME = '/^([01]\d|2[0-3]):[0-5]\d$/';
const DISPATCH_GAP = 600; // höchstens alle 10 Minuten automatisch hochladen

$route = str($_GET['r'] ?? '');
$method = $_SERVER['REQUEST_METHOD'] ?? 'GET';
header('X-Frame-Options: DENY');

function when(DateTimeImmutable $t): string
{
    $days = ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'];
    return $days[(int) $t->format('w')] . ' ' . $t->format('d.m. H:i');
}

/** Lädt die Seite neu hoch, wenn ein Fakt fällig ist oder ein offline genommener noch online steht. */
function kick_if_due(PDO $db): ?string
{
    $live = live_keys();
    if ($live === null) return null;
    $reason = null;
    foreach (list_facts($db, $live) as $f) {
        if ($f['status'] === 'due') $reason = 'due';
        if ($f['status'] === 'offline' && in_array($f['key'], $live, true)) $reason = 'offline';
    }
    if (!$reason) return null;
    if (time() - (int) (meta_get('dispatched_at') ?? 0) < DISPATCH_GAP) return 'waiting';
    meta_set('dispatched_at', (string) time());
    return gh_dispatch() ? 'started' : 'failed';
}

function require_key(): string
{
    $key = str(body()['key'] ?? '');
    if (!preg_match('/^[a-z0-9][a-z0-9-]*$/', $key)) fail('bad-request');
    return $key;
}

function current_status(PDO $db, string $key): array
{
    $f = fact_row($db, $key);
    if (!$f) fail('unknown-fact', 404);
    return [$f, fact_status($f, now(), live_keys())];
}

if ($route === 'session' && $method === 'GET') {
    out(signed_in() ? ['user' => $_SESSION['user'], 'csrf' => csrf()] : ['user' => null]);
}

if ($route === 'login' && $method === 'POST') {
    $b = body();
    login(str($b['user'] ?? ''), str($b['password'] ?? ''));
    out(['user' => $_SESSION['user'], 'csrf' => csrf()]);
}

if ($route === 'logout' && $method === 'POST') {
    logout();
    out(['user' => null]);
}

if ($route === 'cron' && $method === 'GET') {
    $token = (string) cfg('cron_token', '');
    if ($token === '' || !hash_equals($token, str($_GET['token'] ?? ''))) fail('forbidden', 403);
    out(['deploy' => kick_if_due(facts_db(mirror()))]);
}

require_login();

if ($route === 'state' && $method === 'GET') {
    $m = mirror(!empty($_GET['fresh']));
    $db = facts_db($m);
    $live = live_keys();
    $ratings = all_ratings();
    $facts = list_facts($db, $live);
    foreach ($facts as &$f) {
        $r = $ratings[$f['key']] ?? ['like' => 0, 'meh' => 0];
        $f['like'] = $r['like'];
        $f['meh'] = $r['meh'];
    }
    unset($f);
    $prs = [];
    [$status, $pulls] = gh('GET', '/pulls?state=open&per_page=50');
    if ($status === 200) {
        foreach ($pulls as $p) {
            $ref = $p['head']['ref'] ?? '';
            if (str_starts_with($ref, 'woche/') || str_starts_with($ref, 'beitrag/')) {
                $prs[] = ['number' => $p['number'], 'title' => $p['title'], 'url' => $p['html_url'], 'branch' => $ref, 'draft' => !empty($p['draft'])];
            }
        }
    }
    out([
        'now' => now()->format(DATE_ATOM),
        'slots' => slot_times(),
        'facts' => $facts,
        'ratings' => $ratings !== null,
        'stats' => community_stats(),
        'liveKnown' => $live !== null,
        'prs' => $prs,
        'head' => substr($m['head'], 0, 7),
        'repo' => 'https://github.com/' . gh_repo(),
        'site' => rtrim((string) cfg('site', 'https://wtfact.xyz'), '/'),
        'deploy' => kick_if_due($db),
    ]);
}

if ($route === 'schedule' && $method === 'POST') {
    $b = body();
    $key = require_key();
    $day = str($b['day'] ?? '');
    $slot = is_int($b['slot'] ?? null) ? $b['slot'] : -1;
    if (!preg_match(DAY, $day) || $slot < 0 || $slot > 3) fail('bad-request');
    $times = slot_times();
    $time = $slot > 0 ? ($times[$slot - 1] ?? '') : str($b['time'] ?? '');
    if (!preg_match(TIME, $time)) fail('bad-request');
    $at = new DateTimeImmutable("$day $time:00", tz());
    if ($at <= now()) fail('past');
    $date = $at->format('Y-m-d\TH:i:sP');
    change_facts(function (PDO $db) use ($key, $day, $slot, $date, $at) {
        [$f, $st] = current_status($db, $key);
        if ($st === 'live' || $st === 'due') fail('already-live');
        $changes = [$key => ['date' => $date, 'slot' => $slot, 'draft' => 0]];
        $title = fact_title($db, $key);
        $msg = "Eingeplant: {$title} (" . when($at) . ($slot ? ", Slot $slot)" : ', Sonderveröffentlichung)');
        if ($slot > 0) {
            // Belegter Slot: Die Fakten tauschen die Plätze (oder der bisherige geht zurück in den Pool).
            $s = $db->prepare('SELECT key, date, draft, slot FROM facts WHERE slot = ? AND key <> ? AND draft = 0');
            $s->execute([$slot, $key]);
            foreach ($s as $o) {
                $ot = fact_time($o['date']);
                if (!$ot || $ot->format('Y-m-d') !== $day || $ot <= now()) continue;
                $fromSlot = $st === 'planned' && $f['slot'] !== null && (int) $f['slot'] > 0;
                $changes[$o['key']] = $fromSlot ? ['date' => $f['date'], 'slot' => (int) $f['slot']] : ['date' => null, 'slot' => null];
                $msg .= ($fromSlot ? "\n\nGetauscht mit: " : "\n\nZurück in den Pool: ") . fact_title($db, $o['key']);
            }
        }
        return [$changes, $msg];
    });
    out(['ok' => true]);
}

if ($route === 'unschedule' && $method === 'POST') {
    $key = require_key();
    change_facts(function (PDO $db) use ($key) {
        [, $st] = current_status($db, $key);
        if ($st === 'live' || $st === 'due') fail('already-live');
        if ($st === 'pool') return [[], ''];
        return [[$key => ['date' => null, 'slot' => null, 'draft' => 0]], 'Zurück in den Pool: ' . fact_title($db, $key)];
    });
    out(['ok' => true]);
}

if ($route === 'publish-now' && $method === 'POST') {
    $key = require_key();
    $date = now()->format('Y-m-d\TH:i:sP');
    change_facts(function (PDO $db) use ($key, $date) {
        [, $st] = current_status($db, $key);
        if ($st === 'live' || $st === 'due') return [[], ''];
        return [[$key => ['date' => $date, 'slot' => 0, 'draft' => 0]], 'Sofort veröffentlicht: ' . fact_title($db, $key)];
    });
    meta_set('dispatched_at', (string) time());
    out(['ok' => true, 'deploy' => gh_dispatch() ? 'started' : 'failed']);
}

if ($route === 'draft' && $method === 'POST') {
    $key = require_key();
    $draft = !empty(body()['draft']);
    change_facts(function (PDO $db) use ($key, $draft) {
        [$f] = current_status($db, $key);
        if ((bool) $f['draft'] === $draft) return [[], ''];
        return [[$key => ['draft' => $draft ? 1 : 0]], ($draft ? 'Offline genommen: ' : 'Wieder online: ') . fact_title($db, $key)];
    });
    out(['ok' => true]);
}

if ($route === 'delete' && $method === 'POST') {
    $key = require_key();
    change_facts(function (PDO $db) use ($key) {
        [, $st] = current_status($db, $key);
        if ($st !== 'pool' && $st !== 'offline') fail('not-deletable');
        return [[$key => null], 'Gelöscht: ' . fact_title($db, $key)];
    });
    out(['ok' => true]);
}

if ($route === 'merge' && $method === 'POST') {
    $n = body()['number'] ?? null;
    if (!is_int($n)) fail('bad-request');
    [$status, $data] = gh('GET', "/pulls/$n");
    $ref = $status === 200 ? ($data['head']['ref'] ?? '') : '';
    if (!str_starts_with($ref, 'woche/') && !str_starts_with($ref, 'beitrag/')) fail('not-a-fact-pr');
    [$status, $data] = gh('PUT', "/pulls/$n/merge", ['merge_method' => 'merge']);
    if ($status !== 200) fail('merge-failed', 409, ['message' => $data['message'] ?? '']);
    mirror(true);
    out(['ok' => true]);
}

if ($route === 'deploy' && $method === 'POST') {
    meta_set('dispatched_at', (string) time());
    out(['deploy' => gh_dispatch() ? 'started' : 'failed']);
}

fail('not-found', 404);
