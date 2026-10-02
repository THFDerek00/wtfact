// Gold-Fakten aus dem Science Jumper: gemeinsamer Teil für die Spielseite und die einzelnen Gold-Fakt-Seiten.
// Freigeschaltet wird nach dem Highscore EINES Laufs. Gespeichert wird nur im Browser.

export type GoldFact = {
  id: string;
  points: number;
  category: string;
  categoryName: string;
  emoji: string;
  title: string;
  text: string;
  sources: { label: string; url: string }[];
};
export type Store = { best: number; seen: number };

const KEY = 'wtfact-jumper-v1';

export function loadStore(): Store {
  try {
    const s = JSON.parse(localStorage.getItem(KEY) ?? '{}');
    const best = Math.max(0, Number(s.best) || 0);
    return { best, seen: Math.min(Math.max(0, Number(s.seen) || 0), best) };
  } catch {
    return { best: 0, seen: 0 };
  }
}

export function saveStore(store: Store) {
  try { localStorage.setItem(KEY, JSON.stringify(store)); } catch { /* privates Fenster: nur für diese Sitzung */ }
}

/** Der Inhalt steht base64-kodiert im HTML, damit er nicht einfach im Quelltext lesbar ist. */
export function decode<T>(b64: string): T {
  const bytes = Uint8Array.from(atob(b64), (c) => c.charCodeAt(0));
  return JSON.parse(new TextDecoder().decode(bytes)) as T;
}

/** Erster Satz als Aufhänger, der Rest als Text darunter. Abkürzungen wie „v. Chr.“ trennen nicht. */
export function splitLead(text: string): [string, string] {
  const m = /(?<=[\p{L}\d]{3}[.!?]["“”»]?)\s+(?=[\p{Lu}„"“\d])/u.exec(text);
  if (!m || m.index > 240) return [text, ''];
  return [text.slice(0, m.index), text.slice(m.index + m[0].length)];
}

export const goldUrl = (lang: string, id: string) => `/${lang}/science-jumper/${id}/`;
