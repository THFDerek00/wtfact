// Feiertags-Kalender für die Kategorie „Feiertage“ (Wunsch von Eric, 2026-10-15).
// Ein Feiertags-Fakt erscheint nur an seinem Tag: Sein Datum (deutsche Zeit) muss hier unter `dates` stehen,
// das prüft `npm run check` (scripts/check-posts.mjs). Pro Monat 2 bis 6 Termine.
// Höchstens ein Feiertag pro Tag (sonst wäre unklar, welches Thema ein Fakt bekommt), auch das prüft der Build.
// Bewegliche Feste (Ostern, Chinesisches Neujahr, Holi …) stehen mit dem konkreten Datum je Jahr drin.
//
// Farbwelt: `theme` ist der Name eines Themas in src/styles/global.css (Block [data-fest='…'] plus Tokens
// --fest-<theme>-night/-a/-b). Fehlt es, nimmt die Seite das allgemeine Fest-Thema „fest“ (Konfetti).
// Die Deko (eigene Grafiken aus src/data/fest-art.ts, über Karte und Seite verstreut) steht in `deco`,
// das riesige Motiv in `art`, das Aussehen des Riesenschriftzugs in `look` (Wunsch von Eric, 2026-10-15:
// eigene Grafiken statt Emojis und eigene Schrift, z. B. Halloween gruselig mit Kürbis als O). Jeder Feiertag hat ein eigenes Thema.

/** Aussehen des Riesenschriftzugs. ink/shade: a/b = Themenfarben, w = hell, k = schwarz. */
export type FestLook = {
  font: 'display' | 'spooky' | 'fraktur' | 'pirate' | 'christmas' | 'lobster' | 'monoton' | 'cinzel' | 'rye' | 'bungee-shade' | 'bungee-inline'
    | 'sancreek' | 'hennypenny' | 'orbitron' | 'bangers' | 'yatra' | 'pacifico' | 'amatic' | 'abril' | 'wetpaint' | 'fascinate' | 'righteous' | 'cherry' | 'uncial';
  o?: string;
  ink?: 'a' | 'b' | 'w';
  shade?: 'a' | 'b' | 'k';
  fill?: 'flag-de';
  trail?: boolean;
};

export type Holiday = {
  id: string;
  de: string;
  en: string;
  emoji: string;
  deco: string[];
  dates: string[];
  theme?: string;
  /** Riesiges Motiv auf Startseite und Faktseite: Name einer Grafik aus src/data/fest-art.ts */
  art?: string;
  /** Riesenschriftzug (FestWord.astro): Schrift, Buchstabe O als Grafik, Schrift- und Schattenfarbe */
  look?: FestLook;
  /** Kurzes Wort für den riesigen Schriftzug auf der Startseite, falls der Name zu lang ist */
  word?: { de: string; en: string };
};

