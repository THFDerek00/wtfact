-- WTFact-Fakt „Bananen sind Beeren, Erdbeeren nicht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('bananas-berries', '2026-09-24', 'science', '🍌', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bananas-berries', 'de', 'bananen-sind-beeren',
  'Bananen sind Beeren, Erdbeeren nicht',
  'Die Botanik pfeift auf die Schilder an der Obsttheke. Und die Erdbeere ist nicht die einzige Hochstaplerin.',
  'Botanisch ist die Banane eine echte Beere, die Erdbeere dagegen nicht.',
  'Im Supermarkt ist die Sache klar: Erdbeeren, Himbeeren und Brombeeren liegen bei den Beeren, Bananen ganz woanders. **Die Botanik sieht das genau andersherum.** Für sie ist die Banane eine echte Beere, die Erdbeere dagegen nicht.

## Was eine Beere wirklich ist

In der Botanik ist „Beere“ kein Bauchgefühl, sondern ein Fachbegriff mit klarer Definition. Eine Beere entsteht aus einem einzigen Fruchtknoten einer Blüte. Die Fruchtwand bleibt bei der Reife fleischig oder saftig und springt nicht von selbst auf. Die Samen stecken mitten im Fruchtfleisch.

Genau das trifft auf die Banane zu. **Sie entsteht aus einem einzigen Fruchtknoten und hat eine fleischige Fruchtwand, also ist sie eine Beere.** Dass wir ihre dicke Schale nicht mitessen, ändert daran nichts.

## Warum die Erdbeere durchfällt

Bei der Erdbeere entsteht das rote Fruchtfleisch gar nicht aus dem Fruchtknoten. Es ist der stark vergrößerte Blütenboden. Die eigentlichen Früchte sind die kleinen Pünktchen auf der Oberfläche, die fast alle für Samen halten. Jedes davon ist ein winziges Nüsschen. Botanisch ist die Erdbeere deshalb eine **Sammelnussfrucht**, also eine Scheinfrucht aus vielen Nüssen.

Himbeeren und Brombeeren fallen ebenfalls durch. Sie bestehen aus vielen kleinen Steinfrüchtchen, die zusammenhängen, und heißen Sammelsteinfrüchte.

## Beeren, mit denen keiner rechnet

Dafür ist die Liste der echten Beeren voller Überraschungen. Botanisch gehören unter anderem dazu:

- Tomaten, Paprika und Auberginen
- Weintrauben und Datteln
- Zitrusfrüchte wie Orangen und Zitronen
- Avocados

> Auch Kürbisse und Gurken sind Beeren. Wegen ihrer harten Außenschale nennt man sie Panzerbeeren. Ein Riesenkürbis ist also eine ziemlich schwere Beere.

Die Namen im Supermarkt stammen eben aus der Küche, nicht aus dem Biologiebuch. Die Banane hat es trotzdem verdient, mal in der Beerenabteilung zu liegen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bananas-berries', 'de', 1, 'Bananenhalter aus Holz', 'Bananenhalter Holz', 'Hängt die Bananen auf, damit sie keine Druckstellen bekommen. Sieht auf der Arbeitsfläche richtig gut aus.'),
  ('bananas-berries', 'de', 2, 'Botanik-Sachbuch über Pflanzen und Früchte', 'Botanik Buch Pflanzen Früchte', 'Erklärt anschaulich, wie Blüten, Früchte und Samen aufgebaut sind. Ideal zum Nachschlagen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bananas-berries', 'de', 1, 'Wikipedia: Beere', 'https://de.wikipedia.org/wiki/Beere'),
  ('bananas-berries', 'de', 2, 'McGill Office for Science and Society: Bananas are Berries. Raspberries are Not.', 'https://www.mcgill.ca/oss/article/did-you-know/bananas-are-berries-raspberries-are-not'),
  ('bananas-berries', 'de', 3, 'Britannica: Accessory fruit', 'https://www.britannica.com/science/accessory-fruit');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bananas-berries', 'en', 'bananas-are-berries',
  'Bananas are berries, but strawberries aren''t',
  'Botany doesn''t care about grocery store signs. And strawberries aren''t the only impostors.',
  'Botanically, a banana is a true berry, but a strawberry isn''t.',
  'At the grocery store, it''s obvious: strawberries, raspberries and blackberries go with the berries, and bananas go somewhere else entirely. **Botany sees it exactly the other way around.** To a botanist, a banana is a true berry and a strawberry isn''t.

## What a berry really is

In botany, "berry" isn''t a vibe, it''s a technical term with a clear definition. A berry is a fleshy fruit that develops from a single ovary of a single flower. The fruit wall stays fleshy when ripe and doesn''t split open on its own. The seeds sit inside the flesh.

That''s exactly what a banana does. **It grows from one ovary and has a fleshy fruit wall, so it''s a berry.** The fact that we don''t eat its thick peel doesn''t change a thing.

## Why the strawberry fails the test

In a strawberry, the red flesh doesn''t come from the ovary at all. It''s the greatly enlarged receptacle, the part of the flower that holds everything else. The actual fruits are the tiny specks on the outside that almost everyone calls seeds. Each one is a small fruit called an achene. That makes the strawberry an **accessory fruit**, not a berry.

Raspberries and blackberries don''t make the cut either. They''re aggregate fruits, made of lots of tiny drupelets stuck together.

## Berries nobody expects

Meanwhile, the list of true berries is full of surprises. Botanically, it includes:

- Tomatoes, peppers and eggplants
- Grapes
- Citrus fruits like oranges and lemons
- Avocados

> Pumpkins, cucumbers and watermelons count as berries too. So a giant pumpkin is one seriously heavy berry.

Grocery store names come from the kitchen, not the biology textbook. Still, the banana deserves a spot in the berry aisle at least once.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bananas-berries', 'en', 1, 'Wooden banana hanger', 'wooden banana hanger', 'Keeps your bananas hanging so they don''t bruise. Looks great on the kitchen counter.'),
  ('bananas-berries', 'en', 2, 'Botany for Gardeners by Brian Capon', 'Botany for Gardeners Brian Capon', 'A friendly, illustrated intro to how flowers, fruits and seeds actually work.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bananas-berries', 'en', 1, 'Wikipedia: Berry (botany)', 'https://en.wikipedia.org/wiki/Berry_(botany)'),
  ('bananas-berries', 'en', 2, 'McGill Office for Science and Society: Bananas are Berries. Raspberries are Not.', 'https://www.mcgill.ca/oss/article/did-you-know/bananas-are-berries-raspberries-are-not'),
  ('bananas-berries', 'en', 3, 'Britannica: Accessory fruit', 'https://www.britannica.com/science/accessory-fruit');
