// Erzeugt alle Marken-Grafiken von WTFact (Logo, Icons, Social Media) als SVG und PNG.
// Schriften werden in Pfade umgewandelt, damit die Dateien überall gleich aussehen.
//
// Einmalig nötig (wird nicht im Projekt installiert):
//   npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter
// Dann:  node brand/build-brand.mjs
import fs from 'node:fs';
import path from 'node:path';
import { execFileSync } from 'node:child_process';
import {
  ROOT, TEXT, C, r2, text, wrap, svg, out, png, wordmark, logoFile, mark, ICONS, CAT_COLOR, iconG, card, chip, confetti, dots, aiTag, L,
} from './brand-lib.mjs';

const EXAMPLE = {
  de: { cat: 'nature', title: 'Wombats kacken Würfel. Kein Witz.', hook: 'Rund 80 bis 100 kleine Würfel pro Nacht. Kein anderes bekanntes Tier schafft das.' },
  en: { cat: 'nature', title: 'Wombats poop cubes. Seriously.', hook: 'Around 80 to 100 little cubes a night. No other known animal does that.' },
};

// =====================================================================
// 1) Logo-Dateien
out('public/brand/logo.svg', logoFile(C.ink, C.pink, C.ink));
out('public/brand/logo-dark.svg', logoFile(C.paper, C.pink, C.ink));
out('public/brand/mark.svg', mark({ size: 512 }));
png('brand/export/logo-1600.png', logoFile(C.ink, C.pink, C.ink), 1600);
png('brand/export/logo-dark-1600.png', logoFile(C.paper, C.pink, C.ink), 1600);
png('brand/export/mark-1024.png', mark({ size: 1024 }));

// 2) Favicon und App-Icons
out('public/favicon.svg', mark({ size: 64, shadow: false }));
png('public/apple-touch-icon.png', mark({ size: 180, shadow: false, bg: C.bg }));
png('public/icon-192.png', mark({ size: 192 }));
png('public/icon-512.png', mark({ size: 512 }));
png('public/icon-maskable-512.png', mark({ size: 512, shadow: false, bg: C.yellow, maskable: true }));
for (const s of [16, 32, 48]) png(`brand/.tmp/fav-${s}.png`, mark({ size: s, shadow: false }));
execFileSync('convert', [16, 32, 48].map((s) => path.join(ROOT, `brand/.tmp/fav-${s}.png`)).concat(path.join(ROOT, 'public/favicon.ico')));
fs.rmSync(path.join(ROOT, 'brand/.tmp'), { recursive: true });
console.log('✓ public/favicon.ico');
out('public/site.webmanifest', JSON.stringify({
  name: 'WTFact', short_name: 'WTFact', start_url: '/', display: 'standalone',
  background_color: C.bg, theme_color: C.yellow,
  icons: [
    { src: '/icon-192.png', sizes: '192x192', type: 'image/png' },
    { src: '/icon-512.png', sizes: '512x512', type: 'image/png' },
    { src: '/icon-maskable-512.png', sizes: '512x512', type: 'image/png', purpose: 'maskable' },
  ],
}, null, 2) + '\n');

// 3) Standard-Vorschaubild (Startseite, Über uns ...) 1200×630
for (const lang of ['de', 'en']) {
  const t = L[lang];
  const W = 1200, H = 630;
  const m = wordmark({ size: 150, x: 0, y: 0 });
  const lx = (W - m.width) / 2;
  let b = `<rect width="${W}" height="${H}" fill="${C.bg}"/>` + dots(W, H) + confetti(W, H, 34, 11, [140, 110, 1060, 520]);
  b += `<rect x="7" y="7" width="${W - 14}" height="${H - 14}" fill="none" stroke="${C.ink}" stroke-width="14"/>`;
  b += `<g transform="translate(${r2(lx)} 290)">${m.body}</g>`;
  b += text(t.tagline[0], { x: W / 2, y: 405, size: 44, font: TEXT, anchor: 'middle' });
  b += text(t.tagline[1], { x: W / 2, y: 462, size: 44, font: TEXT, anchor: 'middle' });
  png(`public/og-default-${lang}.png`, svg(W, H, b));
}

