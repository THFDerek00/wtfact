-- WTFact-Fakt „Das Summen der Lichtschwerter ist ein alter Projektormotor plus Fernseher-Brummen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('lightsaber-hum', NULL, 'popculture', '⚔️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lightsaber-hum', 'de', 'lichtschwert-summen-projektormotor',
  'Das Summen der Lichtschwerter ist ein alter Projektormotor plus Fernseher-Brummen',
  'Das berühmteste Geräusch aus Star Wars kommt nicht aus dem Synthesizer, sondern aus dem Vorführraum eines Uni-Kinos.',
  'Sounddesigner Ben Burtt baute das Summen der Lichtschwerter aus dem Leerlauf eines Projektormotors und dem Brummen eines Fernsehers, das ein Mikrofonkabel zufällig auffing.',
  'Schließ die Augen und denk an Star Wars. Wahrscheinlich hörst du zuerst dieses tiefe, summende Wmmm. Klingt nach purer Science-Fiction, kommt aber aus einem Raum voller alter Kinotechnik.

## Ein Job im Vorführraum

Vor Star Wars studierte Ben Burtt Film an der University of Southern California und jobbte dort als Filmvorführer im Uni-Kino. Im Interview mit dem US-Sender NPR erzählte er von einem Motor im Vorführraum, der im Leerlauf angenehm vor sich hin summte. Burtt nahm ihn auf. Laut Mental Floss standen dort Simplex-Projektoren, deren zwei Motortöne leicht schwankten und sich vermischten, was Burtt beruhigend fand.

Auf StarWars.com heißt es, das Lichtschwert sei das allererste Geräusch gewesen, das Burtt für die Filme gebaut hat. Das Summen beruhe zum Teil auf „einem alten Motor an einem Projektor der Filmabteilung der USC“.

## Das kaputte Kabel, das den Rest erledigte

Die zweite Zutat war ein Zufall. Laut Burtt fing ein Mikrofon mit kaputtem Kabel das Brummen eines Fernsehers in der Nähe ein, ein „funkelndes, wütendes Surren“, wie er es nannte. Er hob dieses Bildröhren-Brummen auf und mischte es mit dem Projektormotor. Summen plus Brummen: Fertig war der Grundsound des Lichtschwerts.

Damit die Klingen beim Schwingen richtig klingen, spielte Burtt den Sound über einen Lautsprecher ab und schwenkte davor ein Mikrofon durch die Luft. Weil sich das Mikro bewegte, verschob sich die Tonhöhe, und genau das gab jedem Hieb sein typisches Wusch. Kein Computer, nur ein bewegtes Mikro und viel Geduld.

> Bonusfakt: Laut StarWars.com wurde Chewbaccas Stimme aus Aufnahmen von Tieren wie Bären, Dachsen und Walrossen zusammengeschnitten, sortiert nach Gefühlslage.

Das berühmteste Waffengeräusch der Filmgeschichte ist im Grunde ein gelangweilter Projektor plus ein Fernseher am falschen Ort.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lightsaber-hum', 'de', 1, 'Star-Wars-Lichtschwert mit Licht und Sound', 'Star Wars Lichtschwert mit Sound', 'Leuchtet, summt und macht beim Schwingen genau das Geräusch, das du aus den Filmen kennst.'),
  ('lightsaber-hum', 'de', 2, 'Buch „The Sounds of Star Wars“ von J. W. Rinzler', 'The Sounds of Star Wars Rinzler Buch', 'Ein Blick hinter die Kulissen der bekanntesten Geräusche der Saga, mit vielen Fotos und Hintergründen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lightsaber-hum', 'de', 1, 'NPR: Interview: Ben Burtt and J.W. Rinzler - ''The Sounds of Star Wars''', 'https://www.npr.org/transcripts/131968222'),
  ('lightsaber-hum', 'de', 2, 'StarWars.com: 5 Iconic Star Wars Sound Effects and How They Were Made', 'https://www.starwars.com/news/5-iconic-star-wars-sound-effects-and-how-they-were-made-starwars-com'),
  ('lightsaber-hum', 'de', 3, 'Mental Floss: Meet the Man Who Gave the Lightsaber Its Hum', 'https://www.mentalfloss.com/article/72003/meet-man-who-gave-lightsaber-its-hum');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lightsaber-hum', 'en', 'lightsaber-hum-projector-motor',
  'The lightsaber hum is an old projector motor plus a TV''s buzz',
  'The most famous sound in Star Wars wasn''t made on a synthesizer. It was found in a film school projection booth.',
  'Sound designer Ben Burtt built the lightsaber hum from the idling drone of a projector motor and the buzz of a TV that a microphone cable picked up by accident.',
  'Close your eyes and think of Star Wars. Chances are you hear that low, humming vmmm before anything else. It sounds like pure science fiction, but it came from a room full of old cinema gear.

## A job in the projection booth

Before Star Wars, Ben Burtt studied film at the University of Southern California and worked as a projectionist at the campus cinema. In an interview with NPR, he described a motor in the projection booth that made a pleasant humming sound when it just sat there idling. Burtt recorded it. According to Mental Floss, the booth had Simplex projectors whose two motor tones drifted and blended together, which Burtt found soothing.

StarWars.com says the lightsaber was the very first sound Burtt made for the films, and that the hum was partly based on "an old motor on a projector at the USC Cinema Department."

## The broken cable that finished the job

The second ingredient was an accident. According to Burtt, a microphone with a broken cable picked up hum from a nearby television, a sound he called a "scintillating angry buzz." He saved that picture tube buzz and combined it with the projector motor. Hum plus buzz: the basic lightsaber sound was born.

To make the blades sound right in motion, Burtt played the sound through a speaker and waved a microphone through the air in front of it. As the mic moved, the pitch shifted, and that gave every strike its typical swoosh. No computer, just a moving mic and a lot of patience.

> Bonus fact: According to StarWars.com, Chewbacca''s voice was cut together from recordings of animals such as bears, badgers and walruses, sorted by emotion.

The most iconic weapon sound in movie history is basically a bored projector plus a TV in the wrong place.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lightsaber-hum', 'en', 1, 'Star Wars lightsaber with lights and sound', 'Star Wars lightsaber with sound effects', 'Lights up, hums and makes exactly the swing sound you know from the movies.'),
  ('lightsaber-hum', 'en', 2, 'The Sounds of Star Wars book by J. W. Rinzler', 'The Sounds of Star Wars Rinzler book', 'A behind-the-scenes look at the saga''s most famous sounds, with lots of photos and backstories.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lightsaber-hum', 'en', 1, 'NPR: Interview: Ben Burtt and J.W. Rinzler - ''The Sounds of Star Wars''', 'https://www.npr.org/transcripts/131968222'),
  ('lightsaber-hum', 'en', 2, 'StarWars.com: 5 Iconic Star Wars Sound Effects and How They Were Made', 'https://www.starwars.com/news/5-iconic-star-wars-sound-effects-and-how-they-were-made-starwars-com'),
  ('lightsaber-hum', 'en', 3, 'Mental Floss: Meet the Man Who Gave the Lightsaber Its Hum', 'https://www.mentalfloss.com/article/72003/meet-man-who-gave-lightsaber-its-hum');
