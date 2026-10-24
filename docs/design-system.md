# WTFact Design-System

Stil: Neo-Brutalismus. Dicke Ränder, harte Schatten ohne Weichzeichner, knallige Akzentflächen, viel Weißraum.

**Einzige Quelle für alle Werte ist `src/styles/global.css`** (Block `:root`). Komponenten und Seiten nutzen nur `var(--…)`.
`npm run check:design` (`scripts/check-design.mjs`) prüft die Regeln unten und läuft automatisch vor jedem `npm run build`, also auch in der CI. Ein Verstoß bricht den Build ab.

## Tokens

| Gruppe | Tokens | Hinweis |
|---|---|---|
| Flächen & Text | `--bg`, `--surface`, `--ink`, `--muted`, `--line` | Haben Dark-Mode-Werte |
| Text auf Akzent | `--on-accent` | Immer dunkel, auch im Dark Mode |
| Pink als Schrift | `--pink-text` | Für Links/Hervorhebung. `--pink` selbst nie als Schriftfarbe |
| Fokus | `--focus`, `--bw-focus` | Globaler `:focus-visible`-Ring |
| Akzente | `--pink`, `--yellow`, `--cyan`, `--lime`, `--violet`, `--orange`, `--teal`, `--tomato`, `--lilac`, `--blue` | Nur als Fläche |
| Kategorien | `--cat-science` … `--cat-sport`, `--cat-myths` … `--cat-art` (`--magenta`, `--chartreuse`, `--emerald`, `--skyblue`, `--aqua`, `--silver`, `--crimson`), `--cat-horror` (`--bone`), `--cat-holiday` (`--confetti`) | Kategorie umfärben = nur dieses Token ändern |
| Farbwelten | `--fest-<thema>-night`, `--fest-<thema>-a`, `--fest-<thema>-b`, `--fest-glow-size`, `--fest-deco-opacity`, `--dur-fest-float`, `--dur-fest-burst`, `--art-*`, `--font-fest-*`, `--fest-o-size` | Feiertags- und Grusel-Fakten, siehe „Farbwelten“ unten |
| Punktmuster | `--dots`, `--dots-ink` (dunkle Punkte), `--dots-strong`, `--dots-ink-strong` (kräftigere dunkle Punkte für warme Farben), `--dots-size` (Standard `--dots-size-md` 16px), `--dots-size-sm` (Chips, Sterne), `--dots-size-lg` (Banner) | Liegt auf jeder Kategorie-Fläche, siehe „Punktmuster“ unten |
| Gold-Fakten | `--gold`, `--gold-light`, `--gold-deep`, `--gold-surface` (Verlauf), `--gold-foil` (Blattgold für Etikett, Medaille, Titel), `--gold-glow`, `--gold-rays`, `--gold-shine`, `--shadow-gold`, `--shadow-gold-xl`, `--medal-size`, `--medal-size-lg`, `--dur-rays`, `--dur-shine`, `--star-size-sm/md/lg`, `--star-edge`, `--dur-twinkle`, `--locked` | Goldene Karten im Science Jumper; Text darauf ist `--on-accent`. Sterne bekommen ihre Farbe über die `.cat-*`-Klasse, neue Kategorien funktionieren also automatisch |
| Spiel | `--flask`, `--flask-glow`, `--book-*`, `--wood*`, `--metal`, `--brick*`, `--roof*`, `--smoke` | Reagenzgläser, Buch, Kisten, Fässer und Häuser im Science Jumper. Das Spiel liest alle Farben per `getComputedStyle` aus den Tokens |
| Bühne | `--night`, `--on-night`, `--on-night-muted` | Dunkle Fläche für Hero, Footer, „Nächster Fakt“; in beiden Modi dunkel |
| Hintergrund | `--sky-dot`, `--sky-spot`, `--sky-gap`, `--sky-spot-size`, `--sky-shape-opacity`, `--sky-glow-edge`, `--sky-stage`, `--dur-sky-drift` | Helle Werte in `:root`, dunkle in den Dark-Mode-Blöcken, siehe „Hintergrund“ unten |
| Schrift | `--font-headline` (WTF Plakat), `--font-display` und `--font-body` (WTF Text Locker), `--font-logo` (Space Grotesk), `--headline-fill`, `--headline-palette`, `--headline-palette-card`, `--fs-xs` (13) bis `--fs-3xl` (30), `--fs-display-sm/md/lg`, `--fs-emoji-sm…xl` | Siehe „Hausschriften“ unten |
| Abstände | `--space-1` (4px) bis `--space-12` (80px) | 4er-Raster |
| Breite | `--content-width` (1600px, ab 1900px Bildschirm mitwachsend bis 2200px), `--gutter`, `--measure` (72ch) | Eine Breite für alle Bereiche, siehe „Breite“ unten |
| Icons | `--icon-size`, `--icon-size-lg`, `--icon-stroke` | Lucide-Icons über `Icon.astro`, siehe „Icons und Emojis“ unten |
| Wisch-Karte | `--swipe-title-lines`, `--swipe-hook-lines` | Feste Zeilenzahl auf der Wisch-Karte |
| Ränder | `--bw-xs` 1, `--bw-sm` 2, `--bw` 2.5, `--bw-accent` 6 | |
| Radien | `--radius-sm` 8, `--radius-md` 14, `--radius-pill` | |
| Schatten | `--shadow-xs/sm/md/lg/xl`, `--shadow-night-sm/lg`, `--shadow-on-night`, `--shadow-new` (bleibt dunkel, für „Neu“ und Wisch-Schilder), `--emoji-shadow` | |
| Bewegung | `--dur`, `--ease`, `--ease-pop`, `--dur-marquee`, `--dur-swipe` (Karte fliegt nach dem Wischen weg), `--dur-slide`, `--dur-rotate` | Bei „Bewegung reduzieren“ global abgeschaltet |
| Abschnitte (Design „E“) | `--edge` (Höhe der schrägen Kante), `--bleed` (so weit ragen Zahlen und Karten über die Kante), `--fs-mega`, `--fs-huge`, `--fs-display-2xl`, `--stroke-mega`, `--shift-mega` (Versatz des Farbschattens hinter Riesenwörtern), `--bw-strong` (3px Tinte-Rand um Akzentflächen), `--bw-stripe` (gelber Streifen am Fakt-Text), `--shadow-2xl`, `--shadow-accent`, `--shadow-accent-sm`, `--shadow-night-pink`, `--shadow-night-lime`, `--night-2`, `--night-3`, `--on-night-faint`, `--dots-night`, `--dots-paper`, `--blur-lock` | Siehe „Design E: Abschnitte, Farben, Überhänge“ unten |

## Bausteine

