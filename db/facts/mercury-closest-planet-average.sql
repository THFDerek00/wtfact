-- WTFact-Fakt „Nicht die Venus: Im Durchschnitt ist der Merkur der Erde am nächsten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('mercury-closest-planet-average', '2026-10-18T16:00:00+02:00', 'space', '🪐', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mercury-closest-planet-average', 'de', 'merkur-naechster-planet-zur-erde',
  'Nicht die Venus: Im Durchschnitt ist der Merkur der Erde am nächsten',
  'Die Venus kommt uns näher als jeder andere Planet, aber sie ist auch oft weit weg auf der anderen Seite der Sonne.',
  'Im zeitlichen Mittel ist der Merkur der Erde näher als die Venus, mit etwa 1,04 gegenüber 1,14 Astronomischen Einheiten, und er ist auch für jeden anderen Planeten im Sonnensystem im Durchschnitt der nächste Nachbar.',
  'Frag irgendwen, welcher Planet der Erde am nächsten ist, und du hörst: „Die Venus.“ Ganz falsch ist das nicht: Die Venus kann uns bis auf 0,28 Astronomische Einheiten nahekommen. Eine Astronomische Einheit, kurz AE, ist der Abstand zwischen Erde und Sonne. Aber das ist nur die Venus in ihrem nächsten Moment. Im Durchschnitt gewinnt der Merkur.

## Die Venus ist oft weit weg

Die klassische Antwort zieht einfach die Bahnen voneinander ab: Die Venus umkreist die Sonne im Mittel in 0,72 AE Abstand, die Erde in 1 AE, macht 0,28 AE. Das stimmt aber nur, wenn beide Planeten auf derselben Seite der Sonne stehen. Ist die Venus auf der anderen Seite, kann sie bis zu 1,72 AE entfernt sein, erklärt ZME Science.

Der Merkur dagegen entfernt sich nie weit von der Sonne. Sein mittlerer Bahnradius beträgt nur 0,39 AE. Über die Zeit summiert sich das.

## 10.000 Jahre im Computer

2019 haben Tom Stockman, Gabriel Monroe und Samuel Cordner das in einem Meinungsbeitrag in Physics Today vorgerechnet. Sie simulierten alle acht Planeten über 10.000 Jahre und notierten ihre Abstände alle 24 simulierten Stunden. Ergebnis: Im Mittel ist die Venus 1,14 AE von der Erde entfernt, der Merkur nur 1,04 AE.

Dazu lieferten sie eine einfache Abkürzung, die „Point-Circle-Methode“. Ihre Ergebnisse wichen weniger als 1 Prozent von der Simulation ab, die klassische Methode dagegen um bis zu 300 Prozent. Die Regel dahinter bekam einen albernen Namen: „Whirly-Dirly-Korollar“, nach einer Folge von „Rick and Morty“, berichtet ZME Science. Sie besagt: Je näher eine innere Bahn an der Sonne liegt, desto kleiner ist ihr mittlerer Abstand zur äußeren Bahn.

> Bonusfakt: Nach derselben Logik ist der Merkur im Durchschnitt der nächste Planet für jeden anderen Planeten im Sonnensystem. Laut ZME Science ist der Uranus im Mittel sogar näher am Merkur als an seinem Nachbarn Neptun.

Der nächste Nachbar der Erde ist also ausgerechnet der, auf den kaum jemand tippt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mercury-closest-planet-average', 'de', 1, 'Sonnensystem-Modell', 'Sonnensystem Modell Planetarium Orrery', 'Zeigt dir, wie sich die Planeten um die Sonne bewegen.'),
  ('mercury-closest-planet-average', 'de', 2, 'Sonnensystem-Poster', 'Sonnensystem Planeten Poster', 'Bringt alle acht Planeten und ihre Bahnen an deine Wand.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mercury-closest-planet-average', 'de', 1, 'Physics Today: Venus is not Earth''s closest neighbor', 'https://physicstoday.aip.org/opinion/venus-is-not-earths-closest-neighbor'),
  ('mercury-closest-planet-average', 'de', 2, 'IFLScience: Which Planet Is Closest To Earth? Ok, Now Guess Again.', 'https://iflscience.com/which-planet-is-closest-to-earth-ok-now-guess-again-63910'),
  ('mercury-closest-planet-average', 'de', 3, 'ZME Science: Mercury is the planet closest to Earth — contrary to popular belief', 'https://www.zmescience.com/science/news-science/mercury-earth-closest-21032019/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mercury-closest-planet-average', 'en', 'mercury-closest-planet-to-earth',
  'Not Venus: on average, Mercury is the planet closest to Earth',
  'Venus gets closer to us than any other planet, but it also spends a lot of time far away on the other side of the Sun.',
  'Averaged over time, Mercury is closer to Earth than Venus, at about 1.04 versus 1.14 astronomical units, and it is also the nearest planet on average to every other planet in the solar system.',
  'Ask anyone which planet is closest to Earth and you''ll hear "Venus." Fair enough: Venus can come within 0.28 astronomical units of us. One astronomical unit, or AU, is the distance from Earth to the Sun. But that''s only Venus at its closest. On average, the winner is Mercury.

## Venus is often far away

The classic answer simply subtracts orbits: Venus circles the Sun at an average of 0.72 AU, Earth at 1 AU, so the gap is 0.28 AU. That only works when both planets are on the same side of the Sun. When Venus is on the far side, it can be up to 1.72 AU away, ZME Science explains.

Mercury, on the other hand, never strays far from the Sun. Its average orbital radius is just 0.39 AU. Over time, that adds up.

## 10,000 years in a computer

In 2019, Tom Stockman, Gabriel Monroe and Samuel Cordner laid this out in a commentary in Physics Today. They simulated all eight planets over 10,000 years and recorded their distances every 24 simulated hours. The result: on average, Venus is 1.14 AU from Earth, Mercury only 1.04 AU.

They also offered a simple shortcut, the "point-circle method." Its results were less than 1 percent off from the simulation, while the traditional method was off by up to 300 percent. The rule behind it got a silly name: the "whirly-dirly corollary," after an episode of "Rick and Morty," ZME Science reports. It says the closer an inner orbit is to the Sun, the smaller its average distance to the outer orbit.

> Bonus fact: The same logic makes Mercury the closest planet on average to every other planet in the solar system. According to ZME Science, Uranus is on average even closer to Mercury than to its neighbor Neptune.

So Earth''s closest neighbor is the one almost nobody guesses.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mercury-closest-planet-average', 'en', 1, 'Solar system model', 'solar system planetary model orrery', 'Lets you see how the planets move around the Sun.'),
  ('mercury-closest-planet-average', 'en', 2, 'Solar system poster', 'solar system planets poster', 'Puts all eight planets and their orbits on your wall.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mercury-closest-planet-average', 'en', 1, 'Physics Today: Venus is not Earth''s closest neighbor', 'https://physicstoday.aip.org/opinion/venus-is-not-earths-closest-neighbor'),
  ('mercury-closest-planet-average', 'en', 2, 'IFLScience: Which Planet Is Closest To Earth? Ok, Now Guess Again.', 'https://iflscience.com/which-planet-is-closest-to-earth-ok-now-guess-again-63910'),
  ('mercury-closest-planet-average', 'en', 3, 'ZME Science: Mercury is the planet closest to Earth — contrary to popular belief', 'https://www.zmescience.com/science/news-science/mercury-earth-closest-21032019/');
