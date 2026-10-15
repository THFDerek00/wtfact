// Muss die Seite neu hochgeladen werden? Vergleicht, welche Fakten jetzt sichtbar sein sollten (nicht offline,
// Termin erreicht), mit der facts.json, die gerade online ist. Unterschied = ein Fakt ist fällig (oder wurde offline
// genommen) und die Seite muss neu gebaut werden. Benutzt vom stündlichen Lauf in .github/workflows/deploy.yml.
//
//   node scripts/due-check.mjs <facts.json von der Seite> [<fest.json von der Seite>]
//
// Feiertage (Wunsch von Eric, 2026-10-15): Ist heute oder am Tag des letzten Uploads ein Feiertag und wurde nicht heute
// gebaut, ist die Seite auch fällig, damit sie um 0 Uhr ins Design des Festes wechselt und am Tag danach zurück.
//
// Schreibt due=true|false nach $GITHUB_OUTPUT (falls gesetzt) und auf die Konsole.
import fs from 'node:fs';
import { build, open, readFacts } from './facts-db.mjs';

const [liveFile, festFile] = process.argv.slice(2);
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
let festDue = false;
try {
  const fest = JSON.parse(fs.readFileSync(festFile, 'utf8'));
  const today = new Intl.DateTimeFormat('en-CA', { timeZone: 'Europe/Berlin', year: 'numeric', month: '2-digit', day: '2-digit' }).format(new Date());
  festDue = fest.built !== today && (fest.holidays.includes(today) || fest.holidays.includes(fest.built));
  if (festDue) console.log(`Feiertag: Seite von ${fest.built}, heute ${today}.`);
} catch {
  /* ohne fest.json (älterer Upload) nur nach Fakten entscheiden */
}
const due = !live || added.length > 0 || removed.length > 0 || festDue;
if (added.length) console.log(`Fällig: ${added.join(', ')}`);
if (removed.length) console.log(`Nicht mehr sichtbar: ${removed.join(', ')}`);
if (!due) console.log('Nichts fällig.');
if (process.env.GITHUB_OUTPUT) fs.appendFileSync(process.env.GITHUB_OUTPUT, `due=${due}\n`);
