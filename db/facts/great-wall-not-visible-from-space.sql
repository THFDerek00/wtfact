-- WTFact-Fakt „Chinas erster Astronaut hat die Chinesische Mauer aus dem All nicht gesehen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('great-wall-not-visible-from-space', '2026-10-22T19:00:00+02:00', 'myths', '🧱', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'great-wall-not-visible-from-space', 'de', 'chinesische-mauer-nicht-aus-dem-all',
  'Chinas erster Astronaut hat die Chinesische Mauer aus dem All nicht gesehen',
  'Das einzige Bauwerk, das man aus dem Weltraum sieht? Ausgerechnet ein Chinese hat den Mythos beerdigt.',
  'Yang Liwei, Chinas erster Raumfahrer, sagte 2003 nach seiner Landung: „Ich habe die Große Mauer nicht gesehen.“ Mit bloßem Auge ist sie aus der Umlaufbahn kaum zu erkennen.',
  'Es ist einer der beliebtesten Quizfakten überhaupt: Die Chinesische Mauer sei das einzige Bauwerk, das man mit bloßem Auge aus dem All sehen kann. Ausgerechnet Chinas erster Astronaut hat das gründlich widerlegt.

## „Ich habe die Mauer nicht gesehen“

Im Oktober 2003 flog Yang Liwei mit dem Raumschiff Shenzhou 5 rund 21 Stunden lang um die Erde und umrundete sie 14-mal. Nach der Landung fragte ihn das chinesische Staatsfernsehen nach der Aussicht. Die sei „sehr schön“ gewesen, sagte er. Und dann: „Ich habe die Große Mauer nicht gesehen.“

Das Problem ist nicht die Länge, sondern die Breite. Die Mauer ist nur etwa sechs Meter breit und hat ungefähr die Farbe des Bodens um sie herum. Laut Astronauten der NASA sind aus niedriger Umlaufbahn viele menschengemachte Dinge zu sehen, etwa Straßen, Städte und Schiffe. Die Mauer gehört nicht zu den leichten Zielen.

## Nur mit Teleobjektiv

Fotografiert wurde sie trotzdem. 2004 erwischte der Astronaut Leroy Chiao einen Abschnitt mit einem 180-Millimeter-Objektiv. 2018 gelang es Alexander Gerst mit einem 800-Millimeter-Teleobjektiv. Mit bloßem Auge dagegen ist es laut „Sky at Night“ kaum zu schaffen.

Vom Mond aus schon gar nicht. Der Apollo-12-Astronaut Alan Bean sagte: „Auf diese Entfernung ist kein menschengemachtes Objekt zu sehen.“

> Bonusfakt: Die Idee ist älter als die Raumfahrt. Schon 1754 schrieb der englische Pfarrer William Stukeley in einem Brief, die Mauer sei vom Mond aus zu erkennen.

Der Mythos war also fast 250 Jahre alt, als ihn jemand vor Ort überprüfen konnte. Und das Urteil kam direkt aus der ersten Reihe.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('great-wall-not-visible-from-space', 'de', 1, 'Bildband Erde aus dem All', 'Bildband Erde aus dem Weltall Fotos', 'Fotos von Astronauten, die zeigen, was man von oben wirklich erkennt.'),
  ('great-wall-not-visible-from-space', 'de', 2, 'Chinesische Mauer als 3D-Puzzle', 'Chinesische Mauer 3D Puzzle', 'Baut die Mauer im Kleinformat auf dem Schreibtisch nach.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('great-wall-not-visible-from-space', 'de', 1, 'Al Jazeera: China’s spaceman shatters a myth', 'https://www.aljazeera.com/news/2003/10/17/chinas-spaceman-shatters-a-myth'),
  ('great-wall-not-visible-from-space', 'de', 2, 'BBC Sky at Night Magazine: Can you see the Great Wall of China from space?', 'https://www.skyatnightmagazine.com/space-science/can-you-see-great-wall-china-from-space');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'great-wall-not-visible-from-space', 'en', 'great-wall-not-visible-from-space',
  'China’s first astronaut couldn’t see the Great Wall from space',
  'The only man-made structure visible from space? Fittingly, it took a Chinese astronaut to bury that myth.',
  'Yang Liwei, China’s first astronaut, said after landing in 2003: "I didn’t see the Great Wall." With the naked eye, it’s barely visible from orbit.',
  'It’s one of the most popular trivia facts of all time: the Great Wall of China is supposedly the only structure you can see from space with the naked eye. Fittingly, it was China’s first astronaut who knocked it down.

## "I didn’t see the Great Wall"

In October 2003, Yang Liwei spent about 21 hours circling Earth aboard the Shenzhou 5 spacecraft, completing 14 orbits. After landing, Chinese state television asked him about the view. It was "very beautiful", he said. And then: "I didn’t see the Great Wall."

The problem isn’t the length, it’s the width. The wall is only about six meters wide and roughly the same color as the ground around it. According to NASA astronauts, plenty of human-made things can be seen from low orbit, such as roads, cities and ships. The wall just isn’t an easy target.

## Only with a telephoto lens

It has been photographed, though. In 2004, astronaut Leroy Chiao captured a section using a 180-millimeter lens. In 2018, Alexander Gerst managed it with an 800-millimeter telephoto lens. With the naked eye, according to Sky at Night, it’s hardly possible.

From the Moon, forget it. Apollo 12 astronaut Alan Bean said: "No man-made object is visible at this scale."

> Bonus fact: The idea is older than spaceflight. As early as 1754, the English clergyman William Stukeley wrote in a letter that the wall could be seen from the Moon.

So the myth was almost 250 years old by the time someone could check it in person. And the verdict came straight from the front row.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('great-wall-not-visible-from-space', 'en', 1, 'Earth from space photo book', 'earth from space photo book astronaut', 'Astronaut photos that show what you can actually make out from up there.'),
  ('great-wall-not-visible-from-space', 'en', 2, 'Great Wall of China 3D puzzle', 'great wall of china 3d puzzle', 'Builds a mini version of the wall on your desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('great-wall-not-visible-from-space', 'en', 1, 'Al Jazeera: China’s spaceman shatters a myth', 'https://www.aljazeera.com/news/2003/10/17/chinas-spaceman-shatters-a-myth'),
  ('great-wall-not-visible-from-space', 'en', 2, 'BBC Sky at Night Magazine: Can you see the Great Wall of China from space?', 'https://www.skyatnightmagazine.com/space-science/can-you-see-great-wall-china-from-space');
