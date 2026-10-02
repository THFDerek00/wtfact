-- WTFact-Fakt „Der erste echte Computer-Bug war eine Motte, und sie liegt heute im Museum“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('first-bug-moth', '2026-08-22', 'tech', '🦋', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-bug-moth', 'de', 'erster-computer-bug-motte',
  'Der erste echte Computer-Bug war eine Motte, und sie liegt heute im Museum',
  '1947 fanden Techniker in einem Harvard-Rechner ein Insekt und klebten es ins Logbuch. Der Begriff „Bug“ ist aber noch älter.',
  '1947 steckte in einem Relais des Harvard-Rechners Mark II eine echte Motte, und die Techniker klebten sie mit dem Vermerk „First actual case of bug being found“ ins Logbuch.',
  'Wenn deine App abstürzt, heißt es: „Da ist ein Bug drin.“ Das klingt nach Fachjargon, aber einmal war der Bug ganz wörtlich gemeint. **1947 steckte in einem Computer der Harvard University eine echte Motte.**

## Ein Insekt im Relais

Der Rechner hieß Mark II und war eine riesige Maschine voller elektromechanischer Relais, also kleiner Schalter, die klickend auf- und zugehen. Als er Probleme machte, suchten die Techniker nach der Ursache und fanden **eine Motte, die in einem Relais feststeckte**.

Sie zogen das Tier heraus und klebten es mit Klebeband ins Logbuch der Maschine. Daneben notierten sie: „First actual case of bug being found.“ Auf Deutsch etwa: erster tatsächlicher Fall, in dem ein Käfer gefunden wurde.

Die Seite mit der Motte ist bis heute erhalten. **Das Logbuch gehört zur Sammlung des National Museum of American History der Smithsonian Institution in Washington.**

## Der Witz funktioniert nur, weil es das Wort schon gab

Jetzt kommt der Haken an der Legende: Die Motte war nicht der Ursprung des Begriffs. Der Vermerk ist ein Wortspiel. „First actual case“ ergibt nur Sinn, wenn „Bug“ für technische Fehler schon gebräuchlich war.

Und das war es. **Thomas Edison schrieb bereits 1878 in Briefen von „Bugs“**, wenn er kleine Fehler und Macken in seinen Erfindungen meinte. Die Techniker an der Mark II kannten den Ausdruck also und hatten plötzlich einen Bug, den man anfassen konnte.

## Grace Hopper machte die Geschichte berühmt

Bekannt gemacht hat die Geschichte vor allem Grace Hopper. Die Mathematikerin und Computerpionierin arbeitete 1947 im Team der Mark II und erzählte die Anekdote später gern. Das Logbuch war allerdings nicht ihres, und die Motte fand ein Techniker aus ihrem Team.

Hopper und ihr Umfeld trugen jedenfalls dazu bei, dass „Bug“ und „Debugging“ zu festen Begriffen der Informatik wurden.

> Grace Hopper machte bei der US Navy Karriere und stieg bis zum Rang eines Rear Admiral auf, also Konteradmiralin.

Heute zerquetscht niemand mehr Motten in Relais. Debuggen heißt der Job trotzdem noch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-bug-moth', 'de', 1, 'Quietscheente zum Rubber-Duck-Debugging', 'Quietscheente Programmierer Debugging', 'Eine Gummiente für den Schreibtisch. Programmierer erklären ihr Schritt für Schritt ihren Code und finden so ihre Fehler.'),
  ('first-bug-moth', 'de', 2, 'Biografie über Grace Hopper', 'Grace Hopper Biografie Buch', 'Das Leben einer Computerpionierin, die bei der US Navy Karriere machte und das Programmieren mitprägte.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-bug-moth', 'de', 1, 'Smithsonian: Log Book With Computer Bug', 'https://www.si.edu/object/nmah_334663'),
  ('first-bug-moth', 'de', 2, 'Wikipedia: Programmfehler', 'https://de.wikipedia.org/wiki/Programmfehler'),
  ('first-bug-moth', 'de', 3, 'Wikipedia: Grace Hopper', 'https://de.wikipedia.org/wiki/Grace_Hopper'),
  ('first-bug-moth', 'de', 4, 'JSTOR Daily: The Bug in the Computer Bug Story', 'https://daily.jstor.org/the-bug-in-the-computer-bug-story/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-bug-moth', 'en', 'first-computer-bug-moth',
  'The first real computer bug was a moth, and it''s in a museum now',
  'In 1947, technicians found an insect inside a Harvard computer and taped it into the logbook. But the word "bug" is even older.',
  'In 1947, a real moth got stuck in a relay of Harvard''s Mark II computer, and the operators taped it into the logbook with the note "First actual case of bug being found."',
  'When your app crashes, people say: "There''s a bug in it." Sounds like tech jargon, but once, the bug was totally literal. **In 1947, a real moth got stuck inside a computer at Harvard University.**

## An insect in the relay

The computer was called the Mark II, a massive machine full of electromechanical relays, which are little switches that click open and shut. When it acted up, the operators went looking for the cause and found **a moth trapped in one of the relays**.

They pulled it out and taped it into the machine''s logbook. Next to it, they wrote: "First actual case of bug being found."

That page still exists. **The logbook is part of the collection of the Smithsonian''s National Museum of American History in Washington.**

## The joke only works because the word already existed

Here''s the twist in the legend: the moth wasn''t where the term came from. The note is a pun. "First actual case" only makes sense if "bug" was already common slang for technical glitches.

And it was. **Thomas Edison was writing about "bugs" in his letters back in 1878**, meaning the little faults and quirks in his inventions. So the Mark II operators knew the term and suddenly had a bug they could actually touch.

## Grace Hopper made it famous

The person who made the story famous was Grace Hopper. The mathematician and computing pioneer worked on the Mark II team in 1947 and loved telling the anecdote later on. The logbook wasn''t hers, though, and it was her associates who found the moth.

Either way, Hopper and her colleagues helped make "bug" and "debugging" standard words in computer science.

> Grace Hopper built a career in the US Navy and eventually reached the rank of rear admiral.

Nobody squashes moths in relays anymore. The job is still called debugging, though.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-bug-moth', 'en', 1, 'Rubber duck for rubber duck debugging', 'rubber duck debugging programmer', 'A rubber duck for your desk. Programmers explain their code to it line by line and spot their mistakes along the way.'),
  ('first-bug-moth', 'en', 2, 'Grace Hopper biography', 'Grace Hopper biography book', 'The life of a computing pioneer who rose through the US Navy and helped shape modern programming.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-bug-moth', 'en', 1, 'Smithsonian: Log Book With Computer Bug', 'https://www.si.edu/object/nmah_334663'),
  ('first-bug-moth', 'en', 2, 'Wikipedia: Software bug', 'https://en.wikipedia.org/wiki/Software_bug'),
  ('first-bug-moth', 'en', 3, 'Wikipedia: Grace Hopper', 'https://en.wikipedia.org/wiki/Grace_Hopper'),
  ('first-bug-moth', 'en', 4, 'JSTOR Daily: The Bug in the Computer Bug Story', 'https://daily.jstor.org/the-bug-in-the-computer-bug-story/');
