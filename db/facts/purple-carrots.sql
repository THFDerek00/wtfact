-- WTFact-Fakt „Karotten waren früher lila und gelb, nicht orange“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('purple-carrots', '2026-09-12', 'food', '🥕', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'purple-carrots', 'de', 'karotten-waren-lila',
  'Karotten waren früher lila und gelb, nicht orange',
  'Die orange Möhre ist eine Spätzüchtung. Und die Geschichte mit dem niederländischen Königshaus? Ein Mythos.',
  'Die ersten Kulturkarotten waren lila und gelb. Orange wurden Möhren erst viel später durch Züchtung in Europa.',
  'Orange ist für Karotten so typisch, dass die Farbe im Englischen fast danach klingt. Aber schau mal ein paar Jahrhunderte zurück, und das Bild kippt komplett. **Die ersten Karotten, die Menschen gezielt angebaut haben, waren lila und gelb.**

## Lila zuerst, orange später

Wilde Möhren haben eine blasse, weißliche Wurzel. Laut einer Genomstudie der University of Wisconsin–Madison tauchten die ersten Kulturkarotten vor rund 1.100 Jahren in Zentralasien auf, und zwar in Lila und Gelb. Eine lila Sorte aus der Region des heutigen Afghanistan setzte sich durch und verbreitete sich nach und nach über Europa und Asien.

Die klassische orange Möhre kam erst später dazu. Laut der Studie entstand sie im Europa des 16. Jahrhunderts. Vermutlich steckt eine gelbe Sorte dahinter, aus der durch gezielte Auswahl orange Wurzeln wurden. Vor allem niederländische Gärtner haben sie groß gemacht: Die Niederlande waren damals eine Agrar-Großmacht und verbreiteten die neue Farbe in ganz Europa.

## Der Mythos mit dem Prinzen

Jetzt kommt die Story, die du vielleicht schon gehört hast: Die Niederländer hätten orange Karotten gezüchtet, um Wilhelm von Oranien zu ehren, den Anführer ihres Aufstands gegen Spanien. Klingt perfekt, ist aber nicht belegt. Laut Live Science gibt es **keinen einzigen schriftlichen Beleg** dafür, dass die Farbe als Ehrung fürs Königshaus gedacht war. Orange Karotten gab es wohl schon, bevor Wilhelm politisch aktiv wurde.

Dass orange Möhren gewonnen haben, hatte eher praktische Gründe. Sie galten als süßer und zuverlässiger im Anbau, und die Farbe hat mit dem Geschmack genetisch übrigens gar nichts zu tun. Die Gene für Farbe und für Aroma liegen laut der Studie unabhängig voneinander.

> Moderne Karotten enthalten laut der Studie aus Wisconsin rund 50 Prozent mehr Carotin als Karotten aus dem Jahr 1970.

## Bunt ist das neue Alt

Wenn du heute auf dem Markt lila oder gelbe Möhren siehst, wirken die wie ein hipper Trend. In Wahrheit sind sie die Originale, und die orange Möhre ist der Neuling, der den Laden übernommen hat.

Die Karotte im Supermarkt ist also keine Naturkonstante, sondern ein Zuchterfolg mit Marketing-Legende.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('purple-carrots', 'de', 1, 'Saatgut für bunte Karotten', 'Karotten Samen bunt lila gelb', 'Lila, gelbe und weiße Sorten für Beet oder Balkonkasten. So landet die alte Farbpalette wieder auf dem Teller.'),
  ('purple-carrots', 'de', 2, 'Gemüse-Kochbuch', 'Gemüse Kochbuch vegetarisch', 'Viele Rezepte rund um Wurzelgemüse und Co., von schnell bis aufwendig.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('purple-carrots', 'de', 1, 'Live Science: Are carrots orange because of a Dutch revolutionary?', 'https://www.livescience.com/why-are-carrots-orange.html'),
  ('purple-carrots', 'de', 2, 'UW–Madison News: Carrot genome paints picture of domestication, could help improve crops', 'https://news.wisc.edu/carrot-genome-paints-picture-of-domestication-could-help-improve-crops/'),
  ('purple-carrots', 'de', 3, 'ZME Science: Carrots were originally purple, not orange. Here''s what happened', 'https://www.zmescience.com/feature-post/health/food-and-nutrition/purple-carrots-21032011/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'purple-carrots', 'en', 'carrots-were-purple',
  'Carrots used to be purple and yellow, not orange',
  'The orange carrot is a latecomer. And the story about the Dutch royal family? That''s a myth.',
  'The first cultivated carrots were purple and yellow. Carrots only turned orange much later, through breeding in Europe.',
  'Orange is so tied to carrots that it''s hard to picture them any other way. But rewind a few centuries and the picture flips. **The first carrots people deliberately grew were purple and yellow.**

## Purple first, orange later

Wild carrots have a pale, whitish root. According to a genome study from the University of Wisconsin–Madison, the first cultivated carrots showed up about 1,100 years ago in Central Asia, in purple and yellow. A purple variety from the region of today''s Afghanistan became dominant and gradually spread across Europe and Asia.

The classic orange carrot came later. According to the study, it appeared in 16th-century Europe. It most likely came from a yellow variety that farmers selected until the roots turned orange. Dutch growers in particular made it big: the Netherlands was an agricultural powerhouse back then and spread the new color across Europe.

## The prince myth

Here comes the story you might have heard: the Dutch supposedly bred orange carrots to honor William of Orange, the leader of their revolt against Spain. Sounds perfect, but there''s nothing to back it up. According to Live Science, there is **no documentary evidence** that the color was meant as a tribute to the royal family. Orange carrots probably existed before William was politically active.

Orange carrots won out for practical reasons. They were considered sweeter and more reliable to grow, and genetically the color has nothing to do with taste. According to the study, the genes for color and for flavor are unrelated.

> According to the Wisconsin study, modern carrots contain about 50 percent more carotene than carrots from 1970.

## Colorful is the new old

When you spot purple or yellow carrots at a farmers market today, they look like a hip trend. In reality, they''re the originals, and the orange carrot is the newcomer that took over the business.

The carrot in your supermarket isn''t a law of nature. It''s a breeding success with a marketing legend attached.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('purple-carrots', 'en', 1, 'Rainbow carrot seeds', 'rainbow carrot seeds purple yellow', 'Purple, yellow and white varieties for a garden bed or a balcony box. Bring the old color palette back to your plate.'),
  ('purple-carrots', 'en', 2, 'Vegetable cookbook', 'vegetable cookbook', 'Lots of recipes built around root vegetables and more, from quick to ambitious.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('purple-carrots', 'en', 1, 'Live Science: Are carrots orange because of a Dutch revolutionary?', 'https://www.livescience.com/why-are-carrots-orange.html'),
  ('purple-carrots', 'en', 2, 'UW–Madison News: Carrot genome paints picture of domestication, could help improve crops', 'https://news.wisc.edu/carrot-genome-paints-picture-of-domestication-could-help-improve-crops/'),
  ('purple-carrots', 'en', 3, 'ZME Science: Carrots were originally purple, not orange. Here''s what happened', 'https://www.zmescience.com/feature-post/health/food-and-nutrition/purple-carrots-21032011/');
