import type { Lang } from '../config';

/*
  Öffentliche Korrekturen („Stimmt doch nicht“). Wenn sich ein veröffentlichter Fakt als falsch
  herausstellt, wird der Beitrag berichtigt und hier ein Eintrag ergänzt, neuester zuerst.
  Nie still ändern: Der Slogan „Und ja, das stimmt wirklich.“ hält nur, wenn Fehler offen zugegeben werden.
*/
export interface Correction {
  /** Tag der Korrektur, JJJJ-MM-TT */
  date: string;
  /** Pfad des berichtigten Beitrags je Sprache, z. B. /de/natur/oktopus-drei-herzen/ */
  url: Record<Lang, string>;
  /** Was falsch war und was jetzt stimmt, ein bis zwei Sätze */
  text: Record<Lang, string>;
}

export const corrections: Correction[] = [];
