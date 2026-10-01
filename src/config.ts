export const SITE = {
  name: 'WTFact',
  // Amazon-PartnerNet-Tags. Nach der Anmeldung hier eintragen.
  amazon: {
    de: { host: 'www.amazon.de', tag: 'wtfact-21' },
    en: { host: 'www.amazon.com', tag: 'wtfact-20' },
  },
  // Angaben für das Impressum (Pflicht in Deutschland, § 5 DDG).
  owner: {
    name: '[Vor- und Nachname]',
    street: '[Straße Hausnummer]',
    city: '[PLZ Ort]',
    email: '[E-Mail-Adresse]',
  },
} as const;

export const LANGS = ['de', 'en'] as const;
export type Lang = (typeof LANGS)[number];

export const CATEGORIES = ['science', 'history', 'tech', 'nature', 'body', 'weird'] as const;
export type Category = (typeof CATEGORIES)[number];