export const HOLIDAYS: Holiday[] = [
  // Oktober
  { id: 'unity-day', de: 'Tag der Deutschen Einheit', en: 'German Unity Day', emoji: '🇩🇪', word: { de: 'Einheit', en: 'Unity Day', theme: 'einheit', art: 'flag-de', look: { font: 'display', fill: 'flag-de' } }, deco: ['firework', 'brick', 'brandenburg-gate', 'flag-de'], dates: ['2026-10-03', '2027-10-03'], theme: 'einheit', art: 'flag-de', look: { font: 'display', fill: 'flag-de' } },
  { id: 'halloween', de: 'Halloween', en: 'Halloween', emoji: '🎃', deco: ['pumpkin', 'bat', 'web', 'ghost', 'spider', 'candy'], dates: ['2026-10-31', '2027-10-31'], theme: 'halloween', art: 'pumpkin', look: { font: 'spooky', o: 'pumpkin', ink: 'a', shade: 'k' } },
  // November
  { id: 'dia-de-muertos', de: 'Día de los Muertos', en: 'Day of the Dead', emoji: '💀', word: { de: 'Muertos', en: 'Muertos', theme: 'muertos', art: 'sugar-skull', look: { font: 'fascinate', o: 'sugar-skull', ink: 'a', shade: 'b' } }, deco: ['marigold', 'candle', 'sugar-skull', 'music-note'], dates: ['2026-11-02'], theme: 'muertos', art: 'sugar-skull', look: { font: 'fascinate', o: 'sugar-skull', ink: 'a', shade: 'b' } },
  { id: 'diwali', de: 'Diwali', en: 'Diwali', emoji: '🪔', deco: ['diya', 'sparkle', 'firework', 'lotus'], dates: ['2026-11-08'], theme: 'diwali', art: 'diya', look: { font: 'yatra', ink: 'a', shade: 'b' } },
  { id: 'st-martin', de: 'Sankt Martin', en: 'St. Martin’s Day', emoji: '🏮', deco: ['martin-lantern', 'crescent', 'star', 'horse'], dates: ['2026-11-11'], theme: 'martin', art: 'martin-lantern', look: { font: 'cherry', ink: 'b', shade: 'a' } },
  { id: 'thanksgiving', de: 'Thanksgiving', en: 'Thanksgiving', emoji: '🦃', deco: ['turkey', 'maple-leaf', 'pie', 'corn'], dates: ['2026-11-26'], theme: 'thanksgiving', art: 'turkey', look: { font: 'rye', ink: 'a', shade: 'k' } },
  { id: 'advent', de: '1. Advent', en: 'First Sunday of Advent', emoji: '🕯️', deco: ['candle', 'fir', 'star', 'snowflake'], dates: ['2026-11-29'], theme: 'advent', art: 'candle', look: { font: 'christmas', ink: 'a', shade: 'b' } },
  // Dezember
  { id: 'nikolaus', de: 'Nikolaus', en: 'St. Nicholas Day', emoji: '🥾', deco: ['boot', 'orange', 'chocolate', 'star'], dates: ['2026-12-06'], theme: 'nikolaus', art: 'boot', look: { font: 'christmas', o: 'orange', ink: 'w', shade: 'b' } },
  { id: 'winter-solstice', de: 'Wintersonnenwende', en: 'Winter solstice', emoji: '🌌', word: { de: 'Sonnenwende', en: 'Solstice', theme: 'wintersonne', art: 'snowflake', look: { font: 'cinzel', o: 'snowflake', ink: 'a', shade: 'b' } }, deco: ['snowflake', 'crescent', 'star', 'fir'], dates: ['2026-12-21'], theme: 'wintersonne', art: 'snowflake', look: { font: 'cinzel', o: 'snowflake', ink: 'a', shade: 'b' } },
  { id: 'christmas-eve', de: 'Heiligabend', en: 'Christmas Eve', emoji: '🎄', deco: ['fir', 'gift', 'star', 'snowflake', 'bell'], dates: ['2026-12-24'], theme: 'weihnacht', art: 'fir', look: { font: 'christmas', ink: 'a', shade: 'b' } },
  { id: 'new-years-eve', de: 'Silvester', en: 'New Year’s Eve', emoji: '🎆', deco: ['firework', 'champagne', 'party-popper', 'sparkle', 'firework'], dates: ['2026-12-31'], theme: 'silvester', art: 'firework', look: { font: 'monoton', ink: 'a', shade: 'b' } },
  // Januar
  { id: 'new-year', de: 'Neujahr', en: 'New Year’s Day', emoji: '🍀', deco: ['clover', 'lucky-pig', 'sparkle', 'party-popper'], dates: ['2027-01-01'], theme: 'neujahr', art: 'clover', look: { font: 'lobster', ink: 'a', shade: 'b' } },
  { id: 'epiphany', de: 'Heilige Drei Könige', en: 'Epiphany', emoji: '👑', word: { de: 'Drei Könige', en: 'Epiphany', theme: 'koenige', art: 'crown', look: { font: 'cinzel', ink: 'a', shade: 'b' } }, deco: ['crown', 'star', 'sparkle'], dates: ['2027-01-06'], theme: 'koenige', art: 'crown', look: { font: 'cinzel', ink: 'a', shade: 'b' } },
  // Februar
  { id: 'chinese-new-year', de: 'Chinesisches Neujahr', en: 'Lunar New Year', emoji: '🧧', word: { de: 'Neujahr', en: 'New Year', theme: 'lunar', art: 'lantern', look: { font: 'bungee-inline', ink: 'a', shade: 'k' } }, deco: ['red-envelope', 'lantern', 'firecracker', 'orange', 'firework'], dates: ['2027-02-06'], theme: 'lunar', art: 'lantern', look: { font: 'bungee-inline', ink: 'a', shade: 'k' } },
  { id: 'carnival', de: 'Rosenmontag', en: 'Rose Monday (Carnival)', emoji: '🎭', deco: ['mask', 'confetti', 'candy', 'party-popper'], dates: ['2027-02-08'], theme: 'karneval', art: 'mask', look: { font: 'bangers', ink: 'a', shade: 'b' } },
  { id: 'valentine', de: 'Valentinstag', en: 'Valentine’s Day', emoji: '💘', deco: ['heart', 'rose', 'love-letter', 'chocolate'], dates: ['2027-02-14'], theme: 'valentin', art: 'heart', look: { font: 'lobster', ink: 'a', shade: 'b' } },
  // März
  { id: 'pi-day', de: 'Pi-Tag', en: 'Pi Day', emoji: '🥧', deco: ['pie', 'pi', 'sparkle'], dates: ['2027-03-14'], theme: 'pi', art: 'pi', look: { font: 'righteous', ink: 'a', shade: 'b' } },
  { id: 'st-patricks', de: 'St. Patrick’s Day', en: 'St. Patrick’s Day', emoji: '☘️', deco: ['clover', 'rainbow', 'gold-coin', 'leprechaun-hat'], dates: ['2027-03-17'], theme: 'patrick', art: 'clover', look: { font: 'uncial', ink: 'a', shade: 'b' } },
  { id: 'holi', de: 'Holi', en: 'Holi', emoji: '🎨', deco: ['color-powder', 'rainbow', 'heart', 'splash'], dates: ['2027-03-22'], theme: 'holi', art: 'color-powder', look: { font: 'wetpaint', o: 'color-powder', ink: 'a', shade: 'b' } },
  { id: 'easter', de: 'Ostern', en: 'Easter', emoji: '🐣', deco: ['chick', 'egg', 'rabbit', 'tulip'], dates: ['2027-03-28'], theme: 'ostern', art: 'chick', look: { font: 'hennypenny', o: 'egg', ink: 'a', shade: 'b' } },
  // April
  { id: 'april-fools', de: '1. April', en: 'April Fools’ Day', emoji: '🃏', deco: ['jester-hat', 'fish', 'confetti'], dates: ['2027-04-01'], theme: 'aprilscherz', art: 'jester-hat', look: { font: 'bangers', ink: 'a', shade: 'b' } },
  { id: 'earth-day', de: 'Tag der Erde', en: 'Earth Day', emoji: '🌍', deco: ['globe', 'sprout', 'tree', 'bee'], dates: ['2027-04-22'], theme: 'erde', art: 'globe', look: { font: 'amatic', ink: 'a', shade: 'b' } },
  { id: 'kings-day', de: 'Koningsdag', en: 'King’s Day', emoji: '🧡', deco: ['crown', 'bike', 'tulip', 'heart'], dates: ['2027-04-27'], theme: 'koningsdag', art: 'crown', look: { font: 'pacifico', o: 'orange', ink: 'a', shade: 'k' } },
  { id: 'walpurgis', de: 'Walpurgisnacht', en: 'Walpurgis Night', emoji: '🧹', deco: ['broom', 'flame', 'moon', 'black-cat'], dates: ['2027-04-30'], theme: 'walpurgis', art: 'black-cat', look: { font: 'spooky', ink: 'b', shade: 'a' } },
  // Mai
  { id: 'star-wars-day', de: 'Star Wars Day', en: 'Star Wars Day', emoji: '🌌', deco: ['star', 'planet', 'rocket', 'sparkle'], dates: ['2027-05-04'], theme: 'weltraum', art: 'planet', look: { font: 'orbitron', ink: 'a', shade: 'b' } },
  { id: 'cinco-de-mayo', de: 'Cinco de Mayo', en: 'Cinco de Mayo', emoji: '🪅', deco: ['pinata', 'taco', 'chili', 'music-note'], dates: ['2027-05-05'], theme: 'cinco', art: 'pinata', look: { font: 'sancreek', ink: 'a', shade: 'b' } },
  { id: 'fathers-day', de: 'Vatertag', en: 'Father’s Day (Germany)', emoji: '🥨', deco: ['pretzel', 'bike', 'tree', 'beer'], dates: ['2027-05-06'], theme: 'vatertag', art: 'beer', look: { font: 'rye', ink: 'a', shade: 'b' } },
  { id: 'mothers-day', de: 'Muttertag', en: 'Mother’s Day', emoji: '💐', deco: ['bouquet', 'tulip', 'love-letter', 'heart'], dates: ['2027-05-09'], theme: 'muttertag', art: 'bouquet', look: { font: 'lobster', ink: 'a', shade: 'b' } },
  // Juni
  { id: 'dragon-boat', de: 'Drachenbootfest', en: 'Dragon Boat Festival', emoji: '🐉', deco: ['dragon-boat', 'zongzi', 'wave'], dates: ['2027-06-09'], theme: 'drachenboot', art: 'dragon-boat', look: { font: 'bungee-inline', ink: 'a', shade: 'k' } },
  { id: 'summer-solstice', de: 'Sommersonnenwende', en: 'Summer solstice', emoji: '🌞', word: { de: 'Sonnenwende', en: 'Solstice', theme: 'sommer', art: 'sun', look: { font: 'righteous', o: 'sun', ink: 'a', shade: 'b' } }, deco: ['sun', 'sunflower', 'flame'], dates: ['2027-06-21'], theme: 'sommer', art: 'sun', look: { font: 'righteous', o: 'sun', ink: 'a', shade: 'b' } },
  { id: 'midsummer', de: 'Mittsommer', en: 'Midsummer', emoji: '🌼', deco: ['strawberry', 'maypole', 'sunflower', 'tulip'], dates: ['2027-06-25'], theme: 'mittsommer', art: 'maypole', look: { font: 'pacifico', o: 'strawberry', ink: 'a', shade: 'b' } },
  // Juli
  { id: 'fourth-of-july', de: '4th of July', en: 'Fourth of July', emoji: '🎆', word: { de: '4th of July', en: '4th of July', theme: 'july', art: 'flag-us', look: { font: 'bungee-shade', o: 'star', ink: 'w', shade: 'a' } }, deco: ['firework', 'flag-us', 'hotdog', 'star'], dates: ['2027-07-04'], theme: 'july', art: 'flag-us', look: { font: 'bungee-shade', o: 'star', ink: 'w', shade: 'a' } },
  { id: 'bastille-day', de: 'Quatorze Juillet', en: 'Bastille Day', emoji: '🥖', deco: ['baguette', 'flag-fr', 'firework', 'croissant'], dates: ['2027-07-14'], theme: 'bastille', art: 'flag-fr', look: { font: 'abril', ink: 'w', shade: 'b' } },
  // August
  { id: 'perseids', de: 'Perseiden-Nacht', en: 'Perseid meteor shower', emoji: '🌠', word: { de: 'Perseiden', en: 'Perseids', theme: 'perseiden', art: 'meteor', look: { font: 'orbitron', ink: 'w', shade: 'a', trail: true } }, deco: ['meteor', 'sparkle', 'telescope', 'star'], dates: ['2026-08-12', '2027-08-12'], theme: 'perseiden', art: 'meteor', look: { font: 'orbitron', ink: 'w', shade: 'a', trail: true } },
  { id: 'tomatina', de: 'La Tomatina', en: 'La Tomatina', emoji: '🍅', deco: ['tomato', 'splash', 'flag-es', 'splash'], dates: ['2026-08-26', '2027-08-25'], theme: 'tomatina', art: 'tomato', look: { font: 'wetpaint', o: 'tomato', ink: 'a', shade: 'k' } },
  // September
  { id: 'mid-autumn', de: 'Mondfest', en: 'Mid-Autumn Festival', emoji: '🥮', deco: ['mooncake', 'moon', 'lantern', 'rabbit'], dates: ['2026-09-25', '2027-09-15'], theme: 'mondfest', art: 'moon', look: { font: 'cinzel', o: 'moon', ink: 'a', shade: 'b' } },
  { id: 'oktoberfest', de: 'Oktoberfest-Anstich', en: 'Oktoberfest opening', emoji: '🍺', word: { de: 'O’zapft is!', en: 'Oktoberfest', theme: 'oktoberfest', art: 'beer', look: { font: 'fraktur', o: 'pretzel', ink: 'b', shade: 'k' } }, deco: ['beer', 'pretzel', 'ferris-wheel', 'beer'], dates: ['2026-09-19', '2027-09-18'], theme: 'oktoberfest', art: 'beer', look: { font: 'fraktur', o: 'pretzel', ink: 'b', shade: 'k' } },
  { id: 'pirate-day', de: 'Talk Like a Pirate Day', en: 'Talk Like a Pirate Day', emoji: '🏴‍☠️', word: { de: 'Arrr!', en: 'Arrr!', theme: 'pirat', art: 'pirate-flag', look: { font: 'pirate', ink: 'a', shade: 'k' } }, deco: ['pirate-flag', 'parrot', 'anchor', 'treasure-map'], dates: ['2027-09-19'], theme: 'pirat', art: 'pirate-flag', look: { font: 'pirate', ink: 'a', shade: 'k' } },
];

