// Feiertags-Kalender für die Kategorie „Feiertage“ (Wunsch von Eric, 2026-10-15).
// Ein Feiertags-Fakt erscheint nur an seinem Tag: Sein Datum (deutsche Zeit) muss hier unter `dates` stehen,
// das prüft `npm run check` (scripts/check-posts.mjs). Pro Monat 2 bis 6 Termine.
// Höchstens ein Feiertag pro Tag (sonst wäre unklar, welches Thema ein Fakt bekommt), auch das prüft der Build.
// Bewegliche Feste (Ostern, Chinesisches Neujahr, Holi …) stehen mit dem konkreten Datum je Jahr drin.
//
// Farbwelt: `theme` ist der Name eines Themas in src/styles/global.css (Block [data-fest='…'] plus Tokens
// --fest-<theme>-night/-a/-b). Fehlt es, nimmt die Seite das allgemeine Fest-Thema „fest“ (Konfetti).
// Die Deko (Emojis, die über Karte und Seite verstreut sind) steht in `deco`.

export type Holiday = {
  id: string;
  de: string;
  en: string;
  emoji: string;
  deco: string[];
  dates: string[];
  theme?: string;
  /** Kurzes Wort für den riesigen Schriftzug auf der Startseite, falls der Name zu lang ist */
  word?: { de: string; en: string };
};

