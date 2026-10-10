import { getCollection, type CollectionEntry } from 'astro:content';
import { SITE, type Lang } from './config';
import { postDay, berlinDay } from './week';

export type Post = CollectionEntry<'posts'>;

export const langOf = (p: Post) => p.id.split('/')[0] as Lang;
export const slugOf = (p: Post) => p.id.split('/').slice(1).join('/');
export const postUrl = (p: Post) => `/${langOf(p)}/${slugOf(p)}/`;

export async function postsFor(lang: Lang) {
  const now = new Date();
  return (await getCollection('posts', (p) => langOf(p) === lang && !p.data.draft && p.data.date <= now)).sort(
    (a, b) => b.data.date.getTime() - a.data.date.getTime(),
  );
}

export async function translationOf(p: Post) {
  const other: Lang = langOf(p) === 'de' ? 'en' : 'de';
  return (await postsFor(other)).find((o) => o.data.translationKey === p.data.translationKey);
}

export const amazonUrl = (lang: Lang, query: string) => {
  const a = SITE.amazon[lang];
  return `https://${a.host}/s?k=${encodeURIComponent(query)}${a.tag ? `&tag=${encodeURIComponent(a.tag)}` : ''}`;
};

export const readingMinutes = (body = '') => Math.max(1, Math.round(body.split(/\s+/).length / 200));

/** Laufende Nummer eines Beitrags innerhalb seiner Sprache, ältester = 1. `all` ist postsFor(lang). */
export const factNumber = (p: Post, all: Post[]) => all.length - all.findIndex((o) => o.id === p.id);

export const categoryIcon = (c: string) => `/brand/icons/${c}.svg`;

/** Kurzinfo zu einem Fakt für Skripte im Browser (WTF-Charts, Hinweis auf der Startseite). */
export const factInfo = (p: Post) => ({
  key: p.data.translationKey,
  date: postDay(p.data.date),
  cat: p.data.category as string,
  emoji: p.data.emoji,
  title: p.data.title,
  hook: p.data.hook,
  url: postUrl(p),
});
export type FactInfo = ReturnType<typeof factInfo>;

// ---------- Große Zahl und Schätzfrage (Design „E“, Wunsch von Eric, 2026-10-10) ----------

const UNITS: [RegExp, string][] = [
  [/^\s*(Prozent|percent|%)/i, '%'],
  [/^-?\s*(mal|fach|times)\b/i, '×'],
  [/^\s*(Zentimeter|centimet(er|re)s?|cm)\b/i, 'cm'],
  [/^\s*(Kilometer|kilomet(er|re)s?|km)\b/i, 'km'],
  [/^\s*(Meter|met(er|re)s?)\b/i, 'm'],
  [/^\s*(Millisekunden|milliseconds?)\b/i, 'ms'],
  [/^\s*(Milliarden|billion)\b/i, 'Mrd.'],
  [/^\s*(Millionen|million)\b/i, 'Mio.'],
  [/^\s*(Jahre[n]?|years?)\b/i, 'years'],
  [/^\s*(Tage[n]?|days?)\b/i, 'days'],
  [/^\s*(Stunden|hours?)\b/i, 'hours'],
  [/^\s*(Sekunden|seconds?)\b/i, 's'],
  [/^\s*(Knochen|bones)\b/i, 'bones'],
];
const UNIT_TEXT: Record<Lang, Record<string, string>> = {
  de: { years: 'Jahre', days: 'Tage', hours: 'Stunden', bones: 'Knochen' },
  en: { years: 'years', days: 'days', hours: 'hours', bones: 'bones', 'Mrd.': 'billion', 'Mio.': 'million' },
};
const NUM = /(?<![\d:.,])(\d{1,3}(?:[.,]\d{3})+|\d+(?:[.,]\d+)?)(?![\d:])/g;

export type BigNumber = {
  value: string; unit: string; raw: string; index: number; text: 'title' | 'hook';
  /** Für die Anzeige: Zahl, bei % und × direkt mit Zeichen („20 %“ → „20%“), sonst die Einheit darunter (`below`). */
  show: string; below: string;
};

