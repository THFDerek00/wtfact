<?php
// Kalender für Montags-Abstimmung, Fakt der Woche und Fakt des Tages.
// PHP-Fassung von src/week.ts: beide müssen dieselben Tage rechnen, sonst zeigen Seite und Server
// verschiedene Gewinner. Wer hier etwas ändert, ändert es auch dort (und umgekehrt).
// Alle Tage sind deutsche Kalendertage (Europe/Berlin) im Format JJJJ-MM-TT.

const WTF_TZ = 'Europe/Berlin';
const HISTORY_DAYS = 30;
const HISTORY_WEEKS = 12;

/** Heutiger Tag in Deutschland. */
function berlin_day(?int $ts = null): string
{
    $d = new DateTimeImmutable('@' . ($ts ?? time()));
    return $d->setTimezone(new DateTimeZone(WTF_TZ))->format('Y-m-d');
}

function add_days(string $day, int $n): string
{
    return gmdate('Y-m-d', strtotime($day . ' 00:00:00 UTC') + $n * 86400);
}

/** Montag der laufenden Woche (heute, falls heute Montag ist). */
function monday_of(string $day): string
{
    $wd = (int) gmdate('w', strtotime($day . ' 00:00:00 UTC')); // 0 = Sonntag, 1 = Montag
    return add_days($day, -(($wd + 6) % 7));
}

/** Stand der Woche an einem Tag, Schlüssel wie weekState() in src/week.ts. */
function week_state(string $today): array
{
    $monday = monday_of($today);
    $open = $monday === $today;
    return [
        'today' => $today,
        'openPoll' => $open ? $monday : null,
        'featuredPoll' => $open ? add_days($monday, -7) : $monday,
        'nextPoll' => $open ? $monday : add_days($monday, 7),
    ];
}

/** Fakten, über die am Montag $poll abgestimmt wird: alle aus den sieben Tagen davor. */
function in_poll(string $factDay, string $poll): bool
{
    return $factDay >= add_days($poll, -7) && $factDay <= add_days($poll, -1);
}

/** Anteil „Gefällt mir“ (0 ohne Bewertungen). */
function like_share(array $ratings, string $key): float
{
    $r = $ratings[$key] ?? null;
    return $r && $r['like'] + $r['meh'] > 0 ? $r['like'] / ($r['like'] + $r['meh']) : 0.0;
}

function cmp_num(float $a, float $b): int
{
    return $a <=> $b;
}

/**
 * Gewinner einer Abstimmung. Bei Gleichstand entscheiden die Wisch-Bewertungen
 * (Anteil „Gefällt mir“), danach der neuere Fakt. Ohne eine einzige Stimme gibt es keinen Gewinner.
 */
function pick_winner(array $candidates, array $votes, array $ratings = []): ?string
{
    $ranked = array_values(array_filter($candidates, function ($c) use ($votes) {
        return ($votes[$c['key']] ?? 0) > 0;
    }));
    usort($ranked, function ($a, $b) use ($votes, $ratings) {
        return cmp_num($votes[$b['key']] ?? 0, $votes[$a['key']] ?? 0)
            ?: cmp_num(like_share($ratings, $b['key']), like_share($ratings, $a['key']))
            ?: strcmp($b['date'], $a['date']);
    });
    return $ranked[0]['key'] ?? null;
}

// Fester Zufall pro Tag und Fakt (FNV-1a), damit jeder Besucher dasselbe Los sieht. Gleich wie lot() in week.ts.
function lot(string $day, string $key): int
{
    $h = 0x811c9dc5;
    foreach (preg_split('//u', "$day:$key", -1, PREG_SPLIT_NO_EMPTY) as $ch) {
        $code = mb_ord($ch, 'UTF-8');
        if ($code > 0xffff) $code = 0xd800 + (($code - 0x10000) >> 10); // erste UTF-16-Einheit wie charCodeAt(0)
        $h = (($h ^ $code) * 0x01000193) & 0xffffffff;
    }
    return $h;
}

/** Fakt des Tages für $today aus den Fakten von gestern, oder null, wenn gestern keiner erschienen ist. */
function pick_fact_of_day(array $facts, array $ratings, string $today): ?array
{
    $day = add_days($today, -1);
    $ranked = array_values(array_filter($facts, function ($f) use ($day) {
        return $f['date'] === $day;
    }));
    usort($ranked, function ($a, $b) use ($ratings, $today) {
        return cmp_num(like_share($ratings, $b['key']), like_share($ratings, $a['key']))
            ?: lot($today, $a['key']) <=> lot($today, $b['key']);
    });
    return $ranked ? ['day' => $day, 'key' => $ranked[0]['key']] : null;
}

/** Beginn eines deutschen Tages in UTC, Format „JJJJ-MM-TT HH:MM:SS“ (so steht created_at in der Datenbank). */
function day_start_utc(string $day): string
{
    $d = new DateTimeImmutable($day . ' 00:00:00', new DateTimeZone(WTF_TZ));
    return $d->setTimezone(new DateTimeZone('UTC'))->format('Y-m-d H:i:s');
}

/** Die letzten $n Tage bis $today, neuester zuerst. */
function last_days(string $today, int $n = HISTORY_DAYS): array
{
    $out = [];
    for ($i = 0; $i < $n; $i++) $out[] = add_days($today, -$i);
    return $out;
}

/** Abgeschlossene Abstimmungs-Montage, neuester zuerst. */
function past_polls(string $today, int $n = HISTORY_WEEKS): array
{
    $first = week_state($today)['featuredPoll'];
    $out = [];
    for ($i = 0; $i < $n; $i++) $out[] = add_days($first, -7 * $i);
    return $out;
}
