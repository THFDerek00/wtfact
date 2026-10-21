// Gruselwoche im Browser (Wunsch von Eric, 2026-10-21, Look A „Kürbislicht“): gefundene Kürbisse, Zähler, Nächte bis
// Halloween, Bonbonglas und Hinweise auf der Startseite, der versteckte Kürbis auf Faktseiten und die Spuknacht am 31.10.
// Kein Konto, alles im localStorage. Termine und Verstecke: src/data/halloween.ts. Der Tag kommt aus xmasToday(),
// damit ?vorschau=JJJJ-MM-TT auch hier gilt.
import { xmasToday, fill } from './xmas';
import { markActive } from './streak';
import { inSpooky, isHalloween, nightsToHalloween, pumpkinsOut, pumpkinsNew, pumpkinOn, PUMPKINS, PUMPKIN_TOTAL, GOLD_NO } from '../data/halloween';

const KEY = 'wtfact:pumpkins';
const LIGHT = 'wtfact:spuklicht';
type Store = Record<string, number[]>;

function load(): Store {
  try { return JSON.parse(localStorage.getItem(KEY) ?? '{}') ?? {}; } catch { return {}; }
}
const yearOf = (day: string) => day.slice(0, 4);

/** Gefundene Kürbisse (Nummern) im Jahr des Tages. */
export function foundPumpkins(day = xmasToday()) {
  const v = load()[yearOf(day)];
  return Array.isArray(v) ? v : [];
}

/** Kürbis als gefunden merken. Zählt auch für die Serie. */
export function findPumpkin(no: number, day = xmasToday()) {
  const s = load();
  const y = yearOf(day);
  const list = Array.isArray(s[y]) ? s[y] : [];
  markActive();
  if (list.includes(no)) return false;
  s[y] = [...list, no].sort((a, b) => a - b);
  try { localStorage.setItem(KEY, JSON.stringify(s)); } catch { /* privates Fenster: gilt nur für diese Sitzung */ }
  dispatchEvent(new Event('wtfact-pumpkins'));
  return true;
}

/** Zähler, Nächte bis Halloween, Bonbonglas und Hinweise auf der Seite einstellen. */
export function applySpooky(root: ParentNode = document) {
  const day = xmasToday();
  if (!inSpooky(day)) return;
  const found = foundPumpkins(day);
  const n = found.length;
  root.querySelectorAll<HTMLElement>('[data-h-count]').forEach((el) => {
    const tpl = el.dataset.hCount;
    el.textContent = tpl ? fill(tpl, { n, total: PUMPKIN_TOTAL }) : String(n);
  });
  const left = nightsToHalloween(day);
  root.querySelectorAll<HTMLElement>('[data-h-nights]').forEach((el) => {
    const t = JSON.parse(el.dataset.hNights!);
    el.textContent = '';
    if (left > 1) t.many.split('{n}').forEach((part: string, i: number) => {
      if (i) { const b = document.createElement('b'); b.textContent = String(left); el.append(b); }
      el.append(part);
    });
    else el.textContent = left === 1 ? t.one : t.zero;
  });
  // Bonbonglas: gefunden, noch versteckt (schon draußen), kommt noch; der goldene nur in der Spuknacht
  const out = pumpkinsOut(day).map((p) => p.no);
  root.querySelectorAll<HTMLElement>('[data-h-slot]').forEach((li) => {
    const no = Number(li.dataset.hSlot);
    const out13 = no === GOLD_NO ? isHalloween(day) : out.includes(no);
    li.dataset.state = found.includes(no) ? 'found' : out13 ? 'open' : 'later';
  });
  root.querySelectorAll<SVGElement>('[data-h-candy]').forEach((c) => c.toggleAttribute('hidden', Number(c.dataset.hCandy) > n));
  // Hinweis: die neuen Kürbisse von heute zuerst, sonst die ältesten noch nicht gefundenen
  root.querySelectorAll<HTMLElement>('[data-h-hint]').forEach((box) => {
    const hints: string[] = JSON.parse(box.dataset.hHint!);
    const fresh = pumpkinsNew(day).filter((p) => !found.includes(p.no));
    const old = pumpkinsOut(day).filter((p) => !found.includes(p.no) && !fresh.includes(p));
    const pick = (fresh.length ? fresh : old).slice(0, 2);
    const label = box.querySelector<HTMLElement>('[data-h-hint-label]')!;
    const text = box.querySelector<HTMLElement>('[data-h-hint-text]')!;
    if (!pick.length) {
      label.textContent = '';
      text.textContent = box.dataset.hAll!;
      return;
    }
    label.textContent = fresh.length ? box.dataset.hToday! : box.dataset.hOld!;
    text.textContent = pick.map((p) => `${fill(box.dataset.hNo!, { n: p.no })}: ${hints[PUMPKINS.indexOf(p)]}`).join(' ');
  });
}

