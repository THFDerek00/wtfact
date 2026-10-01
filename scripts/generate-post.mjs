// Schreibt jeden Tag einen neuen WTFact-Beitrag auf Deutsch und Englisch.
// Aufruf: ANTHROPIC_API_KEY=... node scripts/generate-post.mjs
//
// Ablauf:
// 1. Recherche: Claude sucht per Websuche einen überraschenden, belegbaren Fakt
//    und schreibt einen Entwurf mit echten Quellen.
// 2. Formatierung: Claude gibt den Beitrag als validiertes JSON in beiden Sprachen zurück.
// 3. Das Skript prüft die Ergebnisse und legt zwei Markdown-Dateien an.

import fs from 'node:fs';
import path from 'node:path';
import Anthropic from '@anthropic-ai/sdk';
import { zodOutputFormat } from '@anthropic-ai/sdk/helpers/zod';
import { z } from 'zod';

const MODEL = 'claude-opus-5-5';
const POSTS_DIR = 'src/content/posts';
const CATEGORIES = ['science', 'history', 'tech', 'nature', 'body', 'weird'];

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
      return { file: f, title: get('title'), category: get('category'), date: get('date'), key: get('translationKey') };
    })
    .sort((a, b) => b.date.localeCompare(a.date));
}

const existing = readPosts('en');
const today = new Date().toISOString().slice(0, 10);

if (readPosts('de').some((p) => p.date === today)) {
  console.log(`Für ${today} gibt es schon einen Beitrag. Nichts zu tun.`);
  process.exit(0);
}

// Kategorie wählen, die am längsten nicht dran war.
const lastUsed = Object.fromEntries(CATEGORIES.map((c) => [c, '0000']));
for (const p of existing) if (p.date > (lastUsed[p.category] ?? '')) lastUsed[p.category] = p.date;
const category = CATEGORIES.sort((a, b) => lastUsed[a].localeCompare(lastUsed[b]))[0];

const recentTitles = existing.slice(0, 200).map((p) => `- ${p.title}`).join('\n') || '(noch keine)';

// ---------- Schritt 1: Recherche und Entwurf ----------

const STYLE = `
You write for WTFact, a website for people aged 16 to 34 that publishes one surprising fact per day.
Every post must make readers think "WTF?!" and then feel smarter.

Hard rules:
- The core fact must be TRUE and verifiable. Use web search to confirm it in at least two independent, reputable sources
  (encyclopedias, universities, museums, science journals, quality newspapers). If you cannot confirm it, pick another fact.
- Never invent numbers, quotes, studies or names. When exact numbers vary between sources, say "about" or give a range.
- Headlines spark curiosity but never lie or overpromise.
- No health, legal or financial advice. No politics, tragedies, violence, or content unsuitable for 16-year-olds.
- Tone: casual, witty, direct ("you"), short paragraphs, no corporate language, no emoji in the body text.
- 350 to 500 words, 2 or 3 "##" subheadings, exactly one short "> " blockquote with a bonus fact, a punchy last line.
- Suggest exactly 2 Amazon products that genuinely fit the topic (a book, a toy, a gadget, a decoration).
  Describe them generically so an Amazon search finds them. Never invent product numbers or prices.
`.trim();

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

German version: write it as a native German speaker would for a young audience (use "du"), not as a literal translation.
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
const words = (s) => s.split(/\s+/).filter(Boolean).length;
for (const lang of ['en', 'de']) {
  const v = post[lang];
  if (words(v.body) < 250) problems.push(`${lang}: Text zu kurz (${words(v.body)} Wörter)`);
  if (v.products.length < 1) problems.push(`${lang}: keine Produkte`);
}
// Nur Quellen behalten, die wirklich in der Websuche vorkamen.
const sources = post.sources.filter((s) => /^https?:\/\//.test(s.url) && (searchedUrls.size === 0 || searchedUrls.has(normUrl(s.url))));
if (sources.length < 1) problems.push('keine überprüfbare Quelle');
if (existing.some((p) => p.key === post.translationKey)) problems.push(`translationKey "${post.translationKey}" existiert schon`);

if (problems.length) {
  console.error('Beitrag verworfen:\n- ' + problems.join('\n- '));
  process.exit(1);
}

const slugify = (s) =>
  s.toLowerCase().normalize('NFKD').replace(/ß/g, 'ss').replace(/[̀-ͯ]/g, '').replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '').slice(0, 60);
const q = (s) => JSON.stringify(s);

for (const lang of ['de', 'en']) {
  const v = post[lang];
  const md = [
    '---',
    `title: ${q(v.title)}`,
    `teaser: ${q(v.teaser)}`,
    `date: ${today}`,
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
  console.log('Geschrieben:', file);
}

// Titel für die Commit-Nachricht
if (process.env.GITHUB_OUTPUT) fs.appendFileSync(process.env.GITHUB_OUTPUT, `title=${post.de.title}\n`);
