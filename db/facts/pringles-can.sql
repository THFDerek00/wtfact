-- WTFact-Fakt „Ein Teil vom Erfinder der Pringles-Dose ruht in einer Pringles-Dose“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('pringles-can', '2026-09-22', 'weird', '🥫', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pringles-can', 'de', 'pringles-erfinder-dose',
  'Ein Teil vom Erfinder der Pringles-Dose ruht in einer Pringles-Dose',
  'Fredric Baur hat seine bekannteste Erfindung mit ins Grab genommen.',
  'Fredric Baur, der Erfinder der Pringles-Dose, ließ einen Teil seiner Asche in einer Pringles-Dose beisetzen.',
  'Manche Menschen lassen sich mit ihrem Lieblingsbuch beisetzen, andere mit einem Familienfoto. Fredric Baur wählte etwas Knusprigeres. **Ein Teil seiner Asche liegt in einer Pringles-Dose.** Der Grund: Er hat sie erfunden.

## Ein Chemiker mit Stapelidee

Baur hatte in organischer Chemie promoviert und arbeitete für den Konsumgüterkonzern Procter & Gamble. Dort tüftelte er nicht nur an Chips, sondern auch an Frittierölen und gefriergetrocknetem Eis. Seine bekannteste Arbeit ist aber die Röhre für Pringles.

Die Idee dahinter ist ziemlich clever. Pringles haben eine gebogene Sattelform, mathematisch ein hyperbolisches Paraboloid. Dadurch lassen sich die Chips sauber übereinanderstapeln und passen in eine schmale, wiederverschließbare Dose. Statt halb leerer Tüten voller Krümel bekommst du ordentliche Stapel. 1966 meldete Baur das Patent für die Dose und die Stapelverpackung an, 1971 wurde es erteilt. Auf den Markt kamen Pringles schon 1968.

## Der letzte Wunsch

Baur starb im Mai 2008 mit 89 Jahren in Cincinnati im US-Bundesstaat Ohio. Er hatte sich gewünscht, in seiner Erfindung beigesetzt zu werden. Seine Kinder erfüllten ihm das: Sie füllten einen Teil seiner Asche in eine Pringles-Dose der Sorte Original und setzten sie in seinem Grab bei. **Der Rest der Asche kam in eine Urne direkt daneben**, ein kleiner Teil ging an ein Enkelkind.

Morbide muss man das nicht finden. Eher wirkt es wie ein augenzwinkernder Abschied von einem Mann, der zu Recht stolz auf seine Röhre war. Welcher Erfinder kann schon sagen, dass er in seinem eigenen Produkt ruht?

> Pringles gehörten jahrzehntelang zu Procter & Gamble. 2012 ging die Marke an Kellogg''s, inzwischen gehört sie zum Konzern Mars.

Seine Röhre steht heute in Supermärkten auf der ganzen Welt. Mindestens eine davon hat einen ganz besonderen Inhalt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pringles-can', 'de', 1, 'Sachbuch über die Geschichte von Alltagserfindungen', 'Erfindungen Alltag Buch Geschichte', 'Erzählt, wie Dinge wie Reißverschluss, Dosenöffner und Klebezettel entstanden sind. Perfekt zum Schmökern.'),
  ('pringles-can', 'de', 2, 'Snackschale mit Fächern für Chips und Dips', 'Snackschale Chips Dip', 'Chips in die Mitte, Dips in die Fächer. Macht jeden Filmabend ein bisschen besser.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pringles-can', 'de', 1, 'Wikipedia: Fred Baur', 'https://en.wikipedia.org/wiki/Fred_Baur'),
  ('pringles-can', 'de', 2, 'Wikipedia: Pringles', 'https://en.wikipedia.org/wiki/Pringles'),
  ('pringles-can', 'de', 3, 'NPR: Inventor''s Ashes Buried in His Creation: Pringles Can', 'https://www.npr.org/2008/06/03/91098067/inventors-ashes-buried-in-his-creation-pringles-can'),
  ('pringles-can', 'de', 4, 'Snopes: Was the Pringles Creator Cremated and Sold to Customers?', 'https://www.snopes.com/fact-check/pringles-urn/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pringles-can', 'en', 'pringles-inventor-can',
  'Part of the Pringles can inventor rests in a Pringles can',
  'Fredric Baur took his most famous invention all the way to the grave.',
  'Fredric Baur, who invented the Pringles can, had part of his ashes buried in one.',
  'Some people are buried with their favorite book, others with a family photo. Fredric Baur went with something crunchier. **Part of his ashes rests in a Pringles can.** The reason: he invented it.

## A chemist with a stacking idea

Baur had a PhD in organic chemistry and worked for consumer goods giant Procter & Gamble. Besides chips, he worked on frying oils and freeze-dried ice cream. But his most famous creation is the Pringles tube.

The idea behind it is pretty clever. Pringles have a curved saddle shape, which mathematicians call a hyperbolic paraboloid. That lets the chips stack neatly and fit into a slim, resealable can. Instead of a half-empty bag full of crumbs, you get tidy stacks. Baur filed the patent for the can and the stacked packaging in 1966, and it was granted in 1971. Pringles themselves hit the market in 1968.

## A final wish

Baur died in May 2008 at age 89 in Cincinnati, Ohio. He had asked to be buried in his invention, and his children made it happen. They placed part of his ashes in an Original flavor Pringles can and buried it in his grave. **The rest of his ashes went into an urn right next to it**, and a small portion went to a grandchild.

You don''t have to find that morbid. It feels more like a wink from a man who was rightly proud of his tube. How many inventors can say they rest inside their own product?

> Pringles belonged to Procter & Gamble for decades. The brand went to Kellogg''s in 2012, and it''s now owned by Mars.

His tube now sits on supermarket shelves all over the world. At least one of them holds something very special.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pringles-can', 'en', 1, 'Book on the history of everyday inventions', 'history of everyday inventions book', 'Explains how things like zippers, can openers and sticky notes came to be. Perfect for browsing.'),
  ('pringles-can', 'en', 2, 'Chip and dip serving bowl', 'chip and dip serving bowl', 'Chips in the middle, dips around the edge. Instantly upgrades any movie night.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pringles-can', 'en', 1, 'Wikipedia: Fred Baur', 'https://en.wikipedia.org/wiki/Fred_Baur'),
  ('pringles-can', 'en', 2, 'Wikipedia: Pringles', 'https://en.wikipedia.org/wiki/Pringles'),
  ('pringles-can', 'en', 3, 'NPR: Inventor''s Ashes Buried in His Creation: Pringles Can', 'https://www.npr.org/2008/06/03/91098067/inventors-ashes-buried-in-his-creation-pringles-can'),
  ('pringles-can', 'en', 4, 'Snopes: Was the Pringles Creator Cremated and Sold to Customers?', 'https://www.snopes.com/fact-check/pringles-urn/');
