import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://wtfact.xyz',
  trailingSlash: 'ignore',
  // „Hall of Fame“ heißt seit 2026-10-10 „WTF-Charts“ (Wunsch von Eric). Alte Links leiten weiter.
  redirects: {
    '/de/hall-of-fame': '/de/charts/',
    '/en/hall-of-fame': '/en/charts/',
  },
  // Die Oberfläche des Dashboards (src/pages/steuerung/) gehört nicht in die Sitemap, siehe scripts/bundle-steuerung.mjs.
  integrations: [sitemap({ filter: (page) => !page.includes('/steuerung/') })],
});
