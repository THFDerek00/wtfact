// Prüft die Ideen im Geschenkfinder (src/data/gifts.ts, Wunsch von Eric, 2026-10-21).
// Fehler brechen den Build ab: doppelte Kennungen, unbekannte Werte, fehlende Texte, Emojis im Namen, Fakt ohne Datei in db/facts/,
// und vor allem die Abdeckung: Für jedes Alter × Interesse × Budget × Anlass muss es mindestens 3 Ideen geben.
import { build } from 'esbuild';
import { existsSync } from 'node:fs';
import { fileURLToPath } from 'node:url';

const ROOT = fileURLToPath(new URL('..', import.meta.url));
const out = await build({ entryPoints: [`${ROOT}src/data/gifts.ts`], bundle: true, write: false, format: 'esm', platform: 'node', logLevel: 'silent' });
const { GIFTS, OCCASIONS, WHO, INTERESTS } = await import(`data:text/javascript;base64,${Buffer.from(out.outputFiles[0].text).toString('base64')}`);

const MIN = 3;
const BUDGETS = [1, 2, 3];
const EMOJI = /\p{Extended_Pictographic}/u;
const errors = [];
const ids = new Set();
for (const g of GIFTS) {
  const where = `src/data/gifts.ts ${g.id}`;
  if (!/^[a-z0-9-]+$/.test(g.id ?? '')) errors.push(`${where}: Kennung nur aus a-z, 0-9 und -.`);
  if (ids.has(g.id)) errors.push(`${where}: Kennung doppelt.`);
  ids.add(g.id);
  if (!g.emoji || !EMOJI.test(g.emoji)) errors.push(`${where}: Emoji fehlt.`);
  if (!INTERESTS.includes(g.interest)) errors.push(`${where}: unbekanntes Interesse „${g.interest}“.`);
  if (!g.who?.length || g.who.some((w) => !WHO.includes(w))) errors.push(`${where}: who muss aus ${WHO.join(', ')} bestehen.`);
  if (!BUDGETS.includes(g.budget)) errors.push(`${where}: budget muss 1, 2 oder 3 sein.`);
  for (const key of ['occasions', 'only']) {
    if ((g[key] ?? []).some((o) => !OCCASIONS.includes(o))) errors.push(`${where}: unbekannter Anlass in ${key}.`);
  }
  if (g.fact && !existsSync(`${ROOT}db/facts/${g.fact}.sql`)) errors.push(`${where}: Fakt „${g.fact}“ gibt es nicht in db/facts/.`);
  for (const lang of ['de', 'en']) {
    for (const f of ['name', 'query', 'why']) {
      if (typeof g[lang]?.[f] !== 'string' || !g[lang][f].trim()) errors.push(`${where}: ${lang}.${f} fehlt.`);
    }
    if (EMOJI.test(g[lang]?.name ?? '')) errors.push(`${where}: keine Emojis im Namen (${lang}).`);
  }
}

// Abdeckung: Was der Besucher bei jeder Filterwahl mindestens sieht
const gaps = [];
for (const who of WHO) for (const interest of INTERESTS) for (const budget of BUDGETS) for (const occ of OCCASIONS) {
  const n = GIFTS.filter((g) => g.who.includes(who) && g.interest === interest && g.budget === budget && (!g.only || g.only.includes(occ))).length;
  if (n < MIN) gaps.push(`${who} × ${interest} × Budget ${budget} × ${occ}: ${n}`);
}
if (gaps.length) errors.push(`Weniger als ${MIN} Ideen für:\n  ${gaps.join('\n  ')}`);

if (errors.length) {
  console.error(`Geschenkfinder: ${errors.length} Fehler\n- ${errors.join('\n- ')}`);
  process.exit(1);
}
console.log(`Geschenkfinder: ${GIFTS.length} Ideen, jede Kombination aus ${WHO.length} Altersgruppen, ${INTERESTS.length} Interessen, ${BUDGETS.length} Budgets und ${OCCASIONS.length} Anlässen hat mindestens ${MIN}.`);
