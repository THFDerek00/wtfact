-- WTFact-Fakt „Dieser Wald in Utah ist ein einziger Baum und wiegt rund 6000 Tonnen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('pando-one-tree-forest', '2026-10-06T03:59:39+02:00', 'nature', '🌳', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pando-one-tree-forest', 'de', 'pando-wald-ist-ein-baum',
  'Dieser Wald in Utah ist ein einziger Baum und wiegt rund 6000 Tonnen',
  'Mehr als 40.000 Stämme, ein Wurzelsystem und eine DNA: Pando ist ein Wald, der eigentlich nur aus einer Pflanze besteht.',
  'Pando in Utah sieht aus wie ein Espenwald, ist aber ein einziger Klon mit mehr als 40.000 Stämmen und rund 6000 Tonnen Gewicht.',
  'Stell dir einen Wald in Utah vor: Zehntausende helle Espenstämme, die Blätter zittern im Wind. Und jetzt vergiss alles, was du über Wälder weißt. **Pando ist ein einziger Organismus, ein Klon der Amerikanischen Zitterpappel mit mehr als 40.000 Stämmen und einem geschätzten Gewicht von rund 6000 Tonnen.**

## Ein Wurzelwerk, Tausende Stämme

Pando wächst im Fishlake National Forest in Utah. Laut der US-Forstbehörde Forest Service ist er aus einem einzigen Samen entstanden und breitet sich aus, indem sein wachsendes Wurzelsystem immer neue Triebe nach oben schickt. Jeder Stamm, den du siehst, ist also ein Spross derselben Pflanze. EarthDate ergänzt: Genetische Analysen haben gezeigt, dass der ganze Wald ein einziges männliches Individuum ist.

Die Dimensionen sind absurd. Pando bedeckt 106 Acres, also rund 43 Hektar. EarthDate vergleicht das mit 80 American-Football-Feldern und schreibt, er sei doppelt so groß wie der nächstgrößte Espenklon. Sein Gewicht wird auf 13 Millionen Pfund geschätzt, also rund 6000 Tonnen. EarthDate nennt ihn den schwersten bekannten Organismus der Erde, und laut Forest Service gilt er als größter Organismus, der je gefunden wurde.

## Uralte Wurzeln, junge Stämme

Wie alt ist Pando? So genau weiß das niemand. Der Forest Service schätzt, dass er am Ende der letzten Eiszeit entstanden ist. Laut EarthDate soll sein Wurzelsystem sogar 80.000 Jahre alt sein. Die Schätzungen liegen also weit auseinander, uralt ist er so oder so.

Die Stämme sind dagegen Jungspunde. EarthDate gibt ihr Durchschnittsalter mit 130 Jahren an. Der Name passt übrigens: Als Pando entdeckt wurde, wählten Fachleute ein lateinisches Wort, das „ich breite mich aus“ bedeutet.

## Das Problem: hungrige Hirsche

In letzter Zeit geht es Pando nicht gut. Laut Forest Service liegt die fehlende Verjüngung vermutlich daran, dass Hirsche und andere Huftiere zu viel abfressen. Die Seite I Love History der Utah Historical Society schreibt, dass kaum kleine oder mittelgroße Triebe die alte Generation ersetzen, weil Hirsche, Wapitis und Rinder die jungen Schösslinge fressen.

Zäune helfen. Laut EarthDate gedeihen junge Espen, sobald sie eingezäunt sind, und ihre Zahl steigt fast auf das Zehnfache.

> Pandos Spitzname lautet „Trembling Giant“, zitternder Riese: Dank ihrer auffällig abgeflachten Blattstiele zittern seine Blätter schon beim leisesten Windhauch.

Manche Wälder haben viele Bäume. Pando hat genau einen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pando-one-tree-forest', 'de', 1, 'Sachbuch über Bäume und Wälder', 'Sachbuch Bäume Wald', 'Erklärt anschaulich, wie Bäume wachsen, kommunizieren und Wälder bilden.'),
  ('pando-one-tree-forest', 'de', 2, 'Anzuchtset für Bäume', 'Baum Anzuchtset Samen', 'Mit Samen, Erde und Töpfen ziehst du deinen eigenen kleinen Baum am Fensterbrett.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pando-one-tree-forest', 'de', 1, 'USDA Forest Service: Fishlake National Forest | Pando', 'https://www.fs.usda.gov/r04/fishlake/recreation/explore-forest/pando'),
  ('pando-one-tree-forest', 'de', 2, 'EarthDate: Pando - A Forest of One', 'https://www.earthdate.org/episodes/pando-a-forest-of-one'),
  ('pando-one-tree-forest', 'de', 3, 'I Love History: The Pando Clone', 'https://ilovehistory.utah.gov/the-pando-clone');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pando-one-tree-forest', 'en', 'pando-forest-single-tree',
  'This Utah forest is a single tree weighing about 6,000 metric tons',
  'More than 40,000 trunks, one root system, one set of DNA: Pando is a forest that is really just one plant.',
  'Pando in Utah looks like an aspen forest, but it is one single clone with more than 40,000 trunks and a weight of about 6,000 metric tons.',
  'Picture a forest in Utah: tens of thousands of pale aspen trunks, leaves trembling in the wind. Now forget what you know about forests. **Pando is one single organism, a quaking aspen clone with more than 40,000 trunks and an estimated weight of about 6,000 metric tons.**

## One root system, thousands of trunks

Pando grows in Fishlake National Forest in Utah. According to the US Forest Service, it originated from a single seed and spreads by sending up new shoots from its expanding root system. So every trunk you see is a sprout of the same plant. EarthDate adds that genetic analysis has shown the entire forest is one single male individual.

The scale is absurd. Pando covers 106 acres, about 43 hectares. EarthDate compares that to 80 American football fields and says it is twice the size of the next largest aspen clone. Its weight has been estimated at 13 million pounds, roughly 6,000 metric tons. EarthDate calls it the heaviest known organism on Earth, and the Forest Service says it is believed to be the largest organism ever found.

## Old roots, young trunks

How old is Pando? Nobody knows for sure. The Forest Service estimates it got started at the end of the last ice age. EarthDate says its root system is believed to be 80,000 years old. So the estimates are far apart, but either way, it is ancient.

The trunks are youngsters by comparison. EarthDate gives them an average age of 130 years. Fitting name, by the way: when Pando was discovered, scientists picked a Latin word that means "I spread."

## The problem: hungry deer

Lately, Pando is struggling. According to the Forest Service, the lack of regeneration is thought to be due to over-browsing by deer and other ungulates. I Love History, a site of the Utah Historical Society, notes that few small or middle-sized shoots are replacing the older generation, with deer, elk and cattle eating the young shoots.

Fences help. According to EarthDate, young aspen saplings thrive once they are fenced, increasing nearly tenfold in number.

> Pando''s nickname is "Trembling Giant": a distinctive, flattened leaf stem makes its leaves quake even in the gentlest breeze.

Some forests have a lot of trees. Pando has exactly one.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pando-one-tree-forest', 'en', 1, 'Popular science book about trees', 'popular science book trees forests', 'Explains in plain language how trees grow, communicate and form forests.'),
  ('pando-one-tree-forest', 'en', 2, 'Tree seed grow kit', 'tree seed grow kit', 'Comes with seeds, soil and pots so you can grow your own little tree on a windowsill.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pando-one-tree-forest', 'en', 1, 'USDA Forest Service: Fishlake National Forest | Pando', 'https://www.fs.usda.gov/r04/fishlake/recreation/explore-forest/pando'),
  ('pando-one-tree-forest', 'en', 2, 'EarthDate: Pando - A Forest of One', 'https://www.earthdate.org/episodes/pando-a-forest-of-one'),
  ('pando-one-tree-forest', 'en', 3, 'I Love History: The Pando Clone', 'https://ilovehistory.utah.gov/the-pando-clone');
