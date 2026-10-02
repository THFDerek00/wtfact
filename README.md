# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Fakten und Gold-Fakten liegen in einer SQLite-Datenbank (siehe „Fakten-Datenbank“ unten).
  Ein Fakt hat einen `key`, der die deutsche und englische Version verbindet.
- Amazon-Tags, Impressumsangaben: `src/config.ts`.
- Domain: `astro.config.mjs` (`site`).

## Tägliche Beiträge

Claude schreibt jeden Morgen drei neue Fakten (`FACTS_PER_DAY` in `src/config.ts`), veröffentlicht sie aber
nicht selbst: Jeder Fakt kommt als Pull Request, und Eric entscheidet, welche er mergt. Die drei stammen aus
drei verschiedenen Kategorien, und keine davon war am Vortag dran. Von den übrigen Kategorien kommt jeweils
die dran, die am längsten Pause hatte. Fakten aus noch offenen PRs zählen dabei mit.

Geschrieben werden sie von einer wiederkehrenden Claude-Aufgabe (Routine „WTFact: drei Fakten am Morgen“),
die jeden Morgen um 3:52 Uhr deutscher Zeit in Claude Code startet. Sie folgt denselben Schritten und Regeln wie
das Skript unten und legt die PRs an. Gibt es für den Tag schon `beitrag/JJJJ-MM-TT-*`-Zweige, tut sie nichts.

Alternativ, von Hand: `.github/workflows/daily-post.yml` (Actions > Tägliche Beiträge > Run workflow, braucht das
Secret `ANTHROPIC_API_KEY`) ruft `scripts/generate-post.mjs` bis zu dreimal auf. Jeder Aufruf schreibt den nächsten Fakt des Tages:

1. Claude recherchiert per Websuche einen belegbaren, überraschenden Fakt in der gewählten Kategorie
   und schreibt einen Entwurf.
2. Claude formt daraus den fertigen Beitrag auf Deutsch und Englisch mit zwei Produktideen.
3. Das Skript prüft die Regeln aus `docs/styleguide.md` (`scripts/post-rules.mjs`), etwa Länge,
   mindestens zwei unabhängige Quellen und keine Zahlen in der Überschrift, die nicht im Text stehen.
4. Ein Faktencheck-Durchgang öffnet jede Quelle und prüft jede Aussage, die Überschrift und die Quellentitel.
5. Nur wenn alles passt, wird der Beitrag in der Datenbank gespeichert (Datei `db/facts/<key>.sql`).
   Sein `date` ist der Zeitpunkt, zu dem er geschrieben wurde (z. B. `2026-10-03T04:12:30+02:00`).

Jeder Fakt bekommt einen zweiten Versuch. Fällt er trotzdem durch, gibt es an dem Tag eben nur zwei.
Danach wird die Seite testweise gebaut, und jeder Fakt kommt als eigener Pull Request (Zweig `beitrag/JJJJ-MM-TT-N`).

**Veröffentlichen:** den PR mergen. Der Fakt ist dann sofort sichtbar, sobald die Seite nach dem Merge neu
gebaut und hochgeladen ist. **Nicht veröffentlichen:** den PR schließen. Nichts wird automatisch gemergt.
`.github/workflows/publish-posts.yml` führt jeden PR zu seiner Uhrzeit nach `main` zusammen, danach baut
`.github/workflows/deploy.yml` die Seite neu und lädt sie zu IONOS hoch (siehe „Hosting“). Wer einen Fakt stoppen will, schließt seinen PR vorher.

## Fakten-Datenbank

Alle Inhalte stehen in SQLite:

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

Braucht Node 22.13 oder neuer (eingebautes `node:sqlite`, kein Zusatzpaket).
Alte Markdown-Beiträge in `src/content/posts/` (etwa aus einem PR von vor der Umstellung) werden beim Bauen noch mitgelesen;
`npm run db:dump` wandelt sie in SQL-Dateien um.

## Stilregeln

`docs/styleguide.md` ist die einzige Quelle für Ton und Regeln: Claude bekommt die Datei wörtlich als Vorgabe.
`npm run check` prüft alle Beiträge dagegen und läuft automatisch vor jedem `npm run build`.
Ein Beitrag, der die Regeln verletzt, lässt also auch den Build in GitHub scheitern und wird nicht hochgeladen.

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
  Browser-Logik: `src/scripts/fame.ts`, Verlauf vom Server: `GET /api/index.php?r=history`. Tipps und Album liegen nur im
  Browser (`localStorage` `wtfact:fame`).
