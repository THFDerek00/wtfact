// Feiertags-Stand des letzten Uploads (Wunsch von Eric, 2026-10-15): An einem Feiertag stellt die Seite um 0 Uhr auf das
// Design des Festes um, am Tag danach wieder zurück. Dafür muss sie an diesen Tagen neu gebaut werden, auch wenn kein
// Fakt fällig ist. Das Dashboard (steuerung/api.php, kick_if_due) und scripts/due-check.mjs lesen diese Datei:
// Ist heute oder am Bautag ein Feiertag und der Bautag nicht heute, wird neu hochgeladen.
import { HOLIDAYS } from '../data/holidays';
import { berlinDay } from '../week';

export async function GET() {
  const body = { built: berlinDay(), holidays: HOLIDAYS.flatMap((h) => h.dates).sort() };
  return new Response(JSON.stringify(body), { headers: { 'content-type': 'application/json; charset=utf-8' } });
}
