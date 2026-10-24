# WTFact

Zweisprachige Fakten-Website (Deutsch/Englisch), gebaut mit Astro.

- `npm install` und `npm run dev` startet die Seite lokal.
- Fakten und Gold-Fakten liegen in einer SQLite-Datenbank (siehe „Fakten-Datenbank“ unten).
  Ein Fakt hat einen `key`, der die deutsche und englische Version verbindet.
- Amazon-Tags, Impressumsangaben: `src/config.ts`.
- Besucherstatistik (Umami, cookielos): Website-ID in `src/config.ts` (`umami.websiteId`) eintragen, leer = aus. Klicks auf Amazon-Links zählen als Ereignis `amazon`.
- Cookie-Banner und Dienste mit Cookies (Google Analytics, Meta-Pixel, Microsoft Clarity): IDs in `src/config.ts` (`consent`) eintragen, leer = aus. Ist keine ID eingetragen, erscheint kein Banner. Die Dienste laden erst nach „Alle akzeptieren“, die Datenschutzerklärung ergänzt sich automatisch.
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
- **Neue Fakten:** Der Wochenlauf legt einen PR `woche/…` an. Das Dashboard zeigt ihn oben an, „In den Pool übernehmen“ mergt ihn (eingeplante Fakten bleiben eingeplant).

So funktioniert es:

- Die Fakten bleiben in git (`db/facts/<key>.sql`). Das Dashboard ändert über die GitHub-API nur die Zeile
  `INSERT INTO facts` (Spalten `date`, `draft`, `slot`) und committet direkt auf `main` (Commit-Text „Steuerung: …“).
  `date` = NULL heißt „im Pool“, `slot` 1–3 = feste Zeit, 0 = Sonderveröffentlichung (`db/facts-schema.sql`).
- Die Seite zeigt nur Fakten, deren `date` beim Bauen erreicht ist. Damit ein Fakt pünktlich erscheint, muss die Seite
  zur Slotzeit neu gebaut werden. Das macht die **geplante Aufgabe in Plesk**: Sie ruft alle 5 Minuten
  `https://steuerung.wtfact.xyz/api.php?r=cron&token=<STEUERUNG_CRON_TOKEN>` auf. Ist ein Fakt fällig, startet das
  Dashboard „Hochladen zu IONOS“. Der Fakt ist dann nach etwa 3 Minuten online. Auch beim Öffnen des Dashboards wird
  ein fälliger Fakt angestoßen. Eine stündliche Prüfung auf GitHub gibt es seit dem 24.10.2026 nicht mehr (sie kostete
  rund 740 Actions-Minuten im Monat), die Plesk-Aufgabe muss also eingerichtet sein.
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

**Wochenlauf (Wunsch von Eric, 2026-10-08, Routine „WTFact: 21 Fakten für die Woche“, samstags gegen 10 Uhr):**
Claude schreibt die 21 Fakten für die kommende Woche Sonntag bis Samstag (3 pro Tag), schon eingeplant zu den festen
Zeiten (`SLOT_TIMES`), und legt sie gesammelt als PR `woche/<JJJJ>-KW<NN>` an. Fällt ein Fakt durch den Faktencheck,
schreibt Claude Ersatz, bis es 21 sind. Eric übernimmt den PR im Dashboard (bis Sonntag 8 Uhr) und kann dort umplanen.

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

## Feiertage und Grusel

Zwei Kategorien vom 2026-10-15 (Wunsch von Eric):

- **Feiertage** (`holiday`): Ein Fakt erscheint nur an seinem Feiertag. Kalender mit 2 bis 6 Terminen pro Monat (deutsche und
  bekannte internationale Feste) und Farbwelt je Fest: `src/data/holidays.ts`. Karte und Faktseite färben sich im Stil des Festes
  (Design: `docs/design-system.md`, „Farbwelten“). Der Fakt bekommt als `date` den Feiertag (Sonderveröffentlichung, `slot` 0, 00:00 Uhr Berliner Zeit).
  `npm run check` lehnt Feiertags-Fakten an anderen Tagen ab; im Dashboard lassen sie sich nicht verschieben oder vorziehen,
  nur offline nehmen. In die tägliche Abwechslung kommen Feiertage nie (`SPECIAL_CATEGORIES` in `src/config.ts`).
