-- WTFact-Fakt „In Katalonien verprügeln Kinder an Heiligabend einen Holzklotz, bis er Süßigkeiten kackt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('caga-tio-log', '2026-12-12T00:00:00+01:00', 'weird', '🪵', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'caga-tio-log', 'de', 'caga-tio-weihnachtsklotz',
  'In Katalonien verprügeln Kinder an Heiligabend einen Holzklotz, bis er Süßigkeiten kackt',
  'Ein Baumstamm mit Gesicht, wochenlang gefüttert, dann mit Stöcken bearbeitet. Frohe Weihnachten!',
  'In Katalonien füttern Familien vor Weihnachten den Holzklotz Caga Tió und schlagen ihn an Heiligabend mit Stöcken, bis er Geschenke und Turrón „ausscheidet“.',
  'Plätzchen backen, Lieder singen, Geschenke auspacken. Katalanische Kinder machen das auch, nur dass bei ihnen ein Holzklotz eine sehr spezielle Rolle spielt.

## Ein Klotz mit Gesicht

Er heißt Caga Tió, auch Tió de Nadal. Laut NPR ist das ein Stück Holz mit aufgemaltem, lachendem Gesicht und einer roten Mütze. Anfang Dezember taucht er auf den Märkten auf, in allen Größen, und viele Familien holen sich einen nach Hause.

Dann beginnt die Pflege. Mehrere Wochen lang füttern die Familien den Tió mit Essensresten. Damit er nicht friert, liegt über seinem hinteren Ende eine Decke. Er soll schließlich in Form sein, wenn es darauf ankommt. Ein hungriger Tió liefert nichts, so die Logik.

## Schläge für Süßes

Am 24. Dezember ist es so weit. Die Kinder singen ein traditionelles Lied und schlagen dabei mit Stöcken oder Holzlöffeln auf den Klotz. Der Text ist eindeutig: Der Tió soll bloß keinen salzigen Hering kacken, sondern Turrón, das spanische Weihnachtsnougat aus Honig, Eiweiß und Mandeln.

Laut NPR wird ein Kind zwischendurch in ein anderes Zimmer geschickt, um dort zu beten. Wenn es zurückkommt, heben die Eltern die Decke an, und darunter liegen Geschenke und Süßigkeiten. Matador Network fasst es knapp zusammen: Kinder schlagen einen Holzklotz, bis er Süßigkeiten kackt.

> Bonusfakt: Woher der Brauch kommt, weiß niemand genau. Eine Broschüre der Stadt bringt ihn laut NPR mit alten Feuern zur Wintersonnenwende in Verbindung, erklären konnte das aber keiner der Befragten.

Irgendwo zwischen Kindergeburtstag und Kunstperformance liegt also ein Weihnachtsbrauch, den niemand erklären kann und alle lieben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('caga-tio-log', 'de', 1, 'Turrón aus Spanien', 'Turron Spanien Mandel Nougat', 'Das spanische Weihnachtsnougat zum Probieren.'),
  ('caga-tio-log', 'de', 2, 'Reiseführer Barcelona', 'Reiseführer Barcelona', 'Tipps für Weihnachtsmärkte und Viertel der Stadt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('caga-tio-log', 'de', 1, 'NPR: A Catalan Log That Poops Nougats At Christmas', 'https://www.wamc.org/2017-12-22/a-catalan-log-that-poops-nougats-at-christmas'),
  ('caga-tio-log', 'de', 2, 'Matador Network: Barcelona''s Pooping Christmas Log: The Wild Tradition of Caga Tió', 'https://matadornetwork.com/read/caga-tio/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'caga-tio-log', 'en', 'caga-tio-pooping-log',
  'In Catalonia, kids beat a log on Christmas Eve until it poops out candy',
  'A log with a face, fed for weeks, then whacked with sticks. Merry Christmas!',
  'In Catalonia, families feed a log called Caga Tió before Christmas and beat it with sticks on Christmas Eve until it "poops out" presents and turrón.',
  'Baking cookies, singing songs, unwrapping presents. Kids in Catalonia do all that too, except a log plays a very special part.

## A log with a face

It''s called Caga Tió, also Tió de Nadal. According to NPR, it''s a piece of wood with a painted smiling face and a red hat. It shows up at markets in early December, and many families take one home.

Then the care begins. For several weeks, families feed the Tió scraps of food. To keep it from getting cold, a blanket covers its back end. It has to be in good shape when the big moment comes, after all.

## Beatings for sweets

On 24 December, it''s time. The children sing a traditional song while hitting the log with sticks or wooden spoons. The lyrics are clear: the Tió must not poop out salty herring, but turrón, the Spanish Christmas nougat made of honey, egg white and almonds.

According to NPR, one child is sent to another room to pray in the middle of it all. When they come back, the parents lift the blanket, and underneath are presents and sweets. Matador Network sums it up: kids hit a log until it poops out candy.

> Bonus fact: Nobody knows exactly where the custom comes from. A city pamphlet links it to old winter solstice fires, NPR reports, but none of the people interviewed could explain it.

Somewhere between a kids'' party and performance art lies a Christmas tradition that nobody can explain and everybody loves.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('caga-tio-log', 'en', 1, 'Spanish turrón', 'spanish turron almond nougat', 'The Spanish Christmas nougat to try at home.'),
  ('caga-tio-log', 'en', 2, 'Barcelona travel guide', 'Barcelona travel guide', 'Tips on the city''s Christmas markets and neighborhoods.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('caga-tio-log', 'en', 1, 'NPR: A Catalan Log That Poops Nougats At Christmas', 'https://www.wamc.org/2017-12-22/a-catalan-log-that-poops-nougats-at-christmas'),
  ('caga-tio-log', 'en', 2, 'Matador Network: Barcelona''s Pooping Christmas Log: The Wild Tradition of Caga Tió', 'https://matadornetwork.com/read/caga-tio/');
