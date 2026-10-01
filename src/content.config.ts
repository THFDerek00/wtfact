import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';
import { CATEGORIES } from './config';

const posts = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/content/posts' }),
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
