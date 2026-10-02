import { defineCollection, z } from 'astro:content';
import { CATEGORIES } from './config';
import { DB_FILE, FACTS_DIR, build, open, readPosts } from '../scripts/facts-db.mjs';

// Die Fakten kommen aus der SQLite-Datenbank (scripts/facts-db.mjs), nicht mehr aus Markdown-Dateien.
// Die id bleibt "<sprache>/<slug>", damit alle Adressen gleich bleiben.
const posts = defineCollection({
  loader: {
    name: 'wtfact-sqlite',
    load: async ({ store, parseData, renderMarkdown, generateDigest, watcher, logger }) => {
      const sync = async () => {
        const db = open();
        // Gleiche Reihenfolge wie früher die Dateien (Sprache, dann Adresse), damit Fakten mit
        // demselben Datum ihre Reihenfolge behalten.
        const rows = readPosts(db).sort((a, b) => `${a.lang}/${a.slug}`.localeCompare(`${b.lang}/${b.slug}`));
        db.close();
        store.clear();
        for (const { lang, slug, body, ...data } of rows) {
          const id = `${lang}/${slug}`;
          store.set({
            id,
            data: await parseData({ id, data }),
            body,
            rendered: await renderMarkdown(body),
            digest: generateDigest({ data, body }),
          });
        }
        logger.info(`${rows.length} Sprachversionen aus ${DB_FILE} geladen.`);
      };
      await sync();
      // Im Entwicklungsmodus: geänderte SQL-Dateien sofort übernehmen.
      watcher?.add(FACTS_DIR);
      const reload = async (file: string) => {
        if (!file.includes(FACTS_DIR) || !file.endsWith('.sql')) return;
        try {
          build({ quiet: true });
          await sync();
        } catch (e) {
          logger.warn((e as Error).message);
        }
      };
      for (const event of ['add', 'change', 'unlink'] as const) watcher?.on(event, reload);
    },
  },
  schema: z.object({
    title: z.string(),
    teaser: z.string(),
    date: z.coerce.date(),
    // true nimmt einen Beitrag von der Seite, ohne ihn zu löschen.
    draft: z.boolean().default(false),
    category: z.enum(CATEGORIES),
    emoji: z.string(),
    // Gleicher Wert in DE und EN verbindet die beiden Sprachversionen.
    translationKey: z.string(),
    // Kurzer "WTF-Fakt" für Karten und Social-Bilder.
    hook: z.string(),
    products: z
      .array(
        z.object({
          name: z.string(),
          // Suchbegriff für den Amazon-Link (sicherer als erfundene ASINs).
          query: z.string(),
          why: z.string(),
        }),
      )
      .default([]),
    sources: z.array(z.object({ label: z.string(), url: z.string().url() })).default([]),
  }),
});

export const collections = { posts };
