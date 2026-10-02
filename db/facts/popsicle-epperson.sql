-- WTFact-Fakt „Ein 11-Jähriger hat 1905 aus Versehen das Eis am Stiel erfunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('popsicle-epperson', '2026-08-31', 'food', '🧊', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'popsicle-epperson', 'de', 'eis-am-stiel-elfjaehriger',
  'Ein 11-Jähriger hat 1905 aus Versehen das Eis am Stiel erfunden',
  'Ein vergessener Becher Limo, eine kalte Nacht, ein Rührstab: Fertig war der Popsicle. Patentiert wurde er erst fast 20 Jahre später.',
  'Der 11-jährige Frank Epperson ließ 1905 der Überlieferung nach ein Getränk mit Rührstab draußen stehen, und so entstand das Eis am Stiel.',
  'Eis am Stiel wirkt wie eine Erfindung aus einem Lebensmittellabor. Die Geschichte dahinter ist deutlich kleiner und sympathischer. **Erfunden hat es der Überlieferung nach ein 11-jähriger Junge, und zwar aus Versehen.**

## Eine vergessene Limo

Wir sind im Jahr 1905 in der Gegend von San Francisco. Frank Epperson ist 11 Jahre alt und mischt sich ein Getränk aus Wasser und süßem Limonadenpulver. Darin steckt ein Holzstäbchen zum Umrühren. Den Becher lässt er draußen stehen, und in der Nacht wird es richtig kalt. Am nächsten Morgen ist die Limo gefroren, mit dem Stäbchen mittendrin.

Laut NPR leckte Frank das gefrorene Getränk einfach vom Stab ab und nannte es „Epsicle“, eine Mischung aus seinem Nachnamen und „icicle“, dem englischen Wort für Eiszapfen. NPR nennt die Geschichte allerdings „charmant, wenn auch etwas legendenhaft“, denn die Quellen unterscheiden sich in den Details. Sogar ob er in San Francisco oder Oakland aufwuchs, ist laut KQED nicht ganz klar.

## Patent, Namenswechsel und Pleite

Richtig ernst machte Epperson erst als Erwachsener. **Laut Lemelson-MIT beantragte er mehr als 18 Jahre später ein Patent auf sein Eis am Stiel**, NPR und KQED nennen das Jahr 1924. Seine eigenen Kinder sollen das Ganze dann umgetauft haben: aus „Pop''s ''Sicle“, also dem Eis von Papa, wurde „Popsicle“. Der Name blieb.

Reich wurde Epperson damit nicht. Er verkaufte die Rechte in den 1920er-Jahren an die Firma Joe Lowe. Später sagte er laut KQED sinngemäß, er sei pleite gewesen und habe alles zu Geld machen müssen, was er besaß.

> Laut NPR werden heute jedes Jahr rund 2 Milliarden Popsicles verkauft.

## Die Doppel-Variante

In der Weltwirtschaftskrise brachte die Lowe-Firma laut NPR eine Version mit zwei Stielen heraus, die man für 5 Cent kaufen und mit jemandem teilen konnte.

Manchmal braucht eine Weltidee kein Labor, sondern nur ein Kind, das seinen Becher vergisst.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('popsicle-epperson', 'de', 1, 'Eis-am-Stiel-Formen', 'Eis am Stiel Formen Silikon', 'Formen aus Silikon für selbstgemachtes Eis aus Saft, Joghurt oder Smoothie.'),
  ('popsicle-epperson', 'de', 2, 'Buch mit Eis-Rezepten', 'Eis Rezepte Buch ohne Eismaschine', 'Rezepte für Eis am Stiel, Sorbet und Co., viele davon ganz ohne Eismaschine.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('popsicle-epperson', 'de', 1, 'NPR: How An 11-Year-Old Boy Invented The Popsicle', 'https://www.npr.org/sections/thesalt/2015/07/22/425294957/how-an-11-year-old-boy-invented-the-popsicle'),
  ('popsicle-epperson', 'de', 2, 'KQED: How A Bay Area 11-Year-Old Invented The Popsicle', 'https://www.kqed.org/bayareabites/98186/how-a-bay-area-11-year-old-invented-the-popsicle'),
  ('popsicle-epperson', 'de', 3, 'Lemelson-MIT: Frank Epperson', 'https://lemelson.mit.edu/resources/frank-epperson');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'popsicle-epperson', 'en', 'popsicle-11-year-old',
  'An 11-year-old accidentally invented the popsicle in 1905',
  'A forgotten cup of soda, a cold night, a stir stick: popsicle done. The patent came almost 20 years later.',
  'As the story goes, 11-year-old Frank Epperson left a drink with a stir stick outside in 1905, and that''s how the popsicle was born.',
  'The popsicle feels like something dreamed up in a food lab. The real story is much smaller and much more charming. **As the story goes, it was invented by an 11-year-old boy, and by accident.**

## A forgotten soda

It''s 1905, somewhere around San Francisco. Frank Epperson is 11 years old and mixes himself a drink from water and sugary soda powder, with a wooden stick in it for stirring. He leaves the cup outside, and that night it gets really cold. The next morning, the soda is frozen solid, with the stick right in the middle.

According to NPR, Frank simply licked the frozen drink off the stick and called it the "Epsicle", a mash-up of his last name and "icicle". NPR does call the story "charming, if somewhat apocryphal", since sources differ on the details. According to KQED, it''s not even entirely clear whether he grew up in San Francisco or Oakland.

## Patent, rebrand and broke

Epperson only got serious as an adult. **According to Lemelson-MIT, he applied for a patent on his frozen treat more than 18 years later**, while NPR and KQED give the year as 1924. His own kids reportedly renamed it: "Pop''s ''Sicle" became "Popsicle". The name stuck.

It didn''t make him rich. He sold the rights to the Joe Lowe Company in the 1920s. According to KQED, he later recalled: "I was flat and had to liquidate all my assets."

> According to NPR, about 2 billion Popsicles are sold every year today.

## The double version

During the Great Depression, according to NPR, the Lowe company introduced a two-stick version that cost 5 cents and could be shared.

Sometimes a world-famous idea doesn''t need a lab, just a kid who forgets his cup.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('popsicle-epperson', 'en', 1, 'Ice pop molds', 'silicone ice pop molds', 'Silicone molds for homemade pops made from juice, yogurt or smoothies.'),
  ('popsicle-epperson', 'en', 2, 'Ice pop recipe book', 'ice pops recipe book', 'Recipes for ice pops, sorbets and more, many without an ice cream maker.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('popsicle-epperson', 'en', 1, 'NPR: How An 11-Year-Old Boy Invented The Popsicle', 'https://www.npr.org/sections/thesalt/2015/07/22/425294957/how-an-11-year-old-boy-invented-the-popsicle'),
  ('popsicle-epperson', 'en', 2, 'KQED: How A Bay Area 11-Year-Old Invented The Popsicle', 'https://www.kqed.org/bayareabites/98186/how-a-bay-area-11-year-old-invented-the-popsicle'),
  ('popsicle-epperson', 'en', 3, 'Lemelson-MIT: Frank Epperson', 'https://lemelson.mit.edu/resources/frank-epperson');
