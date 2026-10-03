-- WTFact-Fakt „Der Guide Michelin startete 1900 als Gratis-Werbung für Reifen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('michelin-guide-tires', '2026-10-03T04:08:12+02:00', 'weird', '🛞', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'michelin-guide-tires', 'de', 'guide-michelin-reifenwerbung',
  'Der Guide Michelin startete 1900 als Gratis-Werbung für Reifen',
  'Die berühmtesten Sterne der Spitzenküche vergibt ausgerechnet ein Reifenhersteller. Dahinter steckt ein ziemlich schlauer Werbetrick.',
  'Die Brüder André und Édouard Michelin brachten 1900 einen kostenlosen Autofahrer-Führer heraus, damit die Leute mehr fahren und mehr Reifen verschleißen.',
  'Ein Michelin-Stern ist für Köchinnen und Köche so etwas wie ein Oscar. Für einen Stern wird jahrelang geschuftet, für drei Sterne erst recht. Und wer vergibt die? **Eine Firma, die Autoreifen verkauft.** Kein Witz, das war von Anfang an der Plan.

## Ein Heft voller Ausreden zum Losfahren

André und Édouard Michelin gründeten 1889 in Frankreich ihr Reifenunternehmen. Das Problem: Autos waren damals eine Seltenheit. Um 1900 gab es laut Michelin in ganz Frankreich weniger als 3000 Autos. Wenig Autos, wenig Reifen, wenig Umsatz.

Also drehten die Brüder den Spieß um. Statt nur Reifen anzubieten, wollten sie den Leuten Lust aufs Fahren machen. 1900 erschien der erste Guide Michelin, und **rund 35.000 Exemplare wurden verschenkt.** Drin standen Karten, Anleitungen zum Reifenwechseln, Werkstätten, Tankstellen und dazu Hotels und Restaurants. Die Rechnung war simpel: Wer mehr herumfährt, nutzt seine Reifen schneller ab und kauft neue. Natürlich am liebsten bei Michelin.

## Von der Werkstattliste zum Sternehimmel

Die Restaurant-Tipps kamen so gut an, dass die Firma anonyme Testerinnen und Tester losschickte, die in Restaurants aßen und sie bewerteten. 1926 führte der Guide laut Michelin seinen ersten Stern ein. 1931 kam dann das System mit bis zu drei Sternen, das du heute kennst.

Laut Wikipedia wurden die Sterne in den 1930ern so definiert: ein Stern für ein sehr gutes Restaurant seiner Kategorie, zwei für eine Küche, die einen Umweg wert ist, und drei für eine außergewöhnliche Küche, die eine eigene Reise wert ist. Ein „Umweg“ und eine „eigene Reise“, also: mehr Kilometer. Ob gewollt oder nicht, für einen Reifenhersteller passt das verdächtig gut.

## Gratis war gestern

Kostenlos blieb der Guide nicht. Anfang der 1920er-Jahre fing Michelin an, Geld dafür zu verlangen. Laut Archives Portal Europe war das ein Zeichen dafür, dass das Heft als immer wertvoller galt.

> Die Legende zum Preis: André Michelin soll in einer Werkstatt gesehen haben, wie seine Gratis-Guides eine Werkbank stützten. Sein Fazit laut Michelin: „Der Mensch respektiert nur wirklich, wofür er bezahlt.“

Heute sind die Sterne der begehrteste Preis der Spitzenküche. Angefangen haben sie in einer Reifenwerbung, die man im Handschuhfach vergessen konnte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('michelin-guide-tires', 'de', 1, 'Bildband über Sterneküche und Spitzenköche', 'Bildband Sterneküche Spitzenköche', 'Großformatige Fotos und Geschichten aus den Küchen der besten Restaurants der Welt.'),
  ('michelin-guide-tires', 'de', 2, 'Vintage-Poster mit alter Frankreich-Straßenkarte', 'Poster alte Straßenkarte Frankreich vintage', 'Retro-Landkarte im Nostalgie-Look, die an jeder Wand nach Roadtrip aussieht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('michelin-guide-tires', 'de', 1, 'MICHELIN Guide: The History of the Michelin Guide', 'https://guide.michelin.com/kr/en/article/features/history-michelin-guide'),
  ('michelin-guide-tires', 'de', 2, 'Archives Portal Europe: 125 years of the Michelin Guide', 'https://www.archivesportaleurope.net/explore/highlights/125-years-of-the-michelin-guide/'),
  ('michelin-guide-tires', 'de', 3, 'Wikipedia: Michelin Guide', 'https://en.wikipedia.org/wiki/Michelin_Guide');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'michelin-guide-tires', 'en', 'michelin-guide-tire-ad',
  'The Michelin Guide started in 1900 as a free ad for tires',
  'The most famous stars in fine dining are handed out by a tire company. And there''s a sneaky marketing trick behind it.',
  'In 1900, brothers André and Édouard Michelin published a free guide for drivers so people would drive more and wear out more tires.',
  'For chefs, a Michelin star is basically an Oscar. People grind for years to get one, and three is the dream. So who hands them out? **A company that sells car tires.** No joke, that was the plan from the start.

## A booklet full of reasons to hit the road

André and Édouard Michelin founded their tire company in France in 1889. The problem: cars were still a rarity. According to Michelin, around 1900 there were fewer than 3,000 cars in all of France. Few cars, few tires, few sales.

So the brothers flipped the problem around. Instead of just selling tires, they set out to make people want to drive. The first Michelin Guide came out in 1900, and **about 35,000 copies were given away for free.** It had maps, tire-changing instructions, mechanics, gas stations, plus hotels and restaurants. The math was simple: drive more, wear out your tires faster, buy new ones. Ideally from Michelin.

## From repair shops to stars

The restaurant tips were such a hit that the company sent out anonymous inspectors to eat at restaurants and review them. According to Michelin, the guide introduced its first star in 1926. In 1931, the system with up to three stars that you know today arrived.

According to Wikipedia, the stars were defined in the 1930s like this: one star for a very good restaurant in its category, two for excellent cooking worth a detour, and three for exceptional cuisine worth a special journey. A detour and a special journey, in other words: more miles. Whether that was intended or not, for a tire company it fits suspiciously well.

## Free didn''t last

The guide didn''t stay free. In the early 1920s, Michelin started charging for it. According to Archives Portal Europe, that was a sign it was seen as more and more valuable.

> The legend behind the price tag: André Michelin reportedly walked into a garage and saw his free guides propping up a workbench. His takeaway, according to Michelin: "Man only truly respects what he pays for."

Today the stars are the most coveted prize in fine dining. They started out in a tire ad you could forget in your glove box.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('michelin-guide-tires', 'en', 1, 'Coffee table book on fine dining and star chefs', 'coffee table book fine dining star chefs', 'Big photos and stories from the kitchens of the world''s best restaurants.'),
  ('michelin-guide-tires', 'en', 2, 'Vintage France road map poster', 'vintage France road map poster', 'A retro map that makes any wall look like the start of a road trip.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('michelin-guide-tires', 'en', 1, 'MICHELIN Guide: The History of the Michelin Guide', 'https://guide.michelin.com/kr/en/article/features/history-michelin-guide'),
  ('michelin-guide-tires', 'en', 2, 'Archives Portal Europe: 125 years of the Michelin Guide', 'https://www.archivesportaleurope.net/explore/highlights/125-years-of-the-michelin-guide/'),
  ('michelin-guide-tires', 'en', 3, 'Wikipedia: Michelin Guide', 'https://en.wikipedia.org/wiki/Michelin_Guide');
