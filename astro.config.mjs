import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://wtfact.xyz',
  trailingSlash: 'ignore',
  // „Hall of Fame“ heißt seit 2026-10-10 „WTF-Charts“ (Wunsch von Eric). Alte Links leiten weiter.
  redirects: {
    '/de/hall-of-fame': '/de/charts/',
    '/en/hall-of-fame': '/en/charts/',
    // Seit 2026-10-21 (Wunsch von Eric) stehen alle Spiele auf „Spiele“ und alles Persönliche auf „Ich“, je mit Sprungnavigation.
    '/de/quiz': '/de/spiele/#wof',
    '/en/quiz': '/en/games/#wof',
    '/de/tageszahl': '/de/spiele/#tageszahl',
    '/en/daily-number': '/en/games/#tageszahl',
    '/de/science-jumper': '/de/spiele/#jumper',
    '/en/science-jumper': '/en/games/#jumper',
    '/de/du-in-zahlen': '/de/ich/#zahlen',
    '/en/you-in-numbers': '/en/me/#zahlen',
  },
  // Die Oberfläche des Dashboards (src/pages/steuerung/) gehört nicht in die Sitemap, siehe scripts/bundle-steuerung.mjs.
  integrations: [sitemap({ filter: (page) => !page.includes('/steuerung/') })],
});