- **Sonderfakt am Feiertag** (Wunsch von Eric, 2026-10-15): Der Wochenlauf schaut, welche Feiertage in seiner Woche liegen.
  Liegt für einen schon ein Fakt bereit (Kategorie `holiday`, auf den Tag datiert), bleibt es dabei. Sonst schreibt er einen
  Sonderfakt, datiert auf 0 Uhr am Feiertag mit `slot` 0, zusätzlich zu den 21 Fakten im selben PR. Von Hand:
  `node scripts/generate-post.mjs --holiday` schreibt den Fakt für den nächsten Feiertag der kommenden 7 Tage ohne Fakt.
- **Umstellung um 0 Uhr:** Die Seite schreibt bei jedem Bau `fest.json` (Bautag und alle Feiertage). Ist heute oder am Bautag
  ein Feiertag und wurde nicht heute gebaut, lädt das Dashboard (geplante Aufgabe in Plesk) neu hoch.
  So wechselt die Seite kurz nach 0 Uhr ins Design des Festes und am Tag danach zurück, auch ohne fälligen Fakt.
- **Grusel** (`horror`): normale Kategorie mit eigener Farbwelt (Schwarz, Giftgrün, Geisterlila). Regeln: `docs/styleguide.md`.

## Adventskalender und Weihnachtszeit

Wunsch von Eric, 2026-10-21. Vom 1. Advent bis 26.12. sieht die Seite weihnachtlich aus (Design: `docs/design-system.md`,
„Weihnachtszeit“). Vom 1. bis 24.12. öffnet um 0 Uhr jeden Tag ein Türchen unter `/de/advent/` bzw. `/en/advent/`.

- **Inhalte:** `src/data/advent.ts`. `DOORS` nennt je Jahr und Türchen die Fakten (Türchen 6 = Nikolaus-Stiefel mit zwei).
  Jeder Türchen-Fakt ist ein normaler Fakt mit `date` JJJJ-12-TT 00:00 (Berliner Zeit) und `slot` 0. `npm run check` prüft,
  dass es alle gibt, dass ihr Datum stimmt und dass kein Türchen fehlt. `QUIZ` (Türchen 9 und 20, Wahr oder Fake über frühere
  Türchen) und `GUESS` (13 und 22, Zahl schätzen) gehören zum Jahr, Geschenk-Türchen (3, 10, 17) zeigen die Werbung des Fakts
  und verlinken den Geschenkfinder.
- **Neues Jahr:** 24 (bzw. 25) neue Fakten schreiben, auf ihre Tage datieren und unter `DOORS`, `QUIZ` und `GUESS` einen Block
  für das Jahr anlegen. Der 1. Advent rechnet sich selbst aus.
- **Dashboard:** Türchen-Fakten lassen sich wie Feiertags-Fakten nicht umplanen (`fest.json` → `advent`). `fest.json` nennt
  außerdem alle Tage der Weihnachtszeit, damit die Seite an jedem dieser Tage frisch gebaut wird.
- **Im Browser** (`src/scripts/advent.ts`, localStorage `wtfact:advent`): geöffnete Türchen (eine Kugel am WTF-Baum, auch beim
  Lesen der Faktseite), gefundene Wichtel (goldene Kugel) und Quiz-Ergebnisse. Jedes Öffnen zählt für die Serie.
- **Wichtel:** versteckt sich ab dem 2.12. jeden Tag auf der Seite eines Fakts aus einem schon offenen Türchen (`wichtelKey`).
- **Vorschau:** `?vorschau=2026-12-15` an eine Adresse hängen zeigt Look und Kalenderstand dieses Tages. Inhalte eines Türchens
  erscheinen erst, wenn sein Fakt veröffentlicht ist.

## Gruselwoche und Kürbisjagd

Wunsch von Eric, 2026-10-21 (Entwurf „A Kürbislicht“ im Projektordner `halloween-2026/entwuerfe/`). Vom 24. bis 31.10. sieht die
Seite nach Halloween aus (Design: `docs/design-system.md`, „Gruselwoche“), und 13 Kürbisse verstecken sich zum Finden.

