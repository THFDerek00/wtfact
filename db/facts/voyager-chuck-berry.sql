-- WTFact-Fakt „Auf dem Weg aus dem Sonnensystem: Chuck Berrys „Johnny B. Goode““
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('voyager-chuck-berry', '2026-10-11T03:00:00+02:00', 'space', '📀', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'voyager-chuck-berry', 'de', 'chuck-berry-fliegt-auf-voyager-ins-all',
  'Auf dem Weg aus dem Sonnensystem: Chuck Berrys „Johnny B. Goode“',
  'Die NASA hat Aliens eine Platte mitgegeben. Neben Mozart liegt darauf ein Rock-’n’-Roll-Klassiker.',
  'Auf den Goldenen Schallplatten der Voyager-Sonden von 1977 ist Chuck Berrys „Johnny B. Goode“ gespeichert, zusammen mit Mozart, Grußworten in 55 Sprachen und Walgeräuschen.',
  'Wenn Außerirdische jemals eine der beiden Voyager-Sonden finden, können sie sich auf etwas freuen: Musik. Und zwar nicht nur Klassik, sondern auch richtig guten Rock ’n’ Roll.

## Eine Platte für das Universum

1977 starteten die beiden NASA-Sonden Voyager 1 und 2. An Bord hat jede eine vergoldete Schallplatte, etwa 30 Zentimeter groß, gedacht als Botschaft an alle, die sie irgendwann finden. Laut NASA hat ein Komitee unter Leitung des Astronomen Carl Sagan von der Cornell University den Inhalt ausgewählt.

Und der ist ziemlich bunt: 115 Bilder, Naturgeräusche wie Brandung, Wind, Donner, Vögel und Wale, dazu laut NASA eine 90-minütige Musikauswahl mit Klassikern aus Ost und West.

## Mozart trifft Rock ’n’ Roll

Laut dem Smithsonian steht Chuck Berrys „Johnny B. Goode“ dort direkt neben Mozarts „Zauberflöte“, einer Shakuhachi-Flötenmelodie aus Japan und „Dark Was the Night“ von Blind Willie Johnson. Laut Gizmodo ist Berry damit der einzige amerikanische Rockmusiker auf der Platte, und das, obwohl seine Musik damals manchen als „jugendlich“ galt, also nicht gerade als Kulturgut für die Ewigkeit.

Die Popkultur hat den Witz natürlich sofort entdeckt. Laut Gizmodo zeigte Steve Martin 1978 in der Show „Saturday Night Live“, was Aliens wohl als Erstes zurückfunken würden: „Schickt mehr Chuck Berry“.

Als Chuck Berry 2017 mit 90 Jahren starb, war sein Song schon seit 40 Jahren in Richtung Sterne unterwegs.

> Bonusfakt: Auf der Platte grüßen Menschen in 55 Sprachen, angefangen mit Akkadisch, das vor Tausenden Jahren in Mesopotamien gesprochen wurde.

Die Menschheit hatte genau eine Chance auf eine Playlist fürs Universum. Und sie hat Rock ’n’ Roll genommen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('voyager-chuck-berry', 'de', 1, 'Plattenspieler mit eingebauten Lautsprechern', 'Plattenspieler Bluetooth Lautsprecher Vinyl', 'Holt den warmen Vinyl-Sound ins Zimmer, ganz ohne komplizierte Anlage.'),
  ('voyager-chuck-berry', 'de', 2, 'Best-of-Album von Chuck Berry auf Vinyl', 'Chuck Berry Best of Vinyl', 'Die großen Hits des Rock-’n’-Roll-Pioniers, darunter natürlich „Johnny B. Goode“.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('voyager-chuck-berry', 'de', 1, 'NASA Science: Golden Record Contents', 'https://science.nasa.gov/mission/voyager/golden-record-contents/'),
  ('voyager-chuck-berry', 'de', 2, 'Smithsonian National Museum of American History: Spacecraft Voyager "Sounds of Earth" Record Cover', 'https://music.si.edu/node/803'),
  ('voyager-chuck-berry', 'de', 3, 'Gizmodo: Chuck Berry, the First Rock n’ Roller for Aliens, Dies at 90', 'https://gizmodo.com/chuck-berry-the-first-rock-n-roller-for-aliens-dies-a-1793417735');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'voyager-chuck-berry', 'en', 'chuck-berry-flies-on-voyager',
  'Leaving the solar system: Chuck Berry''s "Johnny B. Goode"',
  'NASA packed a record for aliens. Next to Mozart sits a rock and roll classic.',
  'The Golden Records on the Voyager probes from 1977 carry Chuck Berry''s "Johnny B. Goode," along with Mozart, greetings in 55 languages and whale sounds.',
  'If aliens ever find one of the two Voyager probes, they have something to look forward to: music. And not just classical, but some proper rock and roll too.

## A record for the universe

In 1977, NASA launched its two probes, Voyager 1 and 2. Each one carries a gold-plated record, about 30 centimeters across, meant as a message to whoever might find it someday. According to NASA, a committee chaired by astronomer Carl Sagan of Cornell University chose what went on it.

And it''s quite a mix: 115 images, natural sounds like surf, wind, thunder, birds and whales, plus, according to NASA, a 90-minute selection of music with Eastern and Western classics.

## Mozart meets rock and roll

According to the Smithsonian, Chuck Berry''s "Johnny B. Goode" sits right next to Mozart''s "The Magic Flute," a shakuhachi piece from Japan and "Dark Was the Night" by Blind Willie Johnson. According to Gizmodo, that makes Berry the only American rock musician on the record, even though some people at the time considered his music "adolescent," not exactly culture built for eternity.

Pop culture spotted the joke right away. According to Gizmodo, Steve Martin showed in a 1978 episode of "Saturday Night Live" what the aliens'' first reply would likely be: "Send more Chuck Berry."

When Chuck Berry died in 2017 at age 90, his song had already been heading for the stars for 40 years.

> Bonus fact: The record greets listeners in 55 languages, starting with Akkadian, which was spoken in Mesopotamia thousands of years ago.

Humanity got exactly one shot at a playlist for the universe. It picked rock and roll.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('voyager-chuck-berry', 'en', 1, 'Record player with built-in speakers', 'record player with speakers vinyl bluetooth', 'Brings that warm vinyl sound into your room, no complicated stereo setup needed.'),
  ('voyager-chuck-berry', 'en', 2, 'Chuck Berry greatest hits on vinyl', 'Chuck Berry greatest hits vinyl', 'The big hits of the rock and roll pioneer, including "Johnny B. Goode," of course.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('voyager-chuck-berry', 'en', 1, 'NASA Science: Golden Record Contents', 'https://science.nasa.gov/mission/voyager/golden-record-contents/'),
  ('voyager-chuck-berry', 'en', 2, 'Smithsonian National Museum of American History: Spacecraft Voyager "Sounds of Earth" Record Cover', 'https://music.si.edu/node/803'),
  ('voyager-chuck-berry', 'en', 3, 'Gizmodo: Chuck Berry, the First Rock n’ Roller for Aliens, Dies at 90', 'https://gizmodo.com/chuck-berry-the-first-rock-n-roller-for-aliens-dies-a-1793417735');
