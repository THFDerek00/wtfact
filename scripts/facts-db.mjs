// Die Inhalts-Datenbank von WTFact (SQLite, über node:sqlite, ab Node 22.13 ohne Zusatzpaket).
//
// - db/wtfact.sqlite ist die Datenbank, die Seite, Prüfungen, Generator und Social-Kit lesen.
//   Sie steht nicht in git, sondern wird aus den SQL-Dateien gebaut (npm run db:build).
// - db/facts/<key>.sql (ein Fakt in beiden Sprachen) und db/gold/<id>.sql (ein Gold-Fakt) sind
//   die Textform in git. Eine Datei pro Fakt hält PRs lesbar und lässt drei Fakten-PRs am Tag
//   nebeneinander bestehen, ohne dass sie sich gegenseitig blockieren.
// - Wer die Datenbank direkt bearbeitet (z. B. mit „DB Browser for SQLite“), schreibt die
//   Änderungen mit npm run db:dump zurück in die SQL-Dateien.
//
// Aufruf: node scripts/facts-db.mjs build [--force] | dump | stats

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { DatabaseSync } from 'node:sqlite';
import { fileURLToPath } from 'node:url';

export const DB_FILE = 'db/wtfact.sqlite';
export const SCHEMA_FILE = 'db/facts-schema.sql';
export const FACTS_DIR = 'db/facts';
export const GOLD_DIR = 'db/gold';
// Alte Beiträge als Markdown (vor der Umstellung). Werden beim Aufbau mit eingelesen, damit ein
// liegengebliebener Beitrags-PR nicht verloren geht, und von db:dump in SQL umgewandelt.
export const LEGACY_DIR = 'src/content/posts';
export const LANGS = ['de', 'en'];

const at = (root, p) => path.join(root, p);
const sqlFiles = (dir) => (fs.existsSync(dir) ? fs.readdirSync(dir).filter((f) => f.endsWith('.sql')).sort() : []);

// ---------- SQL-Text ----------

const lit = (v) => (v === null || v === undefined ? 'NULL' : typeof v === 'number' ? String(v) : `'${String(v).replaceAll("'", "''")}'`);
const row = (vals) => `(${vals.map(lit).join(', ')})`;
const insert = (table, cols, rows) =>
  rows.length ? `INSERT INTO ${table} (${cols.join(', ')}) VALUES\n  ${rows.map(row).join(',\n  ')};\n` : '';

/** Ein Fakt (beide Sprachen) als SQL-Datei. Lange Texte stehen je auf eigenen Zeilen, damit Diffs lesbar sind. */
export function factSql(f) {
  const out = [
    `-- WTFact-Fakt „${f.de?.title ?? f.key}“`,
    '-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).',
    '',
    // slot steht nur in Fakten, die im Dashboard eingeplant wurden (gleiches Format in steuerung/lib/facts.php).
    f.slot == null
      ? insert('facts', ['key', 'date', 'category', 'emoji', 'draft'], [[f.key, f.date ?? null, f.category, f.emoji, f.draft ? 1 : 0]])
      : insert('facts', ['key', 'date', 'category', 'emoji', 'draft', 'slot'], [[f.key, f.date ?? null, f.category, f.emoji, f.draft ? 1 : 0, f.slot]]),
  ];
  for (const lang of LANGS) {
    const t = f[lang];
    if (!t) continue;
    out.push(
      `-- ${lang}`,
      `INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (\n  ${lit(f.key)}, ${lit(lang)}, ${lit(t.slug)},\n  ${lit(t.title)},\n  ${lit(t.teaser)},\n  ${lit(t.hook)},\n  ${lit(t.body)}\n);\n`,
      insert('products', ['fact', 'lang', 'pos', 'name', 'query', 'why'], t.products.map((p, i) => [f.key, lang, i + 1, p.name, p.query, p.why])),
      insert('sources', ['fact', 'lang', 'pos', 'label', 'url'], t.sources.map((s, i) => [f.key, lang, i + 1, s.label, s.url])),
    );
  }
  return out.filter(Boolean).join('\n');
}

