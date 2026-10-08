// Muss die Seite neu hochgeladen werden? Vergleicht, welche Fakten jetzt sichtbar sein sollten (nicht offline,
// Termin erreicht), mit der facts.json, die gerade online ist. Unterschied = ein Fakt ist fällig (oder wurde offline
// genommen) und die Seite muss neu gebaut werden. Benutzt vom stündlichen Lauf in .github/workflows/deploy.yml.
//
//   node scripts/due-check.mjs <facts.json von der Seite>
//
// Schreibt due=true|false nach $GITHUB_OUTPUT (falls gesetzt) und auf die Konsole.
import fs from 'node:fs';
import { build, open, readFacts } from './facts-db.mjs';

const [liveFile] = process.argv.slice(2);
let live = null;
try {
  live = new Set(JSON.parse(fs.readFileSync(liveFile, 'utf8')).map((f) => f.key));
} catch {
  console.log('facts.json der Seite nicht lesbar, lade sicherheitshalber neu hoch.');
}

build({ quiet: true });
const db = open();
const now = Date.now();
const visible = new Set(readFacts(db).filter((f) => !f.draft && f.date && Date.parse(f.date) <= now && f.de).map((f) => f.key));
db.close();

const added = live ? [...visible].filter((k) => !live.has(k)) : [];
const removed = live ? [...live].filter((k) => !visible.has(k)) : [];
const due = !live || added.length > 0 || removed.length > 0;
if (added.length) console.log(`Fällig: ${added.join(', ')}`);
if (removed.length) console.log(`Nicht mehr sichtbar: ${removed.join(', ')}`);
if (!due) console.log('Nichts fällig.');
if (process.env.GITHUB_OUTPUT) fs.appendFileSync(process.env.GITHUB_OUTPUT, `due=${due}\n`);