| Klasse | Zweck | Varianten / Zustände |
|---|---|---|
| `.card` | Kasten mit Rand und Schatten | – |
| `.btn` | Aktion (Link oder Button) | `.btn--cyan`, `.btn--orange`, `.btn--pink`, `.btn--lime`, `.btn--ghost`; hover, active, `:disabled`, Fokus |
| `.sticker` | Schräger gelber Aufkleber („?!“ im Logo, „WTF?!“ in der Headline) | – |
| `.stage` | Dunkle Bühne; Buttons darin bekommen hellen Rand und Schatten | – |
| `.chip` | Kategorie-Etikett oder Filter | neutral; mit `.cat-*` farbig; als Filter `aria-pressed="true"` (zeigt ✓); `.chip--new` = gelbes „Neu“-Etikett |
| `.cat-*` | Kategorie-Fläche | setzt Farbe, Punktmuster **und** `--on-accent` als Schrift |
| `.accent` | Gelbe Akzentfläche (ohne Kategorie) | setzt Hintergrund und `--on-accent` |
| `.gold` | Goldene Fläche für freigeschaltete Gold-Fakten | setzt `--gold-surface` und `--on-accent` |
| `.wrap` | Inhaltsbereich, immer `--content-width` breit | – |
| `.prose` | Fließtext innerhalb von `.wrap`, höchstens `--measure` | – |
| `.icon` | Lucide-Icon (`<Icon name="…" />`) | Größe über `--icon-size` |
| `.sr-only` | Nur für Screenreader | – |

| `.sec` | Abschnitt über die ganze Breite | `.sec--night`, `.sec--paper`, `.sec--yellow`, `.sec--pink`, `.sec--violet`, `.sec--lime`; `data-edge` (schräge Kante oben, steigt nach rechts) oder `data-edge="left"` |
| `.bleed` | Element ragt über die Kante in den Nachbarabschnitt und liegt obenauf | – |
| `.mega` | Riesen-Schrift mit Tinte-Kontur (Wochentag, „400“) | Größe in der Komponente über `--fs-mega`/`--fs-huge` |
| `.mark` | Pinker Marker-Strich unter einem Wort der Überschrift (auf der Nacht gelb) | – |
| `.more-link` | Link mit dickem Unterstrich („Alle Kategorien ansehen“) | Unterstrich pink, auf der Nacht gelb |
| `.sec-head` | Kopfzeile eines Abschnitts: Überschrift links, Link rechts | – |
| `.focus-tag` | Gelbes Etikett „Heute im Fokus“ am Abschnitt des Wochentags | erscheint bei `data-focus` (setzt `DayHero.astro`) |

Neue Varianten kommen als Modifier-Klasse in `global.css`, nicht als Überschreibung in der Komponente.

## Design E: Abschnitte, Farben, Überhänge

Wunsch von Eric (2026-10-09 und 2026-10-10), Entwürfe in `/designs/website-2026-10/final/` im Projektordner.

- **Farbkonzept**: Tinte (`--on-accent`) ist die Schrift auf jeder Akzentfläche (Gelb 12,8:1, Pink 5,5:1, Lime 13,8:1, Violett 5,2:1). Auf der Nacht: Papier 16,8:1, Gelb 13,1:1, `--on-night-faint` 7,8:1. Pink als Schrift auf Papier nur als `--pink-text`.
- **Akzent neben Akzent**: Gelb neben Lime (1,08:1) und Pink neben Violett (1,05:1) sind kaum zu unterscheiden. Akzentflächen bekommen deshalb immer einen Rand `--bw-strong` in `--on-accent` und einen harten Schatten (`--shadow-accent`). Auf der Nacht sind die Schatten farbig (`--shadow-night-pink`, `--shadow-night-lime`).
- **Ein Punktraster überall**: 16px (`--dots-size-md`), auf Chips 7px. Dunkle Punkte 9 %, auf warmen Farben 18 % (`--dots-strong`), helle Punkte auf der Nacht 7 % (`--dots-night`), auf Papier `--dots-paper`.
- **Abschnitte im Wechsel**, Startseite: Gelb Datum mit Tagesleiste → montags Pink Abstimmung → Nacht Fakt des Tages → Nacht Heute neu → Papier Labor → Lime/Pink Spiel des Tages → Papier Woche → Nacht Kategorien → Gelb Fuß. Faktseite: Nacht Plakat → Lime Band mit Slogan → Papier Text → Gelb Werbung → Nacht Beweise → Pink Barometer → Nacht Kaninchenbau → Gelb Fuß.
- **Übergänge**: Jeder Abschnitt hat oben eine schräge Kante (`data-edge`, Höhe `--edge`), gezeichnet als `::after` in der Farbe des Abschnitts. Kein `clip-path` auf dem Abschnitt selbst, sonst würden die Überhänge abgeschnitten.
- **Überhänge** (Eric, 2026-10-10: „Zahlen wie die 400 sollen über die Container hinausragen“): große Zahlen, Wochentag, Fakt-Karten und Quizkarten ragen mit `.bleed` um bis zu `--bleed` in den Nachbarabschnitt. Waagerecht dürfen Riesenwörter über den Rand laufen, `body` schneidet mit `overflow-x: clip` ab.
- **Schatten hinter Riesenwörtern** (Eric, 2026-10-10: zu weit weg): Versatz nur `--shift-mega`, damit der Farbschatten dicht an der Kontur liegt.
- **Navigation**: Über 1060px das Hauptmenü oben (Fakten, Spiele, Kategorien, WTF-Charts, Ich; seit 2026-10-21, Quiz und Science Jumper stehen unter „Spiele“). Am Punkt „Ich“ zeigt eine pinke Zahl die laufende Serie. Darunter dieselben fünf Ziele als feste Leiste unten (`.tabbar` in `Base.astro`, Nacht mit Icon und Kurznamen, aktive Seite gelb), damit am Handy jeder Bereich mit einem Tipp erreichbar ist (Eric, 2026-10-10).
- **Wochentage** (`DayHero.astro`): Kopf mit Datum und riesigem Wochentag, wechselt um Mitternacht im Browser. Jeder Tag hat eine eigene Schattenfarbe, eigene Überschrift und markiert „Heute im Fokus“: Montag Abstimmung (pinker Abschnitt mit `Vote.astro`), Dienstag Woche (neuer Fakt der Woche), Mittwoch Wahr oder Fake, Donnerstag Was war zuerst, Freitag Top 5, Samstag beide Quizspiele (5 neue Fragen), Sonntag Kategorien.
- **Fakt des Tages** (`FactOfDay.astro`): eine Vorlage für jeden Fakt. Große Zahl aus Titel oder Hook (`bigNumber` in `src/lib.ts`), Kategorie-Fläche mit Emoji, Karte mit Titel; ohne Zahl ein großes Emoji.
- **Heute neu** (`TodayNew.astro`): Folien im Wechsel Gelb, Nacht, Lime mit Riesen-Nummer als Kontur. Fakten, die heute noch kommen, als gesperrte Folie: Kategorie, verschwommene Überschrift, Countdown in gelben Kästen. Gewählter Daumen: dunkle Scheibe (`--on-accent`) mit lime bzw. pinkem Daumen und gelbem ✓, damit er auf jeder Folienfarbe sichtbar ist (Eric, 2026-10-15).
- **Labor** (`Labor.astro`): Kacheln in drei Arten, Kategoriefarbe mit Emoji in der Ecke, große Zahl, Papier mit gelbem Streifen (`--bw-stripe`).
- **Quiz** (`TrueOrFake.astro`, `WhatFirst.astro`): Wahr oder Fake auf schräg geteiltem Pink/Lime, Was war zuerst auf Violett; Antworten als große Knöpfe, danach Balken mit Punkten und drei Statistik-Kacheln. Kategorie-Symbole statt Emojis.
- **Faktseite**: Text auf Papier mit gelbem Streifen, der Bonus-Fakt als gelbes Band, das links und rechts übers Papier ragt. Werbung über die ganze Breite (`ProductBox` mit `wide`), weiter mit Etikett „Werbung“ und Provisionshinweis. WTF-Barometer nur auf Faktseiten. Am Ende der Kaninchenbau (`RabbitHole.astro`, seit 2026-10-21 statt „Noch ein WTF zum Schluss“): drei Türen zu verwandten Fakten, ab dem 3. Fakt in Folge ein Tiefenmesser mit Rekord und Emoji-Spur.

