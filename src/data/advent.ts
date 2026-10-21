// Adventskalender und Weihnachtszeit (Wunsch von Eric, 2026-10-21, Entwurf „Look A, Kerzenschein“).
// Vom 1. Advent bis zum 2. Weihnachtstag (26.12.) sieht die ganze Seite weihnachtlich aus. Der 1. Advent wird jedes
// Jahr ausgerechnet (vierter Sonntag vor dem 25.12.), deshalb steht hier kein festes Datum.
// Vom 1. bis 24.12. öffnet jeden Tag um 0 Uhr (deutsche Zeit) ein Türchen mit einem eigenen Fakt.
//
// Neues Jahr: unter DOORS einen Block für das Jahr anlegen, eine Zeile je Türchen mit den Schlüsseln (translationKey)
// der Fakten. Jeder Fakt braucht das Datum JJJJ-12-TT 00:00 (deutsche Zeit) seines Türchens, das prüft `npm run check`
// (scripts/check-posts.mjs). Im Dashboard lassen sich diese Fakten nicht umplanen (fest.json → steuerung/api.php).
// Die Datei hat keine Importe, damit Browser-Skripte, Seiten und die Prüfung sie gleich lesen können.

export const XMAS_THEME = 'xmas';

/** Fakten hinter den Türchen, je Jahr. Türchen 6 (Nikolaus) ist ein Stiefel mit zwei Fakten. */
export const DOORS: Record<number, Record<number, string[]>> = {
  2026: {
    1: ['advent-wreath-wagon-wheel'],
    2: ['tinsel-real-silver'],
    3: ['lauscha-glass-fruit'],
    4: ['poinsettia-red-leaves'],
    5: ['yule-cat-iceland'],
    6: ['santa-red-before-coca-cola', 'gemini-6-jingle-bells'],
    7: ['christmas-disease-name'],
    8: ['kfc-christmas-japan'],
    9: ['massachusetts-christmas-ban'],
    10: ['snowflake-bentley'],
    11: ['stollen-butter-letter'],
    12: ['caga-tio-log'],
    13: ['christmas-island-red-crabs'],
    14: ['santas-reindeer-female'],
    15: ['first-electric-tree-lights'],
    16: ['o-tannenbaum-love-song'],
    17: ['iceland-christmas-book-flood'],
    18: ['silent-night-guitar'],
    19: ['xmas-greek-chi'],
    20: ['christmas-spirit-brain'],
    21: ['nordmann-seeds-georgia'],
    22: ['last-christmas-number-one'],
    23: ['norad-santa-misprint'],
    24: ['earthrise-christmas-eve'],
  },
};

export type DoorKind = 'fact' | 'quiz' | 'guess' | 'gift' | 'boot' | 'finale';
/** Besondere Türchen, jedes Jahr gleich: Quiz (Wahr oder Fake), Schätzen, Geschenk-Tipp, Nikolaus-Stiefel, Finale. */
export const KINDS: Record<number, DoorKind> = { 3: 'gift', 6: 'boot', 9: 'quiz', 10: 'gift', 13: 'guess', 17: 'gift', 20: 'quiz', 22: 'guess', 24: 'finale' };
export const kindOf = (door: number): DoorKind => KINDS[door] ?? 'fact';

type Text = { de: string; en: string };
/** Wahr oder Fake, Weihnachts-Edition: Aussagen über Fakten aus früheren Türchen (`door`), jede mit Auflösung. */
export const QUIZ: Record<number, Record<number, { door: number; true: boolean; text: Text }[]>> = {
  2026: {
    9: [
      { door: 2, true: true, text: { de: 'Das erste Lametta war aus echtem Silber.', en: 'The first tinsel was made of real silver.' } },
      { door: 6, true: false, text: { de: 'Rot trägt der Weihnachtsmann erst, seit Coca-Cola ihn in den 1930ern so malen ließ.', en: 'Santa only wears red because Coca-Cola had him painted that way in the 1930s.' } },
      { door: 1, true: true, text: { de: 'Der erste Adventskranz war ein Wagenrad mit bis zu 24 Kerzen.', en: 'The first Advent wreath was a wagon wheel with up to 24 candles.' } },
    ],
    20: [
      { door: 8, true: true, text: { de: 'In Japan essen viele Familien zu Weihnachten Fried Chicken von KFC.', en: 'In Japan, many families eat KFC fried chicken at Christmas.' } },
      { door: 4, true: false, text: { de: 'Die roten Teile des Weihnachtssterns sind seine Blüten.', en: 'The red parts of a poinsettia are its flowers.' } },
      { door: 10, true: false, text: { de: 'Das erste Foto einer einzelnen Schneeflocke entstand erst 1985.', en: 'The first photo of a single snowflake was only taken in 1985.' } },
    ],
  },
};