- **Verstecke:** `src/data/halloween.ts`, `PUMPKINS`. Jeder Kürbis sitzt ab seinem Tag (MM-TT) bis Halloween auf der Faktseite
  eines schon veröffentlichten Fakts und lugt über die Ecke der Faktkarte. Antippen = Bonbon fürs Glas, bei `trick: true` kippt
  stattdessen kurz die Seite (zählt trotzdem). `npm run check` prüft, dass es die Fakten gibt und sie rechtzeitig erscheinen.
  Hinweise je Kürbis stehen in `src/i18n/halloween.ts` (`hints`, gleiche Reihenfolge). Das Dashboard lässt diese Fakten nicht
  umplanen (`fest.json` → `advent`), `fest.json` nennt auch die Tage der Gruselwoche, damit jeden Tag frisch gebaut wird.
- **31.10. Spuknacht:** Die Seite ist dunkel, nur ein Lichtkegel folgt Maus oder Finger („Licht an“ beendet das). Der goldene
  13. Kürbis sitzt im Kategorien-Abschnitt der Startseite und zeigt den geheimen Halloween-Fakt (Text in `src/i18n/halloween.ts`).
- **Im Browser** (`src/scripts/halloween.ts`, localStorage `wtfact:pumpkins`, je Jahr): gefundene Kürbisse. Jeder Fund zählt
  für die Serie.
- **Vorschau:** `?vorschau=2026-10-27` (bzw. `2026-10-31` für die Spuknacht) an eine Adresse hängen.
- **Nächstes Jahr:** Verstecke in `PUMPKINS` (und Hinweise) auf neue Fakten legen, die Tage gelten jedes Jahr.

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

- **Daumen auf „Heute neu“:** Jede Folie mit einem Fakt von heute hat Daumen runter / hoch (früher die Wisch-Karte).
  Komponente: `src/components/home/TodayNew.astro`, gespeichert wie bisher über `rate()` in `src/scripts/community.ts`.
- **Fakt des Tages:** Kein Abstimmen. Von den Fakten des Vortags wird der mit dem höchsten Anteil „Gefällt mir“
  beim Wischen Fakt des Tages. Gezählt werden die Bewertungen bis 0 Uhr, so bleibt er den ganzen Tag gleich.
  Gleicher Anteil (auch: noch gar keine Bewertungen) entscheidet das Los, für alle Besucher dasselbe.
  Logik: `pickFactOfDay` in `src/week.ts`, Anzeige: Startseite (`src/components/home/FactOfDay.astro`) und WTF-Charts.
- **Montags-Abstimmung:** Jeden Montag (deutsche Zeit, 0 bis 24 Uhr) stimmen alle ab, welcher Fakt der
  letzten 7 Tage der beste war. Der Gewinner ist ab Dienstag eine Woche lang „Fakt der Woche“.
  Gleichstand: mehr „Gefällt mir“ beim Wischen gewinnt, danach der neuere Fakt. Ohne Stimmen gibt es keinen
  Fakt der Woche. Komponente: `src/components/Vote.astro` (WTF-Charts und montags oben auf der Startseite), Kalender: `src/week.ts`.
- **Daumen unter jedem Fakt** (`src/components/Thumbs.astro`): dieselbe Bewertung wie auf der Wisch-Karte, mit Zahlen
  aller Besucher (`GET /api/index.php?r=rating&key=…`).
- **Top 10** (`src/components/TopTen.astro`, in den WTF-Charts): meiste Daumen hoch minus Daumen runter
  (`GET /api/index.php?r=top`, ohne Server `topTen` in `src/week.ts`).
