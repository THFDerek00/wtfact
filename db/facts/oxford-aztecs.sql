-- WTFact-Fakt „Die Universität Oxford ist älter als das Aztekenreich“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('oxford-aztecs', '2026-08-27', 'history', '🎓', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'oxford-aztecs', 'de', 'oxford-aelter-als-azteken',
  'Die Universität Oxford ist älter als das Aztekenreich',
  'In Oxford wurde schon unterrichtet, als es Tenochtitlan noch gar nicht gab. Die Zeitachse der Geschichte ist schräger, als man denkt.',
  'In Oxford wurde schon um 1096 gelehrt, die Azteken gründeten ihre Hauptstadt Tenochtitlan erst um 1325.',
  'Bei den Azteken denkt man an Pyramidentempel, Federschmuck und eine uralte Hochkultur. Bei Oxford an Studis mit Talar und Bibliotheken voller Bücher. Gefühlt liegen da Welten dazwischen. Tatsächlich ist es andersherum, als du vielleicht denkst: **Die Universität Oxford ist älter als das Aztekenreich.**

## Oxford: Unterricht seit dem 11. Jahrhundert

Ein genaues Gründungsdatum hat Oxford nicht. Aber schon **um 1096** wurde dort nachweislich unterrichtet. Richtig Fahrt nahm die Sache 1167 auf: Der englische König Heinrich II. verbot Engländern, an der Universität von Paris zu studieren. Viele Gelehrte zogen daraufhin nach Oxford.

Die ersten Colleges, University, Balliol und Merton, entstanden zwischen 1249 und 1264. Oxford gilt heute als **älteste Universität der englischsprachigen Welt**.

## Tenochtitlan: gegründet um 1325

Die Azteken gründeten ihre Hauptstadt Tenochtitlan erst **um 1325**, auf Inseln im Texcoco-See, dort, wo heute Mexiko-Stadt liegt. Zu diesem Zeitpunkt wurde in Oxford also schon seit über 200 Jahren gelehrt.

Und das Reich selbst? Tenochtitlan schloss sich mit den Städten Texcoco und Tlacopán zu einem Bündnis zusammen und wurde erst **im späten 15. Jahrhundert zur Hauptstadt des Aztekenreichs**. Da war Oxford längst eine etablierte Institution mit mehreren Colleges.

## Groß war Tenochtitlan trotzdem

Jung heißt nicht klein. Tenochtitlan wuchs durch künstlich angelegte Inseln zu einer riesigen Stadt mit Dämmen zum Festland. Für das Jahr 1519 schätzt man die Bevölkerung auf **etwa 400.000 Menschen**. Damit war sie die größte Siedlung, die es in Mesoamerika je gegeben hatte.

Der Grund, warum uns das überrascht: Wir sortieren Kulturen nach „alt“ und „modern“, nicht nach Jahreszahlen. Die Azteken wirken exotisch und fern, Oxford vertraut. Mit dem tatsächlichen Alter hat das wenig zu tun.

> Frauen konnten in Oxford erst ab 1920 vollwertige Mitglieder der Universität werden.

Geschichte läuft eben nicht nacheinander ab, sondern überall gleichzeitig.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('oxford-aztecs', 'de', 1, 'Azteken-Kalender als Wanddeko', 'Azteken Kalender Wanddeko', 'Der berühmte Sonnenstein als Wandbild oder Relief. Ein echter Hingucker im Flur.'),
  ('oxford-aztecs', 'de', 2, 'Zeitleiste der Weltgeschichte als Poster', 'Zeitleiste Weltgeschichte Poster', 'Alle Epochen und Kulturen auf einen Blick. Hilft, solche Überschneidungen selbst zu entdecken.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('oxford-aztecs', 'de', 1, 'University of Oxford: Our history', 'https://www.ox.ac.uk/about/organisation/history'),
  ('oxford-aztecs', 'de', 2, 'Britannica: Tenochtitlán', 'https://www.britannica.com/place/Tenochtitlan'),
  ('oxford-aztecs', 'de', 3, 'Wikipedia: University of Oxford', 'https://de.wikipedia.org/wiki/University_of_Oxford');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'oxford-aztecs', 'en', 'oxford-older-than-aztecs',
  'The University of Oxford is older than the Aztec Empire',
  'People were already teaching in Oxford before Tenochtitlan even existed. History''s timeline is stranger than you think.',
  'Oxford had teaching as early as 1096, while the Aztecs founded their capital Tenochtitlan only around 1325.',
  'When you think of the Aztecs, you probably picture pyramid temples, feathered headdresses and an ancient civilization. When you think of Oxford, it''s students in gowns and libraries full of books. They feel worlds apart. But the timeline might surprise you: **the University of Oxford is older than the Aztec Empire.**

## Oxford: teaching since the 11th century

Oxford has no exact founding date. But there''s evidence of teaching there **as early as 1096**. Things really took off in 1167, when England''s King Henry II banned English students from attending the University of Paris. Many scholars moved to Oxford instead.

The first colleges, University, Balliol and Merton, were founded between 1249 and 1264. Today, Oxford is considered **the oldest university in the English-speaking world**.

## Tenochtitlan: founded around 1325

The Aztecs founded their capital, Tenochtitlan, only **around 1325**, on islands in Lake Texcoco, where Mexico City stands today. By then, people had been teaching in Oxford for more than 200 years.

And the empire itself? Tenochtitlan formed an alliance with the cities of Texcoco and Tlacopán and became **the Aztec capital only by the late 15th century**. By that point, Oxford was a well-established institution with several colleges.

## Young, but huge

Young doesn''t mean small. Tenochtitlan grew on artificial islands into a massive city, linked to the mainland by causeways. Its population in 1519 is estimated at **about 400,000 people**. That made it the largest population center in Mesoamerican history.

Why does this surprise us? We sort cultures into "ancient" and "modern" rather than by actual dates. The Aztecs feel exotic and distant, Oxford feels familiar. That has very little to do with how old things really are.

> Women were only admitted as full members of the University of Oxford starting in 1920.

History doesn''t happen one thing after another. It happens everywhere at once.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('oxford-aztecs', 'en', 1, 'Aztec calendar wall decor', 'Aztec calendar wall decor', 'The famous Sun Stone as a wall plaque or print. A real eye-catcher in any hallway.'),
  ('oxford-aztecs', 'en', 2, 'World history timeline poster', 'world history timeline poster', 'All the eras and civilizations at a glance. Great for spotting surprising overlaps yourself.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('oxford-aztecs', 'en', 1, 'University of Oxford: Our history', 'https://www.ox.ac.uk/about/organisation/history'),
  ('oxford-aztecs', 'en', 2, 'Britannica: Tenochtitlán', 'https://www.britannica.com/place/Tenochtitlan'),
  ('oxford-aztecs', 'en', 3, 'Wikipedia: University of Oxford', 'https://en.wikipedia.org/wiki/University_of_Oxford');
