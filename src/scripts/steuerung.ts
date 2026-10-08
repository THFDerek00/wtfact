// Browser-Teil des Dashboards (steuerung.wtfact.xyz). Oberfläche: src/pages/steuerung/index.astro,
// Server: steuerung/api.php. Alle Zeiten in deutscher Zeit (Europe/Berlin).
import { berlinDay, addDays, mondayOf, TZ } from '../week';

type Status = 'pool' | 'planned' | 'due' | 'live' | 'offline';
type Fact = {
  key: string; date: string | null; at: string | null; slot: number | null; draft: boolean; status: Status;
  category: string; emoji: string; title: string; titleEn: string | null; teaser: string | null; hook: string | null;
  slug: string | null; like: number; meh: number;
};
type Pr = { number: number; title: string; url: string; branch: string; draft: boolean };
type State = {
  now: string; slots: string[]; facts: Fact[]; ratings: boolean; liveKnown: boolean; prs: Pr[];
  head: string; repo: string; site: string; deploy: string | null;
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
function slotDate(day: string, time: string) {
  const guess = new Date(`${day}T${time}:00Z`);
  const offset = (d: Date) => {
    const p = new Intl.DateTimeFormat('en-US', { timeZone: TZ, timeZoneName: 'longOffset' }).formatToParts(d).find((x) => x.type === 'timeZoneName')!.value;
    const m = p.match(/GMT([+-])(\d\d):(\d\d)/);
    return m ? (m[1] === '-' ? -1 : 1) * (Number(m[2]) * 60 + Number(m[3])) : 0;
  };
  return new Date(guess.getTime() - offset(guess) * 60_000);
}
function isoWeek(day: string) {
  const d = noon(day);
  d.setUTCDate(d.getUTCDate() + 3 - ((d.getUTCDay() + 6) % 7));
  const jan4 = new Date(Date.UTC(d.getUTCFullYear(), 0, 4));
  return 1 + Math.round(((d.getTime() - jan4.getTime()) / 86_400_000 - 3 + ((jan4.getUTCDay() + 6) % 7)) / 7);
}

// ---------- Karten ----------

const movable = (f: Fact) => f.status === 'pool' || f.status === 'planned' || f.status === 'offline';

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
  $('[data-ratings-note]').hidden = state!.ratings;
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
  if (f.status === 'pool' || f.status === 'planned') {
    actions.append(
      actionBtn('Sofort veröffentlichen', () => confirm(`„${f.title}“ jetzt veröffentlichen?`) && act('publish-now', { key: f.key }, `„${f.title}“ wird jetzt veröffentlicht.`), 'btn--lime'),
    );
  }
  if (f.status === 'planned') actions.append(actionBtn('In den Pool', () => act('unschedule', { key: f.key }, `„${f.title}“ ist zurück im Pool.`)));
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

for (const b of $$<HTMLButtonElement>('[data-tab-btn]')) {
  b.addEventListener('click', () => {
    for (const o of $$<HTMLButtonElement>('[data-tab-btn]')) o.setAttribute('aria-pressed', String(o === b));
    for (const s of $$('[data-tab]')) s.hidden = s.dataset.tab !== b.dataset.tabBtn;
  });
}

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
