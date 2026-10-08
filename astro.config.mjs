import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// TODO: echte Domain eintragen, sobald sie gekauft ist.
export default defineConfig({
  site: 'https://wtfact.example',
  trailingSlash: 'ignore',
  // Die Oberfläche des Dashboards (src/pages/steuerung/) gehört nicht in die Sitemap, siehe scripts/bundle-steuerung.mjs.
  integrations: [sitemap({ filter: (page) => !page.includes('/steuerung/') })],
});
