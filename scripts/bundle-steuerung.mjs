// Packt das Dashboard (steuerung.wtfact.xyz) nach dem Astro-Build zusammen: die PHP-Dateien aus steuerung/,
// die gebaute Oberfläche (dist/steuerung/index.html) als app.html und die Dateien aus dist/_astro/, die sie braucht.
// Die Oberfläche wird danach aus dist/ entfernt, sie gehört nicht auf die öffentliche Seite.
// Läuft automatisch am Ende von npm run build. Hochgeladen wird dist-steuerung/ von .github/workflows/deploy.yml.
import { cpSync, existsSync, mkdirSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const DIST = 'dist';
const OUT = 'dist-steuerung';
const page = join(DIST, 'steuerung', 'index.html');
if (!existsSync(page)) {
  console.error(`${page} fehlt. Erst astro build.`);
  process.exit(1);
}

rmSync(OUT, { recursive: true, force: true });
cpSync('steuerung', OUT, { recursive: true, filter: (src) => !/config\.local\.php$/.test(src) });
const html = readFileSync(page, 'utf8');
writeFileSync(join(OUT, 'app.html'), html);

// Nur die Dateien aus _astro/, auf die die Oberfläche (und ihr CSS) verweist.
const seen = new Set();
const queue = [html];
while (queue.length) {
  const text = queue.pop();
  // /_astro/x im HTML, dazu relative Importe (./x.js) zwischen den Skripten.
  for (const m of text.matchAll(/(?:\/_astro\/|["'(]\.\/)([\w.@-]+\.\w+)/g)) {
    if (seen.has(m[1])) continue;
    seen.add(m[1]);
    const src = join(DIST, '_astro', m[1]);
    if (!existsSync(src)) continue;
    mkdirSync(join(OUT, '_astro'), { recursive: true });
    cpSync(src, join(OUT, '_astro', m[1]));
    if (/\.(css|js)$/.test(m[1])) queue.push(readFileSync(src, 'utf8'));
  }
}
for (const f of ['favicon.ico', 'favicon.svg']) if (existsSync(join(DIST, f))) cpSync(join(DIST, f), join(OUT, f));

rmSync(join(DIST, 'steuerung'), { recursive: true, force: true });
console.log(`Dashboard gepackt: ${OUT}/ (${seen.size} Dateien aus _astro).`);
