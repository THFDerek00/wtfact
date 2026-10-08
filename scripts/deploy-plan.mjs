// Plant den Upload nach IONOS/Plesk: vergleicht dist/ mit dem Stand vom letzten Upload und schreibt
// ein lftp-Skript, das nur geänderte Dateien hochlädt und nur Dateien löscht, die ein früherer Upload
// angelegt hat. Was sonst auf dem Server liegt (api/config.local.php, api/data/, Plesk-Dateien), bleibt.
//
//   node scripts/deploy-plan.mjs <dist> <alte-liste.json|-> <neue-liste.json> <lftp-skript>
//
// Die Liste (Pfad -> SHA-256) liegt nach jedem Upload als .deploy-manifest.json im Webordner.
// Benutzt von .github/workflows/deploy.yml.
import { createHash } from 'node:crypto';
import { existsSync, readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { join, posix, relative, resolve, sep } from 'node:path';

const [distArg, oldArg, newArg, scriptArg] = process.argv.slice(2);
if (!scriptArg) {
  console.error('Aufruf: node scripts/deploy-plan.mjs <dist> <alte-liste.json|-> <neue-liste.json> <lftp-skript>');
  process.exit(2);
}
const dist = resolve(distArg);
const MANIFEST = '.deploy-manifest.json';
// Liegen auf dem Server und gehören nicht dem Upload. Steht so etwas je in dist/, wird es trotzdem nicht angefasst.
// config.local.php und data/ ohne api/ davor: dasselbe im Ordner des Dashboards (dist-steuerung/).
const KEEP = [/^api\/config\.local\.php$/, /^api\/data\//, /^config\.local\.php$/, /^data\//, /^\.deploy-manifest\.json$/];

const files = {};
(function walk(dir) {
  for (const e of readdirSync(dir, { withFileTypes: true })) {
    const abs = join(dir, e.name);
    if (e.isDirectory()) walk(abs);
    else if (e.isFile()) {
      const rel = relative(dist, abs).split(sep).join('/');
      if (!KEEP.some((k) => k.test(rel))) files[rel] = createHash('sha256').update(readFileSync(abs)).digest('hex');
    }
  }
})(dist);

let old = {};
if (oldArg !== '-' && existsSync(oldArg)) {
  try {
    old = JSON.parse(readFileSync(oldArg, 'utf8')).files ?? {};
  } catch {
    console.warn('Alte Liste unlesbar, lade alles neu hoch.');
  }
}

const q = (p) => `"${p.replace(/(["\\$`])/g, '\\$1')}"`;
// api/ zuerst, damit neue Seiten nie auf eine alte API treffen; facts.json zuletzt, weil die API sie liest.
const order = (p) => (p.startsWith('api/') ? 0 : p === 'facts.json' ? 2 : 1);
const upload = Object.keys(files).filter((p) => old[p] !== files[p]).sort((a, b) => order(a) - order(b) || a.localeCompare(b));
const remove = Object.keys(old).filter((p) => !(p in files) && !KEEP.some((k) => k.test(p)));

const lines = [];
const dirs = new Set(upload.map((p) => posix.dirname(p)).filter((d) => d !== '.'));
for (const d of [...dirs].sort()) lines.push(`mkdir -p -f ${q(d)}`);
for (const p of upload) lines.push(`put ${q(join(dist, p))} -o ${q(p)}`);
for (const p of remove) lines.push(`rm -f ${q(p)}`);
// Die Liste erst zum Schluss: bricht der Upload ab, wird beim nächsten Mal alles Fehlende nachgeholt.
lines.push(`put ${q(resolve(newArg))} -o ${MANIFEST}`);

writeFileSync(newArg, JSON.stringify({ files }, null, 0));
writeFileSync(scriptArg, lines.join('\n') + '\n');
console.log(`${Object.keys(files).length} Dateien, ${upload.length} hochzuladen, ${remove.length} zu löschen.`);
