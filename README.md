# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Fakten und Gold-Fakten liegen in einer SQLite-Datenbank (siehe „Fakten-Datenbank“ unten).
  Ein Fakt hat einen `key`, der die deutsche und englische Version verbindet.
- Amazon-Tags, Impressumsangaben: `src/config.ts`.
- Domain: `astro.config.mjs` (`site`).

## Dashboard (steuerung.wtfact.xyz)

Zentrale Stelle für alle Fakten (Wunsch von Eric, 2026-10-08): Login, Wochenplanung per Drag & Drop, automatisches
Freischalten zur geplanten Uhrzeit, Offline-Nehmen und Löschen.

- **Reiter „Veröffentlichungen“:** links der Pool (geschrieben, noch ohne Termin), rechts die Woche mit drei festen
  Zeiten pro Tag (8:00, 12:00 und 16:00 Uhr, `SLOT_TIMES` in `src/config.ts`) und einem Feld „Sonder“ für zusätzliche Fakten zu einer frei
  gewählten Uhrzeit. Fakt in einen Slot ziehen (oder antippen und „Hierher“), zurück in den Pool ziehen oder auf × tippen.
  Ziehen in einen belegten Slot tauscht die beiden Fakten. Vergangene Slots sind gesperrt.
- **Reiter „Alle Fakten“:** Liste mit Zustand (Pool, Geplant, Live, Offline), Termin und Daumen hoch/runter,
  Suche, Filter, Sortierung nach Beliebtheit. Aktionen: sofort veröffentlichen, offline nehmen, wieder online, löschen.
- **Neue Fakten:** Der Wochenlauf legt einen PR `woche/…` an. Das Dashboard zeigt ihn oben an, „In den Pool übernehmen“ mergt ihn.

So funktioniert es:

- Die Fakten bleiben in git (`db/facts/<key>.sql`). Das Dashboard ändert über die GitHub-API nur die Zeile
  `INSERT INTO facts` (Spalten `date`, `draft`, `slot`) und committet direkt auf `main` (Commit-Text „Steuerung: …“).
  `date` = NULL heißt „im Pool“, `slot` 1–3 = feste Zeit, 0 = Sonderveröffentlichung (`db/facts-schema.sql`).
- Die Seite zeigt nur Fakten, deren `date` beim Bauen erreicht ist. Damit ein Fakt pünktlich erscheint, muss die Seite
  zur Slotzeit neu gebaut werden. Das passiert auf zwei Wegen:
  1. **Geplante Aufgabe in Plesk (empfohlen, pünktlich):** ruft alle 5 Minuten
     `https://steuerung.wtfact.xyz/api.php?r=cron&token=<STEUERUNG_CRON_TOKEN>` auf. Ist ein Fakt fällig, startet das
     Dashboard „Hochladen zu IONOS“. Der Fakt ist dann nach etwa 3 Minuten online.
  2. **Rückfallebene:** `.github/workflows/deploy.yml` prüft zusätzlich jede Stunde (Minute 3) mit `scripts/due-check.mjs`,
     ob etwas fällig ist, und baut nur dann.
  Auch beim Öffnen des Dashboards wird ein fälliger Fakt angestoßen.
- Planungs-Commits („Eingeplant“, „Zurück in den Pool“) lösen keinen Build und keinen Upload aus, sie ändern nichts Sichtbares.
- Code: `steuerung/` (PHP: `api.php`, `lib/`), Oberfläche `src/pages/steuerung/index.astro` + `src/scripts/steuerung.ts`.
  `npm run build` packt beides nach `dist-steuerung/` (`scripts/bundle-steuerung.mjs`), der Upload lädt es in den Ordner der Subdomain.

Einmalig einrichten:

1. **Subdomain:** Plesk > Websites & Domains > *Subdomain hinzufügen*: `steuerung.wtfact.xyz`, Dokumentenstamm wie
   vorgeschlagen (`steuerung.wtfact.xyz`), danach unter *SSL/TLS-Zertifikate* Let's Encrypt einschalten.
2. **GitHub-Token:** github.com > Settings > Developer settings > *Fine-grained tokens* > *Generate new token*.
   Repository access: *Only select repositories* > `wtfact`. Permissions: *Contents*, *Pull requests* und *Actions*
   jeweils *Read and write*. Ablaufdatum möglichst lang.
3. **Secrets** in GitHub (Settings > Secrets and variables > Actions > Secrets): `STEUERUNG_PASSWORD` (dein Passwort fürs
   Dashboard), `STEUERUNG_GITHUB_TOKEN` (der Token aus Schritt 2), `STEUERUNG_CRON_TOKEN` (eine lange zufällige
   Zeichenfolge). Benutzername ist `eric` (änderbar über die Variable `STEUERUNG_USER`), die festen Zeiten über
   `STEUERUNG_SLOTS` (Standard `08:00,12:00,16:00`).
4. **Actions > Hochladen zu IONOS > Run workflow.** Danach `https://steuerung.wtfact.xyz` öffnen und anmelden.
5. **Geplante Aufgabe:** Plesk > Websites & Domains > *Geplante Aufgaben* > *Aufgabe hinzufügen* > *URL abrufen*:
   die Cron-Adresse von oben, Ausführen: *Benutzerdefiniert* `*/5 * * * *`.

Ohne Secrets geht es auch von Hand: `steuerung/config.example.php` als `config.local.php` in den Ordner der Subdomain legen.
Lokal testen: `npm run build`, dann `php -S localhost:8081 -t dist-steuerung` (braucht eine `config.local.php`).

