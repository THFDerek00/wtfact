import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// TODO: echte Domain eintragen, sobald sie gekauft ist.
export default defineConfig({
  site: 'https://wtfact.example',
  trailingSlash: 'ignore',
  integrations: [sitemap()],
});