// Farbwelten mit eigenem Block in src/styles/global.css. `npm run check` prüft, dass es zu jedem einen Block gibt.
// „fest“ = allgemeines Fest-Thema für Feiertage ohne eigenes Thema, „grusel“ = Kategorie Grusel,
// dazu ein Thema je normaler Kategorie (gleicher Name wie die Kategorie, Wunsch von Eric, 2026-10-20) und „quiz“
// für den Abschnitt „Was war zuerst?“.
export const THEMES = ['fest', 'grusel', 'quiz', 'wof', 'science', 'history', 'tech', 'nature', 'body', 'weird', 'survival', 'food', 'language', 'sport', 'space', 'animals', 'mind', 'brands', 'popculture', 'einheit', 'halloween', 'muertos', 'diwali', 'martin', 'thanksgiving', 'advent', 'nikolaus', 'wintersonne', 'weihnacht', 'xmas', 'silvester', 'neujahr', 'koenige', 'lunar', 'karneval', 'valentin', 'pi', 'patrick', 'holi', 'ostern', 'aprilscherz', 'erde', 'koningsdag', 'walpurgis', 'weltraum', 'cinco', 'vatertag', 'muttertag', 'drachenboot', 'sommer', 'mittsommer', 'july', 'bastille', 'perseiden', 'tomatina', 'mondfest', 'oktoberfest', 'pirat'] as const;
export type Theme = (typeof THEMES)[number];

