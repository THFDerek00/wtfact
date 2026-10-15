// Schreibt den nächsten WTFact-Beitrag des Tages auf Deutsch und Englisch.
// Aufruf: ANTHROPIC_API_KEY=... node scripts/generate-post.mjs [--pool | --holiday]
// Mit --pool landet der Fakt ohne Termin im Pool des Dashboards (Wochenvorrat, siehe README „Dashboard“).
// Mit --holiday schreibt er den Sonderfakt für den nächsten Feiertag der kommenden 7 Tage (src/data/holidays.ts),
// der noch keinen hat, eingeplant auf 0 Uhr am Feiertag (slot 0). Gibt es für jeden schon einen, passiert nichts.
//
// Pro Tag gibt es FACTS_PER_DAY Beiträge (src/config.ts), jeder Aufruf schreibt den nächsten
// fehlenden. Jeder Beitrag des Tages hat eine eigene Kategorie, und keine davon war am Vortag dran.
// Das Datum ist der Zeitpunkt, zu dem der Fakt geschrieben wurde. Er ist also sofort sichtbar,
// sobald Eric den PR zusammenführt.
//
// Ablauf:
// 1. Recherche: Claude sucht per Websuche einen überraschenden, belegbaren Fakt
//    und schreibt einen Entwurf mit echten Quellen.
// 2. Formatierung: Claude gibt den Beitrag als validiertes JSON in beiden Sprachen zurück.
// 3. Das Skript prüft die Regeln aus docs/styleguide.md (scripts/post-rules.mjs).
// 4. Faktencheck: Ein zweiter Claude-Durchgang öffnet jede Quelle und prüft jede Aussage.
//    Nur wenn alles belegt ist, kommt der Fakt in die Datenbank (db/wtfact.sqlite) und als
//    lesbare Datei nach db/facts/<key>.sql, die der Workflow als PR vorschlägt.

import fs from 'node:fs';
import Anthropic from '@anthropic-ai/sdk';
import { zodOutputFormat } from '@anthropic-ai/sdk/helpers/zod';
import { z } from 'zod';
import { checkPost, checkPair } from './post-rules.mjs';
import { build, open, readFacts, saveFact } from './facts-db.mjs';

const MODEL = 'claude-opus-5-5';
const CONFIG = fs.readFileSync('src/config.ts', 'utf8');
const listIn = (name) => [...CONFIG.match(new RegExp(`${name}\\s*=\\s*\\[([^\\]]*)\\]`))[1].matchAll(/'([^']+)'/g)].map((m) => m[1]);
// Feiertage (SPECIAL_CATEGORIES) bekommen nur zum Termin einen Fakt, nie aus der täglichen Abwechslung.
const SPECIAL = listIn('SPECIAL_CATEGORIES');
const CATEGORIES = listIn('CATEGORIES').filter((c) => !SPECIAL.includes(c));
const FACTS_PER_DAY = Number(CONFIG.match(/FACTS_PER_DAY\s*=\s*(\d+)/)[1]);
const TZ = 'Europe/Berlin';

const client = new Anthropic();

// ---------- Bestehende Beiträge einlesen ----------

// Datenbank frisch aus db/facts/ bauen, damit auch gerade erst gemergte Fakten zählen.
build({ quiet: true });
const db = open({ readOnly: false });
const facts = readFacts(db);
// Fakten im Pool (noch ohne Termin) zählen wie die neuesten: Sie erscheinen ja erst noch.
const POOL_DATE = '9999-12-31';
const existing = facts
  .map((f) => ({ title: f.en.title, category: f.category, date: f.date ?? POOL_DATE, day: (f.date ?? POOL_DATE).slice(0, 10), key: f.key, hook: f.en.hook, pool: !f.date }))
  .sort((a, b) => b.date.localeCompare(a.date));

