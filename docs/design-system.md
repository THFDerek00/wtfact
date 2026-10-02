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
| Kategorien | `--cat-science` … `--cat-sport` | Kategorie umfärben = nur dieses Token ändern |
| Punktmuster | `--dots`, `--dots-ink`, `--dots-size` (Standard `--dots-size-md` 16px), `--dots-size-sm` (Chips, Sterne), `--dots-size-lg` (Banner) | Liegt auf jeder Kategorie-Fläche, siehe „Punktmuster“ unten |
| Gold-Fakten | `--gold`, `--gold-light`, `--gold-deep`, `--gold-surface` (Verlauf), `--star-size-sm/md/lg`, `--star-edge`, `--dur-twinkle`, `--locked` | Goldene Karten im Science Jumper; Text darauf ist `--on-accent`. Sterne bekommen ihre Farbe über die `.cat-*`-Klasse, neue Kategorien funktionieren also automatisch |
| Spiel | `--flask`, `--flask-glow`, `--book-*`, `--wood*`, `--metal`, `--brick*`, `--roof*`, `--smoke` | Reagenzgläser, Buch, Kisten, Fässer und Häuser im Science Jumper. Das Spiel liest alle Farben per `getComputedStyle` aus den Tokens |
| Bühne | `--night`, `--on-night`, `--on-night-muted` | Dunkle Fläche für Hero, Footer, „Nächster Fakt“; in beiden Modi dunkel |
| Schrift | `--font-display`, `--font-body`, `--fs-xs` (13) bis `--fs-3xl` (30), `--fs-display-sm/md/lg`, `--fs-emoji-sm…xl` | |
| Abstände | `--space-1` (4px) bis `--space-12` (80px) | 4er-Raster |
| Ränder | `--bw-xs` 1, `--bw-sm` 2, `--bw` 2.5, `--bw-accent` 6 | |
| Radien | `--radius-sm` 8, `--radius-md` 14, `--radius-pill` | |
| Schatten | `--shadow-xs/sm/md/lg/xl`, `--shadow-night-sm/lg`, `--shadow-on-night`, `--shadow-new` (bleibt dunkel, für „Neu“ und Wisch-Schilder), `--emoji-shadow` | |
| Bewegung | `--dur`, `--ease`, `--ease-pop`, `--dur-marquee`, `--dur-swipe` (Karte fliegt nach dem Wischen weg) | Bei „Bewegung reduzieren“ global abgeschaltet, der Ticker wird dann scrollbar |

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
| `.sr-only` | Nur für Screenreader | – |

Neue Varianten kommen als Modifier-Klasse in `global.css`, nicht als Überschreibung in der Komponente.

## Bewerten, Abstimmung, Fakt der Woche, Neu

Wunsch von Eric (2026-10-02). Abläufe und Einrichtung: `README.md`.

- **Wisch-Karte** (`SwipeDeck.astro`): Nach oben links ziehen = „Gefällt mir weniger“ (Schild und Knopf in `--pink`), nach oben rechts = „Gefällt mir“ (`--lime`). Knöpfe und Social-Grafiken: links immer „weniger“, rechts „gefällt mir“. Das Schild auf der Karte erscheint beim Ziehen auf der Seite, von der die Karte wegzieht. Senkrecht ziehen scrollt die Seite. Es gibt immer auch die zwei Knöpfe und die Pfeiltasten, Wischen allein reicht nicht (Barrierefreiheit).
- **Abstimmung** (`Weekly.astro`): nur montags sichtbar, jede Option zeigt Emoji-Fläche in Kategoriefarbe (`.cat-*`, also mit Punkten) und nach der Stimme einen Balken in Kategoriefarbe, ebenfalls mit Punkten. Die gewählte Option hat `aria-pressed="true"`. Kein Slogan in der Abstimmung (siehe Slogan-Regel 3).
- **Fakt der Woche**: große Karte mit Bildfläche in Kategoriefarbe (`.cat-*`, Raster `--dots-size-lg`) und Etikett „🏆 Fakt der Woche“. Gold ist für die Gold-Fakten im Spiel reserviert und wird hier nicht benutzt.
- **Neu** (`NewBadge.astro`, `.chip--new`): gelbes Etikett in Großbuchstaben, für Fakten aus den letzten 7 Tagen. Steht auf jeder Faktenkarte oben rechts im Bild (Handy: unten links), auf der Wisch-Karte neben dem Etikett und im Kopf der Beitragsseite.

## Slogan