export function goldSql(g) {
  return [
    `-- Gold-Fakt „${g.de?.title ?? g.id}“ (Science Jumper, ab Highscore ${g.points})`,
    '',
    insert('gold_facts', ['id', 'points', 'category', 'emoji'], [[g.id, g.points, g.category, g.emoji]]),
    insert('gold_texts', ['gold', 'lang', 'title', 'text'], LANGS.filter((l) => g[l]).map((l) => [g.id, l, g[l].title, g[l].text])),
    insert('gold_sources', ['gold', 'pos', 'label', 'url'], g.sources.map((s, i) => [g.id, i + 1, s.label, s.url])),
  ]
    .filter(Boolean)
    .join('\n');
}

// ---------- Lesen ----------

/** Alle Fakten mit beiden Sprachen: [{ key, date, category, emoji, draft, slot, de: {...}, en: {...} }]. date ist null für Fakten im Pool. */
export function readFacts(db) {
  const facts = new Map(db.prepare('SELECT * FROM facts ORDER BY key').all().map((f) => [f.key, { ...f, draft: !!f.draft }]));
  for (const t of db.prepare('SELECT * FROM texts').all()) facts.get(t.fact)[t.lang] = { slug: t.slug, title: t.title, teaser: t.teaser, hook: t.hook, body: t.body, products: [], sources: [] };
  for (const p of db.prepare('SELECT * FROM products ORDER BY pos').all()) facts.get(p.fact)[p.lang].products.push({ name: p.name, query: p.query, why: p.why });
  for (const s of db.prepare('SELECT * FROM sources ORDER BY pos').all()) facts.get(s.fact)[s.lang].sources.push({ label: s.label, url: s.url });
  return [...facts.values()];
}

/** Ein Eintrag pro Sprachversion, im Format der früheren Markdown-Beiträge (für die Seite).
 * Fakten im Pool (noch ohne Termin) fehlen hier, sie kommen gar nicht erst in den Build. */
export function readPosts(db) {
  return readFacts(db).filter((f) => f.date).flatMap((f) =>
    LANGS.filter((l) => f[l]).map((lang) => ({
      lang,
      translationKey: f.key,
      date: f.date,
      category: f.category,
      emoji: f.emoji,
      draft: f.draft,
      ...f[lang],
    })),
  );
}

/** Gold-Fakten im Format der früheren src/data/golden-facts.json, nach Punkten sortiert. */
export function readGold(db) {
  const gold = new Map(db.prepare('SELECT * FROM gold_facts ORDER BY points').all().map((g) => [g.id, { ...g, sources: [] }]));
  for (const t of db.prepare('SELECT * FROM gold_texts').all()) gold.get(t.gold)[t.lang] = { title: t.title, text: t.text };
  for (const s of db.prepare('SELECT * FROM gold_sources ORDER BY pos').all()) gold.get(s.gold).sources.push({ label: s.label, url: s.url });
  return [...gold.values()];
}

// ---------- Schreiben ----------

/** Legt einen Fakt in beiden Sprachen an. Wirft bei doppeltem key oder slug. */
export function insertFact(db, f) {
  db.exec('BEGIN');
  try {
    db.exec(factSql(f));
    db.exec('COMMIT');
  } catch (e) {
    db.exec('ROLLBACK');
    throw e;
  }
}

// Gesamter Inhalt in fester Reihenfolge. Daran erkennt db:build, ob die Datenbank seit dem
// letzten Aufbau direkt bearbeitet wurde.
const contentHash = (db) =>
  crypto
    .createHash('sha256')
    .update(readFacts(db).map(factSql).join('\n') + readGold(db).map(goldSql).join('\n'))
    .digest('hex');

// Merkt sich den Inhalt als gesichert (Datenbank und SQL-Dateien stimmen überein).
const markSaved = (db) => db.prepare("INSERT OR REPLACE INTO meta (name, value) VALUES ('content', ?)").run(contentHash(db));

