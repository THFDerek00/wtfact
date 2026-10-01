# WTFact Marken-Grafiken

Alles hier wird von `build-brand.mjs` erzeugt (Farben und Schriften wie auf der Seite).

| Datei | Wofür |
|---|---|
| `../public/brand/logo.svg`, `logo-dark.svg` | Logo für helle bzw. dunkle Hintergründe |
| `../public/brand/mark.svg`, `export/mark-1024.png` | Bildzeichen „?!" allein |
| `export/logo-*.png` | Logo als PNG (z. B. für Canva, Presse) |
| `../public/favicon.*`, `apple-touch-icon.png`, `icon-*.png`, `site.webmanifest` | Browser-Tab, Handy-Startbildschirm |
| `../public/og-default-de.png`, `-en.png` | Vorschaubild beim Teilen von Startseite und Unterseiten |
| `../public/brand/icons/*.svg` | Symbole für die Kategorien (+ Neu, Quiz) |
| `../public/brand/404.svg` | Grafik der 404-Seite |
| `social/profilbild-1080.png` | Profilbild für Instagram, TikTok, Pinterest, YouTube, X |
| `social/<de|en>/x-header-1500x500.png` | Titelbild für X |
| `social/<de|en>/banner-youtube-2560x1440.png` | Kanalbanner YouTube (Text in der sicheren Mitte) |
| `social/<de|en>/highlight-*.png` | Instagram-Story-Highlight-Cover |
| `social/<de|en>/vorlage-*.png` | Musterlayouts für Instagram-Post, Story/TikTok und Pinterest-Pin |

Neu erzeugen:

```sh
npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter
node brand/build-brand.mjs
```
