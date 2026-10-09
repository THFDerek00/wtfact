-- WTFact-Fakt „Uranus rollt auf der Seite um die Sonne: 42 Jahre Tag, 42 Jahre Nacht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('uranus-sideways', NULL, 'space', '🪐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'uranus-sideways', 'de', 'uranus-rollt-seitlich-42-jahre-sonne',
  'Uranus rollt auf der Seite um die Sonne: 42 Jahre Tag, 42 Jahre Nacht',
  'Auf diesem Planeten dauert ein Sommertag am Pol länger als die meisten Karrieren.',
  'Uranus ist um fast 98 Grad gekippt, deshalb bekommt jeder seiner Pole rund 42 Jahre am Stück Sonne und danach rund 42 Jahre Dunkelheit.',
  'Die meisten Planeten drehen sich wie ein Kreisel, der leicht schief steht. Uranus nicht. Er liegt praktisch auf der Seite und rollt um die Sonne wie eine Kugel über den Boden.

## Ein Planet in Schräglage

Laut NASA ist die Achse von Uranus um 97,77 Grad geneigt. Zum Vergleich: Die Erde schafft gerade mal etwa 23 Grad. Der Äquator von Uranus steht damit fast im rechten Winkel zu seiner Umlaufbahn. Von außen sieht es so aus, als hätte jemand den Planeten umgeschubst.

Wie das passiert ist, weiß niemand sicher. Die NASA nennt als mögliche Ursache einen Zusammenstoß mit einem Objekt etwa so groß wie die Erde, irgendwann vor sehr langer Zeit. Danach ist Uranus einfach liegen geblieben.

## Sommer für ein halbes Leben

Für eine Runde um die Sonne braucht Uranus rund 84 Erdjahre. Weil er so schief steht, zeigt mal der eine, mal der andere Pol fast direkt zur Sonne. Laut Guinness World Records hält Uranus deshalb den Rekord für die längste Phase aus Tag und Dunkelheit aller Planeten im Sonnensystem: Jeder Pol bekommt 42 Jahre am Stück Sonnenlicht und danach 42 Jahre durchgehend Nacht.

Stell dir vor, du wirst am Nordpol von Uranus geboren, wenn gerade die Sonne aufgeht. Dann bist du Anfang 40, bevor du zum ersten Mal einen Sonnenuntergang erlebst. Und Silvester müsste man sich dort wirklich gut überlegen.

Laut NASA hat Uranus deshalb die extremsten Jahreszeiten im ganzen Sonnensystem. Ein Tag, also eine Drehung um die eigene Achse, dauert dagegen nur etwa 17 Stunden. Bloß merkt man davon am Pol nichts, weil die Sonne dort einfach am Himmel kreist, statt unterzugehen.

> Bonusfakt: William Herschel entdeckte Uranus 1781 und hielt ihn zuerst für einen Kometen oder einen Stern.

Die Erde hat Jahreszeiten. Uranus hat Lebensabschnitte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('uranus-sideways', 'de', 1, 'Planetenmodell des Sonnensystems zum Selberbauen', 'Sonnensystem Modell Bausatz Kinder Planeten', 'Mit Farbe und etwas Geduld hängt danach das ganze Sonnensystem über deinem Schreibtisch.'),
  ('uranus-sideways', 'de', 2, 'Bildband über die Planeten des Sonnensystems', 'Bildband Planeten Sonnensystem Buch', 'Große Aufnahmen von Raumsonden und Teleskopen, dazu gut verständliche Erklärungen zu jedem Planeten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('uranus-sideways', 'de', 1, 'NASA Science: Uranus: Facts', 'https://science.nasa.gov/uranus/facts/'),
  ('uranus-sideways', 'de', 2, 'Guinness World Records: Longest period of daylight/darkness on any planet in the Solar System', 'https://www.guinnessworldrecords.com/world-records/499817-longest-period-of-daylight-darkness-on-any-planet-in-the-solar-system');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'uranus-sideways', 'en', 'uranus-rolls-sideways-42-years-sun',
  'Uranus rolls around the Sun on its side: 42 years of day, 42 years of night',
  'On this planet, a summer day at the pole lasts longer than most careers.',
  'Uranus is tipped over by almost 98 degrees, so each of its poles gets about 42 years of nonstop sunlight followed by about 42 years of darkness.',
  'Most planets spin like a top that leans a little. Not Uranus. It basically lies on its side and rolls around the Sun like a ball rolling across the floor.

## A planet knocked over

According to NASA, Uranus is tilted by 97.77 degrees. For comparison, Earth manages about 23 degrees. That puts Uranus''s equator nearly at a right angle to its orbit. From the outside, it looks like someone shoved the planet over.

Nobody knows for sure how it happened. NASA names a possible cause: a collision with an object roughly the size of Earth, a very long time ago. After that, Uranus just stayed down.

## Summer for half a lifetime

Uranus takes about 84 Earth years to go around the Sun once. Because it is tipped so far, first one pole and then the other points almost straight at the Sun. That is why, according to Guinness World Records, Uranus holds the record for the longest period of daylight and darkness of any planet in the solar system: each pole gets 42 years of continuous sunlight, followed by 42 years of continuous night.

Imagine being born at the north pole of Uranus just as the Sun comes up. You would be in your early 40s before you saw your first sunset. New Year''s Eve would need some serious planning.

NASA says this gives Uranus the most extreme seasons in the solar system. A single day, one spin around its axis, only takes about 17 hours. At the pole you would barely notice, though, because the Sun just circles the sky instead of setting.

> Bonus fact: William Herschel discovered Uranus in 1781 and at first thought it was a comet or a star.

Earth has seasons. Uranus has life stages.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('uranus-sideways', 'en', 1, 'DIY solar system model kit', 'solar system model kit kids planets', 'Add some paint and patience and the whole solar system ends up hanging over your desk.'),
  ('uranus-sideways', 'en', 2, 'Illustrated book about the planets', 'planets solar system illustrated book', 'Big images from space probes and telescopes, with clear explanations for every planet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('uranus-sideways', 'en', 1, 'NASA Science: Uranus: Facts', 'https://science.nasa.gov/uranus/facts/'),
  ('uranus-sideways', 'en', 2, 'Guinness World Records: Longest period of daylight/darkness on any planet in the Solar System', 'https://www.guinnessworldrecords.com/world-records/499817-longest-period-of-daylight-darkness-on-any-planet-in-the-solar-system');
