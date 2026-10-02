-- WTFact-Fakt „Erdnüsse sind gar keine Nüsse, sondern Hülsenfrüchte“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('peanut-legume', '2026-09-04', 'food', '🥜', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'peanut-legume', 'de', 'erdnuesse-keine-nuesse',
  'Erdnüsse sind gar keine Nüsse, sondern Hülsenfrüchte',
  'Sie sind näher mit Erbsen und Bohnen verwandt als mit Walnüssen. Und ihre Früchte wachsen unter der Erde.',
  'Die Erdnuss ist botanisch keine Nuss, sondern eine Hülsenfrucht, die ihre Früchte selbst in den Boden schiebt.',
  'Erdnüsse stehen im Supermarkt neben Cashews, Mandeln und Walnüssen. Sie heißen Nuss, sie knacken wie eine Nuss, sie schmecken nach Nuss. Botanisch ist die Sache trotzdem klar: **Die Erdnuss ist keine Nuss, sondern eine Hülsenfrucht.**

## Familie Bohne

Die Erdnuss (*Arachis hypogaea*) gehört zu den Hülsenfrüchtlern, der Pflanzenfamilie Fabaceae. In dieser Familie stecken auch Erbsen, Bohnen und Linsen. Was du da knackst, ist also eher eine Hülse mit Samen drin, so wie bei einer Erbsenschote, nur eben fester und trockener.

Eine echte Nuss im botanischen Sinn ist dagegen eine Frucht mit harter, verholzter Schale, die sich nicht von selbst öffnet, etwa die Haselnuss. Die Erdnuss passt da nicht rein, auch wenn sie im Alltag fast immer als Nuss durchgeht. Ursprünglich stammt sie aus Südamerika, heute wird sie fast überall auf der Welt angebaut.

## Eine Pflanze, die sich selbst vergräbt

Jetzt wird es richtig schräg. Die meisten Pflanzen hängen ihre Früchte an Zweige oder Stängel. Die Erdnuss macht das Gegenteil. Sie blüht oberirdisch mit kleinen Blüten. Nach der Befruchtung wächst der Stiel unter der Blüte nach unten, ein sogenannter Fruchtträger. **Er bohrt sich in die Erde, und erst dort entwickelt sich die Hülse mit den Samen.**

Fachleute nennen das Geokarpie, also Früchte, die im Boden reifen. Daher auch der Name Erdnuss: Die Pflanze vergräbt ihren eigenen Nachwuchs. Laut NC State Extension erscheinen die ersten Blüten etwa 40 Tage nach dem Aussäen, und reif sind die Hülsen nach rund 120 bis 150 Tagen.

> Auf Englisch hat die Erdnuss jede Menge Spitznamen, darunter „goober“, „groundnut“ und „monkey nut“.

## Nuss im Namen, Bohne im Herzen

Dass die Erdnuss so hartnäckig als Nuss gilt, liegt am Gebrauch in der Küche. Dort zählt, wie etwas schmeckt und eingesetzt wird, nicht wo es im Stammbaum der Pflanzen hängt. Das gleiche Prinzip macht in der Küche auch Tomaten zu Gemüse.

Deine Erdnussbutter ist also streng genommen ein Bohnenaufstrich. Schmeckt trotzdem.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('peanut-legume', 'de', 1, 'Erdnussbutter-Kochbuch', 'Erdnussbutter Rezepte Buch', 'Von Satay-Soße bis Cookies: Rezepte, in denen Erdnüsse die Hauptrolle spielen.'),
  ('peanut-legume', 'de', 2, 'Nussknacker-Schale aus Holz', 'Nussschale Holz mit Nussknacker', 'Schöne Schale für den Snack-Abend, mit Platz für Schalen und Knacker.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('peanut-legume', 'de', 1, 'Britannica: Peanut', 'https://www.britannica.com/plant/peanut'),
  ('peanut-legume', 'de', 2, 'NC State Extension: Arachis hypogaea (Earthnut, Goober, Goober Peas, Groundnut, Monkey Nut, Peanut, Peanuts, Pindar, Pygmy Nut, Virginia Peanut)', 'https://plants.ces.ncsu.edu/plants/arachis-hypogaea/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'peanut-legume', 'en', 'peanuts-are-not-nuts',
  'Peanuts aren''t nuts at all, they''re legumes',
  'They''re closer relatives of peas and beans than of walnuts. And their pods grow underground.',
  'Botanically, the peanut isn''t a nut but a legume that pushes its own pods into the soil.',
  'At the supermarket, peanuts sit right next to cashews, almonds and walnuts. They''re called nuts, they crack like nuts, they taste nutty. Botanically, though, the verdict is clear: **the peanut isn''t a nut. It''s a legume.**

## The bean family

The peanut (*Arachis hypogaea*) belongs to the legume family, Fabaceae. That family also includes peas, beans and lentils. What you''re cracking open is basically a pod with seeds inside, like a pea pod, just firmer and drier.

A true nut in the botanical sense is a fruit with a hard, woody shell that doesn''t split open on its own, like a hazelnut. The peanut doesn''t fit, even if everyday language treats it as one. It originally comes from South America, and today it''s grown almost everywhere in the world.

## A plant that buries itself

Now it gets properly weird. Most plants hang their fruit from branches or stems. The peanut does the opposite. It flowers above ground with small blossoms. After fertilization, the stalk below the flower grows downward, forming what''s called a peg. **The peg pushes into the soil, and only there does the pod with the seeds develop.**

Botanists call this geocarpy: fruit that ripens underground. Hence the name groundnut. The plant literally buries its own offspring. According to NC State Extension, the first flowers appear about 40 days after planting, and the pods are ripe after roughly 120 to 150 days.

> The peanut has plenty of nicknames in English, including "goober", "groundnut" and "monkey nut".

## Nut by name, bean at heart

The peanut gets called a nut because of how it''s used in the kitchen. There, what counts is how something tastes and gets used, not where it sits on the plant family tree. The same logic is why tomatoes count as vegetables in cooking.

So your peanut butter is technically a bean spread. Still delicious.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('peanut-legume', 'en', 1, 'Peanut butter cookbook', 'peanut butter cookbook', 'From satay sauce to cookies: recipes where peanuts are the star.'),
  ('peanut-legume', 'en', 2, 'Wooden nut bowl with cracker', 'wooden nut bowl with nutcracker', 'A good-looking bowl for snack night, with room for shells and a cracker.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('peanut-legume', 'en', 1, 'Britannica: Peanut', 'https://www.britannica.com/plant/peanut'),
  ('peanut-legume', 'en', 2, 'NC State Extension: Arachis hypogaea (Earthnut, Goober, Goober Peas, Groundnut, Monkey Nut, Peanut, Peanuts, Pindar, Pygmy Nut, Virginia Peanut)', 'https://plants.ces.ncsu.edu/plants/arachis-hypogaea/');
