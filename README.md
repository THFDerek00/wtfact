# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Fakten und Gold-Fakten liegen in einer SQLite-Datenbank (siehe „Fakten-Datenbank“ unten).
  Ein Fakt hat einen `key`, der die deutsche und englische Version verbindet.
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
5. Nur wenn alles passt, wird der Beitrag in der Datenbank gespeichert (Datei `db/facts/<key>.sql`). Sein `date` trägt die Uhrzeit, zu der er erscheint
   (z. B. `2026-10-03T13:00:00+02:00`).

Jeder Fakt bekommt einen zweiten Versuch. Fällt er trotzdem durch, rückt der nächste Fakt auf seine Uhrzeit vor,
an dem Tag gibt es dann eben nur zwei. Danach wird die Seite testweise gebaut, und jeder Fakt kommt als eigener
Pull Request (Zweig `beitrag/JJJJ-MM-TT-HHMM`).

`.github/workflows/publish-posts.yml` führt jeden PR zu seiner Uhrzeit nach `main` zusammen, Cloudflare Pages
baut die Seite dann neu. Wer einen Fakt stoppen will, schließt seinen PR vorher.

## Fakten-Datenbank

Alle Inhalte stehen in SQLite, der gleichen Datenbank-Sprache wie Cloudflare D1:

- `db/facts-schema.sql`: Tabellen `facts`, `texts` (pro Sprache), `products`, `sources`, `gold_facts`, `gold_texts`, `gold_sources`.
- `db/wtfact.sqlite`: die Datenbank selbst. Seite, Prüfungen, Generator und Social-Kit lesen nur hier.
  Sie steht nicht in git und wird bei `npm run check` und `npm run build` frisch gebaut.
- `db/facts/<key>.sql` und `db/gold/<id>.sql`: dieselben Daten als lesbare SQL-Datei, eine pro Fakt. Das ist die
  Form in git. So zeigt jeder Fakten-PR den Text Zeile für Zeile, und die drei PRs pro Tag kommen sich nicht in die Quere
  (eine Datenbank-Datei in git wäre im PR unlesbar und würde bei jedem zweiten PR einen Konflikt melden).

Befehle:

- `npm run db:build` baut `db/wtfact.sqlite` aus den SQL-Dateien.
- Datenbank direkt bearbeiten, z. B. mit [DB Browser for SQLite](https://sqlitebrowser.org): danach `npm run db:dump`.
  Das schreibt die Änderungen zurück in `db/facts/` und `db/gold/` (gelöschte Fakten verschwinden dort auch).
  Vergessen ist kein Problem: `db:build` merkt, dass die Datenbank Änderungen hat, und bricht ab, statt sie zu überschreiben.
- `npm run db:stats` zeigt, wie viele Fakten es je Kategorie gibt.
- Einen Fakt von der Seite nehmen, ohne ihn zu löschen: `draft` auf `1`.

Braucht Node 22.13 oder neuer (eingebautes `node:sqlite`, kein Zusatzpaket). Cloudflare Pages liest die Version aus `.node-version`.
Alte Markdown-Beiträge in `src/content/posts/` (etwa aus einem PR von vor der Umstellung) werden beim Bauen noch mitgelesen;
`npm run db:dump` wandelt sie in SQL-Dateien um.

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
  Logik: `pickFactOfDay` in `src/week.ts`, Anzeige: Hall of Fame (siehe unten).
- **Montags-Abstimmung:** Jeden Montag (deutsche Zeit, 0 bis 24 Uhr) stimmen alle ab, welcher Fakt der
  letzten 7 Tage der beste war. Der Gewinner ist ab Dienstag eine Woche lang „Fakt der Woche“.
  Gleichstand: mehr „Gefällt mir“ beim Wischen gewinnt, danach der neuere Fakt. Ohne Stimmen gibt es keinen
  Fakt der Woche. Komponente: `src/components/Vote.astro` (auf der Hall of Fame), Kalender: `src/week.ts`.
- **Hall of Fame** (`/de/hall-of-fame/`, `src/pages/[lang]/hall-of-fame.astro`): eigene Seite für Fakt des
  Tages, Fakt der Woche und die Montags-Abstimmung. Dazu Countdowns (nächster Fakt des Tages, nächste
  Abstimmung), Tippspiel „Wer wird morgen Fakt des Tages?“ mit Trefferserie, Verlauf (30 Tage, 12 Wochen)
  mit Sammelalbum (gelesene Sieger, die Beitragsseite merkt sich gelesene Fakten) und eine Rangliste der
  Kategorien. Auf der Startseite steht nur ein kurzer Hinweis (`src/components/FamePointer.astro`).
  Browser-Logik: `src/scripts/fame.ts`, Verlauf vom Server: `GET /api/history`. Tipps und Album liegen nur im
  Browser (`localStorage` `wtfact:fame`).
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
