-- WTFact-Fakt „In Island verschenkt man an Heiligabend Bücher und liest dann die ganze Nacht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('iceland-christmas-book-flood', '2026-12-17T00:00:00+01:00', 'popculture', '📚', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'iceland-christmas-book-flood', 'de', 'island-buecherflut-heiligabend',
  'In Island verschenkt man an Heiligabend Bücher und liest dann die ganze Nacht',
  'Kein Fernsehen, keine Konsole. Islands liebstes Weihnachtsritual ist ein Buch und eine Decke.',
  'In Island heißt die Zeit vor Weihnachten Jólabókaflóð, die Weihnachtsbücherflut: Man verschenkt an Heiligabend Bücher und verbringt den Abend mit Lesen.',
  'Geschenke auspacken, essen, dann Fernsehen oder Spieleabend. So endet Heiligabend bei vielen Familien in Deutschland. In Island wird es danach still, weil alle lesen.

## Die Weihnachtsbücherflut

Das Wort dafür ist Jólabókaflóð, die Weihnachtsbücherflut. Laut NPR beginnt sie jedes Jahr mit einem Katalog: Der isländische Verlegerverband schickt das Heft Bókatíðindi kostenlos an jeden Haushalt im Land. Darin stehen die Neuerscheinungen der Saison, in dem Jahr, über das NPR berichtete, ein Rekord von 842 Titeln.

Dann wird bestellt und eingepackt. Die meisten Bücher des Jahres verkaufen sich in Island zwischen Ende September und Anfang November. Am Abend des 24. Dezember tauschen Familien die Bücher aus und verbringen den Rest des Abends oft mit Lesen. Guide to Iceland beschreibt es genauso: Nach den Geschenken machen es sich viele mit dem neuen Buch gemütlich.

## Eine Tradition aus Papiermangel

Woher kommt das? Laut NPR aus dem Zweiten Weltkrieg. Damals waren Devisen knapp und viele importierte Geschenke kaum zu bekommen. Für Papier galten aber lockerere Regeln als für viele andere Waren. Bücher wurden so zum Geschenk der Wahl, und die Gewohnheit blieb bis heute.

Island ist auch sonst ein Leseland. Laut NPR erscheinen dort pro Kopf so viele Bücher wie in keinem anderen Land, etwa fünf Titel pro 1000 Einwohner.

> Bonusfakt: Guide to Iceland zählt im Katalog Bókatíðindi meist rund 700 Titel. Für ein Land mit so wenigen Menschen ist das eine riesige Auswahl.

Ein Abend mit Decke, Kakao und einem neuen Buch, ganz ohne Bildschirm: Vielleicht haben die Isländer das beste Weihnachtsritual von allen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('iceland-christmas-book-flood', 'de', 1, 'Leselampe zum Anklemmen', 'Leselampe Buch Klemme LED', 'Gemütliches Licht zum Lesen auf dem Sofa.'),
  ('iceland-christmas-book-flood', 'de', 2, 'Kuscheldecke aus Wolle', 'Wolldecke Kuscheldecke Sofa', 'Für lange Leseabende im Winter.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('iceland-christmas-book-flood', 'de', 1, 'NPR: Literary Iceland Revels In Its Annual ''Christmas Book Flood''', 'https://www.npr.org/2012/12/25/167537939/literary-iceland-revels-in-its-annual-christmas-book-flood'),
  ('iceland-christmas-book-flood', 'de', 2, 'Guide to Iceland: The Icelanders and their Big Love of books', 'https://guidetoiceland.is/no/kontakt-med-lokalkjente/aldasigmunds/the-icelanders-and-their-big-love-of-books');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'iceland-christmas-book-flood', 'en', 'iceland-christmas-book-flood',
  'In Iceland, people give books on Christmas Eve and then read all night',
  'No TV, no console. Iceland''s favorite Christmas ritual is a book and a blanket.',
  'In Iceland, the run-up to Christmas is called Jólabókaflóð, the Christmas book flood: people give books on Christmas Eve and spend the evening reading.',
  'Open presents, eat, then TV or a game night. That''s how Christmas Eve ends for many people. In Iceland, it goes quiet afterwards, because everyone is reading.

## The Christmas book flood

The word for it is Jólabókaflóð, the Christmas book flood. According to NPR, it starts every year with a catalog: the Iceland Publishers Association sends the booklet Bókatíðindi free to every household in the country. It lists the season''s new releases, a record 842 titles in the year NPR reported on.

Then people order and wrap. Most of the year''s books sell in Iceland between late September and early November. On the evening of 24 December, families exchange books and often spend the rest of the night reading. Guide to Iceland describes the same thing: after the presents, many people settle in with their new book.

## A tradition born from scarcity

Where does it come from? According to NPR, the Second World War. Foreign currency was scarce back then and many imported gifts were hard to get. But the rules for importing paper were looser. So books became the gift of choice, and the habit stuck.

Iceland is a reading country in general. According to NPR, it publishes more titles per person than any other country, about five per 1000 people.

> Bonus fact: Guide to Iceland puts the Bókatíðindi catalog at around 700 titles in a typical year. For a country with so few people, that''s a huge selection.

An evening with a blanket, hot chocolate and a new book: maybe Icelanders have the best Christmas ritual of all.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('iceland-christmas-book-flood', 'en', 1, 'Clip-on reading light', 'clip on book reading light LED', 'Cozy light for reading on the sofa.'),
  ('iceland-christmas-book-flood', 'en', 2, 'Wool throw blanket', 'wool throw blanket sofa', 'For long reading evenings in winter.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('iceland-christmas-book-flood', 'en', 1, 'NPR: Literary Iceland Revels In Its Annual ''Christmas Book Flood''', 'https://www.npr.org/2012/12/25/167537939/literary-iceland-revels-in-its-annual-christmas-book-flood'),
  ('iceland-christmas-book-flood', 'en', 2, 'Guide to Iceland: The Icelanders and their Big Love of books', 'https://guidetoiceland.is/no/kontakt-med-lokalkjente/aldasigmunds/the-icelanders-and-their-big-love-of-books');