- **Neu:** Fakten der letzten 7 Tage (heute eingeschlossen) tragen das Etikett „Neu“ (`src/components/NewBadge.astro`).
  Der Browser prüft das nach, damit es auch ohne neuen Build verschwindet.

Stimmen und Bewertungen speichert die PHP-API in `public/api/` (landet beim Bauen in `dist/api/`).
Ohne erreichbare API (lokal mit `npm run dev`, in der Vorschau) funktioniert alles weiter, wird aber nur im
jeweiligen Browser gespeichert.

- `public/api/index.php`: Routen `?r=week`, `?r=history`, `?r=vote`, `?r=rate`. Braucht keine `.htaccess`-Regeln.
- `public/api/week.php`: Kalender und Gewinner, gleiche Rechnung wie `src/week.ts`. Wer eins ändert, ändert beide.
- Gespeichert wird in SQLite (`pdo_sqlite`, bei Plesk dabei). Die Datei `community.sqlite` liegt im Ordner
  `wtfact-data/` neben `httpdocs/` und ist damit nicht aus dem Netz abrufbar. Geht das nicht, nimmt die API
  `httpdocs/api/data/` und sperrt den Ordner per `.htaccess`. Tabellen legt die API beim ersten Aufruf selbst an.
- Lieber MySQL/MariaDB aus Plesk: `public/api/config.example.php` als `httpdocs/api/config.local.php` auf den Server
  legen und ausfüllen. Der Upload fasst diese Datei nicht an.
- Die Kennung `voter` ist eine Zufallszahl aus dem Browser. IP-Adressen werden nicht gespeichert. Gegen
  Massenstimmen zählt die API pro Tag und Anschluss mit (höchstens 30 Stimmen und 600 Bewertungen, `LIMITS` in
  `index.php`), über einen Hash aus IP und einem Zufallswert, der am nächsten Tag samt Zählern gelöscht wird.
- Lokal testen: `npm run build && php -S localhost:8080 -t dist`, dann `http://localhost:8080/api/index.php?r=week`.

## Hosting (IONOS mit Plesk)

Die Seite ist statisch (`dist/`), dazu kommt die PHP-API. `.github/workflows/deploy.yml` baut nach jedem Merge
nach `main` und nach jedem Veröffentlichen eines Fakts und lädt per SFTP nur geänderte Dateien hoch. Gelöscht werden
nur Dateien, die ein früherer Upload angelegt hat (Liste: `.deploy-manifest.json` im Webordner, Logik:
`scripts/deploy-plan.mjs`). Datenbank, `config.local.php` und alles andere auf dem Server bleiben.

Einmalig einrichten:

1. In Plesk unter **Websites & Domains >** Domain **> Hosting & DNS > Hosting** (bzw. „Hosting-Einstellungen“):
   PHP 8 einschalten, Dokumentenstamm `httpdocs`. Beim Systembenutzer **SSH-Zugriff** auf
   `/bin/bash (chrooted)` stellen, sonst geht kein SFTP. Benutzername und Passwort stehen dort ebenfalls.
2. In GitHub unter **Settings > Secrets and variables > Actions > Secrets** anlegen:
   `DEPLOY_HOST` (Domain oder IP des Plesk-Servers), `DEPLOY_USER` (Systembenutzer), `DEPLOY_PASSWORD`.
   Optional unter **Variables**: `DEPLOY_PATH` (Standard `httpdocs`), `DEPLOY_PORT` (Standard `22`).
3. **Actions > Hochladen zu IONOS > Run workflow**. Danach muss `https://<domain>/api/index.php?r=week`
   JSON zeigen. Steht dort `not-configured`, sagt `reason`, was fehlt (z. B. `no-pdo-sqlite`: in Plesk unter
   PHP-Einstellungen die Erweiterung `pdo_sqlite` aktivieren oder MySQL nehmen, siehe oben).

Ohne `DEPLOY_HOST` baut der Workflow nur und lädt nichts hoch.
