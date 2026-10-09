import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://wtfact.xyz',
  trailingSlash: 'ignore',
  // Die Oberfläche des Dashboards (src/pages/steuerung/) gehört nicht in die Sitemap, siehe scripts/bundle-steuerung.mjs.
  integrations: [sitemap({ filter: (page) => !page.includes('/steuerung/') })],
});
