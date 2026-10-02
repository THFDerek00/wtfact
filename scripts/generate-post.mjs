// Schreibt den nächsten WTFact-Beitrag des Tages auf Deutsch und Englisch.
// Aufruf: ANTHROPIC_API_KEY=... node scripts/generate-post.mjs
//
// Pro Tag gibt es so viele Beiträge wie Uhrzeiten in FACT_TIMES (src/config.ts), jeder Aufruf
// schreibt den nächsten fehlenden. Jeder Beitrag des Tages hat eine eigene Kategorie, und keine
// davon war am Vortag dran. Das Datum im Frontmatter trägt die Uhrzeit, zu der er erscheint.
//
// Ablauf:
// 1. Recherche: Claude sucht per Websuche einen überraschenden, belegbaren Fakt
//    und schreibt einen Entwurf mit echten Quellen.
// 2. Formatierung: Claude gibt den Beitrag als validiertes JSON in beiden Sprachen zurück.
// 3. Das Skript prüft die Regeln aus docs/styleguide.md (scripts/post-rules.mjs).
// 4. Faktencheck: Ein zweiter Claude-Durchgang öffnet jede Quelle und prüft jede Aussage.
//    Nur wenn alles belegt ist, werden zwei Markdown-Dateien angelegt.

import fs from 'node:fs';
import path from 'node:path';
import Anthropic from '@anthropic-ai/sdk';
import { zodOutputFormat } from '@anthropic-ai/sdk/helpers/zod';
import { z } from 'zod';
import { checkPost, checkPair } from './post-rules.mjs';

const MODEL = 'claude-opus-5-5';
const POSTS_DIR = 'src/content/posts';
const CONFIG = fs.readFileSync('src/config.ts', 'utf8');
const listIn = (name) => [...CONFIG.match(new RegExp(`${name}\\s*=\\s*\\[([^\\]]*)\\]`))[1].matchAll(/'([^']+)'/g)].map((m) => m[1]);
const CATEGORIES = listIn('CATEGORIES');
const FACT_TIMES = listIn('FACT_TIMES');
const TZ = 'Europe/Berlin';

const client = new Anthropic();

// ---------- Bestehende Beiträge einlesen ----------

function readPosts(lang) {
  const dir = path.join(POSTS_DIR, lang);
  return fs
    .readdirSync(dir)
    .filter((f) => f.endsWith('.md'))
    .map((f) => {
      const src = fs.readFileSync(path.join(dir, f), 'utf8');
      const get = (k) => src.match(new RegExp(`^${k}:\\s*"?(.*?)"?$`, 'm'))?.[1] ?? '';
      const date = get('date');
      return { file: f, title: get('title'), category: get('category'), date, day: date.slice(0, 10), key: get('translationKey'), hook: get('hook') };
    })
    .sort((a, b) => b.date.localeCompare(a.date));
}

const existing = readPosts('en');

// Tage und Uhrzeiten rechnen in deutscher Zeit.
const berlinDay = (d) => new Intl.DateTimeFormat('en-CA', { timeZone: TZ, year: 'numeric', month: '2-digit', day: '2-digit' }).format(d);
const today = berlinDay(new Date());
const yesterday = berlinDay(new Date(Date.parse(`${today}T12:00:00Z`) - 86_400_000));
// "+02:00" im Sommer, "+01:00" im Winter.
const berlinOffset = (day, time) => {
  const probe = new Date(`${day}T${time}:00Z`);
  const name = new Intl.DateTimeFormat('en-US', { timeZone: TZ, timeZoneName: 'longOffset' }).formatToParts(probe).find((p) => p.type === 'timeZoneName').value;
  return name === 'GMT' ? '+00:00' : name.replace('GMT', '');
};

const todays = existing.filter((p) => p.day === today);
if (todays.length >= FACT_TIMES.length) {
  console.log(`Für ${today} gibt es schon ${todays.length} Beiträge. Nichts zu tun.`);
  process.exit(0);
}
const time = FACT_TIMES[todays.length];
const publishAt = `${today}T${time}:00${berlinOffset(today, time)}`;

// Gesperrt: Kategorien vom Vortag und die, die heute schon dran waren.
const blocked = new Set(existing.filter((p) => p.day === yesterday || p.day === today).map((p) => p.category));
const allowed = CATEGORIES.filter((c) => !blocked.has(c));
if (!allowed.length) {
  console.error(`Keine Kategorie frei (gesperrt: ${[...blocked].join(', ')}).`);
  process.exit(1);
}
// Davon die Kategorie wählen, die am längsten nicht dran war.
const lastUsed = Object.fromEntries(CATEGORIES.map((c) => [c, '0000']));
for (const p of existing) if (p.date > (lastUsed[p.category] ?? '')) lastUsed[p.category] = p.date;
const category = allowed.sort((a, b) => lastUsed[a].localeCompare(lastUsed[b]))[0];
console.log(`Beitrag ${todays.length + 1} von ${FACT_TIMES.length} für ${today} um ${time} Uhr, Kategorie ${category} (gesperrt: ${[...blocked].join(', ') || 'keine'}).`);

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
      content: `Today is ${today}. Find one fresh, mind-blowing fact for the category "${category}" and write the English post.

Do NOT repeat or closely resemble any of these existing posts:
${recentTitles}

Output: headline, one-sentence teaser, one-sentence hook (the core fact), the full post in Markdown,
2 product ideas (name, Amazon search query, one-line reason) and the source URLs you actually used.`,
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
const q = (s) => JSON.stringify(s);

const written = [];
for (const lang of ['de', 'en']) {
  const v = post[lang];
  const md = [
    '---',
    `title: ${q(v.title)}`,
    `teaser: ${q(v.teaser)}`,
    `date: ${publishAt}`,
    `category: ${category}`,
    `emoji: ${q(post.emoji)}`,
    `translationKey: ${q(post.translationKey)}`,
    `hook: ${q(v.hook)}`,
    'products:',
    ...v.products.slice(0, 3).flatMap((p) => [`  - name: ${q(p.name)}`, `    query: ${q(p.query)}`, `    why: ${q(p.why)}`]),
    'sources:',
    ...sources.flatMap((s) => [`  - label: ${q(s.label)}`, `    url: ${q(s.url)}`]),
    '---',
    '',
    v.body.trim(),
    '',
  ].join('\n');
  let file = path.join(POSTS_DIR, lang, `${slugify(v.slug) || post.translationKey}.md`);
  if (fs.existsSync(file)) file = file.replace(/\.md$/, `-${today}.md`);
  fs.writeFileSync(file, md);
  written.push(file);
  console.log('Geschrieben:', file);
}

// Für den Workflow: eine Zeile pro Beitrag mit Uhrzeit, Titel und Dateien (Tabulator-getrennt).
if (process.env.POSTS_MANIFEST) fs.appendFileSync(process.env.POSTS_MANIFEST, [publishAt, post.de.title, ...written].join('\t') + '\n');
