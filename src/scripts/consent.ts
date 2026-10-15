// Cookie-Einwilligung (Banner: src/components/CookieConsent.astro, Dienste: SITE.consent in src/config.ts).
// Die Wahl liegt nur im Browser (localStorage „wtfact-consent“) und wird nie an uns übertragen.
// Gefragt wird neu, wenn sich die Liste der Dienste ändert oder die Wahl älter als 12 Monate ist.

type Choice = 'all' | 'necessary';
type Services = Partial<Record<'ga4' | 'metaPixel' | 'clarity', string>>;
interface Stored { choice: Choice; services: string; at: number }

const KEY = 'wtfact-consent';
const MAX_AGE = 365 * 24 * 60 * 60 * 1000;
const w = window as unknown as Record<string, any>;

const box = document.querySelector<HTMLElement>('[data-consent]');
const services: Services = box ? JSON.parse(box.dataset.consent ?? '{}') : {};
const signature = Object.keys(services).sort().join(',');

function read(): Stored | null {
  try {
    const s = JSON.parse(localStorage.getItem(KEY) ?? 'null') as Stored | null;
    return s && s.services === signature && Date.now() - s.at < MAX_AGE ? s : null;
  } catch { return null; }
}

function addScript(src: string) {
  const el = document.createElement('script');
  el.async = true;
  el.src = src;
  document.head.append(el);
}

// Amazon-Klicks (Links mit data-umami-event="amazon") auch an die eingewilligten Dienste melden
function onAmazonClick(fn: (fact: string, place: string) => void) {
  document.addEventListener('click', (e) => {
    const a = (e.target as Element | null)?.closest<HTMLElement>('[data-umami-event="amazon"]');
    if (a) fn(a.dataset.umamiEventFact ?? '', a.dataset.umamiEventPlace ?? '');
  });
}

let loaded = false;
function loadServices() {
  if (loaded) return;
  loaded = true;
  if (services.ga4) {
    w.dataLayer = w.dataLayer || [];
    w.gtag = function () { w.dataLayer.push(arguments); };
    // Nur Statistik, keine Werbefunktionen von Google
    w.gtag('consent', 'default', { analytics_storage: 'granted', ad_storage: 'denied', ad_user_data: 'denied', ad_personalization: 'denied' });
    w.gtag('js', new Date());
    w.gtag('config', services.ga4);
    addScript(`https://www.googletagmanager.com/gtag/js?id=${encodeURIComponent(services.ga4)}`);
    onAmazonClick((fact, place) => w.gtag('event', 'amazon_click', { fact, place }));
  }
  if (services.metaPixel) {
    // Offizielles Meta-Pixel-Snippet, entpackt
    const fbq: any = function () { fbq.callMethod ? fbq.callMethod.apply(fbq, arguments) : fbq.queue.push(arguments); };
    if (!w.fbq) {
      w.fbq = w._fbq = fbq;
      fbq.push = fbq; fbq.loaded = true; fbq.version = '2.0'; fbq.queue = [];
      addScript('https://connect.facebook.net/en_US/fbevents.js');
    }
    w.fbq('init', services.metaPixel);
    w.fbq('track', 'PageView');
    onAmazonClick((fact, place) => w.fbq('trackCustom', 'AmazonClick', { fact, place }));
  }
  if (services.clarity) {
    w.clarity = w.clarity || function () { (w.clarity.q = w.clarity.q || []).push(arguments); };
    w.clarity('consentv2', { ad_Storage: 'denied', analytics_Storage: 'granted' });
    addScript(`https://www.clarity.ms/tag/${encodeURIComponent(services.clarity)}`);
  }
}

// Beim Widerruf: Cookies der Dienste löschen (auf wtfact.xyz und .wtfact.xyz), dann neu laden, damit die Skripte weg sind
function removeCookies() {
  const names = document.cookie.split(';').map((c) => c.split('=')[0].trim())
    .filter((n) => /^(_ga|_gid|_gat|_gcl|_fbp|_fbc|_clck|_clsk|CLID|MUID|ANONCHK|SM)/.test(n));
  const host = location.hostname;
  const domains = ['', host, `.${host}`, `.${host.split('.').slice(-2).join('.')}`];
  for (const n of names) for (const d of domains) {
    document.cookie = `${n}=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/${d ? `; domain=${d}` : ''}`;
  }
  try { for (const k of Object.keys(localStorage)) if (/^(_cl|_ga)/.test(k)) localStorage.removeItem(k); } catch { /* s. u. */ }
}

function choose(choice: Choice) {
  const before = read()?.choice;
  try { localStorage.setItem(KEY, JSON.stringify({ choice, services: signature, at: Date.now() } satisfies Stored)); } catch { /* privates Fenster: gilt bis zum Neuladen */ }
  if (box) box.hidden = true;
  if (choice === 'all') loadServices();
  else if (before === 'all' || loaded) { removeCookies(); location.reload(); }
}

if (box) {
  box.querySelectorAll<HTMLElement>('[data-consent-choice]').forEach((b) =>
    b.addEventListener('click', () => choose(b.dataset.consentChoice as Choice)),
  );
  document.querySelectorAll<HTMLElement>('[data-consent-open]').forEach((b) => {
    b.hidden = false;
    b.addEventListener('click', () => { box.hidden = false; box.querySelector<HTMLElement>('[data-consent-choice]')?.focus(); });
  });
  const stored = read();
  if (stored?.choice === 'all') loadServices();
  else if (!stored) box.hidden = false;
}
