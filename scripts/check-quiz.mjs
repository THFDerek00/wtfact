// Prüft die Quizfragen für „Wahr oder Fake?“ und „Was war zuerst?“ (src/data/quiz.ts, Wunsch von Eric, 2026-10-10).
// Fehler brechen den Build ab: doppelte Kennungen, fehlende Texte, kein Samstag als Startdatum, gleiche Jahre im Duell,
// Quellen ohne https, Emojis im Text. Nur eine Warnung: weniger als 2 Samstage Nachschub (jeden Samstag kommen 5 dazu).
import { build } from 'esbuild';
import { fileURLToPath } from 'node:url';

const ROOT = fileURLToPath(new URL('..', import.meta.url));
const out = await build({ entryPoints: [`${ROOT}src/data/quiz.ts`], bundle: true, write: false, format: 'esm', platform: 'node', logLevel: 'silent' });
const { WOF, FIRST } = await import(`data:text/javascript;base64,${Buffer.from(out.outputFiles[0].text).toString('base64')}`);

const CATS = (await import(`data:text/javascript;base64,${Buffer.from((await build({ entryPoints: [`${ROOT}src/config.ts`], bundle: true, write: false, format: 'esm', logLevel: 'silent' })).outputFiles[0].text).toString('base64')}`)).CATEGORIES;
const errors = [];
const EMOJI = /\p{Extended_Pictographic}/u;
const PER_WEEK = 5;
const isSaturday = (d) => /^\d{4}-\d{2}-\d{2}$/.test(d) && new Date(`${d}T12:00:00Z`).getUTCDay() === 6;
const text = (where, s, max) => {
  if (typeof s !== 'string' || !s.trim()) errors.push(`${where}: Text fehlt.`);
  else if (EMOJI.test(s)) errors.push(`${where}: keine Emojis im Text.`);
  else if (s.length > max) errors.push(`${where}: zu lang (${s.length} Zeichen, höchstens ${max}).`);
};
const sources = (where, list) => {
  if (!Array.isArray(list) || !list.length) errors.push(`${where}: Quelle fehlt.`);
  for (const s of list ?? []) {
    if (!s.label?.includes(':')) errors.push(`${where}: Quellenname im Format „Herausgeber: Titel“.`);
    if (!/^https:\/\//.test(s.url ?? '')) errors.push(`${where}: Quelle braucht eine https-Adresse.`);
  }
};

function check(name, items, one) {
  const ids = new Set();
  for (const x of items) {
    const where = `src/data/quiz-${name}.ts ${x.id}`;
    if (!/^[a-z0-9-]+$/.test(x.id ?? '')) errors.push(`${where}: Kennung nur aus a-z, 0-9 und -.`);
    if (ids.has(x.id)) errors.push(`${where}: Kennung doppelt.`);
    ids.add(x.id);
    if (!isSaturday(x.from)) errors.push(`${where}: from muss ein Samstag sein (JJJJ-MM-TT).`);
    sources(where, x.sources);
    one(x, where);
  }
  // Nachschub: so viele Samstage sind schon eingeplant
  const today = new Date().toISOString().slice(0, 10);
  const weeks = new Set(items.map((x) => x.from).filter((d) => d > today));
  if (weeks.size < 2) console.warn(`  ! ${name}: nur noch ${weeks.size} Samstag(e) mit neuen Fragen eingeplant. Bitte ${PER_WEEK} neue je Samstag nachlegen.`);
  return items.length;
}

const nWof = check('wof', WOF, (x, w) => {
  if (!CATS.includes(x.cat)) errors.push(`${w}: unbekannte Kategorie „${x.cat}“.`);
  if (typeof x.answer !== 'boolean') errors.push(`${w}: answer muss true oder false sein.`);
  for (const l of ['de', 'en']) { text(`${w} ${l}.q`, x[l]?.q, 140); text(`${w} ${l}.why`, x[l]?.why, 260); }
});
const nFirst = check('first', FIRST, (x, w) => {
  for (const side of ['a', 'b']) {
    const s = x[side];
    if (!CATS.includes(s?.cat)) errors.push(`${w} ${side}: unbekannte Kategorie „${s?.cat}“.`);
    if (!Number.isInteger(s?.year)) errors.push(`${w} ${side}: year muss eine ganze Zahl sein.`);
    for (const l of ['de', 'en']) text(`${w} ${side}.${l}`, s?.[l], 80);
  }
  if (x.a?.year === x.b?.year) errors.push(`${w}: beide Ereignisse im selben Jahr, das Duell ist nicht eindeutig.`);
  for (const l of ['de', 'en']) text(`${w} ${l}.why`, x[l]?.why, 260);
});

if (errors.length) {
  console.error(`Quiz-Prüfung: ${errors.length} Problem(e)\n`);
  for (const e of errors) console.error(`  ✗ ${e}`);
  process.exit(1);
}
console.log(`Quiz-Prüfung: ${nWof} Aussagen für Wahr oder Fake, ${nFirst} Duelle für Was war zuerst ok.`);
