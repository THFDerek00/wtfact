// Kalender für „Neu“, die Montags-Abstimmung und den Fakt der Woche.
// Wird von der Seite (Browser) und von den Cloudflare-Funktionen (functions/api) benutzt,
// damit beide dieselben Tage rechnen. Alle Tage sind deutsche Kalendertage (Europe/Berlin)
// im Format JJJJ-MM-TT.
//
// Ablauf einer Woche:
//   Montag M          Abstimmung, ganztägig. Zur Wahl stehen die Fakten von M-7 bis M-1.
//   Dienstag M+1 bis  Der Gewinner ist „Fakt der Woche“ (7 Tage). Am Montag M+7 läuft
//   Montag M+7        schon die nächste Abstimmung, bis Mitternacht gilt noch der alte Gewinner.

export const TZ = 'Europe/Berlin';
/** Ein Fakt gilt so viele Tage als „Neu“, heute eingeschlossen. */
export const NEW_DAYS = 7;

const fmt = new Intl.DateTimeFormat('en-CA', { timeZone: TZ, year: 'numeric', month: '2-digit', day: '2-digit' });

/** Heutiger Tag in Deutschland. */
export const berlinDay = (d: Date = new Date()) => fmt.format(d);

/** Tag eines Beitrags (Frontmatter `date`, steht als UTC-Mitternacht im Schema). */
export const postDay = (d: Date) => d.toISOString().slice(0, 10);

export const addDays = (day: string, n: number) =>
  new Date(Date.parse(`${day}T00:00:00Z`) + n * 86_400_000).toISOString().slice(0, 10);

export const daysBetween = (from: string, to: string) =>
  Math.round((Date.parse(`${to}T00:00:00Z`) - Date.parse(`${from}T00:00:00Z`)) / 86_400_000);

/** true, wenn der Fakt höchstens NEW_DAYS - 1 Tage alt ist (also aus den letzten 7 Tagen stammt). */
export const isNew = (factDay: string, today: string = berlinDay()) => {
  const age = daysBetween(factDay, today);
  return age >= 0 && age < NEW_DAYS;
};

/** Montag der laufenden Woche (heute, falls heute Montag ist). */
export const mondayOf = (day: string) => {
  const wd = new Date(`${day}T00:00:00Z`).getUTCDay(); // 0 = Sonntag, 1 = Montag
  return addDays(day, -((wd + 6) % 7));
};

/**
 * Stand der Woche an einem Tag.
 * - `openPoll`: Abstimmung, die heute läuft (nur montags), sonst null. Die Kennung ist der Montag.
 * - `featuredPoll`: Abstimmung, deren Gewinner heute „Fakt der Woche“ ist.
 * - `nextPoll`: nächster Abstimmungstag.
 */
export function weekState(today: string = berlinDay()) {
  const monday = mondayOf(today);
  const open = monday === today;
  return {
    today,
    openPoll: open ? monday : null,
    featuredPoll: open ? addDays(monday, -7) : monday,
    nextPoll: open ? monday : addDays(monday, 7),
  };
}

/** Fakten, über die am Montag `poll` abgestimmt wird: alle aus den sieben Tagen davor. */
export const pollRange = (poll: string) => ({ from: addDays(poll, -7), to: addDays(poll, -1) });

export const inPoll = (factDay: string, poll: string) => {
  const { from, to } = pollRange(poll);
  return factDay >= from && factDay <= to;
};

export type Verdict = 'like' | 'meh';
export type FactMeta = { key: string; date: string };

/**
 * Gewinner einer Abstimmung. Bei Gleichstand entscheiden die Wisch-Bewertungen
 * (Anteil „Gefällt mir“), danach der neuere Fakt. Ohne eine einzige Stimme gibt es keinen Gewinner.
 */
export function pickWinner(
  candidates: FactMeta[],
  votes: Record<string, number>,
  ratings: Record<string, { like: number; meh: number }> = {},
) {
  const score = (k: string) => {
    const r = ratings[k];
    return r && r.like + r.meh > 0 ? r.like / (r.like + r.meh) : 0;
  };
  const ranked = candidates
    .filter((c) => (votes[c.key] ?? 0) > 0)
    .sort((a, b) => (votes[b.key] ?? 0) - (votes[a.key] ?? 0) || score(b.key) - score(a.key) || b.date.localeCompare(a.date));
  return ranked[0]?.key ?? null;
}
