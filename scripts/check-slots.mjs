// Prüft, dass die festen Veröffentlichungszeiten überall gleich sind (Wunsch von Eric, 2026-10-08: 8, 12, 16 Uhr):
// src/config.ts (SLOT_TIMES, Countdown der WTF-Charts), steuerung/lib/bootstrap.php (Dashboard) und
// .github/workflows/deploy.yml (Standard für STEUERUNG_SLOTS).
import { readFileSync } from 'node:fs';

const read = (f) => readFileSync(new URL(`../${f}`, import.meta.url), 'utf8');
const times = (s) => [...s.matchAll(/\d\d:\d\d/g)].map((m) => m[0]).join(',');
const found = {
  'src/config.ts': times(read('src/config.ts').match(/SLOT_TIMES = \[([^\]]*)\]/)?.[1] ?? ''),
  'steuerung/lib/bootstrap.php': times(read('steuerung/lib/bootstrap.php').match(/cfg\('slots', \[([^\]]*)\]/)?.[1] ?? ''),
  '.github/workflows/deploy.yml': times(read('.github/workflows/deploy.yml').match(/STEUERUNG_SLOTS \|\| '([^']*)'/)?.[1] ?? ''),
};
const values = new Set(Object.values(found));
if (values.size !== 1 || values.has('')) {
  console.error('Veröffentlichungszeiten stimmen nicht überein:');
  for (const [f, v] of Object.entries(found)) console.error(`  ${f}: ${v || '(nicht gefunden)'}`);
  process.exit(1);
}
console.log(`Veröffentlichungszeiten ok: ${[...values][0]}.`);
