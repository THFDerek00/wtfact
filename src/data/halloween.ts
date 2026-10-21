// Gruselwoche vor Halloween (Wunsch von Eric, 2026-10-21): vom 24. bis 31.10. sieht die ganze Seite nach Halloween aus,
// der 31.10. selbst bekommt noch etwas Eigenes. Ob Gruselwoche ist, steht als data-season='halloween' auf <html>
// (Base.astro beim Bauen und im Browser vor dem ersten Zeichnen, src/scripts/xmas.ts danach).
// Die Datei hat keine Importe, damit Browser-Skripte, Seiten und die Prüfung sie gleich lesen können.

export const SPOOKY_THEME = 'halloween';
/** Erster Tag der Gruselwoche (MM-TT), letzter ist Halloween selbst. */
export const SPOOKY_FROM = '10-24';
export const SPOOKY_TO = '10-31';

/** Liegt der Tag (JJJJ-MM-TT) in der Gruselwoche? */
export const inSpooky = (day: string) => day.slice(5) >= SPOOKY_FROM && day.slice(5) <= SPOOKY_TO;

/** Ist heute Halloween? */
export const isHalloween = (day: string) => day.slice(5) === SPOOKY_TO;

/** Nächte bis Halloween (0 = heute ist Halloween), außerhalb der Gruselwoche -1. */
export function nightsToHalloween(day: string) {
  if (!inSpooky(day)) return -1;
  return Number(SPOOKY_TO.slice(3)) - Number(day.slice(8));
}

/** Tag der Gruselwoche, 1 bis 8 (24.10. = 1), außerhalb 0. */
export const spookyDay = (day: string) => (inSpooky(day) ? Number(day.slice(8)) - Number(SPOOKY_FROM.slice(3)) + 1 : 0);

// Kürbisjagd (Look A „Kürbislicht“, Eric, 2026-10-21): 12 Kürbisse verstecken sich auf Faktseiten, ab ihrem Tag (MM-TT)
// bleiben sie bis Halloween dort sitzen, wer später kommt, kann also nachsuchen. Jeder gefundene Kürbis gibt ein Bonbon,
// die mit trick spielen stattdessen einen Streich (die Seite kippt kurz) und zählen trotzdem. Den 13., goldenen Kürbis gibt
// es nur in der Spuknacht am 31.10. auf der Startseite. Hinweise: src/i18n/halloween.ts (hints, gleiche Reihenfolge).
// Neuer Kürbis: Zeile ergänzen, key = Schlüssel eines veröffentlichten Fakts (prüft `npm run check`).
export type Pumpkin = { no: number; from: string; key: string; trick?: boolean };
export const PUMPKINS: Pumpkin[] = [
  { no: 1, from: '10-24', key: 'psycho-chocolate-syrup' },
  { no: 2, from: '10-24', key: 'owl-head-270' },
  { no: 3, from: '10-25', key: 'hagfish-slime', trick: true },
  { no: 4, from: '10-25', key: 'hippo-red-sweat' },
  { no: 5, from: '10-26', key: 'sleep-paralysis-nightmare' },
  { no: 6, from: '10-26', key: 'infrasound-ghost', trick: true },
  { no: 7, from: '10-27', key: 'zombie-ant-fungus' },
  { no: 8, from: '10-27', key: 'cant-tickle-yourself' },
  { no: 9, from: '10-28', key: 'winchester-house-stairs', trick: true },
  { no: 10, from: '10-29', key: 'uncanny-valley' },
  { no: 11, from: '10-30', key: 'nosferatu-destruction-order' },
  { no: 12, from: '10-30', key: 'frankenstein-year-without-summer' },
];
/** Alle Kürbisse mit dem goldenen aus der Spuknacht. */
export const PUMPKIN_TOTAL = PUMPKINS.length + 1;
export const GOLD_NO = PUMPKIN_TOTAL;

/** Kürbisse, die am Tag (JJJJ-MM-TT) schon versteckt sind. Außerhalb der Gruselwoche keine. */
export const pumpkinsOut = (day: string) => (inSpooky(day) ? PUMPKINS.filter((p) => p.from <= day.slice(5)) : []);

/** Kürbis auf der Faktseite mit diesem Schlüssel, falls er am Tag schon dort sitzt. */
export const pumpkinOn = (day: string, key: string) => pumpkinsOut(day).find((p) => p.key === key);

/** Die Kürbisse, die am Tag neu dazukommen (für den Hinweis auf der Startseite). */
export const pumpkinsNew = (day: string) => pumpkinsOut(day).filter((p) => p.from === day.slice(5));

/** Alle Tage der Gruselwoche eines Jahres (für fest.json: an jedem wird die Seite frisch gebaut). */
export function spookyDays(y: number) {
  const from = Number(SPOOKY_FROM.slice(3)), to = Number(SPOOKY_TO.slice(3));
  return Array.from({ length: to - from + 1 }, (_, i) => `${y}-10-${String(from + i).padStart(2, '0')}`);
}
