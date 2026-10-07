-- WTFact-Fakt „Der German Chocolate Cake ist nicht deutsch. Er ist nach einem Mr. German benannt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('german-chocolate-cake-sam-german', '2026-10-07T03:57:42+02:00', 'food', '🍫', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'german-chocolate-cake-sam-german', 'de', 'german-chocolate-cake-nicht-deutsch',
  'Der German Chocolate Cake ist nicht deutsch. Er ist nach einem Mr. German benannt',
  'Ein amerikanischer Kuchen, ein Schokoladenmacher namens Sam German und ein verlorenes Apostroph-s.',
  'Der German Chocolate Cake heißt nach Sam German, der 1852 eine Backschokolade entwickelte, und nicht nach Deutschland.',
  'Schokoteig, dazwischen und obendrauf eine dicke Schicht aus Pekannüssen und Kokos: Das ist der German Chocolate Cake, ein Klassiker in den USA. Klingt nach Schwarzwald, Omas Kaffeetafel und deutscher Backtradition. **Nur: Mit Deutschland hat der Kuchen nichts zu tun. Er ist nach einem Mann benannt, der mit Nachnamen German hieß.**

## Ein Mr. German und seine Schokolade

Die Geschichte spielt bei der Schokoladenfirma Walter Baker & Company. Dort entwickelte ein Mann namens Sam German im Jahr 1852 eine süßere Backschokolade. Die Firma benannte das Produkt nach ihm: „German''s Chocolate“, also wörtlich „Germans Schokolade“.

Deutsch war Sam German übrigens nicht. Die West Texas A&M University nennt ihn einen Amerikaner, die Saturday Evening Post schreibt, er sei entweder Amerikaner oder Engländer gewesen. Einig sind sich beide: aus Deutschland kam er nicht.

## Ein Rezept aus Texas

Rund 100 Jahre lang blieb „German''s Chocolate“ eher unauffällig. Dann schickte eine Hausfrau aus Texas ihr Kuchenrezept an eine Zeitung in Dallas. Laut Saturday Evening Post erschien es im Juni 1957 in der Dallas Morning News als „Recipe of the Day“.

Der Kuchen wurde ein Hit. Die Verkäufe von „German''s Chocolate“ stiegen in jenem Jahr um 73 Prozent, berichten sowohl die Saturday Evening Post als auch NPR.

> Die Firma hinter der Schokolade hat selbst eine schräge Vorgeschichte: Ab 1764 importierten John Hannon und Walter Baker Kakaobohnen. 1779 verschwand Hannon auf rätselhafte Weise auf See, und Baker wurde alleiniger Inhaber der Firma.

## Wo ist das Apostroph-s hin?

Irgendwann unterwegs verlor der „German''s Chocolate Cake“ laut NPR sein Apostroph-s. Übrig blieb „German Chocolate Cake“, und plötzlich klang der Kuchen nach Deutschland. Die Saturday Evening Post vermutet, dass Redakteure, die die Marke nicht kannten, beim Nachdrucken des Rezepts das „''s“ für einen Fehler hielten und es strichen.

So landete ein amerikanischer Kuchen mit einem deutschen Ruf, den er nie verdient hat. Ein einziges Apostroph-s, und Deutschland bekam das Lob für einen texanischen Hit.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('german-chocolate-cake-sam-german', 'de', 1, 'Springform zum Backen von Torten', 'Springform 26 cm antihaft', 'Der Klassiker für Schichtkuchen: Rand auf, Kuchen raus, nichts bricht.'),
  ('german-chocolate-cake-sam-german', 'de', 2, 'Backbuch mit amerikanischen Kuchen und Desserts', 'Backbuch amerikanische Kuchen', 'Sammelt US-Klassiker von Layer Cake bis Pie, mit Rezepten für die deutsche Küche.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('german-chocolate-cake-sam-german', 'de', 1, 'The Saturday Evening Post: In a Word: German Chocolate Cake Isn''t', 'https://www.saturdayeveningpost.com/2018/12/in-a-word-german-chocolate-cake-isnt/'),
  ('german-chocolate-cake-sam-german', 'de', 2, 'NPR: Celebrating Not-So-German Chocolate Cake', 'https://www.npr.org/transcripts/11331541'),
  ('german-chocolate-cake-sam-german', 'de', 3, 'Science Questions with Surprising Answers: What part of Germany does German chocolate cake come from?', 'https://www.wtamu.edu/~cbaird/sq/2012/11/16/what-part-of-germany-does-german-chocolate-cake-come-from/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'german-chocolate-cake-sam-german', 'en', 'german-chocolate-cake-not-german',
  'German chocolate cake isn''t German. It''s named after a Mr. German',
  'An American cake, a chocolate maker named Sam German and one lost apostrophe.',
  'German chocolate cake is named after Sam German, who developed a baking chocolate in 1852, not after Germany.',
  'Chocolate sponge layers, with a thick pecan-coconut frosting between and on top: that''s German chocolate cake, an American classic. Sounds like the Black Forest, Grandma''s coffee table and old-world baking. **Except the cake has nothing to do with Germany. It''s named after a man whose last name was German.**

## A Mr. German and his chocolate

The story takes place at the chocolate company Walter Baker & Company. There, in 1852, a man named Sam German developed a sweeter baking chocolate. The company named the product after him: "German''s Chocolate."

And no, Sam German wasn''t German. West Texas A&M University calls him an American, while the Saturday Evening Post says he was either American or English. Both agree on one thing: he wasn''t from Germany.

## A recipe from Texas

For about 100 years, German''s Chocolate stayed fairly low-key. Then a Texas homemaker sent her cake recipe to a Dallas newspaper. According to the Saturday Evening Post, it ran as the Recipe of the Day in The Dallas Morning News in June 1957.

The cake was a hit. Sales of German''s Chocolate shot up 73 percent that year, as both the Saturday Evening Post and NPR report.

> The company behind the chocolate has an odd backstory of its own: starting in 1764, John Hannon and Walter Baker imported cocoa beans. In 1779, Hannon mysteriously disappeared at sea, and Baker became the sole owner of the company.

## Where did the apostrophe go?

Somewhere along the way, German''s Chocolate Cake lost its apostrophe-s, NPR says. What was left, "German chocolate cake," suddenly sounded like it came from Germany. The Saturday Evening Post suggests that copy editors who didn''t know the brand may have taken the "''s" for a typo and cut it.

That''s how an American cake picked up a German reputation it never earned. One missing apostrophe, and Germany got the credit for a Texas hit.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('german-chocolate-cake-sam-german', 'en', 1, 'Nonstick springform cake pan', 'springform pan 9 inch nonstick', 'Built for layer cakes: open the ring, lift out the cake, nothing breaks.'),
  ('german-chocolate-cake-sam-german', 'en', 2, 'Cookbook of classic American cakes', 'classic American cake cookbook', 'Collects layer cakes, pies and other US classics with step-by-step recipes.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('german-chocolate-cake-sam-german', 'en', 1, 'The Saturday Evening Post: In a Word: German Chocolate Cake Isn''t', 'https://www.saturdayeveningpost.com/2018/12/in-a-word-german-chocolate-cake-isnt/'),
  ('german-chocolate-cake-sam-german', 'en', 2, 'NPR: Celebrating Not-So-German Chocolate Cake', 'https://www.npr.org/transcripts/11331541'),
  ('german-chocolate-cake-sam-german', 'en', 3, 'Science Questions with Surprising Answers: What part of Germany does German chocolate cake come from?', 'https://www.wtamu.edu/~cbaird/sq/2012/11/16/what-part-of-germany-does-german-chocolate-cake-come-from/');