/** Neuer Fakt: in die Datenbank und als db/facts/<key>.sql. Gibt den Dateipfad zurück. */
export function saveFact(db, f, root = process.cwd()) {
  insertFact(db, f);
  const file = path.join(FACTS_DIR, `${f.key}.sql`);
  fs.mkdirSync(at(root, FACTS_DIR), { recursive: true });
  fs.writeFileSync(at(root, file), factSql(f));
  markSaved(db);
  return file;
}

/** Schreibt die Datenbank zurück in db/facts/ und db/gold/ und entfernt Dateien gelöschter Fakten. */
export function dump(db, root = process.cwd()) {
  const facts = readFacts(db);
  const gold = readGold(db);
  for (const [dir, items, id, toSql] of [
    [FACTS_DIR, facts, (f) => f.key, factSql],
    [GOLD_DIR, gold, (g) => g.id, goldSql],
  ]) {
    fs.mkdirSync(at(root, dir), { recursive: true });
    const keep = new Set(items.map((x) => `${id(x)}.sql`));
    for (const f of sqlFiles(at(root, dir))) if (!keep.has(f)) fs.rmSync(at(root, path.join(dir, f)));
    for (const x of items) {
      const file = at(root, path.join(dir, `${id(x)}.sql`));
      const sql = toSql(x);
      if (!fs.existsSync(file) || fs.readFileSync(file, 'utf8') !== sql) fs.writeFileSync(file, sql);
    }
  }
  // Umgewandelte Markdown-Beiträge werden nicht mehr gebraucht.
  const removed = legacyFiles(root).filter((l) => facts.some((f) => f.key === l.key));
  for (const l of removed) fs.rmSync(at(root, l.rel));
  markSaved(db);
  return { facts: facts.length, gold: gold.length, removedMarkdown: removed.length };
}

// ---------- Alte Markdown-Beiträge ----------

const yamlValue = (raw) => {
  const v = raw.trim();
  return v.startsWith('"') ? JSON.parse(v) : v;
};

// Liest das Frontmatter in dem festen Format, das generate-post.mjs früher geschrieben hat.
export function parseMarkdownPost(src) {
  const m = src.match(/^---\n([\s\S]*?)\n---\n([\s\S]*)$/);
  if (!m) throw new Error('kein Frontmatter gefunden');
  const data = { products: [], sources: [] };
  let list = null;
  for (const line of m[1].split('\n')) {
    let f;
    if ((f = line.match(/^(\w+):\s*$/))) list = data[f[1]] = [];
    else if ((f = line.match(/^(\w+):\s*(.+)$/))) [list, data[f[1]]] = [null, yamlValue(f[2])];
    else if ((f = line.match(/^\s+-\s+(\w+):\s*(.+)$/))) list.push({ [f[1]]: yamlValue(f[2]) });
    else if ((f = line.match(/^\s+(\w+):\s*(.+)$/))) list.at(-1)[f[1]] = yamlValue(f[2]);
  }
  return { ...data, body: m[2].trim() };
}

function legacyFiles(root) {
  const out = [];
  for (const lang of LANGS) {
    const dir = path.join(LEGACY_DIR, lang);
    if (!fs.existsSync(at(root, dir))) continue;
    for (const f of fs.readdirSync(at(root, dir)).filter((f) => f.endsWith('.md'))) {
      const rel = path.join(dir, f);
      const post = parseMarkdownPost(fs.readFileSync(at(root, rel), 'utf8'));
      out.push({ rel, lang, key: post.translationKey, slug: f.replace(/\.md$/, ''), post });
    }
  }
  return out;
}

function legacyFacts(root) {
  const facts = new Map();
  for (const { lang, key, slug, post } of legacyFiles(root)) {
    const f = facts.get(key) ?? { key, date: String(post.date), category: post.category, emoji: post.emoji, draft: post.draft === 'true' };
    f[lang] = { slug, title: post.title, teaser: post.teaser, hook: post.hook, body: post.body, products: post.products, sources: post.sources };
    facts.set(key, f);
  }
  return [...facts.values()];
}

// ---------- Aufbau ----------

/**
 * Baut db/wtfact.sqlite neu aus Schema, db/facts/, db/gold/ und eventuell alten Markdown-Beiträgen.
 * Bricht ab, wenn die vorhandene Datenbank Änderungen hat, die noch nicht per db:dump gesichert sind.
 */
