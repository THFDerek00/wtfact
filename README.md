# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Beiträge liegen in `src/content/posts/de/` und `src/content/posts/en/` als Markdown.
  Gleiche `translationKey` verbindet die beiden Sprachversionen.
- Amazon-Tags, Impressumsangaben: `src/config.ts`.
- Domain: `astro.config.mjs` (`site`).

## Tägliche Beiträge

Jeden Tag erscheinen drei neue Fakten: um **8, 13 und 18 Uhr** (deutsche Zeit, `FACT_TIMES` in `src/config.ts`).
Die drei stammen aus drei verschiedenen Kategorien, und keine davon war am Vortag dran. Von den übrigen
Kategorien kommt jeweils die dran, die am längsten Pause hatte.

`.github/workflows/daily-post.yml` läuft jeden Morgen um 4 Uhr (Winter 3 Uhr) und ruft
`scripts/generate-post.mjs` bis zu dreimal auf. Jeder Aufruf schreibt den nächsten Fakt des Tages:

1. Claude recherchiert per Websuche einen belegbaren, überraschenden Fakt in der gewählten Kategorie
   und schreibt einen Entwurf.
2. Claude formt daraus den fertigen Beitrag auf Deutsch und Englisch mit zwei Produktideen.
3. Das Skript prüft die Regeln aus `docs/styleguide.md` (`scripts/post-rules.mjs`), etwa Länge,
   mindestens zwei unabhängige Quellen und keine Zahlen in der Überschrift, die nicht im Text stehen.
4. Ein Faktencheck-Durchgang öffnet jede Quelle und prüft jede Aussage, die Überschrift und die Quellentitel.
5. Nur wenn alles passt, wird der Beitrag gespeichert. Sein `date` trägt die Uhrzeit, zu der er erscheint
   (z. B. `2026-10-03T13:00:00+02:00`).

Jeder Fakt bekommt einen zweiten Versuch. Fällt er trotzdem durch, rückt der nächste Fakt auf seine Uhrzeit vor,
an dem Tag gibt es dann eben nur zwei. Danach wird die Seite testweise gebaut, und jeder Fakt kommt als eigener
Pull Request (Zweig `beitrag/JJJJ-MM-TT-HHMM`).

`.github/workflows/publish-posts.yml` führt jeden PR zu seiner Uhrzeit nach `main` zusammen, Cloudflare Pages
baut die Seite dann neu. Wer einen Fakt stoppen will, schließt seinen PR vorher.

## Stilregeln

`docs/styleguide.md` ist die einzige Quelle für Ton und Regeln: Claude bekommt die Datei wörtlich als Vorgabe.
`npm run check` prüft alle Beiträge dagegen und läuft automatisch vor jedem `npm run build`.
Ein Beitrag, der die Regeln verletzt, lässt also auch den Build auf Cloudflare und in GitHub scheitern.

Voraussetzung: Repository-Secret `ANTHROPIC_API_KEY`. Manuell starten: Actions > Tägliche Beiträge > Run workflow,
oder lokal `npm run post`.

## Design

Farben, Schrift, Abstände und Bausteine sind in `docs/design-system.md` beschrieben. `npm run check:design` prüft sie (auch automatisch vor jedem Build): keine festen Farben oder Größen außerhalb der Tokens, Fokus-Stil, Barrierefreiheit und Kontraste.

## Bewerten, Fakt des Tages, Abstimmung und Fakt der Woche

- **Wischen:** Die Begrüßungskarte auf der Startseite (neuester Fakt, danach die nächsten neuen Fakten)
  lässt sich nach oben links („Gefällt mir weniger“) oder oben rechts („Gefällt mir“) ziehen. Knöpfe und
  Pfeiltasten machen dasselbe. Komponente: `src/components/SwipeDeck.astro`.
- **Fakt des Tages:** Kein Abstimmen. Von den Fakten des Vortags wird der mit dem höchsten Anteil „Gefällt mir“
  beim Wischen Fakt des Tages. Gezählt werden die Bewertungen bis 0 Uhr, so bleibt er den ganzen Tag gleich.
  Gleicher Anteil (auch: noch gar keine Bewertungen) entscheidet das Los, für alle Besucher dasselbe.
  Logik: `pickFactOfDay` in `src/week.ts`, Anzeige: `src/components/Weekly.astro`.
- **Montags-Abstimmung:** Jeden Montag (deutsche Zeit, 0 bis 24 Uhr) stimmen alle ab, welcher Fakt der
  letzten 7 Tage der beste war. Der Gewinner ist ab Dienstag eine Woche lang „Fakt der Woche“.
  Gleichstand: mehr „Gefällt mir“ beim Wischen gewinnt, danach der neuere Fakt. Ohne Stimmen gibt es keinen
  Fakt der Woche. Komponente: `src/components/Weekly.astro`, Kalender: `src/week.ts`.
- **Neu:** Fakten der letzten 7 Tage (heute eingeschlossen) tragen das Etikett „Neu“ (`src/components/NewBadge.astro`).
  Der Browser prüft das nach, damit es auch ohne neuen Build verschwindet.

Stimmen und Bewertungen speichert eine Cloudflare Pages Function (`functions/api/[[path]].ts`,
Logik in `src/server/community.ts`) in einer D1-Datenbank. Ohne Datenbank (lokal, in der Vorschau oder bevor
sie eingerichtet ist) funktioniert alles weiter, wird aber nur im jeweiligen Browser gespeichert.

Einrichtung, einmalig im Cloudflare-Dashboard:

1. **Storage & Databases > D1 > Create database**, Name `wtfact`.
2. In der Datenbank **Console** öffnen, den Inhalt von `db/schema.sql` einfügen und ausführen.
3. **Workers & Pages >** Pages-Projekt **> Settings > Bindings > Add > D1 database**:
   Variable name `DB`, Datenbank `wtfact`. Für Production und Preview eintragen.
4. Neu deployen. `https://<domain>/api/week` antwortet dann mit JSON statt mit `not-configured`.

Die Kennung `voter` ist eine Zufallszahl aus dem Browser, es werden keine IP-Adressen gespeichert.
Falls jemand massenhaft abstimmt: in Cloudflare unter **Security > WAF > Rate limiting rules** eine Regel für
`/api/vote` und `/api/rate` anlegen (z. B. 20 Anfragen pro Minute und IP).
