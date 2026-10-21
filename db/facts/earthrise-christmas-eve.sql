-- WTFact-Fakt „Das berühmte Foto „Earthrise“ entstand an Heiligabend 1968“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('earthrise-christmas-eve', '2026-12-24T00:00:00+01:00', 'space', '🌍', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'earthrise-christmas-eve', 'de', 'erdaufgang-an-heiligabend-1968',
  'Das berühmte Foto „Earthrise“ entstand an Heiligabend 1968',
  'Das wohl bekannteste Bild unseres Planeten ist eigentlich ein Weihnachtsfoto, und es war nicht geplant.',
  'Der Apollo-8-Astronaut Bill Anders fotografierte am 24. Dezember 1968 den Erdaufgang über dem Mond, am selben Abend sendete die Crew eine Weihnachtsbotschaft an eine halbe Milliarde Menschen.',
  'Eine blaue Kugel, die über einem grauen Mondhorizont aufgeht. Das Foto „Earthrise“, auf Deutsch Erdaufgang, kennt fast jeder, es hängt in Klassenzimmern und steht in Schulbüchern. Weniger bekannt ist, wann es entstand: an Heiligabend.

## Ein Foto, das nicht auf dem Plan stand

Im Dezember 1968 flogen Frank Borman, Jim Lovell und Bill Anders mit Apollo 8 als erste Menschen zum Mond. Sie landeten nicht, sondern umkreisten ihn. Am 24. Dezember 1968 sah die Crew die Erde hinter dem Mondrand auftauchen.

Bill Anders griff zur Kamera und machte ein Farbfoto. Laut NASA Earth Observatory war das Bild ungeplant. Es zeigt die Erde allein im schwarzen Weltall, klein und verletzlich. Das Foto gilt bis heute als eines der wichtigsten Bilder überhaupt.

## Eine Weihnachtsbotschaft vom Mond

Am selben Abend schaltete sich die Crew live ins Fernsehen. Die drei Astronauten lasen laut Space.com Verse aus dem biblischen Schöpfungsbericht vor, dem Buch Genesis. Laut NASA Earth Observatory war das bis dahin das größte Fernsehpublikum der Geschichte, geschätzt etwa eine halbe Milliarde Menschen. Laut Space.com sah oder hörte rund ein Viertel der Weltbevölkerung zu.

Danach wurde es noch einmal spannend. Für den Heimweg musste das Triebwerk zünden, das die Crew wieder auf Kurs Richtung Erde brachte. Erst dann war klar, dass alle drei sicher nach Hause kommen würden.

> Bonusfakt: Nach dieser Zündung meldete sich Jim Lovell laut NASA Earth Observatory mit dem Satz: „Bitte seid informiert, es gibt einen Weihnachtsmann.“

Das letzte Türchen gehört also einem Bild, das an Heiligabend aufgenommen wurde und uns zeigt, wie klein unser Zuhause ist. Frohe Weihnachten!'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('earthrise-christmas-eve', 'de', 1, 'Poster Earthrise', 'Earthrise Poster Apollo 8', 'Das berühmte Foto für die eigene Wand.'),
  ('earthrise-christmas-eve', 'de', 2, 'Bildband über die Apollo-Missionen', 'Bildband Apollo Mondlandung', 'Die Flüge zum Mond in großen Fotos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('earthrise-christmas-eve', 'de', 1, 'Space.com: Christmas Eve at the Moon: Apollo 8''s Historic Message Beamed to Earth Today in 1968', 'https://www.space.com/apollo-8-christmas-eve-message-revisited.html'),
  ('earthrise-christmas-eve', 'de', 2, 'NASA Earth Observatory: All of You on the Good Earth', 'https://science.nasa.gov/earth/earth-observatory/all-of-you-on-the-good-earth-144427/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'earthrise-christmas-eve', 'en', 'earthrise-on-christmas-eve-1968',
  'The famous ‘Earthrise’ photo was taken on Christmas Eve 1968',
  'Probably the best-known picture of our planet is really a Christmas photo, and it wasn''t planned.',
  'Apollo 8 astronaut Bill Anders photographed Earth rising over the Moon on 24 December 1968, and that evening the crew broadcast a Christmas message to half a billion people.',
  'A blue ball rising over a gray lunar horizon. Almost everyone knows the "Earthrise" photo. Fewer people know when it was taken: on Christmas Eve.

## A photo that wasn''t on the schedule

In December 1968, Frank Borman, Jim Lovell and Bill Anders flew Apollo 8, becoming the first humans to travel to the Moon. They didn''t land but orbited it. On 24 December 1968, the crew saw Earth appear over the Moon''s edge.

Bill Anders grabbed the camera and took a color photo. According to NASA Earth Observatory, the picture was unplanned. It shows Earth alone in black space, small and fragile. It''s still considered one of the most important photographs ever taken.

## A Christmas message from the Moon

That same evening, the crew went live on television. According to Space.com, the three astronauts read verses from the Book of Genesis, the biblical story of creation. NASA Earth Observatory says it was the largest television audience in history up to that point, estimated at about half a billion people. According to Space.com, roughly a quarter of the world''s population watched or listened.

Then things got tense once more. To head home, the engine had to fire and put the crew back on course for Earth. Only then was it clear that all three would make it back safely.

> Bonus fact: After that burn, according to NASA Earth Observatory, Jim Lovell radioed: "Please be informed there is a Santa Claus."

So the last door belongs to a picture taken on Christmas Eve that shows how small our home really is. Merry Christmas!'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('earthrise-christmas-eve', 'en', 1, 'Earthrise poster', 'Earthrise poster Apollo 8', 'The famous photo for your own wall.'),
  ('earthrise-christmas-eve', 'en', 2, 'Apollo missions photo book', 'Apollo missions photo book', 'The flights to the Moon in big photos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('earthrise-christmas-eve', 'en', 1, 'Space.com: Christmas Eve at the Moon: Apollo 8''s Historic Message Beamed to Earth Today in 1968', 'https://www.space.com/apollo-8-christmas-eve-message-revisited.html'),
  ('earthrise-christmas-eve', 'en', 2, 'NASA Earth Observatory: All of You on the Good Earth', 'https://science.nasa.gov/earth/earth-observatory/all-of-you-on-the-good-earth-144427/');