export function build({ root = process.cwd(), force = false, quiet = false } = {}) {
  const file = at(root, DB_FILE);
  if (fs.existsSync(file) && !force) {
    let edited = false;
    try {
      const old = new DatabaseSync(file, { readOnly: true });
      const saved = old.prepare("SELECT value FROM meta WHERE name = 'content'").get()?.value;
      edited = saved !== contentHash(old);
      old.close();
    } catch {
      // Unlesbare oder veraltete Datenbank: einfach neu bauen.
    }
    if (edited)
      throw new Error(
        `${DB_FILE} wurde direkt bearbeitet. Erst mit „npm run db:dump“ in die SQL-Dateien schreiben, oder mit „npm run db:build -- --force“ die Änderungen verwerfen.`,
      );
  }

  const tmp = `${file}.tmp`;
  fs.rmSync(tmp, { force: true });
  const db = new DatabaseSync(tmp);
  db.exec('PRAGMA foreign_keys = ON');
  db.exec(fs.readFileSync(at(root, SCHEMA_FILE), 'utf8'));
  db.exec('BEGIN');
  const errors = [];
  for (const dir of [FACTS_DIR, GOLD_DIR])
    for (const f of sqlFiles(at(root, dir))) {
      try {
        db.exec(fs.readFileSync(at(root, path.join(dir, f)), 'utf8'));
      } catch (e) {
        errors.push(`${path.join(dir, f)}: ${e.message}`);
      }
    }
  const legacy = legacyFacts(root);
  for (const f of legacy) {
    try {
      db.exec(factSql(f));
    } catch (e) {
      errors.push(`${LEGACY_DIR} (${f.key}): ${e.message}`);
    }
  }
  if (errors.length) {
    db.exec('ROLLBACK');
    db.close();
    fs.rmSync(tmp, { force: true });
    throw new Error(`Datenbank konnte nicht gebaut werden:\n- ${errors.join('\n- ')}`);
  }
  markSaved(db);
  db.exec('COMMIT');
  db.close();
  fs.renameSync(tmp, file);
  if (!quiet) {
    const n = (t) => new DatabaseSync(file, { readOnly: true }).prepare(`SELECT count(*) AS n FROM ${t}`).get().n;
    console.log(`Datenbank gebaut: ${DB_FILE} mit ${n('facts')} Fakten und ${n('gold_facts')} Gold-Fakten.`);
    if (legacy.length) console.warn(`Hinweis: ${legacy.length} Fakt(en) noch als Markdown in ${LEGACY_DIR}. „npm run db:dump“ wandelt sie in SQL um.`);
  }
  return file;
}

/** Öffnet die Datenbank und baut sie vorher, falls sie fehlt. */
export function open({ root = process.cwd(), readOnly = true } = {}) {
  const file = at(root, DB_FILE);
  if (!fs.existsSync(file)) build({ root, quiet: true });
  const db = new DatabaseSync(file, { readOnly });
  if (!readOnly) db.exec('PRAGMA foreign_keys = ON');
  return db;
}

// ---------- Kommandozeile ----------

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  const [cmd = 'build', ...flags] = process.argv.slice(2);
  try {
    if (cmd === 'build') build({ force: flags.includes('--force') });
    else if (cmd === 'dump') {
      const db = open({ readOnly: false });
      const r = dump(db);
      db.close();
      console.log(`Gesichert: ${r.facts} Fakten in ${FACTS_DIR}/, ${r.gold} Gold-Fakten in ${GOLD_DIR}/.${r.removedMarkdown ? ` ${r.removedMarkdown} Markdown-Datei(en) umgewandelt und entfernt.` : ''}`);
    } else if (cmd === 'stats') {
      const db = open();
      console.table(db.prepare('SELECT category, count(*) AS fakten, max(date) AS neuester FROM facts GROUP BY category ORDER BY category').all());
    } else throw new Error(`Unbekannter Befehl „${cmd}“. Möglich: build, dump, stats`);
  } catch (e) {
    console.error(e.message);
    process.exit(1);
  }
}