## Neue Fakten schreiben

**Wochenlauf (seit 2026-10-08, Routine „WTFact: 21 Fakten für die Woche“, samstags 3:52 Uhr):**
Einmal pro Woche schreibt eine Claude-Routine die Fakten für die ganze nächste Woche
(3 pro Tag, also 21) ohne Termin, legt sie gesammelt als PR `woche/<JJJJ>-KW<NN>` an und meldet sich im Projekt.
Eric übernimmt den PR im Dashboard in den Pool und verteilt die Fakten auf die Slots. Nichts erscheint, ohne dass Eric es einplant.

Alternativ, von Hand: `.github/workflows/daily-post.yml` (Actions > Tägliche Beiträge > Run workflow, braucht das
Secret `ANTHROPIC_API_KEY`) ruft `scripts/generate-post.mjs` auf. Mit `node scripts/generate-post.mjs --pool` landet der
Fakt ohne Termin im Pool (Kategorie = die mit den wenigsten Fakten im Pool). Jeder Aufruf schreibt einen Fakt:

1. Claude recherchiert per Websuche einen belegbaren, überraschenden Fakt in der gewählten Kategorie
   und schreibt einen Entwurf.
2. Claude formt daraus den fertigen Beitrag auf Deutsch und Englisch mit zwei Produktideen.
3. Das Skript prüft die Regeln aus `docs/styleguide.md` (`scripts/post-rules.mjs`), etwa Länge,
   mindestens zwei unabhängige Quellen und keine Zahlen in der Überschrift, die nicht im Text stehen.
4. Ein Faktencheck-Durchgang öffnet jede Quelle und prüft jede Aussage, die Überschrift und die Quellentitel.
5. Nur wenn alles passt, wird der Beitrag in der Datenbank gespeichert (Datei `db/facts/<key>.sql`).

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
- Einen Fakt von der Seite nehmen, ohne ihn zu löschen: `draft` auf `1` (oder im Dashboard „Offline nehmen“).
- `date` leer (NULL) = Fakt im Pool, erscheint erst, wenn er im Dashboard einen Termin bekommt.

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
- **Daumen unter jedem Fakt** (`src/components/Thumbs.astro`): dieselbe Bewertung wie auf der Wisch-Karte, mit Zahlen
  aller Besucher (`GET /api/index.php?r=rating&key=…`).
- **Top 10** (`src/components/TopTen.astro`, auf der Hall of Fame): meiste Daumen hoch minus Daumen runter
  (`GET /api/index.php?r=top`, ohne Server `topTen` in `src/week.ts`).
- **Hall of Fame** (`/de/hall-of-fame/`, `src/pages/[lang]/hall-of-fame.astro`): eigene Seite für Fakt des
  Tages, Fakt der Woche und die Montags-Abstimmung. Dazu Countdowns (nächster neuer Fakt zur nächsten festen Zeit aus `SLOT_TIMES`, nächster Fakt des Tages, nächste
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

- `public/api/index.php`: Routen `?r=week`, `?r=history`, `?r=vote`, `?r=rate`, `?r=rating`, `?r=top`. Braucht keine `.htaccess`-Regeln.
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

Die Seite ist statisch (`dist/`), dazu kommt die PHP-API. `.github/workflows/deploy.yml` baut nach jedem Commit
auf `main` und wenn ein eingeplanter Fakt fällig ist (siehe „Dashboard“) und lädt per SFTP nur geänderte Dateien hoch,
die Seite nach `httpdocs`, das Dashboard nach `steuerung.wtfact.xyz`. Gelöscht werden
nur Dateien, die ein früherer Upload angelegt hat (Liste: `.deploy-manifest.json` im Webordner, Logik:
`scripts/deploy-plan.mjs`). Datenbank, `config.local.php` und alles andere auf dem Server bleiben.

Einmalig einrichten:

1. In Plesk unter **Websites & Domains >** Domain **> Hosting & DNS > Hosting** (bzw. „Hosting-Einstellungen“):
   PHP 8 einschalten, Dokumentenstamm `httpdocs`. Beim Systembenutzer **SSH-Zugriff** auf
   `/bin/bash (chrooted)` stellen, sonst geht kein SFTP. Benutzername und Passwort stehen dort ebenfalls.
2. In GitHub unter **Settings > Secrets and variables > Actions > Secrets** anlegen:
   `DEPLOY_HOST` (Domain oder IP des Plesk-Servers), `DEPLOY_USER` (Systembenutzer), `DEPLOY_PASSWORD`.
   Optional unter **Variables**: `DEPLOY_PATH` (Standard `httpdocs`), `DEPLOY_PORT` (Standard `22`, bei FTP `21`),
   `DEPLOY_PROTOCOL` (`sftp` oder `ftp`, Standard `sftp`). Erlaubt der Server per SSH nur Schlüssel
   („Permission denied (publickey)“), `DEPLOY_PROTOCOL` = `ftp` setzen: Upload per FTP mit TLS, wie in FileZilla.
3. **Actions > Hochladen zu IONOS > Run workflow**. Danach muss `https://<domain>/api/index.php?r=week`
   JSON zeigen. Steht dort `not-configured`, sagt `reason`, was fehlt (z. B. `no-pdo-sqlite`: in Plesk unter
   PHP-Einstellungen die Erweiterung `pdo_sqlite` aktivieren oder MySQL nehmen, siehe oben).

Ohne `DEPLOY_HOST` baut der Workflow nur und lädt nichts hoch.