## Bewerten, Fakt des Tages, Abstimmung, Fakt der Woche, WTF-Charts, Neu

Wunsch von Eric (2026-10-02). Abläufe und Einrichtung: `README.md`.

- **Wisch-Karte** (früher `SwipeDeck.astro`, seit Design „E“ ersetzt durch die Daumen auf den Folien „Heute neu“): Nach oben links ziehen = „Gefällt mir weniger“ (Schild und Knopf in `--pink`), nach oben rechts = „Gefällt mir“ (`--lime`). Knöpfe und Social-Grafiken: links immer „weniger“, rechts „gefällt mir“. Das Schild auf der Karte erscheint beim Ziehen auf der Seite, von der die Karte wegzieht. Senkrecht ziehen scrollt die Seite. Am Handy (Finger) scrollt der Browser selbst (`touch-action: pan-y` bei `pointer: coarse`); gewischt wird dort erst nach 18 px klar seitwärts (mehr als 1,5-mal so weit seitwärts wie senkrecht) und die Karte fliegt erst ab 35 % der Kartenbreite weg, damit man beim Scrollen nicht aus Versehen wischt (Eric, 2026-10-03). Maus und Desktop bleiben unverändert. Es gibt immer auch die zwei Knöpfe und die Pfeiltasten, Wischen allein reicht nicht (Barrierefreiheit).
- **Abstimmung** (`Vote.astro`, in den WTF-Charts und montags auf der Startseite): nur montags sichtbar, jede Option zeigt Emoji-Fläche in Kategoriefarbe (`.cat-*`, also mit Punkten) und nach der Stimme einen Balken in Kategoriefarbe, ebenfalls mit Punkten. Die gewählte Option hat `aria-pressed="true"`. Die Abstimmung ist eingeklappt: Zuerst sieht man nur den Kopf (Etikett, Frage, Info) mit einem gelben Knopf „Fakten zeigen und abstimmen“ (`.btn`, Pfeil ▾). Der ganze Kopf ist ein `<button aria-expanded>`, ein Klick klappt die Fakten nach unten auf; der Zustand steht nur in `aria-expanded`, nie in einer Klasse. Kein Slogan in der Abstimmung (siehe Slogan-Regel 3).
- **Startseite**: seit Design „E“ (2026-10-10) Fakt des Tages als Plakat (`FactOfDay.astro`) und Fakt der Woche mit Top 5 (`WeekBlock.astro`), siehe „Design E“ oben. Seit 2026-10-21 im Datumskopf die Tagesleiste (`DayStrip.astro`: Serie, Tageszahl, Fakt des Tages; weitere Kacheln mit `from`/`to` nur in einem Zeitraum) und statt der zwei Quiz-Abschnitte ein „Spiel des Tages“ (`GameOfDay.astro`) mit Reitern Tageszahl, Wahr oder Fake, Was war zuerst (Reiter über `aria-selected`, Standard nach Wochentag). Der Sonderteaser zeigt von November bis Dezember den Geschenkfinder.
- **Spiele und Ich** (2026-10-21, je `src/pages/de|en/*.astro` als dünne Hülle um `src/components/pages/*Page.astro`): Auf Wunsch von Eric je eine Seite mit Abschnitten statt Unterseiten. „Spiele“: Kopf mit vier Leuchtkarten als Sprungziele, darunter `JumpNav.astro` (klebt unter der Kopfzeile, markiert den sichtbaren Abschnitt mit `aria-current`), dann Tageszahl (`games/NumberGame.astro`), Wahr oder Fake, Was war zuerst und Science Jumper (`games/Jumper.astro`). „Ich“: Serie und Rang im Kopf, Sprungleiste, Abzeichen, Gold-Fakten (`GoldShelf.astro`), Rekorde, Du in Zahlen (`games/YouNumbers.astro`). Alte Adressen (/quiz/, /tageszahl/, /science-jumper/, /du-in-zahlen/) leiten auf den Abschnitt weiter (`astro.config.mjs`). Der Geschenkfinder bleibt eine eigene Seite.
- **Leuchtkarte** (`.glow` in `global.css`, mit `data-fest` für die Farbwelt): Stil von „Heute neu“ und den Kategorien für alle neuen Karten (Tagesleiste, Spiele-Kacheln, Tageszahl, Rang, Rekorde, Du in Zahlen, Geschenkideen, Kaninchenbau-Türen): Themen-Bühne mit Leuchten und Punkten, Rand und versetzter Schatten in der Themenfarbe, Überschriften in `--fest-a`. Dazu `.glow-tile` (schräges Emoji-Feld in Kategoriefarbe) und `.glow-icon` (Kategorie-Symbol hell in der Ecke). Keine hellen Papierkarten oder bunten Vollflächen auf diesen Seiten. Das Teilen-Bild von Du in Zahlen zeichnet dieselben Karten aufs Canvas. Emojis stehen nur in Kacheln und Karten als Bild, nicht in Etiketten, Knöpfen oder Überschriften.
- **WTF-Charts** (`src/pages/[lang]/charts.astro`, bis 2026-10-10 „Hall of Fame“, alte Adresse leitet weiter): dunkle Bühne mit Countdowns, darunter Fakt des Tages und Fakt der Woche als zwei gleich große Karten nebeneinander (Bildfläche oben in Kategoriefarbe, `--dots-size-lg`), dann Top 10, Quiz-Auswertung (`QuizCharts.astro`: Trefferquote aller und die eigene, die 5 Fragen mit den meisten Fehlern), Abstimmung, Tippspiel, Verlauf, Kategorien-Rangliste. Gewählte Tipps und Verlaufs-Tabs über `aria-pressed`. Im Verlauf haben ungelesene Sieger ein graues Emoji-Feld und das Etikett „Noch nicht gelesen“, gelesene ein gelbes „✓ Gelesen“. Balken der Rangliste in Kategoriefarbe mit Punkten, der Album-Balken gelb (`.accent`).
- **Fakt des Tages**: große Karte mit gelbem Etikett „⭐ Fakt des Tages“ (`.chip.accent`), darunter eine graue Zeile mit dem Anteil „Gefällt mir“.
- **Fakt der Woche**: große Karte mit Bildfläche in Kategoriefarbe (`.cat-*`, Raster `--dots-size-lg`) und Etikett „🏆 Fakt der Woche“. Gold ist für die Gold-Fakten im Spiel reserviert und wird hier nicht benutzt.
- **Neu** (`NewBadge.astro`, `.chip--new`): gelbes Etikett für Fakten aus den letzten 7 Tagen, genauso groß wie ein `.chip`. Steht immer direkt rechts neben dem Kategorie-Etikett (Faktenkarte, Wisch-Karte, Beitragsseite, Gold-Fakten), nie groß über dem Bild (Eric, 2026-10-02).
- **Wisch-Karte, feste Größe**: Alle Karten liegen übereinander in derselben Rasterzelle und werden mit `data-off` nur unsichtbar geschaltet. Der Stapel ist dadurch immer so hoch wie die höchste Karte, die Seite verschiebt sich beim Wischen nicht (Eric, 2026-10-02). „Weiterlesen“ steht unten bündig.
- **Ticker** (gelbes Band unter dem Hero): ohne Ränder oben, unten und zwischen den Meldungen; getrennt wird nur mit einem kleinen Punkt (Eric, 2026-10-02).
- **Gold-Fakten** (Science Jumper): In der Sammlung nur eine kurze Vorschau wie die Faktenkarten. Ein Klick öffnet die eigene Seite `/[lang]/science-jumper/[id]/` mit dem ganzen Fakt und den Quellen; gesperrte Fakten zeigen dort nur, ab welchem Highscore sie aufgehen.
- **Gold-Fakten als Schatzkarte** (Eric, 2026-10-09, „darf mutig sein“): Karten und Banner sind in beiden Modi dunkel (`--night`) mit Goldrahmen (`--gold`) und goldenem harten Schatten (`--shadow-gold`). Hinter dem Emoji leuchtet `--gold-glow`, darüber drehen sich langsam Strahlen (`--gold-rays`, `--dur-rays`); über die Bildfläche zieht ab und zu ein Glanz (`--gold-shine`). Oben links ein schräges Blattgold-Etikett „Gold-Fakt“, eine runde Medaille (`--gold-foil`) zeigt Reagenzglas und Highscore. Sterne mit goldenem Rand, innen weiter Kategoriefarbe. Auf der eigenen Seite steht der freigeschaltete Titel in Blattgold. Gesperrte Plätze: gestrichelter Rand `--gold-deep`, Schloss in einer Goldmünze.
- **Gold-Fakt-Seite als Schatzkammer** (Eric, 2026-10-09, „durch und durch besonders und anders“): Die ganze Seite ist dunkel (`--night`) mit Goldstrahlen und Sternen, Kopf mittig mit schwebendem Emoji (`--dur-bob`) vor dem Lichthof, Medaille mit Highscore, Etikett „Gold-Fakt 7 von 16“. Gesperrt: Tresortür mit Goldfortschritt bis zur Stufe. Freigeschaltet: Titel in Blattgold, Funkenregen und der Fakt auf einer Pergament-Tafel (`--parchment`, `--parchment-muted`) mit doppeltem Goldrahmen, Eck-Ornamenten, goldener Initiale und „Die Beweisstücke“ als nummerierte Goldmünzen; die Tafel erscheint mit `--dur-reveal` und einem Glanz. Darunter eine ausgesuchte Werbung (Tabelle `gold_products`, ein hochwertiges Produkt pro Gold-Fakt und Sprache mit eigenem Emoji), erst nach dem Freischalten sichtbar, mit Etikett „Werbung“ und Provisionshinweis. Unten die Sammlung als Münzreihe (`--coin-size`): freigeschaltet in Blattgold, gesperrt gestrichelt mit Schloss, die aktuelle mit Ring.

