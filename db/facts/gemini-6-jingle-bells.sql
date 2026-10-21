-- WTFact-Fakt „Das erste Lied im Weltall war „Jingle Bells“, nach einer Weihnachtsmann-Sichtung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('gemini-6-jingle-bells', '2026-12-06T00:00:00+01:00', 'space', '🔔', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'gemini-6-jingle-bells', 'de', 'jingle-bells-erstes-lied-im-weltall',
  'Das erste Lied im Weltall war „Jingle Bells“, nach einer Weihnachtsmann-Sichtung',
  'Zwei Astronauten melden ein unbekanntes Objekt. Dann packen sie eine Mundharmonika aus.',
  'Am 16. Dezember 1965 meldeten die Gemini-6-Astronauten scherzhaft eine Sichtung, die nach dem Weihnachtsmann klang, und spielten dann auf Mundharmonika und Glöckchen „Jingle Bells“.',
  '16. Dezember 1965. Die Raumkapsel Gemini 6 kreist um die Erde, in der Nähe fliegt Gemini 7. Plötzlich meldet sich die Besatzung mit einer Nachricht, bei der man im Kontrollzentrum kurz schlucken musste.

## Ein Objekt auf Polarbahn

Laut Smithsonian beschrieben Wally Schirra und Tom Stafford „ein Objekt“, das wie ein Satellit auf einer niedrigen Bahn über die Pole aussah. Es sehe so aus, als wolle es ihnen ein Signal geben. Wer weiß, wo Polarbahnen hinführen, ahnt es: zum Nordpol. Ein Objekt, das kurz vor Weihnachten vom Nordpol kommt und blinkt, da gibt es nicht viele Kandidaten.

Dann folgte die Auflösung. Statt weiterer Daten kam Musik aus dem Funk. Schirra spielte Mundharmonika, Stafford schüttelte kleine Glöckchen, und gemeinsam spielten sie „Jingle Bells“.

## Rekordverdächtiges Schmuggelgut

Die beiden hatten die Instrumente heimlich an Bord gebracht. Laut Guinness World Records waren eine Mundharmonika vom Typ Hohner „Little Lady“ und ein Satz kleiner Glöckchen die ersten Musikinstrumente im Weltall. Die Little Lady ist winzig: Das Smithsonian gibt ihre Länge mit etwa 3,5 Zentimetern an, sie hat nur acht Töne.

Das Kontrollzentrum und die Besatzung von Gemini 7 waren völlig überrascht. Niemand am Boden hatte gewusst, dass Musik mitfliegt. Und „Jingle Bells“ ging damit als erstes Lied in die Geschichte ein, das im Weltall gespielt wurde.

> Bonusfakt: Die Mundharmonika und die Glöckchen liegen heute in der Sammlung des National Air and Space Museum in Washington.

Mehr als 60 Jahre später gilt ein Weihnachtslied immer noch als Eröffnungsnummer der Raumfahrt-Musikgeschichte, gespielt von zwei Männern, die einfach Lust auf einen Witz hatten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('gemini-6-jingle-bells', 'de', 1, 'Mini-Mundharmonika zum Umhängen', 'Mini Mundharmonika Kette Hohner', 'Eine winzige Mundharmonika, ähnlich dem Modell, das im Weltall war.'),
  ('gemini-6-jingle-bells', 'de', 2, 'Buch über das Gemini-Programm', 'Buch Gemini Programm NASA Raumfahrt', 'Erzählt die Missionen zwischen Mercury und Apollo.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('gemini-6-jingle-bells', 'de', 1, 'Smithsonian Music: Smithsonian Year of Music Object of the Day, December 2: Harmonica Used Aboard Gemini 6', 'https://music.si.edu/story/smithsonian-year-music-object-day-december-2-harmonica-used-aboard-gemini-6'),
  ('gemini-6-jingle-bells', 'de', 2, 'Guinness World Records: First musical instrument in space', 'https://www.guinnessworldrecords.com/world-records/674112-first-musical-instrument-in-space');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'gemini-6-jingle-bells', 'en', 'jingle-bells-first-song-in-space',
  'The first song in space was ‘Jingle Bells’, right after a Santa sighting',
  'Two astronauts report an unidentified object. Then they pull out a harmonica.',
  'On 16 December 1965, the Gemini 6 crew jokingly reported a sighting that sounded like Santa, then played ‘Jingle Bells’ on a harmonica and bells.',
  '16 December 1965. The Gemini 6 capsule is orbiting Earth, with Gemini 7 flying nearby. Suddenly the crew comes on the radio with a message that made mission control hold its breath.

## An object in polar orbit

According to the Smithsonian, Wally Schirra and Tom Stafford described "an object" that looked like a satellite in a low orbit over the poles. It looked, they said, like it was trying to signal them. If you know where polar orbits lead, you can guess: the North Pole. Something blinking near the North Pole just before Christmas narrows the list of suspects.

Then came the punchline. Instead of more data, music came over the radio. Schirra played a harmonica, Stafford shook small bells, and together they played "Jingle Bells".

## Record-breaking contraband

The two had smuggled the instruments on board. According to Guinness World Records, a Hohner "Little Lady" harmonica and a set of small bells were the first musical instruments in space. The Little Lady is tiny: the Smithsonian puts its length at about 3.5 centimeters, and it has just eight notes.

Mission control and the Gemini 7 crew were completely caught off guard. Nobody on the ground knew there was music on board. And "Jingle Bells" went down in history as the first song played in space.

> Bonus fact: The harmonica and bells are now in the collection of the National Air and Space Museum in Washington.

More than 60 years later, a Christmas song is still the opening number of space music history, played by two guys who just felt like a joke.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('gemini-6-jingle-bells', 'en', 1, 'Mini harmonica necklace', 'mini harmonica necklace Hohner', 'A tiny harmonica, similar to the model that went to space.'),
  ('gemini-6-jingle-bells', 'en', 2, 'Book about NASA''s Gemini program', 'NASA Gemini program book', 'Tells the story of the missions between Mercury and Apollo.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('gemini-6-jingle-bells', 'en', 1, 'Smithsonian Music: Smithsonian Year of Music Object of the Day, December 2: Harmonica Used Aboard Gemini 6', 'https://music.si.edu/story/smithsonian-year-music-object-day-december-2-harmonica-used-aboard-gemini-6'),
  ('gemini-6-jingle-bells', 'en', 2, 'Guinness World Records: First musical instrument in space', 'https://www.guinnessworldrecords.com/world-records/674112-first-musical-instrument-in-space');
