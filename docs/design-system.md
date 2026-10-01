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
| Akzente | `--pink`, `--yellow`, `--cyan`, `--lime`, `--violet`, `--orange` | Nur als Fläche |
| Kategorien | `--cat-science` … `--cat-weird` | Kategorie umfärben = nur dieses Token ändern |
| Bühne | `--night`, `--on-night`, `--on-night-muted` | Dunkle Fläche für Hero, Footer, „Nächster Fakt“; in beiden Modi dunkel |
| Schrift | `--font-display`, `--font-body`, `--fs-xs` (13) bis `--fs-3xl` (30), `--fs-display-sm/md/lg`, `--fs-emoji-sm…xl` | |
| Abstände | `--space-1` (4px) bis `--space-12` (80px) | 4er-Raster |
| Ränder | `--bw-xs` 1, `--bw-sm` 2, `--bw` 2.5, `--bw-accent` 6 | |
| Radien | `--radius-sm` 8, `--radius-md` 14, `--radius-pill` | |
| Schatten | `--shadow-xs/sm/md/lg/xl`, `--shadow-night-sm/lg`, `--shadow-on-night`, `--emoji-shadow` | |
| Bewegung | `--dur`, `--ease`, `--ease-pop`, `--dur-marquee` | Bei „Bewegung reduzieren“ global abgeschaltet, der Ticker wird dann scrollbar |

## Bausteine

| Klasse | Zweck | Varianten / Zustände |
|---|---|---|
| `.card` | Kasten mit Rand und Schatten | – |
| `.btn` | Aktion (Link oder Button) | `.btn--cyan`, `.btn--orange`, `.btn--pink`, `.btn--ghost`; hover, active, `:disabled`, Fokus |
| `.sticker` | Schräger gelber Aufkleber („?!“ im Logo, „WTF?!“ in der Headline) | – |
| `.stage` | Dunkle Bühne; Buttons darin bekommen hellen Rand und Schatten | – |
| `.chip` | Kategorie-Etikett oder Filter | neutral; mit `.cat-*` farbig; als Filter `aria-pressed="true"` (zeigt ✓) |
| `.cat-*` / `.accent` | Akzentfläche | setzt Hintergrund **und** `--on-accent` als Schrift |
| `.sr-only` | Nur für Screenreader | – |

Neue Varianten kommen als Modifier-Klasse in `global.css`, nicht als Überschreibung in der Komponente.

## Regeln, die der Build prüft

1. Keine Farbwerte (`#…`, `rgb()`, `hsl()` …) außerhalb von `:root` in `global.css`.
2. `font`, `font-size`, `margin`, `padding`, `gap`, `border*`, `outline*`, `box-shadow`, `filter`: keine festen px/rem/em, kein `clamp()`. Nur Tokens.
3. `transition`/`animation`: Zeiten nur über `var(--dur)`.
4. Keine Inline-Styles (`style="…"`) in `.astro`-Dateien.
5. Jeder `<button>` hat `type`, jede `role="group"` hat `aria-label`; Zustände über `aria-pressed`/`aria-current`, nicht über Klassen wie `on`.
6. `global.css` enthält einen `:focus-visible`-Stil und eine `prefers-reduced-motion`-Regel; jede `.cat-*`-Klasse setzt `color: var(--on-accent)`.
7. Kontrast (WCAG AA), hell und dunkel: `--ink`, `--muted`, `--pink-text` auf `--bg`/`--surface` mindestens 4.5:1; `--on-accent` auf jeder Akzentfläche mindestens 4.5:1; `--focus` mindestens 3:1.

Layoutmaße wie `max-width` in Media Queries, `min-height` oder Spaltenbreiten im Grid sind erlaubt.
