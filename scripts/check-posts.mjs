// Prüft alle Fakten in der Datenbank gegen die Regeln aus docs/styleguide.md.
// Läuft vor jedem Build (npm run build) und bricht ihn bei Verstößen ab.
// Aufruf: node scripts/check-posts.mjs (nach npm run db:build)

import { checkPost, checkPair } from './post-rules.mjs';
import fs from 'node:fs';
import { open, readFacts, FACTS_DIR } from './facts-db.mjs';

// Feiertags-Kalender (src/data/holidays.ts): Fakten der Kategorie „holiday“ erscheinen nur an einem dieser Tage.
const holidayDates = [...fs.readFileSync('src/data/holidays.ts', 'utf8').matchAll(/'(\d{4}-\d{2}-\d{2})'/g)].map((m) => m[1]);
const holidayDays = new Set(holidayDates);
const berlinDay = (date) =>
  /^\d{4}-\d{2}-\d{2}$/.test(date) ? date : new Intl.DateTimeFormat('en-CA', { timeZone: 'Europe/Berlin', year: 'numeric', month: '2-digit', day: '2-digit' }).format(new Date(date));

const failures = [];
const db = open();
const facts = readFacts(db);
db.close();

for (const f of facts) {
  const where = `${FACTS_DIR}/${f.key}.sql`;
  for (const lang of ['de', 'en']) {
    if (!f[lang]) {
      failures.push(`${where}: Sprachversion fehlt (${lang})`);
      continue;
    }
    for (const p of checkPost({ ...f[lang], category: f.category })) failures.push(`${where} (${lang}): ${p}`);
  }
  if (f.category === 'holiday' && f.date && !holidayDays.has(berlinDay(f.date)))
    failures.push(`${where}: Feiertags-Fakt am ${berlinDay(f.date)}, das ist kein Termin aus src/data/holidays.ts`);
  if (f.de && f.en) for (const p of checkPair({ ...f.de, category: f.category }, { ...f.en, category: f.category })) failures.push(`${where}: ${p}`);
}

// Adventskalender (src/data/advent.ts): Jedes Türchen nennt Fakten, die es gibt und die um 0 Uhr (deutsche Zeit) ihres Tages erscheinen.
const adventSrc = fs.readFileSync('src/data/advent.ts', 'utf8');
const doorsSrc = adventSrc.match(/export const DOORS[\s\S]*?\n};/)?.[0] ?? '';
if (!doorsSrc) failures.push('src/data/advent.ts: DOORS fehlt');
const byKey = new Map(facts.map((f) => [f.key, f]));
const berlinTime = (date) => new Intl.DateTimeFormat('en-GB', { timeZone: 'Europe/Berlin', hour: '2-digit', minute: '2-digit', hourCycle: 'h23' }).format(new Date(date));
for (const ym of doorsSrc.matchAll(/(\d{4}): \{([\s\S]*?)\n  \}/g)) {
  const doorsSeen = new Set();
  for (const dm of ym[2].matchAll(/(\d+): \[([^\]]*)\]/g)) {
    const day = `${ym[1]}-12-${dm[1].padStart(2, '0')}`;
    doorsSeen.add(Number(dm[1]));
    for (const [, key] of dm[2].matchAll(/'([\w-]+)'/g)) {
      const f = byKey.get(key);
      if (!f) { failures.push(`src/data/advent.ts: Türchen ${dm[1]}/${ym[1]} nennt „${key}“, den Fakt gibt es nicht`); continue; }
      if (!f.date || berlinDay(f.date) !== day || berlinTime(f.date) !== '00:00')
        failures.push(`${FACTS_DIR}/${key}.sql: Türchen-Fakt muss am ${day} um 00:00 (deutsche Zeit) erscheinen, steht auf ${f.date ?? 'Pool'}`);
      if (f.draft) failures.push(`${FACTS_DIR}/${key}.sql: Türchen-Fakt ist ein Entwurf`);
    }
  }
  for (let d = 1; d <= 24; d++) if (!doorsSeen.has(d)) failures.push(`src/data/advent.ts: ${ym[1]} fehlt Türchen ${d}`);
}

// Höchstens ein Feiertag pro Tag, sonst ist unklar, welches Thema ein Feiertags-Fakt bekommt.
for (const day of holidayDays) if (holidayDates.filter((d) => d === day).length > 1) failures.push(`src/data/holidays.ts: zwei Feiertage am ${day}`);

if (failures.length) {
  console.error(`Beitragsprüfung fehlgeschlagen (${failures.length}):\n- ${failures.join('\n- ')}`);
  console.error('Regeln: docs/styleguide.md');
  process.exit(1);
}
console.log(`Beitragsprüfung bestanden: ${facts.length} Beiträge in 2 Sprachen.`);