**„WTFact?! Und ja, das stimmt wirklich.“** (EN: „WTFact?! And yes, it's actually true.“), entschieden am 2. Oktober 2026. Texte stehen in `src/i18n/ui.ts` (`slogan`, `sloganFull`).

1. Schreibweise fix: „WTFact?!“ immer mit „?!“, dann „Und ja, das stimmt wirklich.“ mit Punkt. Kein „WTFact!“, kein Ausrufezeichen am Ende. Englisch nie wörtlich („Really true“), sondern „And yes, it's actually true.“
2. Steht „WTFact?!“ schon als Logo daneben, wird nur der zweite Teil gesetzt (Kopfzeile, Footer).
3. Nur neben belegten Inhalten: kein Meme, kein Witzpost, keine Umfrage mit dem Slogan. Wo er steht, sind die Quellen einen Klick entfernt.
4. Nicht im Beitragstext. Der Slogan gehört zur Marke, nicht zum Fakt (siehe `docs/styleguide.md`).
5. Fehler werden offen korrigiert: Beitrag berichtigen und Eintrag in `src/data/corrections.ts`, erscheint auf `/de/korrekturen/` („Stimmt doch nicht“).
6. Platzierung auf der Seite: Kopfzeile neben dem Logo (ab 761px Breite), Footer unter dem großen Logo, Über-Seite als Überschrift. Einen grafischen Stempel „Stimmt wirklich.“ gibt es vorerst nicht (Entscheidung 2. Oktober 2026).
## Punktmuster auf Kategorie-Flächen

Wunsch von Eric (2026-10-02): Überall, wo eine Kategoriefarbe als Fläche auftaucht, liegt das Punktmuster der Faktenkarten darüber. Das gilt für alles, was es heute gibt (Kartenbild, Kacheln, Filter- und Etikett-Chips, Beitrags-Banner, Begrüßungskarte, Sterne der Gold-Fakten, Teilen-Vorschaubild, Social-Grafiken) und für jede künftige Kategorie und Funktion.

- So geht's: Element bekommt die Klasse `.cat-<kategorie>`. Das Muster kommt dann automatisch mit. Kategoriefarben nie direkt als `background` setzen.
- Rastergröße pro Ort über `--dots-size` umstellen (z. B. `--dots-size: var(--dots-size-lg)` im Banner). `.chip` stellt selbst auf `sm`.
- Neue Kategorie: Token `--cat-<key>` plus eine Zeile `.cat-<key> { background: var(--dots), var(--cat-<key>); background-size: var(--dots-size) var(--dots-size); color: var(--on-accent); }`.
- Außerhalb von CSS (`src/og.ts`, `brand/build-brand.mjs`) wird das Muster nachgebaut, mit derselben Punktfarbe (9 % Schwarz).
- Goldene Flächen (`.gold`, `--gold-surface`) bleiben glatt: Das Muster gehört zu den Kategorien, Gold ist keine.
- Social-Media-Grafiken (`brand/`): Wunsch von Eric (2026-10-02), dort trägt **jeder** Hintergrund das Muster, auch Gold und die dunkle Bühne. Raster 44 px bei 1080 px Breite, damit es auf dem Handy so groß wirkt wie die 16 px der Seite.
- Social-Media-Grafiken mit Inhalt tragen unten rechts klein „KI-generiert“ / „AI-generated“ (`aiTag` in `brand/brand-lib.mjs`), als Transparenzhinweis nach der EU-KI-Verordnung.

## Regeln, die der Build prüft

1. Keine Farbwerte (`#…`, `rgb()`, `hsl()` …) außerhalb von `:root` in `global.css`.
2. `font`, `font-size`, `margin`, `padding`, `gap`, `border*`, `outline*`, `box-shadow`, `filter`: keine festen px/rem/em, kein `clamp()`. Nur Tokens.
3. `transition`/`animation`: Zeiten nur über `var(--dur)`.
4. Keine Inline-Styles (`style="…"`) in `.astro`-Dateien.
5. Jeder `<button>` hat `type`, jede `role="group"` hat `aria-label`; Zustände über `aria-pressed`/`aria-current`, nicht über Klassen wie `on`.
6. `global.css` enthält einen `:focus-visible`-Stil und eine `prefers-reduced-motion`-Regel; jede `.cat-*`-Klasse setzt `color: var(--on-accent)`.
7. Kontrast (WCAG AA), hell und dunkel: `--ink`, `--muted`, `--pink-text` auf `--bg`/`--surface` mindestens 4.5:1; `--on-accent` auf jeder Akzentfläche (inkl. `--gold*`) mindestens 4.5:1; `--focus` mindestens 3:1.

8. Punktmuster: Jede `.cat-*`-Klasse setzt `background: var(--dots), var(--cat-…)` und `background-size: var(--dots-size) var(--dots-size)`; jede Kategorie aus `src/config.ts` hat ihre `.cat-*`-Klasse; `var(--cat-…)` als `background`/`fill` außerhalb dieser Klassen bricht den Build ab.
9. Schrift auf Punkten: `--on-accent` auf Kategoriefarbe **gemischt mit der Punktfarbe** mindestens 4.5:1 (hell und dunkel). Deshalb ist `--dots-ink` auf 9 % begrenzt; bei 14 % fielen Technik und Körper durch.

Layoutmaße wie `max-width` in Media Queries, `min-height` oder Spaltenbreiten im Grid sind erlaubt.
