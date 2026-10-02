// Prüft alle Fakten in der Datenbank gegen die Regeln aus docs/styleguide.md.
// Läuft vor jedem Build (npm run build) und bricht ihn bei Verstößen ab.
// Aufruf: node scripts/check-posts.mjs (nach npm run db:build)

import { checkPost, checkPair } from './post-rules.mjs';
import { open, readFacts, FACTS_DIR } from './facts-db.mjs';

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
  if (f.de && f.en) for (const p of checkPair({ ...f.de, category: f.category }, { ...f.en, category: f.category })) failures.push(`${where}: ${p}`);
}

if (failures.length) {
  console.error(`Beitragsprüfung fehlgeschlagen (${failures.length}):\n- ${failures.join('\n- ')}`);
  console.error('Regeln: docs/styleguide.md');
  process.exit(1);
}
console.log(`Beitragsprüfung bestanden: ${facts.length} Beiträge in 2 Sprachen.`);
