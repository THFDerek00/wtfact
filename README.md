# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Beiträge liegen in `src/content/posts/de/` und `src/content/posts/en/` als Markdown.
  Gleiche `translationKey` verbindet die beiden Sprachversionen.
- Amazon-Tags, Impressumsangaben: `src/config.ts`.
- Domain: `astro.config.mjs` (`site`).
