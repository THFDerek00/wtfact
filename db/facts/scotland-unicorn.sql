-- WTFact-Fakt „Schottlands Nationaltier ist ein Einhorn“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('scotland-unicorn', '2026-08-24', 'weird', '🦄', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'scotland-unicorn', 'de', 'schottland-nationaltier-einhorn',
  'Schottlands Nationaltier ist ein Einhorn',
  'Andere Länder haben Adler, Löwen oder Bären. Schottland hat sich für ein Tier entschieden, das es gar nicht gibt.',
  'Das Nationaltier Schottlands ist kein Hirsch und kein Adler, sondern ein Einhorn, und im königlichen Wappen trägt es Ketten.',
  'Die USA haben den Weißkopfseeadler, Australien das Känguru. Und Schottland? **Schottlands Nationaltier ist das Einhorn.** Ja, das Fabelwesen mit dem Horn auf der Stirn. Kein Witz und auch keine Erfindung von Souvenirläden.

## Ein Fabelwesen mit Haltung

Dass ausgerechnet ein Einhorn ein Land repräsentiert, klingt erst mal nach Glitzer und Regenbogen. Mit Kinderzimmer-Kitsch hat das schottische Einhorn aber wenig zu tun. Es ist ein Symbol aus der Heraldik, also der Wappenkunde, und hängt eng mit dem schottischen Königshaus zusammen.

Laut einer alten Legende konnte **nur ein König ein Einhorn überwältigen und beherrschen**. Genau das macht es zum perfekten Symbol für königliche Macht. Wer das Einhorn zähmt, zeigt, dass er wirklich das Sagen hat.

## Warum das Einhorn Ketten trägt

Schau dir mal das britische Königswappen genauer an. Das Einhorn trägt dort **Ketten um den Körper und eine Krone um den Hals**. Das bedeutet nicht, dass man Angst vor ihm hatte, sondern: Es steht unter dem Befehl des Monarchen.

Seit 1603 zeigt das königliche Wappen auf der einen Seite das Einhorn für Schottland und auf der anderen den Löwen für England. **Die beiden Wappentiere halten gemeinsam den Schild.**

## Einhörner überall

Wer durch Edinburgh läuft, entdeckt das Tier an vielen Ecken. Im Palace of Holyroodhouse, dem Königspalast der Stadt, tauchen Einhörner auf Torpfosten, in Wandschnitzereien und an Stuckdecken auf.

> Für König Jakob IV. entstand im frühen 16. Jahrhundert ein Torhaus mit einem großen, bemalten Einhorn aus Stein. Das Gebäude ist längst verschwunden, das Einhorn ist bis heute erhalten.

Ein Land, das sich als Nationaltier ein Wesen aussucht, das niemand je gesehen hat: Das ist entweder sehr poetisch oder sehr schottisch. Vermutlich beides.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('scotland-unicorn', 'de', 1, 'Reiseführer Schottland', 'Reiseführer Schottland', 'Highlands, Edinburgh und Inseln kompakt erklärt. Ideal zum Planen oder einfach zum Träumen.'),
  ('scotland-unicorn', 'de', 2, 'Einhorn-Kuscheltier', 'Einhorn Kuscheltier groß', 'Ein flauschiges Einhorn für Sofa oder Bett. Ganz ohne Ketten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('scotland-unicorn', 'de', 1, 'Royal Collection Trust: Unicorns', 'https://www.rct.uk/resources/unicorns'),
  ('scotland-unicorn', 'de', 2, 'Wikipedia: Einhorn', 'https://de.wikipedia.org/wiki/Einhorn'),
  ('scotland-unicorn', 'de', 3, 'National Trust for Scotland: The unicorn – Scotland''s national animal', 'https://www.nts.org.uk/stories/the-unicorn-scotlands-national-animal');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'scotland-unicorn', 'en', 'scotland-national-animal-unicorn',
  'Scotland''s national animal is a unicorn',
  'Other countries picked eagles, lions or bears. Scotland went with an animal that doesn''t exist.',
  'Scotland''s national animal isn''t a stag or an eagle. It''s a unicorn, and on the royal coat of arms, it wears chains.',
  'The US has the bald eagle, Australia has the kangaroo. And Scotland? **Scotland''s national animal is the unicorn.** Yes, the mythical creature with a horn on its forehead. Not a joke, and not something souvenir shops made up.

## A mythical beast with attitude

A unicorn representing a whole country sounds like glitter and rainbows at first. But Scotland''s unicorn has little to do with kids'' room decor. It''s a symbol from heraldry, the art of coats of arms, and closely tied to Scotland''s royal history.

According to an old legend, **only a king could overpower and command a unicorn**. That''s what makes it the perfect symbol of royal power. Tame the unicorn, and you prove you''re truly in charge.

## Why the unicorn wears chains

Take a closer look at the British royal coat of arms. The unicorn there wears **chains around its body and a crown around its neck**. That doesn''t mean people were scared of it. It means it''s under the command of the monarch.

Since 1603, the royal coat of arms has shown the unicorn for Scotland on one side and the lion for England on the other. **Together, the two hold up the shield.**

## Unicorns everywhere

Walk through Edinburgh and you''ll spot the animal all over the place. At the Palace of Holyroodhouse, the city''s royal palace, unicorns show up on gate posts, in wall carvings and on plaster ceilings.

> In the early 16th century, a gate lodge was built for King James IV featuring a large, painted stone unicorn. The building is long gone, but the unicorn survives to this day.

A country picking a national animal that nobody has ever seen: that''s either very poetic or very Scottish. Probably both.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('scotland-unicorn', 'en', 1, 'Scotland travel guide', 'Scotland travel guide book', 'The Highlands, Edinburgh and the islands in one handy book. Great for planning a trip or just daydreaming.'),
  ('scotland-unicorn', 'en', 2, 'Unicorn plush toy', 'large unicorn plush', 'A fluffy unicorn for your couch or bed. No chains included.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('scotland-unicorn', 'en', 1, 'Royal Collection Trust: Unicorns', 'https://www.rct.uk/resources/unicorns'),
  ('scotland-unicorn', 'en', 2, 'Wikipedia: National symbols of Scotland', 'https://en.wikipedia.org/wiki/National_symbols_of_Scotland'),
  ('scotland-unicorn', 'en', 3, 'National Trust for Scotland: The unicorn – Scotland''s national animal', 'https://www.nts.org.uk/stories/the-unicorn-scotlands-national-animal');
