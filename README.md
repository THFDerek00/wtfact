# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Beiträge liegen in `src/content/posts/de/` und `src/content/posts/en/` als Markdown.
  Gleiche `translationKey` verbindet die beiden Sprachversionen.
- Amazon-Tags, Impressumsangaben: `src/config.ts`.
- Domain: `astro.config.mjs` (`site`).

## Täglicher Beitrag

`.github/workflows/daily-post.yml` läuft jeden Morgen und ruft `scripts/generate-post.mjs` auf:

1. Claude recherchiert per Websuche einen belegbaren, überraschenden Fakt in der Kategorie,
   die am längsten nicht dran war, und schreibt einen Entwurf.
2. Claude formt daraus den fertigen Beitrag auf Deutsch und Englisch mit zwei Produktideen.
3. Das Skript verwirft Beiträge, die zu kurz sind, keine überprüfbare Quelle haben oder
   ein Thema doppeln, baut die Seite testweise und committet den Beitrag.

Voraussetzung: Repository-Secret `ANTHROPIC_API_KEY`. Manuell starten: Actions > Täglicher Beitrag > Run workflow,
oder lokal `npm run post`.