- **WTF-Charts** (`/de/charts/`, `src/pages/[lang]/charts.astro`, bis 2026-10-10 „Hall of Fame“; `/de/hall-of-fame/`
  leitet weiter, siehe `astro.config.mjs`): eigene Seite für Fakt des
  Tages, Fakt der Woche und die Montags-Abstimmung. Dazu Countdowns (nächster neuer Fakt zur nächsten festen Zeit aus `SLOT_TIMES`, nächster Fakt des Tages, nächste
  Abstimmung), Tippspiel „Wer wird morgen Fakt des Tages?“ mit Trefferserie, Verlauf (30 Tage, 12 Wochen)
  mit Sammelalbum (gelesene Sieger, die Beitragsseite merkt sich gelesene Fakten) und eine Rangliste der
  Kategorien und die Quiz-Auswertung (`src/components/QuizCharts.astro`). Auf der Startseite: Top 5 der Woche und Fakt der Woche (`src/components/home/WeekBlock.astro`).
  Browser-Logik: `src/scripts/fame.ts`, Verlauf vom Server: `GET /api/index.php?r=history`. Tipps und Album liegen nur im
  Browser (`localStorage` `wtfact:fame`).
- **Wahr oder Fake? / Was war zuerst?** (Startseite, `src/components/home/TrueOrFake.astro` und `WhatFirst.astro`):
  Fragen in `src/data/quiz-wof.ts` und `src/data/quiz-first.ts`. Jeder Eintrag hat ein Datum `from` (immer ein Samstag),
  vorher erscheint er nicht. Start mit 20 je Spiel, danach jeden Samstag 5 neue. Neue Fragen einfach mit dem nächsten
  Samstag als `from` anhängen; `npm run check` (`scripts/check-quiz.mjs`) prüft Aufbau und Quellen und warnt, wenn weniger
  als 2 Samstage vorbereitet sind. Antworten zählt `POST /api/index.php?r=answer`, Auswertung `GET ?r=quiz&game=wof|first`;
  dieselbe Route speichert auch Schätzfrage (`guess`) und WTF-Barometer (`baro`) der Faktseiten.
  Die Statistik-Kacheln nutzen die Antworten aller Besucher: Ab 5 Antworten (`MIN_SINGLE` in `src/scripts/quiz.ts`)
  zeigt eine Kachel die auffälligste einzelne Frage, vorher alle Fragen zusammen. Ohne Antwort steht „?“ mit Hinweis.
- **Spiele, Serie und Ich** (seit 2026-10-21): Alles läuft nur im Browser, nichts geht an die API.
  - Alle Spiele stehen auf `/de/spiele/` (Abschnitte `#tageszahl`, `#wof`, `#first`, `#jumper`), alles Persönliche auf `/de/ich/`
    (`#serie`, `#abzeichen`, `#gold`, `#rekorde`, `#zahlen`). Die alten Adressen leiten weiter (`redirects` in `astro.config.mjs`).
  - Tageszahl (`src/components/games/NumberGame.astro`, Logik in `src/scripts/tageszahl.ts`): jeden Tag eine Zahl aus einem Fakt erraten, 6 Versuche.
    Kandidaten liefert `numberCandidate()` in `src/lib.ts` (nur Fakten, die vor dem Tag erschienen sind). Rätsel Nr. 1 ist `START_DAY`.
  - Serie und Ränge (`src/scripts/streak.ts`): `markActive()` zählt einen Tag als aktiv (Fakt gelesen, Tageszahl getippt,
    Du in Zahlen). Wer etwas Neues anbinden will, ruft nur `markActive()` auf. Ränge nach gelesenen Fakten (`RANK_AT`).
  - Seite „Ich“ (`src/components/pages/MePage.astro`): Serie, Rang, Abzeichen je Kategorie, Gold-Fakten (`GoldShelf.astro`),
    Rekorde (Liste `tiles`) und Du in Zahlen (`src/components/games/YouNumbers.astro`, das Datum bleibt im Browser).
  - Science Jumper (`src/components/games/Jumper.astro`): meldet einen neuen Highscore mit dem Ereignis `wtfact-gold`.
  - Geschenkfinder (`/de/geschenke/`, Ideen in `src/data/gifts.ts`): ganzjährig erreichbar, auf der Startseite nur
    November bis Dezember als Sonderteaser. Neue Idee: Eintrag in `GIFTS` mit Suchbegriff (`query`), keine festen Produkt-Links.
    `occasions` = passt besonders (steht vorne mit Hinweis), `only` = erscheint nur bei diesen Anlässen. `npm run check`
    (`scripts/check-gifts.mjs`) verlangt für jedes Alter × Interesse × Budget × Anlass mindestens 3 Ideen.
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
