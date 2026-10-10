// Quiz-Fragen für „Wahr oder Fake?“ und „Was war zuerst?“ auf der Startseite (Wunsch von Eric, 2026-10-10).
// Start mit 20 Einträgen je Spiel, danach kommen jeden Samstag 5 neue dazu: Jeder Eintrag hat ein Datum `from`
// (deutscher Kalendertag, immer ein Samstag). Vorher steht er weder auf der Seite noch in /quiz.json.
// Inhalte: src/data/quiz-wof.ts und src/data/quiz-first.ts. Regeln wie bei Fakten (docs/styleguide.md):
// wahr, mit Quelle, keine Emojis im Text. `npm run check` prüft Aufbau, Samstage und Nachschub (scripts/check-quiz.mjs).
import type { Category } from '../config';
import { WOF } from './quiz-wof';
import { FIRST } from './quiz-first';

export type Source = { label: string; url: string };

/** „Wahr oder Fake?“: eine Aussage, die stimmt (answer: true) oder ein verbreiteter Irrtum ist (false). */
export type WofItem = {
  id: string;
  from: string;
  cat: Category;
  answer: boolean;
  de: { q: string; why: string };
  en: { q: string; why: string };
  sources: Source[];
};

/** Eine Seite eines Duells „Was war zuerst?“. year: negativ = vor Christus, |year| ≥ 100000 = „vor X Mio. Jahren“. */
export type FirstSide = { cat: Category; year: number; approx?: boolean; de: string; en: string };
/** „Was war zuerst?“: zwei Ereignisse, das frühere gewinnt. Die beiden Jahre sind nie gleich. */
export type FirstItem = {
  id: string;
  from: string;
  a: FirstSide;
  b: FirstSide;
  de: { why: string };
  en: { why: string };
  sources: Source[];
};

export { WOF, FIRST };

/** Einträge, die an `day` (JJJJ-MM-TT) schon freigeschaltet sind, neueste Woche zuerst, innerhalb der Woche in Dateireihenfolge. */
export const liveItems = <T extends { from: string }>(items: T[], day: string) =>
  items.filter((x) => x.from <= day).sort((a, b) => b.from.localeCompare(a.from));