export const HOLIDAYS: Holiday[] = [
  // Oktober
  { id: 'unity-day', de: 'Tag der Deutschen Einheit', en: 'German Unity Day', emoji: '🇩🇪', word: { de: 'Einheit', en: 'Unity Day' }, deco: ['🎆', '🧱', '🕊️', '🇩🇪'], dates: ['2026-10-03', '2027-10-03'], theme: 'einheit' },
  { id: 'halloween', de: 'Halloween', en: 'Halloween', emoji: '🎃', deco: ['🎃', '🦇', '🕸️', '👻', '🕷️', '🍬'], dates: ['2026-10-31', '2027-10-31'], theme: 'halloween' },
  // November
  { id: 'dia-de-muertos', de: 'Día de los Muertos', en: 'Day of the Dead', emoji: '💀', word: { de: 'Muertos', en: 'Muertos' }, deco: ['🌼', '🕯️', '💀', '🌺', '🎶'], dates: ['2026-11-02'], theme: 'muertos' },
  { id: 'diwali', de: 'Diwali', en: 'Diwali', emoji: '🪔', deco: ['🪔', '✨', '🎆', '🌸', '🪷'], dates: ['2026-11-08'], theme: 'diwali' },
  { id: 'st-martin', de: 'Sankt Martin', en: 'St. Martin’s Day', emoji: '🏮', deco: ['🏮', '🌙', '⭐', '🐴', '🥨'], dates: ['2026-11-11'], theme: 'martin' },
  { id: 'thanksgiving', de: 'Thanksgiving', en: 'Thanksgiving', emoji: '🦃', deco: ['🦃', '🍂', '🥧', '🌽', '🍁'], dates: ['2026-11-26'], theme: 'thanksgiving' },
  { id: 'advent', de: '1. Advent', en: 'First Sunday of Advent', emoji: '🕯️', deco: ['🕯️', '🌲', '⭐', '❄️'], dates: ['2026-11-29'] },
  // Dezember
  { id: 'nikolaus', de: 'Nikolaus', en: 'St. Nicholas Day', emoji: '🥾', deco: ['🥾', '🍊', '🍫', '⭐'], dates: ['2026-12-06'] },
  { id: 'winter-solstice', de: 'Wintersonnenwende', en: 'Winter solstice', emoji: '🌌', word: { de: 'Sonnenwende', en: 'Solstice' }, deco: ['❄️', '🌙', '⭐', '🌲'], dates: ['2026-12-21'] },
  { id: 'christmas-eve', de: 'Heiligabend', en: 'Christmas Eve', emoji: '🎄', deco: ['🎄', '🎁', '⭐', '❄️', '🔔'], dates: ['2026-12-24'] },
  { id: 'new-years-eve', de: 'Silvester', en: 'New Year’s Eve', emoji: '🎆', deco: ['🎆', '🥂', '🎉', '✨', '🍀'], dates: ['2026-12-31'] },
  // Januar
  { id: 'new-year', de: 'Neujahr', en: 'New Year’s Day', emoji: '🍀', deco: ['🍀', '🐷', '✨', '🎉'], dates: ['2027-01-01'] },
  { id: 'epiphany', de: 'Heilige Drei Könige', en: 'Epiphany', emoji: '👑', word: { de: 'Drei Könige', en: 'Epiphany' }, deco: ['👑', '⭐', '✨'], dates: ['2027-01-06'] },
  // Februar
  { id: 'chinese-new-year', de: 'Chinesisches Neujahr', en: 'Lunar New Year', emoji: '🧧', word: { de: 'Neujahr', en: 'New Year' }, deco: ['🧧', '🏮', '🐐', '🎆', '🍊'], dates: ['2027-02-06'] },
  { id: 'carnival', de: 'Rosenmontag', en: 'Rose Monday (Carnival)', emoji: '🎭', deco: ['🎭', '🎉', '🍬', '🤡'], dates: ['2027-02-08'] },
  { id: 'valentine', de: 'Valentinstag', en: 'Valentine’s Day', emoji: '💘', deco: ['💘', '🌹', '💌', '🍫'], dates: ['2027-02-14'] },
  // März
  { id: 'pi-day', de: 'Pi-Tag', en: 'Pi Day', emoji: '🥧', deco: ['🥧', '🔢', '⭕'], dates: ['2027-03-14'] },
  { id: 'st-patricks', de: 'St. Patrick’s Day', en: 'St. Patrick’s Day', emoji: '☘️', deco: ['☘️', '🌈', '🪙', '🎻'], dates: ['2027-03-17'] },
  { id: 'holi', de: 'Holi', en: 'Holi', emoji: '🎨', deco: ['🎨', '🌈', '💛', '💜'], dates: ['2027-03-22'] },
  { id: 'easter', de: 'Ostern', en: 'Easter', emoji: '🐣', deco: ['🐣', '🥚', '🐰', '🌷'], dates: ['2027-03-28'] },
  // April
  { id: 'april-fools', de: '1. April', en: 'April Fools’ Day', emoji: '🃏', deco: ['🃏', '🐟', '🤪'], dates: ['2027-04-01'] },
  { id: 'earth-day', de: 'Tag der Erde', en: 'Earth Day', emoji: '🌍', deco: ['🌍', '🌱', '🌳', '🐝'], dates: ['2027-04-22'] },
  { id: 'kings-day', de: 'Koningsdag', en: 'King’s Day', emoji: '🧡', deco: ['🧡', '👑', '🚲', '🌷'], dates: ['2027-04-27'] },
  { id: 'walpurgis', de: 'Walpurgisnacht', en: 'Walpurgis Night', emoji: '🧹', deco: ['🧹', '🔥', '🌕', '🐈‍⬛'], dates: ['2027-04-30'] },
  // Mai
  { id: 'star-wars-day', de: 'Star Wars Day', en: 'Star Wars Day', emoji: '🌌', deco: ['⭐', '🌌', '🤖', '🪐'], dates: ['2027-05-04'] },
  { id: 'cinco-de-mayo', de: 'Cinco de Mayo', en: 'Cinco de Mayo', emoji: '🪅', deco: ['🪅', '🌮', '🎺', '🌶️'], dates: ['2027-05-05'] },
  { id: 'fathers-day', de: 'Vatertag', en: 'Father’s Day (Germany)', emoji: '🥨', deco: ['🥨', '🚲', '🌳'], dates: ['2027-05-06'] },
  { id: 'mothers-day', de: 'Muttertag', en: 'Mother’s Day', emoji: '💐', deco: ['💐', '🌷', '💌'], dates: ['2027-05-09'] },
  // Juni
  { id: 'dragon-boat', de: 'Drachenbootfest', en: 'Dragon Boat Festival', emoji: '🐉', deco: ['🐉', '🛶', '🍙', '🌊'], dates: ['2027-06-09'] },
  { id: 'summer-solstice', de: 'Sommersonnenwende', en: 'Summer solstice', emoji: '🌞', word: { de: 'Sonnenwende', en: 'Solstice' }, deco: ['🌞', '🌻', '🔥'], dates: ['2027-06-21'] },
  { id: 'midsummer', de: 'Mittsommer', en: 'Midsummer', emoji: '🌼', deco: ['🌼', '🍓', '💐', '🇸🇪'], dates: ['2027-06-25'] },
  // Juli
  { id: 'fourth-of-july', de: '4th of July', en: 'Fourth of July', emoji: '🎆', word: { de: '4th of July', en: '4th of July' }, deco: ['🎆', '🇺🇸', '🌭', '⭐'], dates: ['2027-07-04'] },
  { id: 'bastille-day', de: 'Quatorze Juillet', en: 'Bastille Day', emoji: '🥖', deco: ['🥖', '🇫🇷', '🎆', '🥐'], dates: ['2027-07-14'] },
  // August
  { id: 'perseids', de: 'Perseiden-Nacht', en: 'Perseid meteor shower', emoji: '🌠', word: { de: 'Perseiden', en: 'Perseids' }, deco: ['🌠', '✨', '🔭', '🌌'], dates: ['2026-08-12', '2027-08-12'], theme: 'perseiden' },
  { id: 'tomatina', de: 'La Tomatina', en: 'La Tomatina', emoji: '🍅', deco: ['🍅', '💦', '🇪🇸', '🍅'], dates: ['2026-08-26', '2027-08-25'], theme: 'tomatina' },
  // September
  { id: 'mid-autumn', de: 'Mondfest', en: 'Mid-Autumn Festival', emoji: '🥮', deco: ['🥮', '🌕', '🏮', '🐇'], dates: ['2026-09-25', '2027-09-15'], theme: 'mondfest' },
  { id: 'oktoberfest', de: 'Oktoberfest-Anstich', en: 'Oktoberfest opening', emoji: '🍺', word: { de: 'O’zapft is!', en: 'Oktoberfest' }, deco: ['🍺', '🥨', '🎡', '🍻'], dates: ['2026-09-19', '2027-09-18'], theme: 'oktoberfest' },
  { id: 'pirate-day', de: 'Talk Like a Pirate Day', en: 'Talk Like a Pirate Day', emoji: '🏴‍☠️', word: { de: 'Arrr!', en: 'Arrr!' }, deco: ['🏴‍☠️', '🦜', '⚓', '🗺️'], dates: ['2027-09-19'], theme: 'pirat' },
];