/** Schätz-Türchen: eine Zahl aus dem Fakt raten, höher oder tiefer, drei Versuche. Treffer = höchstens 10 % daneben. */
export const GUESS: Record<number, Record<number, { q: Text; answer: number; unit: Text }>> = {
  2026: {
    13: { q: { de: 'Wie viele rote Landkrabben leben auf der Weihnachtsinsel?', en: 'How many red land crabs live on Christmas Island?' }, answer: 50, unit: { de: 'Millionen', en: 'million' } },
    22: { q: { de: 'Wie viele Jahre brauchte „Last Christmas“ bis auf Platz 1 in Großbritannien?', en: 'How many years did ‘Last Christmas’ take to reach number 1 in the UK?' }, answer: 36, unit: { de: 'Jahre', en: 'years' } },
  },
};
export const GUESS_TRIES = 3;
export const GUESS_HIT = 0.1;

// ---------- Kalender ----------

const DAY = 86_400_000;
const iso = (t: number) => new Date(t).toISOString().slice(0, 10);

/** 1. Advent eines Jahres: der vierte Sonntag vor dem 25. Dezember. */
export function firstAdvent(year: number) {
  const eve = Date.UTC(year, 11, 24);
  const fourth = eve - new Date(eve).getUTCDay() * DAY; // Sonntag am oder vor Heiligabend = 4. Advent
  return iso(fourth - 21 * DAY);
}

/** Weihnachtszeit eines Jahres: 1. Advent bis 26.12., beide eingeschlossen. */
export const seasonOf = (year: number) => ({ from: firstAdvent(year), to: `${year}-12-26` });

export const inSeason = (day: string) => {
  const s = seasonOf(Number(day.slice(0, 4)));
  return day >= s.from && day <= s.to;
};

/** Welcher Advent gerade ist (1 bis 4), ab Heiligabend 4, außerhalb 0. */
export function adventNo(day: string) {
  if (!inSeason(day)) return 0;
  const from = Date.parse(`${firstAdvent(Number(day.slice(0, 4)))}T00:00:00Z`);
  return Math.min(4, 1 + Math.floor((Date.parse(`${day}T00:00:00Z`) - from) / (7 * DAY)));
}

/** Türchen des Tages (1 bis 24) oder 0. */
export const doorOf = (day: string) => (day.slice(5, 7) === '12' && Number(day.slice(8)) <= 24 ? Number(day.slice(8)) : 0);

/** Tage bis Heiligabend (0 an Heiligabend, danach negativ). */
export const daysToEve = (day: string) => Math.round((Date.parse(`${day.slice(0, 4)}-12-24T00:00:00Z`) - Date.parse(`${day}T00:00:00Z`)) / DAY);

/** Tag, an dem ein Türchen aufgeht. */
export const doorDay = (year: number, door: number) => `${year}-12-${String(door).padStart(2, '0')}`;

/** Kalenderjahr, das die Seite zeigt: das laufende, sonst das letzte schon begonnene, sonst das nächste. */
export function calendarYear(day: string) {
  const years = Object.keys(DOORS).map(Number).sort((a, b) => a - b);
  const started = years.filter((y) => firstAdvent(y) <= day);
  return started.length ? started[started.length - 1] : years[0];
}

/** Alle Tage der Weihnachtszeit eines Jahres (für fest.json: an diesen Tagen baut das Dashboard die Seite neu). */
export function seasonDays(year: number) {
  const { from, to } = seasonOf(year);
  const out: string[] = [];
  for (let t = Date.parse(`${from}T00:00:00Z`); iso(t) <= to; t += DAY) out.push(iso(t));
  return out;
}

/** Schlüssel aller Türchen-Fakten (Dashboard: nicht umplanbar). */
export const doorKeys = () => Object.values(DOORS).flatMap((y) => Object.values(y).flat());

// ---------- Wichtel ----------
// Jeden Tag ab dem 2.12. versteckt sich ein Wichtel auf der Seite eines Fakts aus einem schon offenen Türchen.
// Wer ihn findet, bekommt eine goldene Kugel für den WTF-Baum. Die Wahl hängt nur vom Tag ab, alle sehen dieselbe.

export function wichtelKey(day: string) {
  const year = Number(day.slice(0, 4));
  const door = doorOf(day);
  const doors = DOORS[year];
  if (!doors || door < 2) return null;
  const keys = Array.from({ length: door - 1 }, (_, k) => doors[k + 1] ?? []).flat();
  if (!keys.length) return null;
  let h = 0;
  for (const c of day) h = (h * 31 + c.charCodeAt(0)) >>> 0;
  return keys[h % keys.length];
}
