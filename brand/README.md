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
| `social/kit/<de|en>/vorlagen/` | Leere Vorlagen je Kategorie (Post 1080×1350, Story 1080×1920) plus Wahr oder Fake?, Beweis es! und Reel-Titel |
| `social/kit/<de|en>/beispiele/` | Post, Story und Pin für 10 echte Fakten von der Seite, einer pro Kategorie |
| `social/kit/<de|en>/kampagnen/` | Quellen-Karussell, Wahr oder Fake?, Beweis es!, Reel-Abspann, Launch, Science Jumper, Wischen, Montags-Abstimmung, Neu diese Woche |
| `social/kit/<de|en>/vorlagen/abstimmung-…`, `fakt-der-woche-…` | Leere Vorlagen für die Montags-Abstimmung und den Fakt der Woche (Beispiel mit echtem Fakt in `beispiele/`) |
| `social/kit/texte-de.md`, `texte-en.md` | Captions, Hashtags und Plan für die ersten 2 Wochen |

Neu erzeugen:

```sh
npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter
node brand/build-brand.mjs
node brand/build-social-kit.mjs   # Social-Kit; Titel, Hooks und Quellen kommen aus src/content/posts
```

Gemeinsame Bausteine (Farben, Logo, Chips, Punktmuster) stehen in `brand-lib.mjs`. Alle Flächen tragen das Punktmuster der Seite (Raster 44 px, entspricht den 16 px auf dem Handy). Social-Grafiken mit Inhalt tragen unten rechts dezent „KI-generiert“ / „AI-generated“ (Transparenz nach EU-KI-Verordnung).