## Hausschriften

Entschieden von Eric am 2026-10-20, Entwürfe und Erzeugung in `brand/schrift-entwuerfe/` im Projektordner. Dateien in `src/styles/fonts/` (SIL OFL 1.1).

- **WTF Plakat** (`--font-headline`) nur für Überschriften: `h1`, `h2` und große Titel mit der Klasse `.headline` (Fakt des Tages, Kategorie-Kacheln).
  Farbschrift aus Space Grotesk Bold: Füllung ist die CSS-Textfarbe, Kontur Tinte, harter Schatten aus der Palette
  (`font-palette: light` = Tinte, `dark` = Papier). Die Füllung kommt aus `--headline-fill`: Kategoriefarbe (`--fest-a`) überall,
  wo `data-fest` steht (Faktseite, Karten, Kacheln), sonst Gelb wie der Logo-Aufkleber, auf Akzentflächen Papier.
  Die Palette kommt aus `--headline-palette` (dunkle Bühnen und Dunkelmodus `dark`, Karten folgen dem Modus über `--headline-palette-card`).
  Kleine Überschriften (unter etwa 20 px) bekommen `.head-small` und bleiben in der Textschrift; `h3` ist immer Textschrift.
- **WTF Text Locker** (`--font-display`, `--font-body`) für alles andere: Fließtext, Knöpfe, Etiketten, Menü, Zahlen.
  Recursive Sans Casual; die Null hat einen Pinselstrich, damit sie sich vom O unterscheidet (Wunsch von Eric).
- **Space Grotesk** (`--font-logo`) nur noch für den Logo-Schriftzug.

## Slogan

