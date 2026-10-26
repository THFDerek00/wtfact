// Browser-Teil des Dashboards (steuerung.wtfact.xyz). Oberfläche: src/pages/steuerung/index.astro,
// Server: steuerung/api.php. Alle Zeiten in deutscher Zeit (Europe/Berlin).
import { berlinDay, addDays, mondayOf, berlinTime, TZ } from '../week';
import { doorKeys } from '../data/advent';

type Status = 'pool' | 'planned' | 'due' | 'live' | 'offline';
type Fact = {
  key: string; date: string | null; at: string | null; slot: number | null; draft: boolean; status: Status;
  category: string; emoji: string; title: string; titleEn: string | null; teaser: string | null; hook: string | null;
  slug: string | null; like: number; meh: number;
};
type Pr = { number: number; title: string; url: string; branch: string; draft: boolean };
/** Zahlen aus der Datenbank der Seite (steuerung/lib/ratings.php, community_counts); null = nicht lesbar. */
type Stats = {
  ratings: number; voters: number; voters7: number;
  days: Record<string, { like: number; meh: number }>; polls: { poll: string; n: number }[];
};
type State = {
  now: string; slots: string[]; facts: Fact[]; ratings: boolean; liveKnown: boolean; prs: Pr[];
  head: string; repo: string; site: string; deploy: string | null; stats: Stats | null;
  /** Woher die Bewertungen kamen, und falls gar nicht: warum (für den Hinweis). */
  ratingsVia: 'db' | 'api' | null; ratingsWhy: string | null;
};

const $ = <T extends Element = HTMLElement>(sel: string, root: ParentNode = document) => root.querySelector<T>(sel)!;
const $$ = <T extends Element = HTMLElement>(sel: string, root: ParentNode = document) => [...root.querySelectorAll<T>(sel)];
const CATS: Record<string, string> = JSON.parse(document.body.dataset.cats ?? '{}');

const STATUS_LABEL: Record<Status, string> = { pool: 'Pool', planned: 'Geplant', due: 'Wird veröffentlicht', live: 'Live', offline: 'Offline' };
const ERRORS: Record<string, string> = {
  'wrong-login': 'Benutzer oder Passwort stimmt nicht.',
  'too-many': 'Zu viele Fehlversuche. Bitte 15 Minuten warten.',
  'signed-out': 'Du bist abgemeldet.',
  past: 'Dieser Zeitpunkt ist schon vorbei.',
  'already-live': 'Der Fakt ist schon veröffentlicht. Nimm ihn erst offline.',
  'holiday-fixed': 'Feiertags-Fakten und Türchen-Fakten des Adventskalenders sind fest auf ihren Tag gelegt und lassen sich nicht verschieben.',
  'not-deletable': 'Löschen geht nur bei Fakten im Pool oder offline.',
  conflict: 'Gleichzeitig hat sich etwas im Repository geändert. Bitte noch einmal versuchen.',
  'github-denied': 'GitHub lehnt den Zugriff ab. Ist der Token gültig und hat er die nötigen Rechte?',
  'github-unreachable': 'GitHub ist gerade nicht erreichbar.',
  'not-configured': 'Das Dashboard ist noch nicht eingerichtet (README, Abschnitt „Dashboard“).',
  'merge-failed': 'Der PR ließ sich nicht übernehmen.',
};

let csrf = '';
let state: State | null = null;
let weekStart = mondayOf(berlinDay());
let selected: string | null = null;
let busy = false;

// ---------- Server ----------

async function api<T>(route: string, payload?: unknown): Promise<T> {
  const r = await fetch(`api.php?r=${route}`, {
    method: payload === undefined ? 'GET' : 'POST',
    headers: payload === undefined ? {} : { 'content-type': 'application/json', 'x-csrf': csrf },
    body: payload === undefined ? undefined : JSON.stringify(payload),
    credentials: 'same-origin',
    cache: 'no-store',
  });
  let data: any = null;
  try {
    data = await r.json();
  } catch {
    throw new Error(`Server antwortet nicht wie erwartet (${r.status}).`);
  }
  if (!r.ok) {
    if (data?.error === 'signed-out') showLogin();
    const why = ERRORS[data?.error] ?? `Fehler: ${data?.error ?? r.status}`;
    throw new Error(data?.reason ? `${why} (${data.reason})` : data?.message ? `${why} ${data.message}` : why);
  }
  return data as T;
}

function toast(text: string, kind: 'ok' | 'error' = 'ok') {
  const t = $('[data-toast]');
  t.textContent = text;
  t.dataset.kind = kind;
  t.hidden = false;
  clearTimeout(Number(t.dataset.timer));
  t.dataset.timer = String(setTimeout(() => (t.hidden = true), kind === 'error' ? 9000 : 4000));
}

async function load(fresh = false) {
  $('[data-sync]').textContent = 'Lade…';
  try {
    state = await api<State>(`state${fresh ? '&fresh=1' : ''}`);
    render();
    const t = new Intl.DateTimeFormat('de-DE', { timeZone: TZ, hour: '2-digit', minute: '2-digit' }).format(new Date());
    $('[data-sync]').textContent = `Stand ${t} · main ${state.head}`;
    if (state.deploy === 'started') toast('Ein Fakt ist fällig. Die Seite wird gerade neu hochgeladen.');
  } catch (e) {
    $('[data-sync]').textContent = '';
    toast((e as Error).message, 'error');
  }
}

/** Änderung schicken, danach neu laden. */
async function act(route: string, payload: Record<string, unknown>, done: string) {
  if (busy) return;
  busy = true;
  document.body.setAttribute('aria-busy', 'true');
  $('[data-sync]').textContent = 'Speichere…';
  try {
    const r = await api<{ deploy?: string }>(route, payload);
    selected = null;
    $('[data-selected]').hidden = true;
    toast(r.deploy === 'failed' ? `${done} Der Upload ließ sich nicht starten, er folgt beim nächsten Durchlauf.` : done);
    await load();
  } catch (e) {
    toast((e as Error).message, 'error');
    $('[data-sync]').textContent = '';
  } finally {
    busy = false;
    document.body.removeAttribute('aria-busy');
  }
}

