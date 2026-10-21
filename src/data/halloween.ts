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
