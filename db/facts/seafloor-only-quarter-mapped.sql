-- WTFact-Fakt „Nur gut ein Viertel des Meeresbodens ist genau kartiert“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('seafloor-only-quarter-mapped', '2026-10-21T21:00:00+02:00', 'ocean', '🗺️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'seafloor-only-quarter-mapped', 'de', 'meeresboden-nur-ein-viertel-kartiert',
  'Nur gut ein Viertel des Meeresbodens ist genau kartiert',
  'Wir haben Fotos von fernen Galaxien. Vom Boden unserer eigenen Ozeane fehlt der größte Teil.',
  'Laut dem Projekt Seabed 2030 waren im Juni 2024 erst 26,1 Prozent des Meeresbodens mit moderner Technik genau vermessen. Der Rest ist nur grob bekannt.',
  'Dass Ozeane den größten Teil der Erde bedecken, weiß jedes Kind. Weniger bekannt ist, wie wenig wir über ihren Boden wissen. Der Großteil ist bis heute nicht genau vermessen.

## Ein großer weißer Fleck

Natürlich gibt es Karten vom gesamten Meeresboden. Sie beruhen aber zu großen Teilen auf Messungen aus dem All, die nur ein grobes Bild liefern. Berge, Schluchten und Ebenen am Grund sind darauf nur sehr verschwommen zu sehen.

Genau wird es erst, wenn Schiffe den Boden mit Schall abtasten. Dabei senden sie Schallwellen nach unten und messen, wie lange das Echo braucht. Genau das will das internationale Projekt Seabed 2030 für den gesamten Meeresboden erreichen, und zwar bis 2030.

## Der Fortschritt

Laut Engadget war 2022 knapp ein Viertel geschafft, nämlich 23,4 Prozent. Allein im Jahr davor kamen rund 3,8 Millionen Quadratmeilen dazu, also fast zehn Millionen Quadratkilometer.

Im Juni 2024, am Welttag der Hydrografie, meldete Seabed 2030 dann laut dem Center for Coastal and Ocean Mapping der University of New Hampshire einen Stand von 26,1 Prozent. Das heißt im Umkehrschluss: Fast drei Viertel des Meeresbodens sind noch nicht in hoher Auflösung bekannt.

> Bonusfakt: Laut Engadget kam der große Sprung vor allem aus Archiven. Viele Messungen gab es längst, sie lagen nur bei Regierungen und Firmen, die sie nach und nach für das Projekt öffnen.

Warum ist das wichtig? Genaue Karten helfen dabei, Tsunamis besser vorherzusagen, Schiffe und Unterseekabel sicher zu führen und Lebensräume am Meeresgrund zu schützen. Sie zeigen außerdem, wie Strömungen über den Boden fließen und das Klima beeinflussen.

Bis 2030 bleibt also noch einiges zu tun. Bis dahin gilt: Über die Oberfläche anderer Himmelskörper wissen wir teils mehr als über den Boden direkt unter unseren Schiffen.

Wer am Strand steht und aufs Meer schaut, blickt also auf eine der letzten großen unbekannten Landschaften der Erde.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('seafloor-only-quarter-mapped', 'de', 1, 'Relief-Karte der Weltmeere', 'Weltkarte Meeresboden Relief Poster', 'Zeigt Gebirge und Gräben am Meeresgrund als Wandposter.'),
  ('seafloor-only-quarter-mapped', 'de', 2, 'Buch über die Erforschung der Ozeane', 'Buch Erforschung Ozean Meeresforschung', 'Erzählt, wie Menschen die Tiefsee Schritt für Schritt entdecken.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('seafloor-only-quarter-mapped', 'de', 1, 'UNH Center for Coastal and Ocean Mapping: Seabed 2030 Announces Latest Progress on World Hydrography Day', 'https://ccom.unh.edu/article/seabed-2030-announces-latest-progress-world-hydrography-day'),
  ('seafloor-only-quarter-mapped', 'de', 2, 'Engadget: Almost a quarter of the ocean floor is now mapped', 'https://www.engadget.com/quarter-sea-floor-mapped-seabed2030-190032402.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'seafloor-only-quarter-mapped', 'en', 'seafloor-only-quarter-mapped',
  'Only just over a quarter of the seafloor is mapped in detail',
  'We have photos of distant galaxies. Most of the bottom of our own oceans is still missing.',
  'According to the Seabed 2030 project, only 26.1 percent of the seafloor had been mapped in detail with modern technology by June 2024. The rest is only roughly known.',
  'Every kid knows that oceans cover most of the Earth. Fewer people know how little we know about their floor. Most of it still hasn’t been measured in detail.

## A big blank spot

Of course, there are maps of the entire seafloor. But much of them is based on measurements from space, which only give a rough picture. Mountains, canyons and plains on the bottom look very blurry on them.

It only gets precise when ships scan the bottom with sound. They send sound waves down and measure how long the echo takes to come back. That’s exactly what the international Seabed 2030 project wants to achieve for the entire seafloor, by 2030.

## The progress

According to Engadget, almost a quarter was done in 2022, 23.4 percent. In the year before that alone, about 3.8 million square miles were added.

Then, in June 2024, on World Hydrography Day, Seabed 2030 reported 26.1 percent, according to the University of New Hampshire’s Center for Coastal and Ocean Mapping. In other words: almost three quarters of the seafloor still isn’t known in high resolution.

> Bonus fact: According to Engadget, the big jump came mainly from archives. Many measurements already existed, they were just held by governments and companies that are gradually opening them up for the project.

Why does it matter? Detailed maps help forecast tsunamis better, guide ships and undersea cables safely and protect habitats on the seafloor. They also show how currents flow across the bottom and influence the climate.

So there’s still plenty to do before 2030. Until then, we sometimes know more about the surface of other worlds than about the ground right under our ships.

Anyone standing on a beach looking out to sea is looking at one of the last great unknown landscapes on Earth.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('seafloor-only-quarter-mapped', 'en', 1, 'Relief map of the oceans', 'ocean floor relief map poster', 'Shows the mountains and trenches on the seafloor as a wall poster.'),
  ('seafloor-only-quarter-mapped', 'en', 2, 'Book about ocean exploration', 'book ocean exploration history', 'Tells how people are discovering the deep sea step by step.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('seafloor-only-quarter-mapped', 'en', 1, 'UNH Center for Coastal and Ocean Mapping: Seabed 2030 Announces Latest Progress on World Hydrography Day', 'https://ccom.unh.edu/article/seabed-2030-announces-latest-progress-world-hydrography-day'),
  ('seafloor-only-quarter-mapped', 'en', 2, 'Engadget: Almost a quarter of the ocean floor is now mapped', 'https://www.engadget.com/quarter-sea-floor-mapped-seabed2030-190032402.html');