**„WTFact?! Und ja, das stimmt wirklich.“** (EN: „WTFact?! And yes, it's actually true.“), entschieden am 2. Oktober 2026. Texte stehen in `src/i18n/ui.ts` (`slogan`, `sloganFull`).

1. Schreibweise fix: „WTFact?!“ immer mit „?!“, dann „Und ja, das stimmt wirklich.“ mit Punkt. Kein „WTFact!“, kein Ausrufezeichen am Ende. Englisch nie wörtlich („Really true“), sondern „And yes, it's actually true.“
2. Steht „WTFact?!“ schon als Logo daneben, wird nur der zweite Teil gesetzt (Kopfzeile, Footer).
3. Nur neben belegten Inhalten: kein Meme, kein Witzpost, keine Umfrage mit dem Slogan. Wo er steht, sind die Quellen einen Klick entfernt.
4. Nicht im Beitragstext. Der Slogan gehört zur Marke, nicht zum Fakt (siehe `docs/styleguide.md`).
5. Fehler werden offen korrigiert: Beitrag berichtigen und Eintrag in `src/data/corrections.ts`, erscheint auf `/de/korrekturen/` („Stimmt doch nicht“).
6. Platzierung auf der Seite: Kopfzeile neben dem Logo (ab 761px Breite), Footer unter dem großen Logo, Über-Seite als Überschrift. Einen grafischen Stempel „Stimmt wirklich.“ gibt es vorerst nicht (Entscheidung 2. Oktober 2026).
## Farbwelten für Feiertage und Grusel

Wunsch von Eric, 2026-10-15: Feiertags-Fakten (Kategorie `holiday`) sehen aus wie ihr Fest, z. B. Halloween in Orange und Schwarz mit
Kürbissen und Fledermäusen. Grusel-Fakten (`horror`) haben immer das Thema „grusel“ (Schwarz, Giftgrün, Geisterlila).
Seit 2026-10-20 (Wunsch von Eric) hat jede normale Kategorie ein eigenes Thema im selben Stil, mit dem Namen der Kategorie
(z. B. `[data-fest='sport']`): `-a` ist die Kategoriefarbe (gleicher Wert wie `--cat-<kategorie>`), `-b` ein zweiter Akzent,
`-night` eine dunkle Bühne mit einem Hauch der Kategoriefarbe. Die Deko je Kategorie steht in `CATEGORY_DECO`
(`src/data/holidays.ts`), die Grafiken dafür in `src/data/fest-art-categories.ts`. Karten im Labor, Kategorie-Kacheln und
Faktseiten nutzen dieses Thema; Band und Schriftzug bleiben bei normalen Kategorien beim Slogan.

Auch die übrigen Flächen sind seit 2026-10-20 dunkle Bühnen statt gelber, pinker oder limefarbener Abschnitte (Wunsch von Eric):
Wochentag-Kopf in der „Farbe des Tages“ (jeden Tag die nächste Kategorie, keine bevorzugt), Sonderseite („nature“),
Wahr oder Fake (eigenes Thema „wof“: Lime und Pink), Quiz-Kopf („quiz“), Kategorien-Kopf und Fuß („fest“, Logofarben),
dazu in den WTF-Charts Top 10, Tippspiel, Verlauf und Rangliste in der Farbe der jeweiligen Kategorie. Liegt das Leuchten
oben an einer schrägen Kante (`data-edge`), malt die Kante nur die Nachtfarbe; `--fest-glow-y` verschiebt das Leuchten nach unten.

- Welcher Feiertag an welchem Tag welches Thema, welche Deko (`deco`), welches Riesenmotiv (`art`) und welchen Schriftzug (`look`)
  hat, steht in `src/data/holidays.ts` (`HOLIDAYS`, `THEMES`). Jeder Feiertag hat ein eigenes Thema; „fest“ ist nur die Notlösung.
- Ein Thema sind drei Tokens in `:root` (`--fest-<thema>-night` für die Bühne, `-a` und `-b` für Akzentflächen) plus eine Zeile
  `[data-fest='<thema>']`. `data-fest` steht auf `<body>` der Faktseite (Prop `fest` in `Base.astro`) und auf einzelnen Karten.
  Darin nehmen `--night`, `--yellow`, `--orange`, `--lime`, `--pink`, `--violet` und die farbigen Schatten der Bühne die Themenfarben an.
  Papier, Text und Dunkelmodus bleiben unverändert.
- `.fest-sky`: Bühne in Themenfarbe mit Leuchten oben rechts (Karten im Labor, Kopf der Faktseite). `.fest-a`: Akzentfläche mit Punktmuster.
- Eigene Grafiken statt Emojis (Wunsch von Eric, 2026-10-15): jede Grafik ist ein SVG im 64er-Raster in `src/data/fest-art*.ts`,
  gezeichnet im Aufkleber-Stil (dicke dunkle Kontur, flache Farben, versetzter Schatten `--fest-icon-shadow` in Themenfarbe a).
  Farben nie ins SVG schreiben: Klassen aus `FestIcon.astro` (`o`, `f-<farbe>`, `s-<farbe>`, Themenfarben `fa`/`fb`), Bildfarben als
  `--art-*`-Tokens. `FestIcon.astro` zeigt eine Grafik (ohne Treffer das Emoji). Der Build prüft, dass jede Grafik, die ein Feiertag
  nennt, gezeichnet ist.
- `FestDeco.astro`: verstreute Grafiken des Themas, schweben langsam (`--dur-fest-float`), bei „Bewegung reduzieren“ still.
  Feuerwerk geht auf und verglüht (`--dur-fest-burst`).
- `FestWord.astro`: Riesenschriftzug des Feiertags mit eigener Schrift (`--font-fest-*`, Schriften aus `@fontsource`, nur geladen,
  wenn sie vorkommen), Schrift- und Schattenfarbe aus `look.ink`/`look.shade`; `look.o` ersetzt jedes O durch eine Grafik
  (Halloween: Kürbis). `FestArt.astro`: riesiges Motiv (`art`), an der Einheit die wehende Flagge.
- Werbeboxen (Eric, 2026-10-16): Klassennamen nie mit „ad“ (`ad`, `ad-tag`, `adband`), sonst blenden Werbeblocker die Boxen aus. Heute `pick-label`, `pickband`, `pickcard`, `fineprint`. Die Kennzeichnung „Werbung“ bleibt sichtbar.
- Werbung auf Feiertags-Fakten (Eric, 2026-10-15): `ProductBox` mit `fest` zeigt die „Feiertags-Auswahl“ auf dunkler Festbühne
  (`--shadow-fest-*`, Strahlen `--fest-rays`, Etikett mit der Feiertags-Grafik). Die Stücke sind hochwertiger als sonst (Styleguide).
- Das schräge Band auf der Faktseite wiederholt sein Wort so oft, dass es auch auf breiten Bildschirmen bis zum Rand reicht.
- Der Build prüft: jedes Thema aus `THEMES` hat seine drei Tokens und seinen Block, dunkle Schrift auf `-a`/`-b` und helle auf `-night` mit mindestens 4.5:1.

## Weihnachtszeit und Adventskalender

Wunsch von Eric, 2026-10-21 (Entwurf „Look A, Kerzenschein“ im Projektordner `advent-2026/`): Vom 1. Advent bis zum 26.12. sieht
die ganze Seite weihnachtlich aus. Termine und Inhalte stehen in `src/data/advent.ts` (1. Advent = vierter Sonntag vor dem 25.12.,
jedes Jahr neu gerechnet).

- Schalter: `data-season='xmas'` auf `<html>` (Base.astro beim Bauen, das Skript im `<head>` rechnet vor dem ersten Zeichnen nach).
  `.xmas` ist nur dann sichtbar, `.no-xmas` wird dann ausgeblendet. `data-door` (1 bis 24) steht dazu, solange Türchen aufgehen.
  Vorschau: `?vorschau=2026-12-15` an eine Adresse hängen (gilt bis der Tab zu ist, `?vorschau=` beendet sie).
- Farben: Thema `xmas` (`--fest-xmas-night` Tannengrün, `-a` Gold, `-b` Rot) für Wochentag-Kopf, Fuß, Türchen-Leiste und Kalender.
  Feiertage in der Zeit (1. Advent, Nikolaus, Sonnenwende, Heiligabend) behalten ihr eigenes Thema.
  Zeichnungsfarben als `--xmas-*`-Tokens, Größen als `--xmas-*` (Lichterkette, Mütze, Türchen, Kalenderraster).
- Bausteine in `src/components/xmas/`: `XmasLights` (Lichterkette unter dem Kopf, funkelt), `XmasHat` (Mütze auf dem „?!“),
  `XmasDrift` (Schneewehe über dem Fuß), `XmasCap` (Schneehaube auf der Wochentag-Karte), `Wreath` (Adventskranz, Kerzen per
  `data-lit`), `XmasTree` (WTF-Baum mit 24 Kugeln, goldenen Wichtel-Kugeln und Stern), `Wichtel`, `Bow`.
- Schnee: `.x-snow` (global.css), legt `src/scripts/xmas.ts` in jede dunkle Bühne; rieselt langsam (`--dur-snow`), bei
  „Bewegung reduzieren“ still.
- Kopf: Statt „Überrasch mich“ führt vom 1. bis 24.12. der goldene Knopf „Türchen N“ zum Kalender.
- Startseite: `AdventStrip` unter dem Kopf (Türchen des Tages als Geschenk, 24 Mini-Türchen, Baum). Tagesleiste: Kachel „Türchen“
  (1. bis 24.12.). Seite „Ich“: Kachel „WTF-Baum“.
- Kalender `/de/advent/`, `/en/advent/` (`AdventPage.astro`): 24 Türchen gemischt, besondere Größen für 6, 15, 18 und 24,
  vier Muster (`p1` bis `p4`). Zustände per `data-state`: `locked` (Schloss, wackelt beim Klick), `ready` (verpasst, nachholbar),
  `today` (leuchtet), `open` (weiß mit rotem Streifen, Titel). Das geöffnete Türchen ist ein `<dialog>` mit aufschwingender Tür.



Wunsch von Eric (2026-10-02): Überall, wo eine Kategoriefarbe als Fläche auftaucht, liegt das Punktmuster der Faktenkarten darüber. Das gilt für alles, was es heute gibt (Kartenbild, Kacheln, Filter- und Etikett-Chips, Beitrags-Banner, Begrüßungskarte, Sterne der Gold-Fakten, Teilen-Vorschaubild, Social-Grafiken) und für jede künftige Kategorie und Funktion.

- So geht's: Element bekommt die Klasse `.cat-<kategorie>`. Das Muster kommt dann automatisch mit. Kategoriefarben nie direkt als `background` setzen.
- Rastergröße pro Ort über `--dots-size` umstellen (z. B. `--dots-size: var(--dots-size-lg)` im Banner). `.chip` stellt selbst auf `sm`.
- Neue Kategorie: Token `--cat-<key>` plus eine Zeile `.cat-<key> { background: var(--dots), var(--cat-<key>); background-size: var(--dots-size) var(--dots-size); color: var(--on-accent); }`.
- Punktfarbe (Wunsch von Eric, 2026-10-03): Punkte sind überall einheitlich dunkel. Auf warmen, kräftigen Farben (Farbton 320°–40°, Sättigung ab 60 %: Rot, Orange, Pink) gehen 9 % unter, dort heißt es `var(--dots-strong)` (18 %) statt `var(--dots)`. Heute gilt das für Körper, Geschichte und Essen. Der Build verlangt die kräftige Variante bei jeder solchen Farbe, auch bei neuen Kategorien, und prüft für jede Kategorie, dass sich die Punkte sichtbar abheben (Farbabstand ΔE ≥ 6).
- Außerhalb von CSS (`src/og.ts`, `brand/brand-lib.mjs`) wird das Muster nachgebaut, mit denselben Punktfarben (9 % Schwarz, auf warmen Farben 18 %). In `brand/` wählt `dotInkFor(farbe)` die Punktfarbe nach derselben Regel; Hintergründe mit `dotsOn(w, h, farbe)` anlegen.
- Goldene Flächen (`.gold`, `--gold-surface`) bleiben glatt: Das Muster gehört zu den Kategorien, Gold ist keine.
- Social-Media-Grafiken (`brand/`): Wunsch von Eric (2026-10-02), dort trägt **jeder** Hintergrund das Muster, auch Gold und die dunkle Bühne. Raster 44 px bei 1080 px Breite, damit es auf dem Handy so groß wirkt wie die 16 px der Seite.
- Social-Media-Grafiken mit Inhalt tragen unten rechts klein „KI-generiert“ / „AI-generated“ (`aiTag` in `brand/brand-lib.mjs`), als Transparenzhinweis nach der EU-KI-Verordnung.

## Hell und Dunkel

Ohne eigene Wahl folgt die Seite der Systemeinstellung. Der Knopf oben rechts (Mond/Sonne, `aria-pressed` = dunkel an) setzt `data-theme="light|dark"` auf `<html>` und speichert die Wahl in `localStorage` (`wtfact-theme`); ein kleines Skript im `<head>` setzt sie vor dem ersten Zeichnen. Danach feuert das Fenster das Ereignis `wtfact-theme`, damit Canvas-Grafiken (Hintergrund, Science Jumper) ihre Farben neu lesen.

Die dunklen Tokens stehen deshalb in **zwei gleichen Blöcken**: `@media (prefers-color-scheme: dark) { :root:not([data-theme='light']) {…} }` und `:root[data-theme='dark'] {…}`. Der Build bricht ab, wenn sie auseinanderlaufen.

## Hintergrund

Hinter der ganzen Seite liegt eine Hintergrund-Ebene (`src/components/NightSky.astro`, eingebunden in `Base.astro`). Pro Sitzung wird zufällig **eine** von drei Varianten gezogen und bleibt bis zum Schließen des Tabs gleich, die Varianten werden nie gemischt (Eric, 2026-10-02):

| Variante | Was passiert | Bewegung |
|---|---|---|
| `dots` Punktnacht | Leises Punktraster, zu den Rändern ausgeblendet; unter der Maus leuchten die Punkte gelb. Ohne Maus wandert der Lichtkegel langsam | Nur Lichtkegel |
| `shapes` Formenflug | Umriss-Formen in Kategoriefarben schweben langsam | Langsames Treiben |
| `glow` Leuchtpunkte | Punktraster, einzelne Punkte glühen in Kategoriefarben auf und verblassen | Sanftes Aufglühen |

- Die Wahl steht in `sessionStorage` (`wtfact-sky`). Ist der Speicher gesperrt, wird pro Seitenaufruf neu gezogen.
- Zum Ansehen einer bestimmten Variante `?sky=dots`, `?sky=shapes` oder `?sky=glow` an die Adresse hängen.
- Gilt im hellen und dunklen Modus. Hell: dunkle Punkte, pinker Lichtkegel, kräftigere Formen, Leuchtpunkte mit dunklem Rand (`--sky-glow-edge`), damit Gelb und Türkis auf dem hellen Grund sichtbar bleiben.
- Im dunklen Modus wird `.stage` halb durchsichtig (`--sky-stage`), damit der Hintergrund auch im Hero und Footer durchscheint. Im hellen Modus bleibt die Bühne deckend dunkel.
- Formen sind nur Umrisse, keine Flächen, deshalb gilt die Punktmuster-Regel dort nicht. Farben für den Canvas kommen per `getComputedStyle` aus den `--cat-*`-Tokens, neue Kategorien leuchten also automatisch mit.
- „Bewegung reduzieren“: Formen stehen still, Leuchtpunkte leuchten fest an ein paar Stellen, der Lichtkegel wandert nicht von selbst.

## Regeln, die der Build prüft

1. Keine Farbwerte (`#…`, `rgb()`, `hsl()` …) außerhalb von `:root` in `global.css`.
2. `font`, `font-size`, `margin`, `padding`, `gap`, `border*`, `outline*`, `box-shadow`, `filter`: keine festen px/rem/em, kein `clamp()`. Nur Tokens.
3. `transition`/`animation`: Zeiten nur über `var(--dur)`.
4. Keine Inline-Styles (`style="…"`) in `.astro`-Dateien.
5. Jeder `<button>` hat `type`, jede `role="group"` hat `aria-label`; Zustände über `aria-pressed`/`aria-current`, nicht über Klassen wie `on`.
6. `global.css` enthält einen `:focus-visible`-Stil und eine `prefers-reduced-motion`-Regel; jede `.cat-*`-Klasse setzt `color: var(--on-accent)`.
7. Kontrast (WCAG AA), hell und dunkel: `--ink`, `--muted`, `--pink-text` auf `--bg`/`--surface` mindestens 4.5:1; `--on-accent` auf jeder Akzentfläche (inkl. `--gold*`) mindestens 4.5:1; `--focus` mindestens 3:1.

8. Punktmuster: Jede `.cat-*`-Klasse setzt `background: var(--dots), var(--cat-…)` (bzw. `var(--dots-strong)`) und `background-size: var(--dots-size) var(--dots-size)`; jede Kategorie aus `src/config.ts` hat ihre `.cat-*`-Klasse; `var(--cat-…)` als `background`/`fill` außerhalb dieser Klassen bricht den Build ab.
9. Punktfarbe: Kategorien mit warmer, kräftiger Farbe nutzen `--dots-strong`; auf jeder Kategorie heben sich die Punkte mit ΔE ≥ 6 ab.
10. Schrift auf Punkten: `--on-accent` auf der Kategoriefläche mit Punktmuster (Punkte decken ca. 15 % ab) mindestens 4.5:1, direkt auf einem Punkt mindestens 3:1, hell und dunkel.

Layoutmaße wie `max-width` in Media Queries, `min-height` oder Spaltenbreiten im Grid sind erlaubt.

## Breite

Eine Breite für alle Bereiche (Eric, 2026-10-02): `.wrap` ist überall `--content-width` breit, auch auf Beitragsseiten, Textseiten und der 404. Die alte schmale `.narrow`-Spalte gibt es nicht mehr. Beitragsseiten nutzen die Breite zweispaltig (Fakt links, „Noch ein Fakt“ und Verwandtes rechts, unter 960px untereinander). Reine Textseiten (`Page.astro`) begrenzen ihre Zeilen auf `--measure`, bleiben aber links bündig mit allem anderen.

Auf großen Bildschirmen wächst die Breite mit (Eric, 2026-10-24): `--content-width` ist mindestens 1600px und bis 2200px 84 % der Fensterbreite. Die Reihe „Heute neu“ läuft rechts bis an den Bildschirmrand.

Dunkle Themen-Bühnen als Abschnitt (`.sec.fest-sky` oder `.sec[data-stage]`) blenden ihre Grundfarbe oben und unten über `--stage-fade` in die Grundnacht `--night-base` über, ihre schräge Kante (`::after`) ist Grundnacht. Das Leuchten ist ein eigener, in sich weich auslaufender Fleck (`::before`, `--stage-glow-w`/`--stage-glow-h`, Lage über `--fest-glow-x`/`--fest-glow-y`), der über die Abschnittsgrenzen in die Nachbarn hineinragt (Eric, 2026-10-24: wilder, natürlicher Übergang statt Bänder). Damit er unter dem Inhalt liegt, steht `.sec > .wrap` auf Ebene 1; eigene Inhalte außerhalb von `.wrap` brauchen ebenfalls `position: relative; z-index: 1`. Abschnitte schneiden nur waagrecht ab (`overflow-x: clip`), nie senkrecht. Deko (`FestDeco`) darf in Abschnitten über die obere und untere Kante ragen. Liegen zwei gleich gestaltete Bühnen übereinander (Kopf der Saison mit seiner Leiste, Spiel des Tages mit seinem Spiel), setzen sie `--fade-bottom`/`--fade-top: transparent` und zeichnen keine Kante: eine durchgehende Fläche. Flache Bühnen (Fakt des Tages, Sonderseite) haben keine eigene Grundfarbe (`--stage-base: var(--night-base)`), nur das Leuchten. Neue dunkle Abschnitte mit Leuchten bekommen `data-stage` statt eines eigenen `background`.

## Icons und Emojis

Wunsch von Eric (2026-10-02):

- **Emojis nur am Fakt**: auf Beitragsseiten (Bild, „Noch ein Fakt“) und auf den kleinen Faktenkarten (Startseite, WTF-Charts, Abstimmung, Gold-Fakten). Knöpfe, Überschriften, Etiketten, Ticker und Navigation bekommen keine Emojis.
- Wo ein Bild hilft, kommt ein Strich-Icon aus **Lucide**, eingebunden über `src/components/Icon.astro`; die Pfade liegen in `src/components/icons.ts` (kein npm-Paket nötig, neues Icon dort von lucide.dev ergänzen): `<Icon name="chevron-right" />`. Icons sind `aria-hidden`, Farbe `currentColor`, Größe wächst mit der Schrift.
- **Pfeile sind immer Chevrons** (`chevron-right`, `-left`, `-down`, `-up`), keine Zeichen wie → ↓ ▾.
- **Gefällt mir / Gefällt mir weniger**: `thumbs-up` / `thumbs-down`, auf Knöpfen und auf den Schildern der Wisch-Karte.

## Dashboard, Daumen und Top 10

Wunsch von Eric (2026-10-08). Abläufe: `README.md`, Abschnitt „Dashboard“.

- **Dashboard** (`src/pages/steuerung/index.astro`): gleiche Tokens und Bausteine wie die Seite. Kopf als `.stage`, Reiter über `aria-pressed` (aktiv gelb). Fakten als kleine Karten mit Emoji-Feld in Kategoriefarbe (`.cat-*`); in den schmalen Tagesspalten ohne Emoji, Titel bis 3 Zeilen. Slots gestrichelt, „Sonder“ violett gestrichelt, vergangene Slots durchgezogen in `--locked`. Beim Ziehen über einer Ablage ein gestrichelter Fokus-Rahmen. Zustände als Etikett: Pool neutral, Geplant `--cyan`, Wird veröffentlicht `--yellow`, Live `--lime`, Offline `--pink`. Statt Ziehen geht immer auch Antippen und „Hierher“ (Handy, Tastatur).
- **Daumen** (`Thumbs.astro`, neu gestaltet 2026-10-09, kompakter Eric 2026-10-09): kleiner Kasten in der rechten Spalte über „Noch ein Fakt“ (`place="side"`, läuft beim Scrollen mit). Unter 960px gibt es keine rechte Spalte daneben, dort steht derselbe Kasten direkt unter dem „WTF?!“-Kasten (`place="inline"`); je Breite ist genau einer sichtbar, beide zeigen denselben Stand. Schräges lime Etikett „Dein Urteil“ auf der Kante; links Daumen runter (`--pink`), rechts Daumen hoch (`--lime`), jeweils mit Zahl, dazwischen ein schmaler Stimmungsbalken (pink von links, lime von rechts, ohne Stimmen `--locked`), darunter „xx % finden ihn gut“. Die eigene Wahl hat `aria-pressed="true"`, ist eingedrückt und trägt ein ✓; nach dem Klick hüpft der Daumen kurz (`--dur-pop`).
- **Werbung** (`ProductBox.astro`, neu gestaltet 2026-10-09): steht direkt nach dem Text. Jedes Produkt ist eine ganz anklickbare Kachel: Bildfläche in der Kategoriefarbe des Fakts (`.cat-*`, mit Etikett „amazon.de“) und einem Emoji, das zum Artikel passt (`src/product-art.ts` leitet es aus dem Produktnamen ab; Bücher und Filme zeigen 📚/🎬 groß und das Thema als runden Aufkleber; ohne Treffer 🛍️, dann dort eine Regel ergänzen), Name, warum es passt, oranger Knopf mit `external-link`-Icon. Kennzeichnung bleibt Pflicht: dunkles Etikett „Werbung“ / „Ad“ rechts neben der Überschrift und der Provisionshinweis unten, Links mit `rel="sponsored"`.
- **Cookie-Banner** (`CookieConsent.astro`, Eric 2026-10-15): `.card` unten rechts (am Handy über der Leiste), nicht blockierend. „Nur notwendige“ und „Alle akzeptieren“ sind gleichwertig: gleiche `.btn`-Farbe, gleich breit, nebeneinander (unter 420px untereinander). Wieder öffnen über „Cookie-Einstellungen“ in der Fußzeile (`.linkish`, Knopf im Link-Look).
- **Top 10** (`TopTen.astro`, WTF-Charts zwischen „Gerade ganz oben“ und Abstimmung): nummerierte Liste aus `.card`-Zeilen, Platz 1 mit Nummer in `--pink-text`, rechts 👍/👎-Zahlen.

## Gruselwoche (Halloween)

Wunsch von Eric, 2026-10-21 (Entwurf „A Kürbislicht“ im Projektordner `halloween-2026/entwuerfe/`): Vom 24. bis 31.10. sieht die
Seite nach Halloween aus. Termine und Verstecke stehen in `src/data/halloween.ts`.

- Schalter: `data-season='halloween'` auf `<html>` (wie die Weihnachtszeit, Vorschau mit `?vorschau=JJJJ-MM-TT`).
  `.halloween` ist nur dann sichtbar, `.no-halloween` wird dann ausgeblendet.
- Farben: Thema `halloween` (`--fest-halloween-night`, `-a` Orange, `-b` Lila) für Wochentag-Kopf, Fuß und Kürbis-Leiste.
  Das „?!“ im Logo wird orange und bekommt einen Stiel. Zeichnungsfarben und Größen als `--hw-*`-Tokens.
- Bausteine in `src/components/halloween/`: `PumpkinLights` (Kürbis-Lichterkette unter dem Kopf, flackert), `PumpkinStem`
  (Stiel auf dem „?!“), `Pumpkin` (Kürbislaterne, auch golden), `SpookyStrip` (Startseite: 13 Plätze, Hinweis, Bonbonglas),
  `GoldPumpkin` (goldener Kürbis der Spuknacht).
- Kopf: Statt „Überrasch mich“ zählt der orange Knopf „Süßes n/13“ die gefundenen Kürbisse. Tagesleiste: Kachel „Kürbisjagd“.
- Meldungen (`.h-toast`) und die Spuknacht (`.h-night`, Lichtkegel `--hw-torch`, Dunkelheit `--hw-shade`) stehen in Base.astro.
  Der Streich (`[data-trick]`) dreht die Seite einmal kurz, bei „Bewegung reduzieren“ nicht.