const GRUSEL_DECO = ['web', 'bat', 'ghost', 'spider', 'moon'];

// Alle Kategorien im Stil von Grusel (Wunsch von Eric, 2026-10-20): dunkle Bühne mit Leuchten in der Kategoriefarbe
// und eigene kleine Grafiken (src/data/fest-art*.ts) verstreut über Karte und Kopf der Faktseite.
const CATEGORY_DECO: Record<string, { deco: string[] }> = {
  science: { deco: ['atom', 'flask', 'sparkle', 'telescope'] },
  history: { deco: ['hourglass', 'crown', 'treasure-map', 'anchor'] },
  tech: { deco: ['gear', 'bolt', 'rocket', 'sparkle'] },
  nature: { deco: ['sprout', 'bee', 'maple-leaf', 'sunflower'] },
  body: { deco: ['heart', 'bone', 'sparkle', 'bolt'] },
  weird: { deco: ['question', 'sparkle', 'planet', 'star'] },
  survival: { deco: ['compass', 'flame', 'tree', 'moon'] },
  food: { deco: ['chili', 'strawberry', 'croissant', 'pie'] },
  language: { deco: ['bubble', 'love-letter', 'sparkle', 'music-note'] },
  sport: { deco: ['ball', 'trophy', 'star', 'bolt'] },
  space: { deco: ['planet', 'rocket', 'star', 'meteor'] },
  animals: { deco: ['fish', 'bee', 'parrot', 'rabbit'] },
  mind: { deco: ['bulb', 'question', 'sparkle', 'star'] },
  brands: { deco: ['bulb', 'gift', 'gold-coin', 'sparkle'] },
  popculture: { deco: ['film', 'music-note', 'star', 'sparkle'] },
};