// ---------- Zeit ----------

const timeFmt = new Intl.DateTimeFormat('de-DE', { timeZone: TZ, hour: '2-digit', minute: '2-digit' });
const dateFmt = new Intl.DateTimeFormat('de-DE', { timeZone: TZ, weekday: 'short', day: '2-digit', month: '2-digit' });
const longFmt = new Intl.DateTimeFormat('de-DE', { timeZone: TZ, weekday: 'short', day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit' });
const dayOf = (f: Fact) => (f.at ? berlinDay(new Date(f.at)) : null);
const noon = (day: string) => new Date(`${day}T12:00:00Z`);
const dayLabel = (day: string) => dateFmt.format(noon(day));
/** Zeitpunkt eines Slots als Date (deutsche Zeit, Sommer- und Winterzeit richtig). */
const slotDate = (day: string, time: string) => new Date(berlinTime(day, time));
function isoWeek(day: string) {
  const d = noon(day);
  d.setUTCDate(d.getUTCDate() + 3 - ((d.getUTCDay() + 6) % 7));
  const jan4 = new Date(Date.UTC(d.getUTCFullYear(), 0, 4));
  return 1 + Math.round(((d.getTime() - jan4.getTime()) / 86_400_000 - 3 + ((jan4.getUTCDay() + 6) % 7)) / 7);
}

// ---------- Karten ----------

// Feiertags-Fakten sind fest auf ihren Feiertag gelegt (src/data/holidays.ts), die API lehnt Umplanen ab.
// Seit 2026-10-21 auch die Türchen-Fakten des Adventskalenders (src/data/advent.ts).
const ADVENT_KEYS = new Set(doorKeys());
const fixedHoliday = (f: Fact) => f.category === 'holiday' || ADVENT_KEYS.has(f.key);
const movable = (f: Fact) => !fixedHoliday(f) && (f.status === 'pool' || f.status === 'planned' || f.status === 'offline');

function factCard(f: Fact, opts: { removable?: boolean } = {}) {
  const li = document.createElement('li');
  li.className = 'fact';
  li.dataset.key = f.key;
  li.dataset.status = f.status;
  if (movable(f)) {
    li.draggable = true;
    li.addEventListener('dragstart', (e) => {
      e.dataTransfer!.setData('text/plain', f.key);
      e.dataTransfer!.effectAllowed = 'move';
    });
  }
  li.setAttribute('aria-selected', String(selected === f.key));
  const emoji = document.createElement('span');
  emoji.className = `fact-emoji cat-${f.category}`;
  emoji.textContent = f.emoji;
  emoji.setAttribute('aria-hidden', 'true');
  const pick = document.createElement('button');
  pick.type = 'button';
  pick.className = 'fact-pick';
  const title = document.createElement('span');
  title.className = 'fact-title';
  title.textContent = f.title;
  const meta = document.createElement('span');
  meta.className = 'fact-meta';
  const bits = [CATS[f.category] ?? f.category];
  if (f.status === 'live' || f.status === 'due') bits.push(`${STATUS_LABEL[f.status]} ${f.at ? timeFmt.format(new Date(f.at)) : ''}`.trim());
  if (f.like || f.meh) bits.push(`👍 ${f.like} · 👎 ${f.meh}`);
  meta.textContent = bits.join(' · ');
  pick.title = f.hook ?? f.title;
  pick.append(title, meta);
  if (movable(f)) {
    pick.setAttribute('aria-label', `${f.title} auswählen, dann einen Slot wählen`);
    pick.addEventListener('click', () => select(selected === f.key ? null : f.key));
  } else if (f.slug && state) {
    pick.addEventListener('click', () => window.open(`${state!.site}/de/${f.slug}/`, '_blank', 'noopener'));
  }
  li.append(emoji, pick);
  if (opts.removable && f.status === 'planned') {
    const x = document.createElement('button');
    x.type = 'button';
    x.className = 'fact-x';
    x.textContent = '×';
    x.setAttribute('aria-label', `${f.title} zurück in den Pool`);
    x.addEventListener('click', () => act('unschedule', { key: f.key }, `„${f.title}“ ist zurück im Pool.`));
    li.append(x);
  }
  return li;
}

function select(key: string | null) {
  selected = key;
  const f = state?.facts.find((x) => x.key === key);
  const s = $('[data-selected]');
  s.hidden = !f;
  s.textContent = f ? `Ausgewählt: ${f.title}. Jetzt einen Slot wählen.` : '';
  render();
}

// ---------- Ablegen ----------

function dropZone(el: HTMLElement, onDrop: (key: string) => void) {
  el.addEventListener('dragover', (e) => {
    e.preventDefault();
    e.dataTransfer!.dropEffect = 'move';
    el.dataset.over = 'true';
  });
  el.addEventListener('dragleave', (e) => {
    if (!el.contains(e.relatedTarget as Node)) delete el.dataset.over;
  });
  el.addEventListener('drop', (e) => {
    e.preventDefault();
    delete el.dataset.over;
    const key = e.dataTransfer!.getData('text/plain');
    if (key) onDrop(key);
  });
}

function scheduleSlot(key: string, day: string, slot: number) {
  const f = state!.facts.find((x) => x.key === key);
  if (!f) return;
  const time = state!.slots[slot - 1];
  act('schedule', { key, day, slot }, `„${f.title}“ ist für ${dayLabel(day)} um ${time} Uhr eingeplant.`);
}

let specialFor: { key: string; day: string } | null = null;
function openSpecial(key: string, day: string) {
  const f = state!.facts.find((x) => x.key === key);
  if (!f) return;
  specialFor = { key, day };
  $('[data-special-title]').textContent = f.title;
  $('[data-special-day]').textContent = dayLabel(day);
  const input = $<HTMLInputElement>('[data-special-time]');
  // Vorschlag: nächste volle Stunde, an einem späteren Tag 10 Uhr
  const next = new Date(Date.now() + 3_600_000);
  input.value = day === berlinDay() ? `${timeFmt.format(next).slice(0, 2)}:00` : '10:00';
  $('[data-special-now]').hidden = day !== berlinDay();
  $('[data-special-error]').hidden = true;
  $<HTMLDialogElement>('[data-special]').showModal();
}

// ---------- Anzeige ----------

function render() {
  if (!state) return;
  renderPrs();
  renderHome();
  renderPool();
  renderWeek();
  renderAll();
}

function renderPrs() {
  const ul = $('[data-prs]');
  ul.replaceChildren(
    ...state!.prs.map((p) => {
      const li = document.createElement('li');
      li.className = 'card accent';
      const text = document.createElement('span');
      text.textContent = p.branch.startsWith('woche/') ? `Neue Fakten für die Woche warten: ${p.title}` : `Offener Fakten-PR: ${p.title}`;
      const link = document.createElement('a');
      link.href = p.url;
      link.target = '_blank';
      link.rel = 'noopener';
      link.textContent = `PR #${p.number} ansehen`;
      const btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'btn btn--ghost btn-sm';
      btn.textContent = 'In den Pool übernehmen';
      btn.addEventListener('click', () => act('merge', { number: p.number }, `PR #${p.number} ist übernommen. Die neuen Fakten liegen im Pool.`));
      li.append(text, link, btn);
      return li;
    }),
  );
}

function renderPool() {
  const q = $<HTMLInputElement>('[data-pool-search]').value.trim().toLowerCase();
  const pool = state!.facts.filter((f) => f.status === 'pool');
  const shown = pool.filter((f) => !q || `${f.title} ${f.key} ${CATS[f.category]}`.toLowerCase().includes(q));
  $('[data-pool-count]').textContent = `(${pool.length})`;
  $('[data-pool]').replaceChildren(...shown.map((f) => factCard(f)));
  $('[data-pool-empty]').hidden = pool.length > 0;
}

function renderWeek() {
  const now = new Date(state!.now);
  const today = berlinDay(now);
  const end = addDays(weekStart, 6);
  $('[data-week-label]').textContent = `KW ${isoWeek(weekStart)} · ${dateFmt.format(noon(weekStart)).replace(/^\w+\.?,?\s*/, '')} bis ${dateFmt.format(noon(end)).replace(/^\w+\.?,?\s*/, '')}`;
  const byDay = new Map<string, Fact[]>();
  for (const f of state!.facts) {
    const d = dayOf(f);
    if (!d || d < weekStart || d > end) continue;
    byDay.set(d, [...(byDay.get(d) ?? []), f]);
  }
  const days = Array.from({ length: 7 }, (_, i) => addDays(weekStart, i)).map((day) => {
    const li = document.createElement('li');
    li.className = 'day card';
    if (day === today) li.setAttribute('aria-current', 'date');
    const head = document.createElement('h3');
    head.className = 'day-head';
    head.textContent = dayLabel(day);
    li.append(head);
    const facts = byDay.get(day) ?? [];
    const used = new Set<string>();
    state!.slots.forEach((time, i) => {
      const slot = i + 1;
      const box = document.createElement('div');
      box.className = 'slot';
      const past = slotDate(day, time) <= now;
      box.dataset.past = String(past);
      const label = document.createElement('span');
      label.className = 'slot-time';
      label.textContent = `${time} Uhr`;
      box.append(label);
      const here = facts.filter((f) => f.slot === slot && !used.has(f.key));
      here.forEach((f) => used.add(f.key));
      if (here.length) {
        const ul = document.createElement('ul');
        ul.className = 'fact-list';
        ul.append(...here.map((f) => factCard(f, { removable: true })));
        box.append(ul);
      }
      if (!past) {
        box.dataset.drop = 'slot';
        dropZone(box, (key) => scheduleSlot(key, day, slot));
        if (selected && !here.some((f) => f.key === selected)) {
          const b = document.createElement('button');
          b.type = 'button';
          b.className = 'slot-place';
          b.textContent = here.length ? 'Hierher (tauschen)' : 'Hierher';
          b.addEventListener('click', () => scheduleSlot(selected!, day, slot));
          box.append(b);
        }
      } else if (!here.length) {
        const empty = document.createElement('span');
        empty.className = 'fact-meta';
        empty.textContent = 'leer geblieben';
        box.append(empty);
      }
      li.append(box);
    });
    // Sonderveröffentlichungen und ältere Fakten ohne Slot
    const extra = document.createElement('div');
    extra.className = 'slot extra';
    const label = document.createElement('span');
    label.className = 'slot-time';
    label.textContent = 'Sonder';
    label.title = 'Sonderveröffentlichung: zusätzlicher Fakt zu einer freien Uhrzeit';
    extra.append(label);
    const rest = facts.filter((f) => !used.has(f.key)).sort((a, b) => (a.at ?? '').localeCompare(b.at ?? ''));
    if (rest.length) {
      const ul = document.createElement('ul');
      ul.className = 'fact-list';
      ul.append(
        ...rest.map((f) => {
          const card = factCard(f, { removable: true });
          const meta = card.querySelector('.fact-meta')!;
          if (f.at && f.status !== 'live' && f.status !== 'due') meta.textContent = `${timeFmt.format(new Date(f.at))} Uhr · ${meta.textContent}`;
          return card;
        }),
      );
      extra.append(ul);
    }
    const endOfDay = slotDate(day, '23:59');
    if (endOfDay > now) {
      extra.dataset.drop = 'extra';
      dropZone(extra, (key) => openSpecial(key, day));
      const b = document.createElement('button');
      b.type = 'button';
      b.className = 'slot-place';
      b.textContent = selected ? 'Hierher, Uhrzeit wählen' : '+ Zusätzlicher Fakt';
      b.hidden = !selected;
      b.addEventListener('click', () => selected && openSpecial(selected, day));
      extra.append(b);
    }
    li.append(extra);
    return li;
  });
  $('[data-days]').replaceChildren(...days);
}

// ---------- Übersicht ----------

function el<K extends keyof HTMLElementTagNameMap>(tag: K, cls = '', text?: string) {
  const e = document.createElement(tag);
  if (cls) e.className = cls;
  if (text !== undefined) e.textContent = text;
  return e;
}
const n0 = new Intl.NumberFormat('de-DE');
const pct = (like: number, meh: number) => (like + meh ? Math.round((like / (like + meh)) * 100) : null);
const isLive = (f: Fact) => f.status === 'live' || f.status === 'due';
const factLink = (f: Fact) => {
  const a = el(f.slug ? 'a' : 'span', 'r-title', f.title);
  if (a instanceof HTMLAnchorElement) {
    a.href = `${state!.site}/de/${f.slug}/`;
    a.target = '_blank';
    a.rel = 'noopener';
  }
  return a;
};
function rankItem(f: Fact, meta: string) {
  const li = el('li');
  const emoji = el('span', `fact-emoji cat-${f.category}`, f.emoji);
  emoji.setAttribute('aria-hidden', 'true');
  const text = el('div', 'r-text');
  text.append(factLink(f), el('div', 'r-meta', meta));
  li.append(emoji, text);
  return li;
}
function hbar(name: string, share: number, value: string, fillCls: string, title: string) {
  const li = el('li');
  li.title = title;
  const track = el('span', 'hb-track');
  const fill = el('span', `hb-fill ${fillCls}`);
  fill.style.width = `${Math.max(0, Math.min(1, share)) * 100}%`;
  track.append(fill);
  const val = el('span', 'hb-val');
  val.innerHTML = value;
  li.append(el('span', 'hb-name', name), track, val);
  return li;
}
/** Säulen mit Beschriftung darunter; Zahl über der Säule nur am höchsten Wert, sonst im Tooltip. */
function columns(box: HTMLElement, items: { label: string; value: number; title: string }[]) {
  const max = Math.max(1, ...items.map((i) => i.value));
  const top = items.reduce((m, i, k) => (i.value > items[m].value ? k : m), 0);
  box.replaceChildren(
    ...items.map((i, k) => {
      const col = el('div', 'col');
      col.title = i.title;
      const bar = el('div', `col-bar${i.value ? '' : ' empty'}`);
      bar.style.height = `${(i.value / max) * 82}%`;
      col.append(el('span', 'col-val', k === top && i.value ? n0.format(i.value) : ''), bar);
      return col;
    }),
  );
  const axis = el('div', 'axis');
  axis.append(...items.map((i) => el('span', 'axis-label', i.label)));
  box.nextElementSibling?.classList.contains('axis') ? box.nextElementSibling.replaceWith(axis) : box.after(axis);
  box.setAttribute('aria-label', items.map((i) => i.title).join('; '));
}

/** 3D-Teile der Übersicht (src/scripts/steuerung-3d.ts, erst bei Bedarf geladen): Fakten-Orbit in der Bühne, Säulen „Bewertungen pro Tag“.
 *  Ohne WebGL oder wenn das Laden scheitert, bleibt die Bühne leer und das 2D-Diagramm stehen. */
function scenes3d(st: State, today: string, nowMs: number, days: { label: string; title: string; day: string }[]) {
  const when = (f: Fact) => `${dayLabel(dayOf(f)!)}, ${timeFmt.format(new Date(f.at!))} Uhr`;
  const coming = st.facts
    .filter((f) => f.status === 'planned' && f.at && Date.parse(f.at) > nowMs && dayOf(f)! < addDays(today, 7))
    .sort((a, b) => a.at!.localeCompare(b.at!));
  const moons = coming.map((f, i) => ({
    ring: f.slot && f.slot > 0 ? f.slot - 1 : 3,
    day: Math.round((noon(dayOf(f)!).getTime() - noon(today).getTime()) / 86_400_000),
    category: f.category,
    label: `${when(f)}: ${f.title}`,
    next: i === 0,
  }));
  const pool = st.facts.filter((f) => f.status === 'pool').map((f) => ({ category: f.category, label: `Pool: ${f.title}` }));
  const legend = `Bahnen von innen: ${st.slots.join(' · ')} Uhr · Sonder. Würfel = Pool, Sterne = live`;
  const blocks = days.map((d) => ({ ...d, ...(st.stats?.days[d.day] ?? { like: 0, meh: 0 }) }));
  import('./steuerung-3d')
    .then((m) => {
      const orbitBox = $('[data-orbit]');
      orbitBox.hidden = !m.orbit(orbitBox, { moons, pool, live: st.facts.filter(isLive).length, legend }, () => showTab('plan'));
      const box3d = $('[data-day-3d]');
      const on = blocks.length > 0 && m.dayBlocks(box3d, blocks);
      box3d.hidden = !on;
      box3d.closest('.panel')!.classList.toggle('is-3d', on);
      if (on) box3d.setAttribute('aria-label', $('[data-day-chart]').getAttribute('aria-label') ?? '');
    })
    .catch(() => {
      /* 3D nicht ladbar: 2D bleibt */
    });
}

let nextAt: number | null = null;
function tick() {
  const c = $('[data-next-clock]');
  if (nextAt === null) {
    c.textContent = '–';
    return;
  }
  const left = Math.max(0, nextAt - Date.now());
  const d = Math.floor(left / 86_400_000);
  const hms = new Date(left).toISOString().slice(11, 19);
  c.textContent = d ? `${d} T ${hms}` : hms;
}

function renderHome() {
  const st = state!;
  const now = new Date(st.now);
  const nowMs = now.getTime();
  const today = berlinDay(now);
  const facts = st.facts;
  const live = facts.filter(isLive);
  const pool = facts.filter((f) => f.status === 'pool');
  const planned = facts.filter((f) => f.status === 'planned' && f.at).sort((a, b) => a.at!.localeCompare(b.at!));
  const stats = st.stats;

  // Begrüßung nach deutscher Uhrzeit
  const hour = Number(new Intl.DateTimeFormat('de-DE', { timeZone: TZ, hour: '2-digit', hourCycle: 'h23' }).format(now));
  $('[data-hello]').textContent = `${hour < 11 ? 'Guten Morgen' : hour < 18 ? 'Hallo' : 'Guten Abend'}, Eric`;

  // Nächster geplanter Fakt
  const next = planned.find((f) => Date.parse(f.at!) > nowMs);
  nextAt = next ? Date.parse(next.at!) : null;
  $('[data-next-title]').textContent = next ? `${dayLabel(dayOf(next)!)}, ${timeFmt.format(new Date(next.at!))} Uhr: ${next.title}` : 'Nichts eingeplant. Zieh Fakten aus dem Pool in die Wochenplanung.';
  tick();

  // Wie lange reicht der Vorrat? Ab dem nächsten Slot jeden Slot füllen: erst mit Geplantem, sonst aus dem Pool.
  const taken = new Set(planned.map((f) => `${dayOf(f)}|${f.slot}`));
  const lastPlanned = planned.length ? dayOf(planned[planned.length - 1])! : today;
  let left = pool.length;
  let lastDay: string | null = null;
  for (let i = 0; i < 400; i++) {
    const day = addDays(today, i);
    if (left === 0 && day > lastPlanned) break;
    st.slots.forEach((time, k) => {
      if (slotDate(day, time).getTime() <= nowMs) return;
      if (taken.has(`${day}|${k + 1}`)) lastDay = day;
      else if (left > 0) {
        left--;
        lastDay = day;
      }
    });
  }
  const until = $('[data-pool-until]');
  const untilNote = $('[data-pool-note]');
  if (!lastDay) {
    until.textContent = 'leer';
    untilNote.textContent = 'Keine Fakten mehr im Pool oder eingeplant.';
  } else {
    const days = Math.round((noon(lastDay).getTime() - noon(today).getTime()) / 86_400_000);
    until.textContent = dayLabel(lastDay);
    untilNote.textContent = `${days === 0 ? 'Nur noch heute' : `Noch ${days} ${days === 1 ? 'Tag' : 'Tage'}`} bei ${st.slots.length} Fakten am Tag (${pool.length} im Pool, ${planned.length} eingeplant).`;
  }

  // Diese Woche
  const mon = mondayOf(today);
  const sun = addDays(mon, 6);
  const inWeek = facts.filter((f) => {
    const d = dayOf(f);
    return d && d >= mon && d <= sun && f.slot && f.slot > 0 && !f.draft;
  }).length;
  const weekSlots = 7 * st.slots.length;

  const likes = live.reduce((a, f) => a + f.like, 0);
  const mehs = live.reduce((a, f) => a + f.meh, 0);
  const share = pct(likes, mehs);
  const summary = [`${n0.format(live.length)} Fakten sind online, ${n0.format(pool.length)} warten im Pool.`];
  summary.push(inWeek >= weekSlots ? 'Diese Woche ist komplett verplant.' : `Diese Woche sind ${inWeek} von ${weekSlots} Slots belegt.`);
  if (st.ratings && likes + mehs) summary.push(`${share} % der Bewertungen sind Daumen hoch.`);
  $('[data-summary]').textContent = summary.join(' ');

  const tiles: { label: string; value: string; note: string; cls?: string }[] = [
    { label: 'Online', value: n0.format(live.length), note: `${facts.filter((f) => f.status === 'offline').length} offline genommen` },
    { label: 'Im Pool', value: n0.format(pool.length), note: pool.length < weekSlots ? 'Reicht keine Woche mehr' : `Reicht für ${Math.floor(pool.length / st.slots.length)} Tage`, cls: pool.length < st.slots.length * 3 ? 'accent' : '' },
    { label: 'Diese Woche', value: `${inWeek}/${weekSlots}`, note: 'Slots belegt' },
  ];
  if (st.ratings) {
    tiles.push({ label: 'Bewertungen', value: n0.format(stats?.ratings ?? likes + mehs), note: `👍 ${n0.format(likes)} · 👎 ${n0.format(mehs)}` });
    tiles.push({ label: 'Daumen hoch', value: share === null ? '–' : `${share} %`, note: 'Anteil aller Bewertungen' });
  }
  if (stats) {
    tiles.push({ label: 'Bewertende', value: n0.format(stats.voters), note: `${n0.format(stats.voters7)} in den letzten 7 Tagen` });
    const last = stats.polls[0];
    if (last) tiles.push({ label: 'Letzte Abstimmung', value: n0.format(last.n), note: `Stimmen, Woche ab ${dayLabel(last.poll)}` });
  }
  $('[data-tiles]').replaceChildren(
    ...tiles.map((t) => {
      const li = el('li', `card tile ${t.cls ?? ''}`.trim());
      li.append(el('span', 'tile-label', t.label), el('span', 'tile-value', t.value), el('span', 'tile-note', t.note));
      return li;
    }),
  );

  // Bewertungen der letzten 14 Tage (Tag nach UTC wie in der Datenbank)
  const dayBox = $('[data-day-chart]');
  const dayItems = Array.from({ length: 14 }, (_, i) => addDays(today, i - 13)).map((d) => {
    const r = stats?.days[d] ?? { like: 0, meh: 0 };
    const total = r.like + r.meh;
    return { day: d, label: d === today ? 'heute' : d.slice(8, 10) + '.', value: total, title: `${dayLabel(d)}: ${total} Bewertungen (👍 ${r.like} · 👎 ${r.meh})` };
  });
  const anyDay = dayItems.some((i) => i.value);
  dayBox.hidden = !anyDay;
  if (anyDay) columns(dayBox, dayItems);
  else dayBox.nextElementSibling?.classList.contains('axis') && dayBox.nextElementSibling.remove();
  $('[data-day-empty]').hidden = anyDay;
  scenes3d(st, today, nowMs, anyDay ? dayItems : []);

  // Die nächsten 7 Tage
  $('[data-coming]').replaceChildren(
    ...Array.from({ length: 7 }, (_, i) => addDays(today, i)).map((day, i) => {
      const here = facts.filter((f) => dayOf(f) === day && !f.draft);
      const li = el('li');
      const b = el('button');
      b.type = 'button';
      const dots = el('span', 'c-slots');
      st.slots.forEach((time, k) => {
        const f = here.find((x) => x.slot === k + 1);
        const past = slotDate(day, time).getTime() <= nowMs;
        const dot = el('span', `c-dot${f ? ' on' : ''}${past && !f ? ' past' : ''}`, f ? '✓' : '');
        dot.title = `${time} Uhr: ${f ? f.title : past ? 'leer geblieben' : 'frei'}`;
        dots.append(dot);
      });
      const extra = here.filter((f) => !f.slot).length;
      const free = st.slots.filter((time, k) => !here.some((x) => x.slot === k + 1) && slotDate(day, time).getTime() > nowMs).length;
      b.append(el('span', 'c-day', i === 0 ? 'Heute' : i === 1 ? 'Morgen' : dayLabel(day)), dots, el('span', 'c-extra', [free ? `${free} frei` : 'voll', extra ? `+${extra} Sonder` : ''].filter(Boolean).join(' · ')));
      b.setAttribute('aria-label', `${dayLabel(day)}: ${dots.childElementCount - free} von ${st.slots.length} Slots belegt. Wochenplanung öffnen.`);
      b.addEventListener('click', () => {
        weekStart = mondayOf(day);
        renderWeek();
        showTab('plan');
      });
      li.append(b);
      return li;
    }),
  );

  // Kategorien: Anzahl online, Balkenlänge = Anzahl, dahinter Anteil Daumen hoch
  const byCat = Object.keys(CATS)
    .map((c) => {
      const fs = live.filter((f) => f.category === c);
      return { c, n: fs.length, like: fs.reduce((a, f) => a + f.like, 0), meh: fs.reduce((a, f) => a + f.meh, 0), pool: pool.filter((f) => f.category === c).length };
    })
    .filter((x) => x.n || x.pool)
    .sort((a, b) => b.n - a.n);
  const maxCat = Math.max(1, ...byCat.map((x) => x.n));
  $('[data-cat-chart]').replaceChildren(
    ...byCat.map((x) => {
      const p = pct(x.like, x.meh);
      return hbar(CATS[x.c], x.n / maxCat, `<b>${x.n}</b>${p === null ? '' : ` · ${p} % 👍`}`, `cat-${x.c}`, `${CATS[x.c]}: ${x.n} online, ${x.pool} im Pool${p === null ? '' : `, ${p} % Daumen hoch aus ${x.like + x.meh} Bewertungen`}`);
    }),
  );

  // Uhrzeiten: Bewertungen je Fakt nach Slot
  // Fakten von vor dem Dashboard haben keinen Slot: eigene Zeile, damit sie die Uhrzeiten nicht verfälschen.
  const groups = [...st.slots.map((t, k) => ({ name: `${t} Uhr`, slot: (k + 1) as number | null })), { name: 'Sonder', slot: 0 }, { name: 'Ältere', slot: null }]
    .map((g) => {
      const fs = live.filter((f) => f.slot === g.slot);
      const like = fs.reduce((a, f) => a + f.like, 0);
      const meh = fs.reduce((a, f) => a + f.meh, 0);
      return { ...g, n: fs.length, like, meh, per: fs.length ? (like + meh) / fs.length : 0 };
    })
    .filter((g) => g.n);
  const maxPer = Math.max(0.0001, ...groups.map((g) => g.per));
  const per1 = new Intl.NumberFormat('de-DE', { maximumFractionDigits: 1 });
  $('[data-slot-chart]').replaceChildren(
    ...groups.map((g) => {
      const p = pct(g.like, g.meh);
      return hbar(g.name, g.per / maxPer, `<b>${per1.format(g.per)}</b> je Fakt${p === null ? '' : ` · ${p} % 👍`}`, 'accent', `${g.slot === null ? 'Ältere Fakten ohne feste Uhrzeit' : g.name}: ${g.n} Fakten, ${g.like + g.meh} Bewertungen`);
    }),
  );
  $('[data-slot-empty]').hidden = groups.some((g) => g.slot) && st.ratings;
  $('[data-slot-chart]').hidden = !groups.length || !st.ratings;

  // Ranglisten
  const rated = live.filter((f) => f.like + f.meh > 0);
  const top = [...rated].sort((a, b) => b.like - b.meh - (a.like - a.meh) || b.like - a.like).slice(0, 5);
  $('[data-top]').replaceChildren(...top.map((f) => rankItem(f, `👍 ${f.like} · 👎 ${f.meh} · ${CATS[f.category] ?? f.category}`)));
  $('[data-top-empty]').hidden = top.length > 0;
  const flop = live
    .filter((f) => f.like + f.meh >= 3)
    .sort((a, b) => b.meh / (b.like + b.meh) - a.meh / (a.like + a.meh) || b.meh - a.meh)
    .filter((f) => f.meh > 0)
    .slice(0, 5);
  $('[data-flop]').replaceChildren(...flop.map((f) => rankItem(f, `${pct(f.like, f.meh)} % 👍 aus ${f.like + f.meh} · ${CATS[f.category] ?? f.category}`)));
  $('[data-flop-empty]').hidden = flop.length > 0;
  const latest = [...live].filter((f) => f.at).sort((a, b) => b.at!.localeCompare(a.at!)).slice(0, 5);
  $('[data-latest]').replaceChildren(...latest.map((f) => rankItem(f, `${dayLabel(dayOf(f)!)}, ${timeFmt.format(new Date(f.at!))} Uhr · 👍 ${f.like} · 👎 ${f.meh}`)));

  // Montags-Abstimmungen, älteste links
  const polls = [...(stats?.polls ?? [])].reverse();
  const pollBox = $('[data-poll-chart]');
  pollBox.hidden = !polls.length;
  if (polls.length) columns(pollBox, polls.map((p) => ({ label: `KW ${isoWeek(p.poll)}`, value: p.n, title: `Abstimmung ab ${dayLabel(p.poll)}: ${p.n} Stimmen` })));
  $('[data-poll-empty]').hidden = polls.length > 0;
  const statsNote = $('[data-stats-note]');
  statsNote.hidden = !!stats;
  if (!stats) statsNote.textContent = `Bewertungen und Stimmen sind gerade nicht lesbar${st.ratingsWhy ? ` (${st.ratingsWhy})` : ''}.`;
}

let statusFilter = '';
function renderAll() {
  const q = $<HTMLInputElement>('[data-all-search]').value.trim().toLowerCase();
  const cat = $<HTMLSelectElement>('[data-all-cat]').value;
  const sort = $<HTMLSelectElement>('[data-all-sort]').value;
  let rows = state!.facts.filter(
    (f) =>
      (!statusFilter || f.status === statusFilter || (statusFilter === 'live' && f.status === 'due')) &&
      (!cat || f.category === cat) &&
      (!q || `${f.title} ${f.titleEn ?? ''} ${f.key}`.toLowerCase().includes(q)),
  );
  if (sort === 'score') rows = [...rows].sort((a, b) => b.like - b.meh - (a.like - a.meh) || b.like - a.like);
  if (sort === 'votes') rows = [...rows].sort((a, b) => b.like + b.meh - (a.like + a.meh));
  const note = $('[data-ratings-note]');
  note.hidden = state!.ratings;
  if (!state!.ratings) note.textContent = `Bewertungen sind gerade nicht lesbar, deshalb stehen überall 0${state!.ratingsWhy ? ` (${state!.ratingsWhy})` : ''}.`;
  $('[data-all-count]').textContent = `${rows.length} von ${state!.facts.length} Fakten`;
  $('[data-rows]').replaceChildren(...rows.map(row));
}

function actionBtn(label: string, onClick: () => void, cls = 'btn--ghost') {
  const b = document.createElement('button');
  b.type = 'button';
  b.className = `btn ${cls} btn-sm`;
  b.textContent = label;
  b.addEventListener('click', onClick);
  return b;
}

function row(f: Fact) {
  const tr = document.createElement('tr');
  const td = () => tr.appendChild(document.createElement('td'));
  const c1 = td();
  const wrap = document.createElement('div');
  wrap.className = 'cell-fact';
  const emoji = document.createElement('span');
  emoji.className = `fact-emoji cat-${f.category}`;
  emoji.textContent = f.emoji;
  emoji.setAttribute('aria-hidden', 'true');
  const text = document.createElement('div');
  const title = document.createElement(f.status === 'live' && f.slug ? 'a' : 'strong');
  title.textContent = f.title;
  if (title instanceof HTMLAnchorElement) {
    title.href = `${state!.site}/de/${f.slug}/`;
    title.target = '_blank';
    title.rel = 'noopener';
  }
  const meta = document.createElement('div');
  meta.className = 'fact-meta';
  meta.textContent = `${CATS[f.category] ?? f.category} · ${f.key}`;
  text.append(title, meta);
  wrap.append(emoji, text);
  c1.append(wrap);
  const st = document.createElement('span');
  st.className = `st st-${f.status}`;
  st.textContent = STATUS_LABEL[f.status];
  td().append(st);
  td().textContent = f.at ? longFmt.format(new Date(f.at)) + (f.slot ? ` · Slot ${f.slot}` : f.slot === 0 ? ' · Sonder' : '') : '–';
  const like = td();
  like.className = 'num';
  like.textContent = String(f.like);
  const meh = td();
  meh.className = 'num';
  meh.textContent = String(f.meh);
  const actions = document.createElement('div');
  actions.className = 'cell-actions';
  if ((f.status === 'pool' || f.status === 'planned') && !fixedHoliday(f)) {
    actions.append(
      actionBtn('Sofort veröffentlichen', () => confirm(`„${f.title}“ jetzt veröffentlichen?`) && act('publish-now', { key: f.key }, `„${f.title}“ wird jetzt veröffentlicht.`), 'btn--lime'),
    );
  }
  if (f.status === 'planned' && !fixedHoliday(f)) actions.append(actionBtn('In den Pool', () => act('unschedule', { key: f.key }, `„${f.title}“ ist zurück im Pool.`)));
  if (f.status === 'live' || f.status === 'due')
    actions.append(actionBtn('Offline nehmen', () => confirm(`„${f.title}“ von der Seite nehmen?`) && act('draft', { key: f.key, draft: true }, `„${f.title}“ wird von der Seite genommen.`)));
  if (f.status === 'offline') actions.append(actionBtn('Wieder online', () => act('draft', { key: f.key, draft: false }, `„${f.title}“ kommt wieder auf die Seite.`)));
  if (f.status === 'pool' || f.status === 'offline')
    actions.append(actionBtn('Löschen', () => confirm(`„${f.title}“ endgültig löschen?`) && act('delete', { key: f.key }, `„${f.title}“ ist gelöscht.`), 'btn--pink'));
  td().append(actions);
  return tr;
}

// ---------- Ansichten ----------

function showLogin() {
  $('[data-view="app"]').hidden = true;
  $('[data-view="login"]').hidden = false;
  $<HTMLInputElement>('[data-login] input[name="user"]').focus();
}

function showApp() {
  $('[data-view="login"]').hidden = true;
  $('[data-view="app"]').hidden = false;
  load();
}

$('[data-login]').addEventListener('submit', async (e) => {
  e.preventDefault();
  const form = e.target as HTMLFormElement;
  const err = $('[data-login-error]');
  err.hidden = true;
  try {
    const r = await api<{ csrf: string }>('login', { user: form.user.value, password: form.password.value });
    csrf = r.csrf;
    form.password.value = '';
    showApp();
  } catch (x) {
    err.textContent = (x as Error).message;
    err.hidden = false;
  }
});

$('[data-logout]').addEventListener('click', async () => {
  await api('logout', {}).catch(() => {});
  csrf = '';
  state = null;
  showLogin();
});

$('[data-refresh]').addEventListener('click', () => load(true));

// Bereiche: Übersicht, Veröffentlichungen, Alle Fakten. Der gewählte Bereich steht in der Adresse (#planung …).
const TABS: Record<string, string> = { home: 'uebersicht', plan: 'planung', all: 'fakten' };
function showTab(tab: string, push = true) {
  if (!TABS[tab]) tab = 'home';
  for (const o of $$<HTMLButtonElement>('[data-tab-btn]')) o.setAttribute('aria-pressed', String(o.dataset.tabBtn === tab));
  for (const s of $$('[data-tab]')) s.hidden = s.dataset.tab !== tab;
  if (push && location.hash !== `#${TABS[tab]}`) history.pushState(null, '', `#${TABS[tab]}`);
  scrollTo({ top: 0 });
}
const tabFromHash = () => Object.keys(TABS).find((k) => `#${TABS[k]}` === location.hash) ?? 'home';
for (const b of $$<HTMLElement>('[data-tab-btn], [data-goto]')) {
  b.addEventListener('click', (e) => {
    e.preventDefault();
    showTab(b.dataset.tabBtn ?? b.dataset.goto!);
  });
}
addEventListener('popstate', () => showTab(tabFromHash(), false));
showTab(tabFromHash(), false);

// Hell/dunkel wie auf der Hauptseite (gleicher Speicher wtfact-theme)
const themeBtn = $<HTMLButtonElement>('[data-theme-toggle]');
const isDark = () => (document.documentElement.dataset.theme ?? (matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light')) === 'dark';
const syncTheme = () => {
  const dark = isDark();
  themeBtn.setAttribute('aria-pressed', String(dark));
  themeBtn.title = themeBtn.ariaLabel = dark ? 'Heller Modus' : 'Dunkler Modus';
};
themeBtn.addEventListener('click', () => {
  const next = isDark() ? 'light' : 'dark';
  document.documentElement.dataset.theme = next;
  try {
    localStorage.setItem('wtfact-theme', next);
  } catch {
    /* privates Fenster: gilt nur bis zum Neuladen */
  }
  dispatchEvent(new Event('wtfact-theme'));
  syncTheme();
});
syncTheme();

for (const b of $$<HTMLButtonElement>('[data-week]')) {
  b.addEventListener('click', () => {
    const n = Number(b.dataset.week);
    weekStart = n === 0 ? mondayOf(berlinDay()) : addDays(weekStart, 7 * n);
    renderWeek();
  });
}

for (const b of $$<HTMLButtonElement>('[data-status-filter]')) {
  b.addEventListener('click', () => {
    statusFilter = b.dataset.statusFilter ?? '';
    for (const o of $$<HTMLButtonElement>('[data-status-filter]')) o.setAttribute('aria-pressed', String(o === b));
    renderAll();
  });
}
$('[data-pool-search]').addEventListener('input', () => state && renderPool());
for (const sel of ['[data-all-search]', '[data-all-cat]', '[data-all-sort]']) $(sel).addEventListener('input', () => state && renderAll());

// Pool: zurücklegen per Ziehen
dropZone($('[data-drop="pool"]'), (key) => {
  const f = state?.facts.find((x) => x.key === key);
  if (f && f.status !== 'pool') act('unschedule', { key }, `„${f.title}“ ist zurück im Pool.`);
});

// Dialog für Sonderveröffentlichungen
const dialog = $<HTMLDialogElement>('[data-special]');
$('[data-special-form]').addEventListener('submit', (e) => {
  e.preventDefault();
  if (!specialFor) return;
  const time = $<HTMLInputElement>('[data-special-time]').value;
  if (slotDate(specialFor.day, time) <= new Date()) {
    const err = $('[data-special-error]');
    err.textContent = ERRORS.past;
    err.hidden = false;
    return;
  }
  const { key, day } = specialFor;
  const f = state!.facts.find((x) => x.key === key)!;
  dialog.close();
  act('schedule', { key, day, slot: 0, time }, `„${f.title}“ erscheint zusätzlich am ${dayLabel(day)} um ${time} Uhr.`);
});
$('[data-special-now]').addEventListener('click', () => {
  if (!specialFor) return;
  const f = state!.facts.find((x) => x.key === specialFor!.key)!;
  dialog.close();
  act('publish-now', { key: f.key }, `„${f.title}“ wird jetzt veröffentlicht.`);
});
$('[data-special-cancel]').addEventListener('click', () => dialog.close());

addEventListener('keydown', (e) => {
  if (e.key === 'Escape' && selected && !dialog.open) select(null);
});

setInterval(tick, 1000);

// Alle 60 Sekunden auffrischen (Zustand „Wird veröffentlicht“ → „Live“), nicht während einer Änderung.
setInterval(() => {
  if (state && !busy && !dialog.open && document.visibilityState === 'visible') load();
}, 60_000);

api<{ user: string | null; csrf?: string }>('session')
  .then((s) => {
    if (s.user && s.csrf) {
      csrf = s.csrf;
      showApp();
    } else showLogin();
  })
  .catch((e) => {
    showLogin();
    const err = $('[data-login-error]');
    err.textContent = (e as Error).message;
    err.hidden = false;
  });
