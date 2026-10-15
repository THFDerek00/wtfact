// Prüfregeln für Beiträge. Gelten für neue Beiträge aus generate-post.mjs und für alle
// vorhandenen Beiträge bei jedem Build (check-posts.mjs). Siehe docs/styleguide.md.

export const LIMITS = { minWords: 250, maxWords: 450, minHeadings: 2, maxHeadings: 3, products: 2, minSources: 2, sourcesBesideWikipedia: 2 };
// Feiertags-Fakten sind etwas Besonderes und dürfen mehr (Wunsch von Eric, 2026-10-15): länger, freiere Gliederung,
// bis zu 4 Produkte. Wahrheit und Quellen gelten genauso.
export const HOLIDAY_LIMITS = { minWords: 200, maxWords: 650, minHeadings: 1, maxHeadings: 4, minQuotes: 0, maxQuotes: 2, minProducts: 2, maxProducts: 4 };

const FILLER = /\b(verrückt\w*|crazy|wild)\b/gi;
const NEXT_TIME = /\b(next time|nächste[ns]? mal)\b/i;
const EMOJI = /\p{Extended_Pictographic}/u;

export const countWords = (s) => s.split(/\s+/).filter(Boolean).length;
const numbers = (s) => (s.match(/\d[\d.,]*\d|\d/g) ?? []).map((n) => n.replace(/[.,]/g, ''));
// Website einer URL, z. B. science.nasa.gov -> nasa.gov, cl.cam.ac.uk -> cam.ac.uk.
export const host = (u) => {
  try {
    const parts = new URL(u).hostname.replace(/^www\./, '').split('.');
    const twoLevel = parts.at(-1).length === 2 && ['co', 'ac', 'org', 'gov', 'com', 'net', 'edu'].includes(parts.at(-2));
    return parts.slice(twoLevel ? -3 : -2).join('.');
  } catch {
    return null;
  }
};
const WIKIPEDIA = 'wikipedia.org';

/** @param {{title:string, teaser:string, hook:string, body:string, products:{name:string,query:string,why:string}[], sources:{label:string,url:string}[]}} p */
export function checkPost(p) {
  const problems = [];
  const body = p.body.trim();

  const H = p.category === 'holiday' ? HOLIDAY_LIMITS : { ...LIMITS, minQuotes: 1, maxQuotes: 1, minProducts: LIMITS.products, maxProducts: LIMITS.products };
  const words = countWords(body);
  if (words < H.minWords || words > H.maxWords)
    problems.push(`${words} Wörter, erlaubt sind ${H.minWords} bis ${H.maxWords}`);

  const headings = body.match(/^## /gm)?.length ?? 0;
  if (headings < H.minHeadings || headings > H.maxHeadings)
    problems.push(`${headings} Zwischenüberschriften, erlaubt sind ${H.minHeadings} bis ${H.maxHeadings}`);

  const quotes = body.split(/\n\s*\n/).filter((b) => b.trimStart().startsWith('>')).length;
  if (quotes < H.minQuotes || quotes > H.maxQuotes)
    problems.push(H.minQuotes === H.maxQuotes ? `${quotes} Zitatblöcke, erwartet ist genau einer` : `${quotes} Zitatblöcke, erlaubt sind ${H.minQuotes} bis ${H.maxQuotes}`);

  if (EMOJI.test(body)) problems.push('Emoji im Text');

  const filler = body.match(FILLER) ?? [];
  if (filler.length > 1) problems.push(`Füllwort zu oft: ${filler.join(', ')}`);

  const paragraphs = body.split(/\n\s*\n/).map((s) => s.trim()).filter(Boolean);
  if (NEXT_TIME.test(paragraphs.at(-1) ?? '')) problems.push('Schlusssatz nutzt die „Nächstes Mal …“-Formel');

  const bodyNumbers = new Set(numbers(body));
  for (const n of numbers(p.title)) if (!bodyNumbers.has(n)) problems.push(`Zahl ${n} aus der Überschrift steht nicht im Text`);

  if (p.products.length < H.minProducts || p.products.length > H.maxProducts)
    problems.push(H.minProducts === H.maxProducts ? `${p.products.length} Produkte, erwartet sind ${H.minProducts}` : `${p.products.length} Produkte, erlaubt sind ${H.minProducts} bis ${H.maxProducts}`);
  for (const pr of p.products) if (!pr.name || !pr.query || !pr.why) problems.push(`Produkt unvollständig: ${pr.name || '(ohne Namen)'}`);

  const https = p.sources.filter((s) => s.label && /^https:\/\//.test(s.url));
  if (https.length !== p.sources.length) problems.push('Quelle ohne Titel oder ohne https-Link');
  const hosts = new Set(https.map((s) => host(s.url)).filter(Boolean));
  if (https.length < LIMITS.minSources || hosts.size < LIMITS.minSources)
    problems.push(`${hosts.size} unabhängige Quellen, nötig sind mindestens ${LIMITS.minSources}`);
  // Wikipedia zählt nur zusätzlich: Wer sie zitiert, braucht zwei weitere unabhängige Websites.
  if (hosts.has(WIKIPEDIA)) {
    const others = [...hosts].filter((h) => h !== WIKIPEDIA).length;
    if (others < LIMITS.sourcesBesideWikipedia)
      problems.push(`Wikipedia zitiert, aber nur ${others} weitere unabhängige Quelle(n), nötig sind ${LIMITS.sourcesBesideWikipedia}`);
  }

  for (const field of ['title', 'teaser', 'hook']) if (!p[field]?.trim()) problems.push(`${field} fehlt`);

  return problems;
}

/** Prüft, ob deutsche und englische Fassung zusammenpassen. */
export function checkPair(de, en) {
  const problems = [];
  // Sprachversionen derselben Quelle (de./en.wikipedia.org) zählen als gleich.
  const sites = (p) => p.sources.map((s) => host(s.url)).sort().join(' ');
  if (sites(de) !== sites(en)) problems.push(`Quellen unterscheiden sich: de ${sites(de)} / en ${sites(en)}`);
  if (de.category && en.category && de.category !== en.category) problems.push('Kategorie unterscheidet sich');
  return problems;
}
