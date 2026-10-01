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
3. Das Skript prüft die Regeln aus `docs/styleguide.md` (`scripts/post-rules.mjs`), etwa Länge,
   mindestens zwei unabhängige Quellen und keine Zahlen in der Überschrift, die nicht im Text stehen.
4. Ein Faktencheck-Durchgang öffnet jede Quelle und prüft jede Aussage, die Überschrift und die Quellentitel.
5. Nur wenn alles passt, wird die Seite testweise gebaut und der Beitrag committet.

## Stilregeln

`docs/styleguide.md` ist die einzige Quelle für Ton und Regeln: Claude bekommt die Datei wörtlich als Vorgabe.
`npm run check` prüft alle Beiträge dagegen und läuft automatisch vor jedem `npm run build`.
Ein Beitrag, der die Regeln verletzt, lässt also auch den Build auf Cloudflare und in GitHub scheitern.

Voraussetzung: Repository-Secret `ANTHROPIC_API_KEY`. Manuell starten: Actions > Täglicher Beitrag > Run workflow,
oder lokal `npm run post`.

## Design

Farben, Schrift, Abstände und Bausteine sind in `docs/design-system.md` beschrieben. `npm run check:design` prüft sie (auch automatisch vor jedem Build): keine festen Farben oder Größen außerhalb der Tokens, Fokus-Stil, Barrierefreiheit und Kontraste.
