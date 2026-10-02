-- WTFact-Fakt „Ketchup als Medizin? In den 1830ern galten Tomaten als Wundermittel“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('ketchup-medicine', '2026-09-14', 'history', '🍅', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ketchup-medicine', 'de', 'ketchup-als-medizin',
  'Ketchup als Medizin? In den 1830ern galten Tomaten als Wundermittel',
  'Ein Arzt pries Tomaten als Heilmittel samt Ketchup-Rezept. Danach kamen Tomaten-Pillen, in denen keine Tomate steckte.',
  '1834 erklärte ein US-Arzt Tomaten zur Medizin und lieferte Ketchup-Rezepte gleich mit. Kurz darauf wurden Tomaten-Pillen zum Verkaufsschlager.',
  'Heute landet Ketchup auf Pommes und Burgern. In den USA der 1830er-Jahre stand die Tomate dagegen plötzlich im Ruf eines Heilmittels. **Und Ketchup kam als Rezept gleich mit auf die Liste.** Die Geschichte dahinter ist eine Mischung aus Marketing, Halbwissen und einem handfesten Pillenkrieg.

## Ein Arzt mit großen Versprechen

1834 trat der Arzt und Hobbybotaniker John Cook Bennett an die Öffentlichkeit. Seine Behauptung: Tomaten hätten medizinische Kräfte. Laut Atlas Obscura sollten sie vor Cholera schützen und gegen Durchfall, Kopfschmerzen und Verdauungsbeschwerden helfen. Belege aus eigener Forschung lieferte er dafür nicht.

Bennett empfahl Tomaten aber nicht nur, er lieferte laut JSTOR Daily auch gleich **Rezepte**: für Tomatensoße, gebratene Tomaten, eingelegte Tomaten und **Tomaten-Ketchup**. Wer gesund bleiben wollte, sollte also ruhig zugreifen. Pikantes Detail: JSTOR Daily beschreibt Bennett außerdem als Betreiber einer reisenden Diplom-Mühle für Medizinabschlüsse.

## Der große Pillenkrieg

Kurz darauf witterten Geschäftsleute das große Geld. Ab 1837 verkaufte der Händler Archibald Miles aus Cleveland ein „Compound Extract of Tomato“. Der Arzt Guy R. Phelps zog mit eigenen „Compound Tomato Pills“ nach. Beide warben aggressiv, Miles hatte Verkäufer von der Golfküste bis zur kanadischen Grenze.

Die Pillen sollten alles Mögliche heilen, **von Verdauungsproblemen bis zur Syphilis**. Der Haken: Als man einige der Pillen untersuchte, fand sich darin keine Spur von Tomate. Ende 1839 brach der Pillenkrieg abrupt ab, beide Anbieter stellten ihre landesweite Werbung ein.

> Der Werbespruch der Zeit, laut JSTOR Daily: „Tomato pills will cure all your ills“, also etwa „Tomaten-Pillen heilen jedes Leiden“.

## Was am Ende blieb

Die Pillen verschwanden, die Tomate blieb. Der Hype hatte sie in den USA bekannt gemacht. Der Food-Historiker Andrew F. Smith stellt laut Atlas Obscura fest, dass die Tomate innerhalb von 10 Jahren vom Nischenprodukt zur „Königin des Gemüsemarkts“ wurde.

Ein Wundermittel war sie nie. Aber ohne den medizinischen Unsinn von damals stünde die Ketchupflasche heute vielleicht nicht auf so vielen Tischen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ketchup-medicine', 'de', 1, 'Sachbuch über die Geschichte unseres Essens', 'Geschichte des Essens Sachbuch Lebensmittel', 'Erzählt, woher unsere Alltagslebensmittel kommen und welche Umwege sie bis auf den Teller genommen haben.'),
  ('ketchup-medicine', 'de', 2, 'Tomatensamen-Set für Balkon und Fensterbank', 'Tomatensamen Set Balkon Sorten', 'Verschiedene Sorten zum Selberziehen. Ideal, um zu sehen, wie aus einem Samenkorn eine ganze Pflanze wird.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ketchup-medicine', 'de', 1, 'JSTOR Daily: Tomatoes as Medicine', 'https://daily.jstor.org/tomatoes-as-medicine/'),
  ('ketchup-medicine', 'de', 2, 'Atlas Obscura: The Tomato Pill Craze', 'https://www.atlasobscura.com/articles/tomato-pill');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ketchup-medicine', 'en', 'ketchup-was-medicine',
  'Ketchup as medicine? In the 1830s, tomatoes were sold as a cure-all',
  'A doctor hyped tomatoes as medicine, ketchup recipe included. Then came tomato pills with no tomato in them.',
  'In 1834, an American doctor declared tomatoes medicine and threw in ketchup recipes. Soon after, tomato pills became a hit.',
  'Today, ketchup goes on fries and burgers. But in 1830s America, the tomato suddenly got a reputation as a remedy. **And ketchup made the list as one of the recipes.** The story behind it is a mix of marketing, half-baked science and an all-out pill war.

## A doctor with big promises

In 1834, physician and amateur botanist John Cook Bennett went public with a bold claim: tomatoes had medicinal powers. According to Atlas Obscura, he said they prevented cholera and treated diarrhea, headaches and indigestion. He didn''t back any of it up with research of his own.

Bennett didn''t just recommend tomatoes, either. According to JSTOR Daily, he also handed out **recipes**: tomato sauce, fried tomatoes, tomato pickles and **tomato catsup**. Want to stay healthy? Dig in. Fun detail: JSTOR Daily also describes Bennett as the operator of a traveling medical diploma mill.

## The great pill war

Business people smelled money. Starting in 1837, Cleveland merchant Archibald Miles sold "Dr. Miles'' Compound Extract of Tomato." Physician Guy R. Phelps followed with his own "Compound Tomato Pills." Both advertised hard, and Miles had a network of agents from the Gulf Coast to the Canadian border.

The pills promised to cure just about anything, **from indigestion to syphilis**. The catch: when some of the pills were analyzed, they didn''t contain a trace of tomato. In late 1839, the pill war ended abruptly when both men stopped advertising nationally.

> The slogan of the era, according to JSTOR Daily: "Tomato pills will cure all your ills."

## What was left

The pills disappeared, but the tomato stuck around. All the hype had made it famous in the US. According to Atlas Obscura, food historian Andrew F. Smith notes that within 10 years, tomatoes went from relatively little consumption to "the queen of the vegetable market."

It was never a miracle cure. But without all that medical nonsense, the ketchup bottle might not be sitting on quite so many tables today.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ketchup-medicine', 'en', 1, 'Book on the history of everyday food', 'history of food book everyday foods', 'Tells where the stuff in your kitchen comes from and the weird detours it took to get to your plate.'),
  ('ketchup-medicine', 'en', 2, 'Tomato seed starter kit', 'tomato seed starter kit variety', 'Several varieties to grow yourself. A great way to watch a tiny seed turn into a whole plant.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ketchup-medicine', 'en', 1, 'JSTOR Daily: Tomatoes as Medicine', 'https://daily.jstor.org/tomatoes-as-medicine/'),
  ('ketchup-medicine', 'en', 2, 'Atlas Obscura: The Tomato Pill Craze', 'https://www.atlasobscura.com/articles/tomato-pill');