/**
 * Die auffälligste Zahl eines Fakts für die großen Ziffern („400“) und die Schätzfrage, oder null.
 * Zahlen mit Einheit gewinnen, Jahreszahlen (1000 bis 2099) nur, wenn es sonst nichts gibt.
 */
export function bigNumber(p: Post): BigNumber | null {
  const lang = langOf(p);
  let best: (BigNumber & { score: number }) | null = null;
  for (const text of ['title', 'hook'] as const) {
    const s = p.data[text];
    for (const m of s.matchAll(NUM)) {
      const raw = m[1];
      const after = s.slice(m.index! + raw.length, m.index! + raw.length + 16);
      const hit = UNITS.find(([re]) => re.test(after));
      const n = Number(raw.replace(/[.,](?=\d{3}\b)/g, '').replace(',', '.'));
      const isYear = !hit && /^\d{4}$/.test(raw) && n >= 1000 && n < 2100;
      if (n < 2 && !hit) continue;
      const score = (hit ? 4 : 0) + (isYear ? -3 : 0) + (text === 'title' ? 2 : 0) + Math.min(raw.length, 6) / 10;
      if (!best || score > best.score) {
        const unit = hit ? (UNIT_TEXT[lang][hit[1]] ?? hit[1]) : '';
        best = { show: '', below: '', value: raw, unit, raw: s.slice(m.index!, m.index! + raw.length + (hit ? (after.match(hit[0])?.[0].length ?? 0) : 0)), index: m.index!, text, score };
      }
    }
  }
  if (!best) return null;
  const { score: _score, ...rest } = best;
  const inline = rest.unit === '%' || rest.unit === '×';
  return { ...rest, show: inline ? `${rest.value}${rest.unit}` : rest.value, below: inline ? '' : rest.unit };
}

/** Schätzfrage zu einem Fakt: der Satz mit Lücke und drei Antworten, eine davon die echte Zahl. */
export function guessFor(p: Post) {
  const b = bigNumber(p);
  if (!b) return null;
  const s = p.data[b.text];
  const lang = langOf(p);
  const n = Number(b.value.replace(/[.,](?=\d{3}\b)/g, '').replace(',', '.'));
  const isYear = /^\d{4}$/.test(b.value) && n >= 1000 && n < 2100 && !b.unit;
  const dec = (b.value.match(/[.,](\d+)$/) && !/[.,]\d{3}$/.test(b.value)) ? 1 : 0;
  const fmt = (x: number) => x.toLocaleString(lang === 'de' ? 'de-DE' : 'en-US', { maximumFractionDigits: dec, minimumFractionDigits: dec, useGrouping: !isYear });
  // Falsche Antworten: deutlich kleiner und deutlich größer, bei Jahreszahlen ein paar Jahrzehnte daneben.
  const near = (f: number) => (isYear ? Math.round(n + f * 40) : n * (f < 0 ? 0.1 : 10));
  const options = [near(-1), n, near(1)].map((x) => (isYear || dec ? x : Math.max(1, Math.round(x)))).map(fmt);
  if (new Set(options).size < 3) return null;
  // Reihenfolge fest pro Fakt, damit sie bei jedem Bauen gleich bleibt.
  const shift = [...p.data.translationKey].reduce((h, c) => h + c.charCodeAt(0), 0) % 3;
  const order = [0, 1, 2].map((i) => (i + shift) % 3);
  return {
    before: s.slice(0, b.index),
    after: s.slice(b.index + b.value.length),
    options: order.map((i) => options[i]),
    correct: order.indexOf(1),
  };
}

/** Fakten, die heute (deutscher Tag) noch erscheinen, frühester zuerst. Für den Countdown unter „Heute neu“.
 * Nur Kategorie und Zeit werden gezeigt, der Titel bleibt bis zur Veröffentlichung geheim. */
export async function upcomingToday(lang: Lang) {
  const now = new Date();
  const today = berlinDay(now);
  return (await getCollection('posts', (p) => langOf(p) === lang && !p.data.draft && p.data.date > now && berlinDay(p.data.date) === today))
    .sort((a, b) => a.data.date.getTime() - b.data.date.getTime())
    .map((p) => ({ at: p.data.date.getTime(), cat: p.data.category }));
}