/** Feiertag an einem Tag ('JJJJ-MM-TT', deutsche Zeit) oder undefined. */
export const holidayOn = (day: string) => HOLIDAYS.find((h) => h.dates.includes(day));

/** Farbwelt und Deko eines Fakts: Feiertage nach ihrem Tag, Grusel und alle anderen Kategorien immer gleich. */
export function festOf(category: string, day: string): { theme: Theme; deco: string[]; holiday?: Holiday } | undefined {
  if (category === 'horror') return { theme: 'grusel', deco: GRUSEL_DECO };
  if (category in CATEGORY_DECO) return { theme: category as Theme, deco: CATEGORY_DECO[category].deco };
  if (category !== 'holiday') return undefined;
  const holiday = holidayOn(day);
  return holiday ? festOfHoliday(holiday) : { theme: 'fest', deco: ['confetti', 'sparkle', 'party-popper'] };
}

/** Farbwelt eines Feiertags (für Startseite und Deko auf allen Seiten am Feiertag selbst). */
export function festOfHoliday(h: Holiday): { theme: Theme; deco: string[]; holiday: Holiday } {
  const theme = (THEMES as readonly string[]).includes(h.theme ?? '') ? (h.theme as Theme) : 'fest';
  return { theme, deco: h.deco, holiday: h };
}
