import type { Lang, Category } from '../config';

export const ui = {
  de: {
    tagline: 'Jeden Tag ein Fakt, der dich „WTF?!" sagen lässt.',
    latest: 'Neueste Fakten',
    readMore: 'Weiterlesen',
    todaysFact: 'Fakt des Tages',
    allCategories: 'Alle',
    filterLabel: 'Nach Kategorie filtern',
    productsTitle: 'Passend dazu',
    productsCta: 'Bei Amazon ansehen',
    adLabel: 'Werbung',
    affiliateShort: 'Für Käufe über diese Links erhalten wir eine kleine Provision. Für dich ändert sich der Preis nicht.',
    affiliateFooter: 'Als Amazon-Partner verdienen wir an qualifizierten Verkäufen.',
    sources: 'Quellen',
    share: 'Teilen',
    copied: 'Link kopiert!',
    next: 'Noch ein Fakt',
    imprint: 'Impressum',
    privacy: 'Datenschutz',
    about: 'Über WTFact',
    madeWith: 'Täglich neu, geschrieben mit Hilfe von KI und mit Quellen belegt.',
    readingTime: (m: number) => `${m} Min. Lesezeit`,
    categories: {
      science: 'Wissenschaft', history: 'Geschichte', tech: 'Technik',
      nature: 'Natur', body: 'Körper', weird: 'Kurioses',
    } satisfies Record<Category, string>,
    notFound: 'Dieser Fakt existiert nicht. Noch nicht.',
  },
  en: {
    tagline: 'One fact a day that makes you go "WTF?!"',
    latest: 'Latest facts',
    readMore: 'Read more',
    todaysFact: 'Fact of the day',
    allCategories: 'All',
    filterLabel: 'Filter by category',
    productsTitle: 'Go deeper',
    productsCta: 'View on Amazon',
    adLabel: 'Ad',
    affiliateShort: 'We earn a small commission on purchases made through these links, at no extra cost to you.',
    affiliateFooter: 'As an Amazon Associate we earn from qualifying purchases.',
    sources: 'Sources',
    share: 'Share',
    copied: 'Link copied!',
    next: 'One more fact',
    imprint: 'Imprint',
    privacy: 'Privacy',
    about: 'About WTFact',
    madeWith: 'New every day, written with the help of AI and backed by sources.',
    readingTime: (m: number) => `${m} min read`,
    categories: {
      science: 'Science', history: 'History', tech: 'Tech',
      nature: 'Nature', body: 'Body', weird: 'Weird',
    } satisfies Record<Category, string>,
    notFound: 'This fact does not exist. Yet.',
  },
} as const;

export const t = (lang: Lang) => ui[lang];

export const categorySlug = (lang: Lang, c: Category) => t(lang).categories[c].toLowerCase();

export const dateFmt = (lang: Lang, d: Date) =>
  d.toLocaleDateString(lang === 'de' ? 'de-DE' : 'en-US', { day: 'numeric', month: 'long', year: 'numeric' });
