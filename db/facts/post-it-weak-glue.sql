-- WTFact-Fakt „Post-its begannen 1968 mit einem Kleber, der zu schwach war“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('post-it-weak-glue', NULL, 'brands', '📝', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'post-it-weak-glue', 'de', 'post-its-zu-schwacher-kleber',
  'Post-its begannen 1968 mit einem Kleber, der zu schwach war',
  'Die Haftnotiz ist das Ergebnis eines Klebers, der nicht richtig klebte, und eines Kirchenchors mit rutschenden Lesezeichen.',
  'Der 3M-Forscher Spencer Silver wollte 1968 einen starken Kleber entwickeln und bekam einen, der sich wieder ablösen ließ. Erst Jahre später fand ein Kollege im Kirchenchor die passende Verwendung.',
  'Auf deinem Bildschirmrand, im Lehrbuch, am Kühlschrank: Post-its kleben überall. Und das nur, weil ein Kleber genau das nicht tat, was er sollte.

## Der Kleber, den keiner brauchte

1968 arbeitete Spencer Silver laut der Online-Enzyklopädie der Minnesota Historical Society als Wissenschaftler in der Zentrale von 3M in Maplewood. Sein Ziel war ein starker Klebstoff. Heraus kam das Gegenteil: ein Kleber, der zwar haftete, sich aber wieder ablösen und neu ankleben ließ.

Silver hielt die Entdeckung trotzdem für nützlich. Er suchte laut MNopedia rund fünf Jahre lang nach einer Anwendung. Das Problem: Niemand wusste so recht, wofür man einen Kleber braucht, der nicht richtig festhält.

## Rettung aus dem Kirchenchor

Die Lösung kam von seinem Kollegen Art Fry. Der sang in einem Kirchenchor und ärgerte sich, dass seine Lesezeichen aus Papier ständig aus dem Gesangbuch fielen. Er erinnerte sich an Silvers Kleber und dachte: Ein Lesezeichen, das ein bisschen klebt, aber keine Spuren hinterlässt, wäre perfekt. MNopedia datiert diesen Einfall auf 1973.

Aus dem Lesezeichen wurde ein Notizzettel. Ursprünglich hieß das Produkt „Press n'' Peel“. 1977 startete 3M erste Markttests in mehreren Großstädten.

## Der Boise-Blitz

Richtig in Fahrt kam die Sache 1978 mit einer großen Testaktion in Boise im US-Bundesstaat Idaho, die als „Boise Blitz“ bekannt wurde. 3M verteilte dort Gratisproben. Laut MNopedia sagten etwa 90 Prozent der Leute, die das Produkt ausprobiert hatten, dass sie es kaufen würden. 1980 kamen die Haftnotizen dann landesweit in die US-Läden.

Zwölf Jahre lagen also zwischen dem missglückten Kleber und dem fertigen Produkt im Regal.

> Bonusfakt: 2004 zeigte das Museum of Modern Art in New York in der Ausstellung „Humble Masterpieces“ ein Post-it aus seiner Sammlung.

Manchmal ist der größte Erfolg eines Labors ein Kleber, der loslässt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('post-it-weak-glue', 'de', 1, 'Haftnotizen im Farbmix', 'Haftnotizen bunt Set', 'Praktisch für Lernzettel, To-do-Listen und Markierungen im Buch.'),
  ('post-it-weak-glue', 'de', 2, 'Transparente Haftnotizen', 'transparente Haftnotizen', 'Durchsichtige Zettel, unter denen der Text im Buch lesbar bleibt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('post-it-weak-glue', 'de', 1, 'MNopedia: Post-it Notes', 'https://mnopedia.org/thing/post-it-notes'),
  ('post-it-weak-glue', 'de', 2, 'KSTP: The history of Post-it Notes: How 3M scientists and choir practice led to the little yellow paper', 'https://kstp.com/kstp-news/local-news/the-history-of-post-it-notes-how-3m-scientists-and-choir-practice-led-to-the-little-yellow-paper/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'post-it-weak-glue', 'en', 'post-it-notes-too-weak-glue',
  'Post-it Notes started in 1968 with a glue that was too weak',
  'The sticky note exists because of an adhesive that didn''t really stick, and a church choir with slipping bookmarks.',
  'In 1968, 3M scientist Spencer Silver was trying to make a strong adhesive and ended up with one that could be peeled off again. Only years later did a colleague in a church choir find a use for it.',
  'On the edge of your monitor, in your textbook, on the fridge: Post-it Notes stick everywhere. And all because a glue didn''t do what it was supposed to.

## The glue nobody needed

In 1968, according to MNopedia, the online encyclopedia of the Minnesota Historical Society, Spencer Silver was a scientist at 3M''s headquarters in Maplewood. His goal was a strong adhesive. What he got was the opposite: a glue that held on, but could be peeled off and stuck back down again.

Silver still thought his discovery was useful. According to MNopedia, he spent about five years looking for an application. The problem: nobody really knew what to do with a glue that didn''t hold properly.

## Saved by a church choir

The answer came from his colleague Art Fry. Fry sang in a church choir and was annoyed that his paper bookmarks kept falling out of his hymnal. He remembered Silver''s adhesive and thought: a bookmark that sticks a little but leaves no marks would be perfect. MNopedia dates that idea to 1973.

The bookmark became a note. The product was originally called "Press n'' Peel". In 1977, 3M started its first market tests in several major cities.

## The Boise Blitz

Things really took off in 1978 with a big test campaign in Boise, Idaho, known as the "Boise Blitz". 3M handed out free samples there. According to MNopedia, about 90 percent of the people who tried the product said they would buy it. In 1980, the sticky notes went on sale across the United States.

So twelve years passed between the glue that went wrong and the finished product on the shelf.

> Bonus fact: In 2004, the Museum of Modern Art in New York showed a Post-it Note from its collection in its "Humble Masterpieces" exhibition.

Sometimes a lab''s biggest hit is a glue that knows when to let go.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('post-it-weak-glue', 'en', 1, 'Sticky notes in mixed colors', 'sticky notes assorted colors', 'Handy for study notes, to-do lists and marking pages in a book.'),
  ('post-it-weak-glue', 'en', 2, 'Transparent sticky notes', 'transparent sticky notes', 'See-through notes that let you still read the text underneath.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('post-it-weak-glue', 'en', 1, 'MNopedia: Post-it Notes', 'https://mnopedia.org/thing/post-it-notes'),
  ('post-it-weak-glue', 'en', 2, 'KSTP: The history of Post-it Notes: How 3M scientists and choir practice led to the little yellow paper', 'https://kstp.com/kstp-news/local-news/the-history-of-post-it-notes-how-3m-scientists-and-choir-practice-led-to-the-little-yellow-paper/');
