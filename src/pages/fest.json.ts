// Feiertags-Stand des letzten Uploads (Wunsch von Eric, 2026-10-15): An einem Feiertag stellt die Seite um 0 Uhr auf das
// Design des Festes um, am Tag danach wieder zurück. Dafür muss sie an diesen Tagen neu gebaut werden, auch wenn kein
// Fakt fällig ist. Das Dashboard (steuerung/api.php, kick_if_due) und scripts/due-check.mjs lesen diese Datei:
// Ist heute oder am Bautag ein Feiertag und der Bautag nicht heute, wird neu hochgeladen.
// Seit 2026-10-21 zählen auch alle Tage der Weihnachtszeit dazu (src/data/advent.ts), damit Kalender und Look jeden Tag
// frisch sind. `advent` nennt die Türchen-Fakten, die das Dashboard nicht umplanen lässt (wie Feiertags-Fakten).
import { HOLIDAYS } from '../data/holidays';
import { DOORS, seasonDays, doorKeys } from '../data/advent';
import { berlinDay } from '../week';

export async function GET() {
  const days = new Set([...HOLIDAYS.flatMap((h) => h.dates), ...Object.keys(DOORS).flatMap((y) => seasonDays(Number(y)))]);
  const body = { built: berlinDay(), holidays: [...days].sort(), advent: doorKeys() };
  return new Response(JSON.stringify(body), { headers: { 'content-type': 'application/json; charset=utf-8' } });
}
