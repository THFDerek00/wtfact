export const SITE = {
  name: 'WTFact',
  // Amazon-Partner-Tags. de = Erics PartnerNet-Konto (amazon.de).
  // en: noch kein eigenes Amazon-Associates-Konto (US). Leer = Links ohne Partner-Tag.
  amazon: {
    de: { host: 'www.amazon.de', tag: 'wtfact-21' },
    en: { host: 'www.amazon.com', tag: '' },
  } as Record<'de' | 'en', { host: string; tag: string }>,
  // Besucherstatistik mit Umami (cookielos, Wunsch von Eric, 2026-10-09). Leer = keine Statistik, kein Skript.
  // Einrichten: cloud.umami.is > Add website > wtfact.xyz, die „Website ID“ hier eintragen.
  // Klicks auf Amazon-Links zählen als Ereignis „amazon“ (mit Fakt und Platz), siehe ProductBox und ProductTeaser.
  umami: { websiteId: '', script: 'https://cloud.umami.is/script.js' },
  // Dienste mit Cookies, die erst nach „Alle akzeptieren“ im Cookie-Banner laden (Wunsch von Eric, 2026-10-15).
  // Leer = Dienst aus. Ist keiner eingetragen, gibt es nichts zuzustimmen und es erscheint auch kein Banner.
  // Banner: src/components/CookieConsent.astro, Laden der Dienste: src/scripts/consent.ts.
  consent: {
    // Google Analytics 4 (Statistik mit Herkunft, Verweildauer, Search-Console-Anbindung).
    // analytics.google.com > Verwaltung > Datenstreams > Web > „Mess-ID“, Form G-XXXXXXXXXX.
    ga4: 'G-NKFN3T4ZJH',
    // Meta-Pixel (misst, wer über Instagram-/Facebook-Werbung kommt, und baut Zielgruppen für Werbung auf).
    // business.facebook.com > Events Manager > Datenquellen > Pixel, „Pixel-ID“ (nur Ziffern).
    metaPixel: '',
    // Microsoft Clarity (Heatmaps und Sitzungsaufzeichnungen: wo Leute scrollen, klicken, abspringen).
    // clarity.microsoft.com > Projekt anlegen > Settings > Overview > „Project ID“.
    clarity: 'yy6aef6abo',
  } as { ga4: string; metaPixel: string; clarity: string },
  // Angaben für das Impressum (Pflicht in Deutschland, § 5 DDG).
  owner: {
    name: 'Eric Steingröver',
    street: 'Karl-Braun-Str. 15B',
    city: '48477 Hörstel',
    email: 'info@wtfact.xyz',
    // Zweiter schneller Kontaktweg neben der E-Mail (z. B. Telefonnummer). Leer = wird nicht angezeigt.
    phone: '',
  } as { name: string; street: string; city: string; email: string; phone: string },
} as const;

export const LANGS = ['de', 'en'] as const;
export type Lang = (typeof LANGS)[number];

export const CATEGORIES = ['science', 'history', 'tech', 'nature', 'body', 'weird', 'survival', 'food', 'language', 'sport', 'space', 'animals', 'mind', 'brands', 'popculture', 'horror', 'holiday'] as const;
export type Category = (typeof CATEGORIES)[number];

// Feiertage (Wunsch von Eric, 2026-10-15): bekommen nur an besonderen Tagen einen Fakt, je mit eigener Farbwelt.
// Termine und Themen: src/data/holidays.ts. Der Generator und der Wochenlauf schreiben hier nichts, die Fakten
// entstehen gezielt zum Termin. Im Dashboard sind sie fest auf ihren Tag gelegt.
export const SPECIAL_CATEGORIES = ['holiday'] as const satisfies readonly Category[];
// Kategorien für die tägliche Abwechslung (Generator, Wochenlauf).
export const REGULAR_CATEGORIES = CATEGORIES.filter((c) => !(SPECIAL_CATEGORIES as readonly string[]).includes(c));

// So viele neue Fakten schreibt Claude jeden Morgen (je als eigener PR, Eric führt sie selbst zusammen).
// Mit dem Dashboard (README „Dashboard“) gibt es stattdessen 3 feste Zeiten pro Tag, siehe SLOT_TIMES.
// Jeder aus einer anderen Kategorie, keiner aus einer Kategorie vom Vortag. Gelesen von scripts/generate-post.mjs.
export const FACTS_PER_DAY = 3;

// Feste Veröffentlichungszeiten pro Tag, deutsche Zeit (Wunsch von Eric, 2026-10-08: 8, 12 und 16 Uhr).
// Gleiche Werte als Standard im Dashboard (steuerung/lib/bootstrap.php, slot_times) und in .github/workflows/deploy.yml
// (STEUERUNG_SLOTS); `npm run check` prüft, dass alle drei übereinstimmen. Genutzt vom Countdown in der WTF-Charts.
export const SLOT_TIMES = ['08:00', '12:00', '16:00'] as const;