// Tage und Uhrzeiten rechnen in deutscher Zeit.
const berlinDay = (d) => new Intl.DateTimeFormat('en-CA', { timeZone: TZ, year: 'numeric', month: '2-digit', day: '2-digit' }).format(d);
const today = berlinDay(new Date());
const yesterday = berlinDay(new Date(Date.parse(`${today}T12:00:00Z`) - 86_400_000));
// Jetzt in deutscher Zeit mit Zeitzone, z. B. "2026-10-03T04:12:30+02:00".
const berlinNow = () => {
  const d = new Date();
  const parts = Object.fromEntries(
    new Intl.DateTimeFormat('en-CA', { timeZone: TZ, hourCycle: 'h23', year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit', timeZoneName: 'longOffset' })
      .formatToParts(d)
      .map((p) => [p.type, p.value]),
  );
  const off = parts.timeZoneName === 'GMT' ? '+00:00' : parts.timeZoneName.replace('GMT', '');
  return `${parts.year}-${parts.month}-${parts.day}T${parts.hour}:${parts.minute}:${parts.second}${off}`;
};

// --pool: Wochenvorrat für das Dashboard (steuerung.wtfact.xyz). Der Fakt bekommt keinen Termin (date = NULL)
// und wird erst im Reiter „Veröffentlichungen“ eingeplant. Kein Tageslimit; Kategorie = die mit den wenigsten
// Fakten im Pool, bei Gleichstand die, die am längsten nicht erschienen ist.
const POOL = process.argv.includes('--pool');

// --holiday (Wunsch von Eric, 2026-10-15): Feiertage bekommen einen Sonderfakt um 0 Uhr. Schon vorbereitete Fakten
// (Kategorie holiday, auf den Feiertag datiert) haben Vorrang, dann wird für diesen Tag nichts geschrieben.
const HOLIDAY_MODE = process.argv.includes('--holiday');
const HOLIDAYS_SRC = fs.readFileSync('src/data/holidays.ts', 'utf8');
const holidays = [...HOLIDAYS_SRC.matchAll(/\{ id: '([\w-]+)', de: '([^']+)', en: '([^']+)'.*?dates: \[([^\]]*)\]/g)].map((m) => ({
  id: m[1], de: m[2], en: m[3], dates: [...m[4].matchAll(/'(\d{4}-\d{2}-\d{2})'/g)].map((d) => d[1]),
}));
let holidayTarget = null;
if (HOLIDAY_MODE) {
  const coming = Array.from({ length: 8 }, (_, i) => berlinDay(new Date(Date.parse(`${today}T12:00:00Z`) + i * 86_400_000)));
  const covered = new Set(existing.filter((p) => p.category === 'holiday' && !p.pool).map((p) => berlinDay(new Date(p.date))));
  for (const day of coming) {
    const h = holidays.find((x) => x.dates.includes(day));
    if (!h) continue;
    if (covered.has(day)) { console.log(`${day} (${h.de}): Feiertags-Fakt liegt schon bereit.`); continue; }
    holidayTarget = { ...h, day };
    break;
  }
  if (!holidayTarget) { console.log('Kein Feiertag in den nächsten 7 Tagen ohne Fakt. Nichts zu tun.'); process.exit(0); }
  console.log(`Sonderfakt für ${holidayTarget.de} am ${holidayTarget.day}.`);
}
// 0 Uhr deutscher Zeit an einem Tag, mit dem Versatz, der um diese Uhrzeit gilt (Sommer-/Winterzeit).
const berlinMidnight = (day) => {
  const off = new Intl.DateTimeFormat('en-US', { timeZone: TZ, timeZoneName: 'longOffset' })
    .formatToParts(new Date(`${day}T00:00:00Z`)).find((p) => p.type === 'timeZoneName').value.replace('GMT', '') || '+00:00';
  return `${day}T00:00:00${off}`;
};

const todays = existing.filter((p) => p.day === today);
if (!POOL && !HOLIDAY_MODE && todays.length >= FACTS_PER_DAY) {
  console.log(`Für ${today} gibt es schon ${todays.length} Beiträge. Nichts zu tun.`);
  process.exit(0);
}

// Gesperrt: Kategorien vom Vortag und die, die heute schon dran waren (im Pool-Modus keine).
const blocked = new Set(POOL || HOLIDAY_MODE ? [] : existing.filter((p) => p.day === yesterday || p.day === today).map((p) => p.category));
const allowed = CATEGORIES.filter((c) => !blocked.has(c));
if (!allowed.length) {
  console.error(`Keine Kategorie frei (gesperrt: ${[...blocked].join(', ')}).`);
  process.exit(1);
}
// Davon die Kategorie wählen, die am längsten nicht dran war.
const lastUsed = Object.fromEntries(CATEGORIES.map((c) => [c, '0000']));
for (const p of existing) if (!(POOL && p.pool) && p.date > (lastUsed[p.category] ?? '')) lastUsed[p.category] = p.date;
const inPool = (c) => existing.filter((p) => p.pool && p.category === c).length;
const category = HOLIDAY_MODE ? 'holiday' : allowed.sort((a, b) => (POOL ? inPool(a) - inPool(b) : 0) || lastUsed[a].localeCompare(lastUsed[b]))[0];
if (!HOLIDAY_MODE) console.log(
  POOL
    ? `Fakt für den Pool, Kategorie ${category} (${inPool(category)} schon im Pool).`
    : `Beitrag ${todays.length + 1} von ${FACTS_PER_DAY} für ${today}, Kategorie ${category} (gesperrt: ${[...blocked].join(', ') || 'keine'}).`,
);

// Alle Beiträge gegen Dopplungen mitgeben, die neuesten 200 zusätzlich mit ihrem Kernsatz.
const recentTitles =
  existing.map((p, i) => `- ${p.title} (${p.key})${i < 200 && p.hook ? `: ${p.hook}` : ''}`).join('\n') || '(noch keine)';

// ---------- Schritt 1: Recherche und Entwurf ----------

// Der Styleguide ist die einzige Quelle für Stilregeln. Kommentare darin sind nur für Menschen.
const STYLE = fs.readFileSync('docs/styleguide.md', 'utf8').replace(/<!--[\s\S]*?-->/g, '').trim();

const research = await client.beta.messages.create({
  model: MODEL,
  max_tokens: 16000,
  betas: ['server-side-fallback-2026-07-01'],
  fallbacks: 'default',
  output_config: { effort: 'high' },
  tools: [{ type: 'web_search_20260209', name: 'web_search', max_uses: 8 }],
  system: STYLE,
  messages: [
    {
      role: 'user',
      content: `Today is ${today}. ${holidayTarget
        ? `Write the special holiday post for ${holidayTarget.en} (German: ${holidayTarget.de}) on ${holidayTarget.day}, category "holiday". It goes live at midnight on that day as the big event of the day. Find one fresh, mind-blowing fact about this holiday (origin, customs, surprising history) and write the English post. Follow the holiday rules of the style guide (length, structure, 2 to 4 higher-end Amazon picks that fit the holiday).`
        : `Find one fresh, mind-blowing fact for the category "${category}" and write the English post.`}

Do NOT repeat or closely resemble any of these existing posts:
${recentTitles}

Output: headline, one-sentence teaser, one-sentence hook (the core fact), the full post in Markdown,
${holidayTarget ? '2 to 4' : '2'} product ideas (name, Amazon search query, one-line reason) and the source URLs you actually used.`,
    },
  ],
});

if (research.stop_reason === 'refusal') {
  console.error('Recherche abgelehnt:', research.stop_details);
  process.exit(1);
}

const draft = research.content
  .filter((b) => b.type === 'text')
  .map((b) => b.text)
  .join('\n')
  .trim();

const normUrl = (u) => u.replace(/^https?:\/\/(www\.)?/, '').replace(/[#?].*$/, '').replace(/\/$/, '');
const searchedUrls = new Set(
  research.content
    .filter((b) => b.type === 'web_search_tool_result' && Array.isArray(b.content))
    .flatMap((b) => b.content.map((r) => normUrl(r.url))),
);

if (!draft) {
  console.error('Kein Entwurf erhalten.');
  process.exit(1);
}

// ---------- Schritt 2: Zweisprachiges JSON ----------

const Product = z.object({ name: z.string(), query: z.string(), why: z.string() });
const Version = z.object({
  slug: z.string().describe('URL slug in this language, lowercase ascii words separated by hyphens, max 6 words'),
  title: z.string(),
  teaser: z.string(),
  hook: z.string(),
  body: z.string().describe('Markdown body without the title'),
  products: z.array(Product),
});
const PostSchema = z.object({
  emoji: z.string().describe('One single emoji that represents the topic'),
  translationKey: z.string().describe('Short english kebab-case id, e.g. "wombat-cubes"'),
  sources: z.array(z.object({ label: z.string(), url: z.string() })),
  en: Version,
  de: Version,
});

const formatted = await client.messages.parse({
  model: MODEL,
  max_tokens: 16000,
  output_config: { effort: 'medium', format: zodOutputFormat(PostSchema) },
  system: `${STYLE}

Adapt idioms and product search queries for amazon.de. Use German typographic quotes („…") and decimal commas.
Keep facts, numbers and sources identical between the two languages.`,
  messages: [
    {
      role: 'user',
      content: `Turn this researched draft into the final bilingual post. Keep only sources with real URLs from the draft.\n\n${draft}`,
    },
  ],
});

const post = formatted.parsed_output;
if (!post) {
  console.error('Antwort konnte nicht gelesen werden.', formatted.stop_reason);
  process.exit(1);
}

// ---------- Schritt 3: Prüfen und speichern ----------

const problems = [];
// Nur Quellen behalten, die wirklich in der Websuche vorkamen.
const sources = post.sources.filter((s) => /^https:\/\//.test(s.url) && (searchedUrls.size === 0 || searchedUrls.has(normUrl(s.url))));
const versions = Object.fromEntries(['de', 'en'].map((lang) => [lang, { ...post[lang], sources, category }]));
for (const lang of ['de', 'en']) for (const p of checkPost(versions[lang])) problems.push(`${lang}: ${p}`);
problems.push(...checkPair(versions.de, versions.en));
if (existing.some((p) => p.key === post.translationKey)) problems.push(`translationKey "${post.translationKey}" existiert schon`);

if (problems.length) {
  console.error('Beitrag verworfen:\n- ' + problems.join('\n- '));
  process.exit(1);
}

// ---------- Schritt 4: Faktencheck ----------

const CHECK = `You are WTFact's fact-checker. Be strict: a wrong fact, a headline that overpromises
or an invented source title is worse than no post at all.

Open EVERY source URL with web_fetch. Then check both language versions:
1. The hook (the core fact) is confirmed by at least one non-Wikipedia source, literally or in substance. If not, the post fails.
   Every other factual claim and every number in title, teaser and body is supported by at least one source.
   Hedged claims ("reportedly", "soll") only need a source that reports them.
2. The headline states what the body actually shows and does not overpromise.
3. Each source label matches the real title of that page (publisher prefix allowed). Flag invented or paraphrased titles.
4. Nothing is attributed to researchers or experts unless a source does so.
5. German and English say the same thing; German uses correct terms (e.g. Kalmar vs. Krake vs. Tintenfisch).
6. The post follows the style guide below.
7. The fact is not a repeat or close variant of an existing post:
${recentTitles}

Style guide:
${STYLE}`;

const review = await client.beta.messages.create({
  model: MODEL,
  max_tokens: 16000,
  betas: ['server-side-fallback-2026-07-01'],
  fallbacks: 'default',
  output_config: { effort: 'high' },
  tools: [
    { type: 'web_fetch_20260209', name: 'web_fetch', max_uses: 10 },
    { type: 'web_search_20260209', name: 'web_search', max_uses: 4 },
  ],
  system: CHECK,
  messages: [
    {
      role: 'user',
      content: `Check this post.

Sources:
${sources.map((s) => `- ${s.label}: ${s.url}`).join('\n')}

${['en', 'de'].map((lang) => `### ${lang}\nTitle: ${post[lang].title}\nTeaser: ${post[lang].teaser}\nHook: ${post[lang].hook}\n\n${post[lang].body}`).join('\n\n')}

End your answer with one JSON code block and nothing after it:
{"pass": true or false, "issues": ["each problem in one sentence"]}
"pass" is true only if "issues" is empty.`,
    },
  ],
});

const verdictText = review.content.filter((b) => b.type === 'text').map((b) => b.text).join('\n');
const Verdict = z.object({ pass: z.boolean(), issues: z.array(z.string()) });
let verdict;
try {
  verdict = Verdict.parse(JSON.parse([...verdictText.matchAll(/```(?:json)?\s*([\s\S]*?)```/g)].at(-1)[1]));
} catch {
  verdict = { pass: false, issues: [`Faktencheck lieferte kein lesbares Ergebnis (${review.stop_reason})`] };
}
if (!verdict.pass || verdict.issues.length) {
  console.error('Beitrag beim Faktencheck verworfen:\n- ' + (verdict.issues.join('\n- ') || 'ohne Begründung'));
  process.exit(1);
}
console.log('Faktencheck bestanden.');

const slugify = (s) =>
  s.toLowerCase().normalize('NFKD').replace(/ß/g, 'ss').replace(/[̀-ͯ]/g, '').replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '').slice(0, 60);
// Adressen sind je Sprache eindeutig. Ist eine schon vergeben, kommt das Datum dazu.
const taken = (lang, slug) => facts.some((f) => f[lang]?.slug === slug);
const createdAt = berlinNow();
const fact = holidayTarget
  ? { key: post.translationKey, date: berlinMidnight(holidayTarget.day), category, emoji: post.emoji, draft: false, slot: 0 }
  : { key: post.translationKey, date: POOL ? null : createdAt, category, emoji: post.emoji, draft: false };
for (const lang of ['de', 'en']) {
  const v = post[lang];
  let slug = slugify(v.slug) || post.translationKey;
  if (taken(lang, slug)) slug = `${slug}-${today}`;
  fact[lang] = { slug, title: v.title, teaser: v.teaser, hook: v.hook, body: v.body.trim(), products: v.products.slice(0, holidayTarget ? 4 : 3), sources };
}
const file = saveFact(db, fact);
db.close();
console.log('Gespeichert:', file);

// Für den Workflow: eine Zeile pro Beitrag mit Zeitpunkt, Titel und Datei (Tabulator-getrennt).
if (process.env.POSTS_MANIFEST) fs.appendFileSync(process.env.POSTS_MANIFEST, [fact.date ?? createdAt, post.de.title, file].join('\t') + '\n');