/** Kurze Meldung unten (Kürbis gefunden, goldener Kürbis …). Nutzt das [data-h-toast] aus Base.astro. */
export function toast(title: string, text: string, link?: { href: string; label: string }) {
  const box = document.querySelector<HTMLElement>('[data-h-toast]');
  if (!box) return;
  box.querySelector('[data-h-toast-title]')!.textContent = title;
  box.querySelector('[data-h-toast-text]')!.textContent = text;
  const a = box.querySelector<HTMLAnchorElement>('[data-h-toast-link]')!;
  a.hidden = !link;
  if (link) { a.href = link.href; a.textContent = link.label; }
  box.hidden = false;
  box.querySelector<HTMLButtonElement>('[data-h-toast-close]')!.onclick = () => (box.hidden = true);
}

/** Faktseite: den Kürbis zeigen, falls hier heute einer sitzt und er noch nicht gefunden ist. */
export function placePumpkin(key: string) {
  const btn = document.querySelector<HTMLButtonElement>('[data-h-hidden]');
  const day = xmasToday();
  const p = pumpkinOn(day, key);
  if (!btn || !p || foundPumpkins(day).includes(p.no)) return;
  btn.hidden = false;
  btn.addEventListener('click', () => {
    findPumpkin(p.no, day);
    btn.hidden = true;
    const T = JSON.parse(btn.dataset.hTexts!);
    const vals = { n: foundPumpkins(day).length, total: PUMPKIN_TOTAL };
    if (p.trick && !matchMedia('(prefers-reduced-motion: reduce)').matches) {
      // Drehpunkt = Mitte des sichtbaren Ausschnitts, sonst kippt die ganze lange Seite um ihre Mitte
      document.documentElement.style.setProperty('--trick-y', `${scrollY + innerHeight / 2}px`);
      document.documentElement.setAttribute('data-trick', '');
      setTimeout(() => document.documentElement.removeAttribute('data-trick'), 1700);
    }
    toast(fill(p.trick ? T.trick : T.sweet, vals), p.trick ? T.trickText : T.sweetText, { href: btn.dataset.hJar!, label: T.jarLink });
    applySpooky();
  }, { once: true });
}

/** Spuknacht am 31.10.: Licht aus, Taschenlampe folgt Maus oder Finger, bis man „Licht an“ drückt oder den goldenen Kürbis findet. */
export function spookNight() {
  const day = xmasToday();
  const night = document.querySelector<HTMLElement>('[data-h-night]');
  const gold = document.querySelector<HTMLButtonElement>('[data-h-gold]');
  if (!isHalloween(day)) return;
  const root = document.documentElement;
  const move = (e: PointerEvent) => {
    root.style.setProperty('--hx', `${e.clientX}px`);
    root.style.setProperty('--hy', `${e.clientY}px`);
  };
  const lightsOn = () => {
    if (night) night.hidden = true;
    removeEventListener('pointermove', move);
    removeEventListener('pointerdown', move);
    try { localStorage.setItem(LIGHT, day); } catch { /* privates Fenster: Licht bleibt bis zum Neuladen an */ }
  };
  const done = foundPumpkins(day).includes(GOLD_NO);
  if (gold && !done) {
    gold.hidden = false;
    gold.addEventListener('click', () => {
      findPumpkin(GOLD_NO, day);
      gold.hidden = true;
      lightsOn();
      document.querySelector<HTMLDialogElement>('[data-h-secret]')?.showModal();
      applySpooky();
    }, { once: true });
  }
  let off = false;
  try { off = localStorage.getItem(LIGHT) === day; } catch { /* ohne Speicher: Licht bleibt aus bis zum Klick */ }
  if (!night || off || done) return;
  night.hidden = false;
  addEventListener('pointermove', move, { passive: true });
  addEventListener('pointerdown', move, { passive: true });
  night.querySelector<HTMLButtonElement>('[data-h-light]')?.addEventListener('click', lightsOn, { once: true });
}
