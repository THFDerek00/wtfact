// Prüft alle Beiträge gegen die Regeln aus docs/styleguide.md.
// Läuft vor jedem Build (npm run build) und bricht ihn bei Verstößen ab.
// Aufruf: node scripts/check-posts.mjs

import fs from 'node:fs';
import path from 'node:path';
import { checkPost, checkPair } from './post-rules.mjs';

const POSTS_DIR = 'src/content/posts';

const value = (raw) => {
  const v = raw.trim();
  return v.startsWith('"') ? JSON.parse(v) : v;
};

// Liest das Frontmatter in dem festen Format, das generate-post.mjs schreibt:
// einfache Felder und die Listen products/sources.
export function parsePost(src) {
  const m = src.match(/^---\n([\s\S]*?)\n---\n([\s\S]*)$/);
  if (!m) throw new Error('kein Frontmatter gefunden');
  const data = { products: [], sources: [] };
  let list = null;
  for (const line of m[1].split('\n')) {
    let f;
    if ((f = line.match(/^(\w+):\s*$/))) list = data[f[1]] = [];
    else if ((f = line.match(/^(\w+):\s*(.+)$/))) [list, data[f[1]]] = [null, value(f[2])];
    else if ((f = line.match(/^\s+-\s+(\w+):\s*(.+)$/))) list.push({ [f[1]]: value(f[2]) });
    else if ((f = line.match(/^\s+(\w+):\s*(.+)$/))) list.at(-1)[f[1]] = value(f[2]);
  }
  return { ...data, body: m[2] };
}

const failures = [];
const byKey = {};

for (const lang of ['de', 'en']) {
  const dir = path.join(POSTS_DIR, lang);
  for (const file of fs.readdirSync(dir).filter((f) => f.endsWith('.md'))) {
    const rel = path.join(dir, file);
    let post;
    try {
      post = parsePost(fs.readFileSync(rel, 'utf8'));
    } catch (e) {
      failures.push(`${rel}: ${e.message}`);
      continue;
    }
    for (const p of checkPost(post)) failures.push(`${rel}: ${p}`);
    (byKey[post.translationKey] ??= {})[lang] = { ...post, rel };
  }
}

for (const [key, pair] of Object.entries(byKey)) {
  if (!pair.de || !pair.en) {
    failures.push(`${key}: Sprachversion fehlt (${pair.de ? 'en' : 'de'})`);
    continue;
  }
  for (const p of checkPair(pair.de, pair.en)) failures.push(`${key}: ${p}`);
}

if (failures.length) {
  console.error(`Beitragsprüfung fehlgeschlagen (${failures.length}):\n- ${failures.join('\n- ')}`);
  console.error('Regeln: docs/styleguide.md');
  process.exit(1);
}
console.log(`Beitragsprüfung bestanden: ${Object.keys(byKey).length} Beiträge in 2 Sprachen.`);