// 4) Social Media
// Profilbild 1080×1080 (Instagram, TikTok, Pinterest, YouTube; rund beschnitten sicher)
{
  const S = 1080;
  let b = `<rect width="${S}" height="${S}" fill="${C.pink}"/>` + dots(S, S);
  const inner = mark({ size: 640 }).replace(/^<svg[^>]*>|<\/svg>\n$/g, '');
  b += `<g transform="translate(220 220)">${inner}</g>`;
  png('brand/social/profilbild-1080.png', svg(S, S, b));
}

for (const lang of ['de', 'en']) {
  const t = L[lang];
  // X/Twitter-Header 1500×500
  {
    const W = 1500, H = 500;
    let b = `<rect width="${W}" height="${H}" fill="${C.yellow}"/>` + dots(W, H) + confetti(W, H, 30, 5, [380, 90, 1450, 430]);
    const m = wordmark({ size: 130, x: 0, y: 0 });
    b += `<g transform="translate(${r2(W - 90 - m.width)} 225)">${m.body}</g>`;
    b += text(t.tagline[0], { x: W - 90, y: 330, size: 42, font: TEXT, anchor: 'end' });
    b += text(t.tagline[1], { x: W - 90, y: 384, size: 42, font: TEXT, anchor: 'end' });
    png(`brand/social/${lang}/x-header-1500x500.png`, svg(W, H, b));
  }
  // YouTube/Facebook-Banner 2560×1440 (Text in der sicheren Mitte 1546×423)
  {
    const W = 2560, H = 1440;
    let b = `<rect width="${W}" height="${H}" fill="${C.cyan}"/>` + dots(W, H) + confetti(W, H, 70, 3, [480, 460, 2080, 980]);
    b += card(560, 500, 1440, 440, C.bg, { sw: 10, off: 20, rx: 48 });
    const m = wordmark({ size: 150, x: 0, y: 0 });
    b += `<g transform="translate(${r2(1280 - m.width / 2)} 700)">${m.body}</g>`;
    b += text(t.tagline.join(' '), { x: 1280, y: 830, size: 46, font: TEXT, anchor: 'middle' });
    png(`brand/social/${lang}/banner-youtube-2560x1440.png`, svg(W, H, b));
  }
  // Instagram-Story-Highlight-Cover 1080×1920 (Symbol bleibt im runden Ausschnitt)
  for (const key of Object.keys(ICONS)) {
    const W = 1080, H = 1920;
    let b = `<rect width="${W}" height="${H}" fill="${CAT_COLOR[key]}"/>` + dots(W, H);
    b += `<circle cx="${W / 2 + 18}" cy="${H / 2 + 18}" r="330" fill="${C.ink}"/>`;
    b += `<circle cx="${W / 2}" cy="${H / 2}" r="330" fill="${C.bg}" stroke="${C.ink}" stroke-width="16"/>`;
    b += iconG(key, W / 2 - 190, H / 2 - 190, 380, C.ink, 1.8);
    b += text(t.cats[key], { x: W / 2, y: H / 2 + 520, size: 90, anchor: 'middle' });
    png(`brand/social/${lang}/highlight-${key}.png`, svg(W, H, b));
  }
  // Vorlagen für Beitrags-Posts mit Beispiel-Fakt
  const ex = EXAMPLE[lang];
  const feedOrStory = (W, H, name) => {
    let b = `<rect width="${W}" height="${H}" fill="${C.bg}"/>` + dots(W, H);
    const pad = 80;
    const top = H > 1500 ? 260 : 90; // Story: Platz für Profilzeile oben
    const m = wordmark({ size: 78, x: 0, y: 0 });
    b += `<g transform="translate(${pad} ${top + 60})">${m.body}</g>`;
    const c = chip(t.cats[ex.cat], 0, 0, CAT_COLOR[ex.cat], 34);
    b += `<g transform="translate(${r2(W - pad - c.w)} ${top})">${c.svg}</g>`;
    const cardW = W - pad * 2 - 14;
    const tSize = 92;
    const tl = wrap(ex.title, tSize, cardW - 120);
    const hl = wrap(ex.hook, 40, cardW - 120, TEXT);
    const cardH = 120 + tl.length * tSize * 1.05 + 40 + hl.length * 56 + 60;
    const by = H > 1500 ? H - 420 : H - 150;
    const cardY = r2((top + 120 + by - 80) / 2 - cardH / 2);
    b += card(pad, cardY, cardW, cardH, C.white);
    b += text(t.swipe, { x: pad + 60, y: cardY + 90, size: 36, font: TEXT, fill: C.pink });
    tl.forEach((l, i) => (b += text(l, { x: pad + 60, y: cardY + 120 + (i + 1) * tSize * 1.02, size: tSize, track: -0.02 })));
    const hy = cardY + 120 + tl.length * tSize * 1.05 + 70;
    hl.forEach((l, i) => (b += text(l, { x: pad + 60, y: hy + i * 56, size: 40, font: TEXT, fill: C.muted })));
    const btnW = cardW;
    b += `<rect x="${pad + 8}" y="${by + 8}" width="${btnW}" height="96" rx="48" fill="${C.ink}"/>`;
    b += `<rect x="${pad}" y="${by}" width="${btnW}" height="96" rx="48" fill="${C.yellow}" stroke="${C.ink}" stroke-width="6"/>`;
    b += text(t.cta, { x: pad + btnW / 2, y: by + 62, size: 40, anchor: 'middle' });
    b += text(`${t.daily} · ${t.sources}`, { x: W / 2, y: by - 40, size: 32, font: TEXT, fill: C.muted, anchor: 'middle' });
    b += aiTag(W, H, lang);
    png(`brand/social/${lang}/${name}`, svg(W, H, b));
  };
  feedOrStory(1080, 1350, 'vorlage-instagram-post-1080x1350.png');
  feedOrStory(1080, 1920, 'vorlage-story-tiktok-1080x1920.png');
  // Pinterest-Pin 1000×1500
  {
    const W = 1000, H = 1500;
    let b = `<rect width="${W}" height="${H}" fill="${C.lime}"/>` + dots(W, H);
    const tl = wrap(ex.title, 96, 720);
    const hl = wrap(ex.hook, 40, 720, TEXT);
    const ch = 60 + 120 + 40 + tl.length * 100 + 40 + hl.length * 56 + 50;
    const cy = r2((1220 - ch) / 2);
    b += card(70, cy, 846, ch, C.white);
    b += iconG(ex.cat, 130, cy + 60, 120, C.ink, 2);
    const ty = cy + 60 + 120 + 40;
    tl.forEach((l, i) => (b += text(l, { x: 130, y: ty + 80 + i * 100, size: 96, track: -0.02 })));
    const hy = ty + tl.length * 100 + 60;
    hl.forEach((l, i) => (b += text(l, { x: 130, y: hy + i * 56, size: 40, font: TEXT, fill: C.muted })));
    const m = wordmark({ size: 90, x: 0, y: 0 });
    b += `<g transform="translate(${r2(W / 2 - m.width / 2)} 1330)">${m.body}</g>`;
    b += text(t.short, { x: W / 2, y: 1420, size: 36, font: TEXT, anchor: 'middle' });
    b += aiTag(W, H, lang);
    png(`brand/social/${lang}/vorlage-pinterest-pin-1000x1500.png`, svg(W, H, b));
  }
}

// 5) Kategorie-Symbole als einzelne SVGs (für die Seite oder Social Media)
for (const key of Object.keys(ICONS)) {
  out(`public/brand/icons/${key}.svg`, `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">${ICONS[key]}</svg>\n`);
}

// 6) 404-Grafik: verwirrtes Kästchen
{
  const W = 640, H = 420;
  let b = confetti(W, H, 16, 19, [150, 40, 500, 400]);
  b += card(200, 70, 240, 240, C.yellow, { sw: 10, off: 16, rx: 52 });
  b += `<g transform="rotate(8 320 190)">` + text('404', { x: 320, y: 225, size: 100, anchor: 'middle', track: -0.04 }) + `</g>`;
  out('public/brand/404.svg', svg(W, H, b, ' role="img" aria-hidden="true"'));
}
