-- WTFact-Fakt „Beim Tauchen schlägt das Herz eines Blauwals nur 2 Mal pro Minute“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('blue-whale-heart-two-beats', '2026-10-22T19:00:00+02:00', 'ocean', '🐋', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'blue-whale-heart-two-beats', 'de', 'blauwal-herz-zwei-schlaege',
  'Beim Tauchen schlägt das Herz eines Blauwals nur 2 Mal pro Minute',
  'Das größte Herz der Welt kann fast stillstehen. Und danach rasen.',
  'Forschende haben 2019 zum ersten Mal den Herzschlag eines Blauwals gemessen. In der Tiefe sank er auf nur 2 Schläge pro Minute, an der Oberfläche stieg er auf bis zu 37.',
  'Den Puls eines Blauwals zu messen, ist schwieriger, als es klingt. Man kann das größte Tier der Welt schlecht bitten, mal kurz stillzuhalten. Trotzdem ist es Forschenden 2019 zum ersten Mal gelungen.

## Ein Messgerät mit Saugnäpfen

Laut Live Science befestigte ein Team in der Monterey Bay in Kalifornien ein Messgerät mit Saugnäpfen am Körper eines Blauwals. Das klappte laut Live Science gleich beim ersten Versuch, was bei einem so riesigen und schnellen Tier keine Selbstverständlichkeit ist. Die Ergebnisse erschienen am 25. November 2019 in der Fachzeitschrift PNAS.

Laut ScienceAlert sammelte das Gerät rund neun Stunden lang Daten. Der Wal war etwa 22 Meter lang.

## Fast Stillstand, dann Vollgas

Das Ergebnis überraschte die Forschenden. Während der Wal tauchte, sank sein Herzschlag laut Live Science auf nur 2 Schläge pro Minute. Normal waren beim Tauchen laut ScienceAlert vier bis acht Schläge pro Minute.

Tauchte er wieder auf, um Luft zu holen, raste das Herz auf bis zu 37 Schläge pro Minute. Laut Live Science bringt schon das einfache Fressen das Herz des Wals womöglich an seine körperlichen Grenzen.

Ein Tauchgang dauerte bis zu 16,5 Minuten und ging bis in 184 Meter Tiefe. In dieser Zeit jagte der Wal unter Wasser nach Futter.

> Bonusfakt: Laut Live Science wiegt das Herz eines Blauwals etwa 180 Kilogramm. Das ist ungefähr so viel wie zwei bis drei erwachsene Menschen zusammen, und es ist etwa so groß wie ein Golfwagen.

Warum schlägt das Herz beim Tauchen so langsam? So spart der Wal Sauerstoff. Das Blut versorgt dann vor allem die wichtigsten Organe, und der Wal kann länger unter Wasser bleiben.

Zum Vergleich: Ein menschliches Herz schlägt in Ruhe ungefähr 60 bis 80 Mal pro Minute. Der Blauwal kommt in der Tiefe mit einem Bruchteil davon aus und ist trotzdem das größte Tier, das je gelebt hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('blue-whale-heart-two-beats', 'de', 1, 'Blauwal-Figur', 'Blauwal Figur Schleich', 'Holt das größte Tier der Welt ins Kinderzimmer.'),
  ('blue-whale-heart-two-beats', 'de', 2, 'Buch über Wale', 'Buch Wale Meeressäuger', 'Alles über die Riesen der Meere und ihr Leben unter Wasser.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('blue-whale-heart-two-beats', 'de', 1, 'Live Science: A Blue Whale Had His Heartbeat Taken for the First Time Ever', 'https://www.livescience.com/first-blue-whale-heartbeat.html'),
  ('blue-whale-heart-two-beats', 'de', 2, 'ScienceAlert: First-Ever Measurement of a Blue Whale’s Heartbeat Reveals Surprising Extremes', 'https://www.sciencealert.com/scientists-listen-to-the-slow-rhythmic-heartbeat-of-a-blue-whale-for-the-first-time');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'blue-whale-heart-two-beats', 'en', 'blue-whale-heart-two-beats',
  'While diving, a blue whale’s heart beats only 2 times a minute',
  'The biggest heart in the world can almost stand still. And then race.',
  'In 2019, researchers measured a blue whale’s heartbeat for the first time. In the deep, it dropped to just 2 beats a minute. At the surface, it rose to as many as 37.',
  'Measuring a blue whale’s pulse is harder than it sounds. You can’t exactly ask the largest animal in the world to hold still for a moment. Still, researchers managed it for the first time in 2019.

## A sensor with suction cups

According to Live Science, a team in Monterey Bay, California, attached a sensor with suction cups to a blue whale’s body. According to Live Science, it worked on the very first attempt, which is no small feat with such a huge, fast animal. The results were published in the journal PNAS on November 25, 2019.

According to ScienceAlert, the device collected about nine hours of data. The whale was about 22 meters long.

## Almost a standstill, then full throttle

The result surprised the researchers. While the whale was diving, its heart rate dropped to just 2 beats a minute, according to Live Science. According to ScienceAlert, four to eight beats a minute were typical during dives.

When it came back up to breathe, its heart raced at up to 37 beats a minute. According to Live Science, the simple act of catching a bite may push a blue whale’s heart to its physical limits.

A dive lasted up to 16.5 minutes and went as deep as 184 meters. During that time, the whale was hunting for food underwater.

> Bonus fact: According to Live Science, a blue whale’s heart weighs about 180 kilograms (400 pounds). That’s roughly as much as two or three adults combined, and it’s about the size of a golf cart.

Why does the heart beat so slowly during a dive? It saves oxygen. The blood then mainly supplies the most important organs, and the whale can stay underwater longer.

For comparison: a human heart beats about 60 to 80 times a minute at rest. In the deep, the blue whale gets by with a fraction of that and is still the largest animal that has ever lived.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('blue-whale-heart-two-beats', 'en', 1, 'Blue whale figure', 'blue whale figure toy', 'Brings the largest animal in the world into the kids’ room.'),
  ('blue-whale-heart-two-beats', 'en', 2, 'Book about whales', 'book whales marine mammals', 'All about the giants of the sea and their life underwater.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('blue-whale-heart-two-beats', 'en', 1, 'Live Science: A Blue Whale Had His Heartbeat Taken for the First Time Ever', 'https://www.livescience.com/first-blue-whale-heartbeat.html'),
  ('blue-whale-heart-two-beats', 'en', 2, 'ScienceAlert: First-Ever Measurement of a Blue Whale’s Heartbeat Reveals Surprising Extremes', 'https://www.sciencealert.com/scientists-listen-to-the-slow-rhythmic-heartbeat-of-a-blue-whale-for-the-first-time');
