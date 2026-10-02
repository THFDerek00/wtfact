// Prüft die Gold-Fakten aus dem Science Jumper (Tabelle gold_facts, Dateien in db/gold/).
// Läuft vor jedem Build. Gold-Fakten sind Fakten wie alle anderen: gleiche Quellenregeln
// wie in docs/styleguide.md, dazu die Regeln für die Freischalt-Stufen.
import fs from 'node:fs';
import { host, countWords } from './post-rules.mjs';
import { open, readGold } from './facts-db.mjs';

export const GOLD = { last: 1000, minBeforeLast: 10, minWords: 50, maxWords: 130, minSources: 2, sourcesBesideWikipedia: 2 };

const EMOJI = /\p{Extended_Pictographic}/u;
const FILLER = /\b(verrückt\w*|crazy|wild)\b/gi;
const numbers = (s) => (s.match(/\d[\d.,]*\d|\d/g) ?? []).map((n) => n.replace(/[.,]/g, ''));
// Runde Stufen: bis 20 in Fünferschritten, danach nur Vielfache von 25 (50, 75, 100 … statt 66).
const roundStep = (p) => (p <= 20 ? p % 5 === 0 : p % 25 === 0);

const categories = [...fs.readFileSync('src/config.ts', 'utf8').match(/CATEGORIES\s*=\s*\[([^\]]*)\]/)[1].matchAll(/'([\w-]+)'/g)].map((m) => m[1]);
const db = open();
const facts = readGold(db);
db.close();
const problems = [];
const ids = new Set();

for (const f of facts) {
  const at = `Gold-Fakt ${f.id ?? '(ohne id)'}`;
  if (!f.id || ids.has(f.id)) problems.push(`${at}: id fehlt oder doppelt`);
  ids.add(f.id);
  if (!Number.isInteger(f.points) || f.points <= 0) problems.push(`${at}: Punkte müssen eine positive ganze Zahl sein`);
  else if (!roundStep(f.points)) problems.push(`${at}: ${f.points} Punkte ist keine runde Stufe (bis 20 in 5er-, danach in 25er-Schritten)`);
  if (!categories.includes(f.category)) problems.push(`${at}: unbekannte Kategorie "${f.category}"`);
  if (!f.emoji) problems.push(`${at}: Emoji fehlt`);

  for (const lang of ['de', 'en']) {
    const c = f[lang];
    if (!c?.title?.trim() || !c?.text?.trim()) { problems.push(`${at} (${lang}): Titel oder Text fehlt`); continue; }
    const words = countWords(c.text);
    if (words < GOLD.minWords || words > GOLD.maxWords) problems.push(`${at} (${lang}): ${words} Wörter, erlaubt sind ${GOLD.minWords} bis ${GOLD.maxWords}`);
    if (EMOJI.test(c.text) || EMOJI.test(c.title)) problems.push(`${at} (${lang}): Emoji in Titel oder Text`);
    if ((c.text.match(FILLER) ?? []).length > 1) problems.push(`${at} (${lang}): Füllwort zu oft`);
    const inText = new Set(numbers(c.text));
    for (const n of numbers(c.title)) if (!inText.has(n)) problems.push(`${at} (${lang}): Zahl ${n} aus dem Titel steht nicht im Text`);
  }

  const sources = f.sources ?? [];
  if (sources.some((s) => !s.label || !/^https:\/\//.test(s.url))) problems.push(`${at}: Quelle ohne Titel oder ohne https-Link`);
  const hosts = new Set(sources.map((s) => host(s.url)).filter(Boolean));
  if ([...hosts].some((h) => /^example\./.test(h))) problems.push(`${at}: Platzhalter-Quelle`);
  if (hosts.size < GOLD.minSources) problems.push(`${at}: ${hosts.size} unabhängige Quellen, nötig sind mindestens ${GOLD.minSources}`);
  if (hosts.has('wikipedia.org')) {
    const others = [...hosts].filter((h) => h !== 'wikipedia.org').length;
    if (others < GOLD.sourcesBesideWikipedia) problems.push(`${at}: Wikipedia zitiert, aber nur ${others} weitere unabhängige Quelle(n), nötig sind ${GOLD.sourcesBesideWikipedia}`);
  }
}

// Freischalt-Stufen
const pts = facts.map((f) => f.points).sort((a, b) => a - b);
if (new Set(pts).size !== pts.length) problems.push('Zwei Gold-Fakten haben dieselbe Punktzahl');
if (pts.at(-1) !== GOLD.last) problems.push(`Der letzte Gold-Fakt muss bei ${GOLD.last} Punkten liegen, nicht bei ${pts.at(-1)}`);
if (pts.length - 1 < GOLD.minBeforeLast) problems.push(`Vor dem letzten Gold-Fakt braucht es mindestens ${GOLD.minBeforeLast}, es sind ${pts.length - 1}`);

if (problems.length) {
  console.error(`Gold-Fakten-Prüfung fehlgeschlagen (${problems.length}):\n- ${problems.join('\n- ')}`);
  console.error('Regeln: docs/styleguide.md (Abschnitt Gold-Fakten)');
  process.exit(1);
}
console.log(`Gold-Fakten-Prüfung bestanden: ${facts.length} Fakten, Stufen ${pts.join(', ')}.`);
