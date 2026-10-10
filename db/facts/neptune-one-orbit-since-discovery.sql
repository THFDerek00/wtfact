-- WTFact-Fakt „Neptun hat die Sonne seit seiner Entdeckung 1846 erst ein einziges Mal umrundet“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('neptune-one-orbit-since-discovery', '2026-10-13T12:00:00+02:00', 'space', '🪐', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'neptune-one-orbit-since-discovery', 'de', 'neptun-ein-umlauf-seit-1846',
  'Neptun hat die Sonne seit seiner Entdeckung 1846 erst ein einziges Mal umrundet',
  'Ein Planet, den man erst errechnet und dann gesehen hat, brauchte bis 2011 für eine einzige Runde.',
  'Neptun braucht rund 165 Erdjahre für einen Sonnenumlauf und hat deshalb erst 2011 seine erste volle Runde seit seiner Entdeckung 1846 beendet.',
  'Seit 1846 wissen Menschen, dass es Neptun gibt. In dieser ganzen Zeit hat der Planet genau eine Runde um die Sonne geschafft. Fertig war er damit 2011.

## Erst mit dem Stift, dann mit dem Teleskop

Neptun ist laut NASA der erste Planet, der durch mathematische Vorhersagen gefunden wurde. Astronomen war aufgefallen, dass Uranus sich nicht ganz so bewegte, wie er sollte. Irgendetwas Unsichtbares schien an ihm zu zerren. Mitte der 1840er rechneten der französische Mathematiker Urbain Le Verrier und der Engländer John Couch Adams unabhängig voneinander aus, wo dieser rätselhafte Planet stehen musste.

Le Verrier schickte seine Zahlen an Johann Galle an der Berliner Sternwarte. Am 23. September 1846 schaute Galle an die vorhergesagte Stelle und fand Neptun. Ein Planet, der zuerst auf dem Papier auftauchte und erst dann am Himmel.

## Ein Jahr, 165 Jahre lang

Neptun ist etwa 30-mal so weit von der Sonne entfernt wie die Erde, entsprechend lässt er sich Zeit. Ein Umlauf dauert rund 165 Erdjahre, also 60.190 Erdtage. Am 12. Juli 2011 hatte Neptun seinen ersten vollen Umlauf seit Galles Fund geschafft.

Bei den Tagen ist es genau umgekehrt: Ein Neptuntag, also eine Drehung um die eigene Achse, dauert nur etwa 16 Stunden. Die erste Raumsonde, die an ihm vorbeiflog, war 1989 Voyager 2 der NASA.

> Bonusfakt: Galileo hat Neptun lange vor seiner Entdeckung gesehen. Im Dezember 1612 und Januar 1613 notierte er ihn, hielt ihn aber für einen Stern und erkannte nie, dass es ein Planet war.

Würde Neptun Geburtstag feiern, hätte er seit unserem Kennenlernen genau einen gehabt. Der nächste steht ungefähr 2176 an.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('neptune-one-orbit-since-discovery', 'de', 1, 'Sonnensystem-Mobile zum Basteln', 'Sonnensystem Mobile Bausatz Planeten', 'Damit hängen alle acht Planeten selbst bemalt an deiner Zimmerdecke.'),
  ('neptune-one-orbit-since-discovery', 'de', 2, 'Einsteiger-Teleskop', 'Teleskop Einsteiger 70mm Refraktor', 'Ein einfaches Teleskop für Mond, Jupitermonde und Saturnringe.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('neptune-one-orbit-since-discovery', 'de', 1, 'NASA Science: Neptune: Facts', 'https://science.nasa.gov/neptune/facts/'),
  ('neptune-one-orbit-since-discovery', 'de', 2, 'Space: Neptune Shines in New Photos Marking First Orbit Since Its Discovery', 'https://www.space.com/12254-neptune-photos-hubble-telescope-discovery-anniversary.html'),
  ('neptune-one-orbit-since-discovery', 'de', 3, 'NBC News: Neptune nears end of first orbit around sun since 1846', 'https://www.nbcnews.com/id/wbna38760253');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'neptune-one-orbit-since-discovery', 'en', 'neptune-one-orbit-since-1846',
  'Neptune has circled the Sun only once since we discovered it in 1846',
  'A planet found with math first and a telescope second needed until 2011 to finish a single lap.',
  'Neptune needs about 165 Earth years to orbit the Sun, so it only completed its first full orbit since its 1846 discovery in 2011.',
  'Humans have known about Neptune since 1846. In all that time, the planet has managed exactly one lap around the Sun. It finished it in 2011.

## Found with a pen before a telescope

Neptune is the first planet that was located through mathematical predictions, according to NASA. Astronomers had noticed that Uranus wasn''t moving quite the way it should. Something unseen seemed to be tugging at it. In the mid-1840s, the French mathematician Urbain Le Verrier and John Couch Adams from England each worked out independently where that mystery planet had to be.

Le Verrier sent his numbers to Johann Galle at the Berlin Observatory. On September 23, 1846, Galle looked at the predicted spot and found Neptune. A planet found on paper first, then in the sky.

## One year, 165 years long

Neptune sits about 30 times farther from the Sun than Earth does, so it is in no hurry. One orbit takes about 165 Earth years, or 60,190 Earth days. On July 12, 2011, Neptune completed its first full orbit since Galle found it.

Its days are the opposite story: one Neptune day, a single spin on its axis, lasts only about 16 hours. The first spacecraft to fly past it was NASA''s Voyager 2, in 1989.

> Bonus fact: Galileo saw Neptune long before anyone discovered it. In December 1612 and January 1613 he recorded it, but took it for a star and never realized it was a planet.

So if Neptune celebrated birthdays, it would have had exactly one since we met it, and the next one is due around 2176.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('neptune-one-orbit-since-discovery', 'en', 1, 'Solar system mobile model kit', 'solar system hanging mobile model kit', 'Lets you hang all eight planets from the ceiling and paint them yourself.'),
  ('neptune-one-orbit-since-discovery', 'en', 2, 'Beginner telescope', 'beginner telescope 70mm refractor', 'An easy entry telescope for the Moon, Jupiter''s moons and Saturn''s rings.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('neptune-one-orbit-since-discovery', 'en', 1, 'NASA Science: Neptune: Facts', 'https://science.nasa.gov/neptune/facts/'),
  ('neptune-one-orbit-since-discovery', 'en', 2, 'Space: Neptune Shines in New Photos Marking First Orbit Since Its Discovery', 'https://www.space.com/12254-neptune-photos-hubble-telescope-discovery-anniversary.html'),
  ('neptune-one-orbit-since-discovery', 'en', 3, 'NBC News: Neptune nears end of first orbit around sun since 1846', 'https://www.nbcnews.com/id/wbna38760253');