// Farbwelten mit eigenem Block in src/styles/global.css. `npm run check` prüft, dass es zu jedem einen Block gibt.
// „fest“ = allgemeines Fest-Thema für Feiertage ohne eigenes Thema, „grusel“ = Kategorie Grusel.
export const THEMES = ['fest', 'grusel', 'halloween', 'muertos', 'diwali', 'martin', 'thanksgiving', 'einheit', 'mondfest', 'oktoberfest', 'pirat', 'tomatina', 'perseiden'] as const;
export type Theme = (typeof THEMES)[number];

const GRUSEL_DECO = ['🕸️', '🦇', '👻', '🕷️', '🌕'];

/** Feiertag an einem Tag ('JJJJ-MM-TT', deutsche Zeit) oder undefined. */
export const holidayOn = (day: string) => HOLIDAYS.find((h) => h.dates.includes(day));

/** Farbwelt und Deko eines Fakts: Feiertage nach ihrem Tag, Grusel immer gleich, sonst keine. */
export function festOf(category: string, day: string): { theme: Theme; deco: string[]; holiday?: Holiday } | undefined {
  if (category === 'horror') return { theme: 'grusel', deco: GRUSEL_DECO };
  if (category !== 'holiday') return undefined;
  const holiday = holidayOn(day);
  return holiday ? festOfHoliday(holiday) : { theme: 'fest', deco: ['🎉', '✨', '🎈'] };
}

/** Farbwelt eines Feiertags (für Startseite und Deko auf allen Seiten am Feiertag selbst). */
export function festOfHoliday(h: Holiday): { theme: Theme; deco: string[]; holiday: Holiday } {
  const theme = (THEMES as readonly string[]).includes(h.theme ?? '') ? (h.theme as Theme) : 'fest';
  return { theme, deco: h.deco, holiday: h };
}
