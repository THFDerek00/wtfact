-- WTFact-Fakt „Bismut ist radioaktiv. Seine Halbwertszeit ist über eine Milliarde Mal so lang wie das Alter des Universums“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bismuth-barely-radioactive', '2026-10-11T08:00:00+02:00', 'science', '⚛️', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bismuth-barely-radioactive', 'de', 'bismut-ist-kaum-radioaktiv',
  'Bismut ist radioaktiv. Seine Halbwertszeit ist über eine Milliarde Mal so lang wie das Alter des Universums',
  'Jahrzehntelang galt es in Lehrbüchern als stabil. Dann hat ein Dunkle-Materie-Experiment es beim Zerfallen erwischt.',
  '2003 haben Physiker in Frankreich gezeigt, dass Bismut-209, lange als schwerstes stabiles Isotop der Natur geführt, doch zerfällt, mit einer Halbwertszeit von etwa 19 Trillionen Jahren.',
  'Manche Elemente sind berühmt dafür, radioaktiv zu sein. Uran, Plutonium, Radium. Bismut steht nicht auf dieser Liste. Es ist ein schweres, silbriges Metall, das in Lehrbüchern lange als völlig stabil galt. Nur: Die Lehrbücher lagen falsch.

## Das stabile Atom, das keins war

Jahrzehntelang galt Bismut-209 als schwerstes Isotop in der Natur, das nie zerfällt. Dabei hatten Theoretiker laut Science News schon mehr als 50 Jahre vorher vorhergesagt, dass es ganz langsam zerfallen müsste. Experimente zwischen 1949 und 1972 fanden aber nichts, und die Idee geriet in Vergessenheit.

2003 veröffentlichte dann ein Team am Institut d''Astrophysique Spatiale im französischen Orsay den Beweis in Nature. Bismut-209 zerfällt doch: Es stößt ein Alphateilchen aus und wird zu Thallium-205.

## Langsamer als langsam

Der Haken ist das Tempo. Das Team maß eine Halbwertszeit von etwa 19 Trillionen Jahren. So lange dauert es, bis die Hälfte eines Haufens Bismut-209-Atome zerfallen ist. Science News rechnet das auf ungefähr das 1,4-Milliardenfache des heutigen Alters des Universums hoch. Guinness World Records führt es als längste je gemessene Halbwertszeit beim Alphazerfall.

Wie erwischt man etwas so Seltenes? Mit sehr vielen Atomen und einem sehr kalten Detektor. Die Forschenden nutzten ein Bolometer, einen Sensor für winzige Wärmestöße, gekühlt auf 20 Millikelvin, also knapp über dem absoluten Nullpunkt. Ein bismuthaltiger Kristall schluckt ein Alphateilchen, wird minimal wärmer, und der Sensor macht daraus ein Signal. In zwei Messläufen mit 31 und 62 Gramm Bismut zählte das Team in 5 Tagen 128 solcher Ereignisse.

> Bonusfakt: Gesucht hat das eigentlich niemand. Das Team war auf der Jagd nach Dunkler Materie und bemerkte die unerwarteten Zerfälle bei einer Routineprüfung seiner Detektoren auf Verunreinigungen.

Gefährlich wird Bismut dadurch nicht. Laut Physics World tragen die Alphateilchen nur sehr wenig Energie, auch deshalb war der Zerfall so schwer zu entdecken. Für alle praktischen Zwecke verhält sich das Metall stabil. Es ist es nur eben nicht ganz. Für immer ist offenbar etwas kürzer als versprochen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bismuth-barely-radioactive', 'de', 1, 'Bismut-Kristall', 'Bismut Kristall Regenbogen', 'Gezüchtetes Bismut bildet treppenförmige Kristalle mit schillernder Regenbogen-Oberfläche.'),
  ('bismuth-barely-radioactive', 'de', 2, 'Periodensystem-Poster', 'Periodensystem der Elemente Poster', 'Der Klassiker für die Wand, wenn du gern Elemente und Isotope nachschlägst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bismuth-barely-radioactive', 'de', 1, 'Physics World: Bismuth breaks half-life record for alpha decay', 'https://physicsworld.com/a/bismuth-breaks-half-life-record-for-alpha-decay/'),
  ('bismuth-barely-radioactive', 'de', 2, 'Science News: Not even bismuth-209 lasts forever', 'https://www.sciencenews.org/article/not-even-bismuth-209-lasts-forever'),
  ('bismuth-barely-radioactive', 'de', 3, 'Guinness World Records: Longest half-life by alpha decay', 'https://www.guinnessworldrecords.com/world-records/446037-longest-half-life-by-alpha-decay');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bismuth-barely-radioactive', 'en', 'bismuth-is-barely-radioactive',
  'Bismuth is radioactive. Its half-life is over a billion times the age of the universe',
  'For decades, textbooks called it stable. Then a dark matter experiment caught it falling apart.',
  'In 2003, physicists in France showed that bismuth-209, long seen as the heaviest stable isotope in nature, does decay, with a half-life of about 19 billion billion years.',
  'Some elements are famous for being radioactive. Uranium, plutonium, radium. Bismuth is not on that list. It''s a heavy, silvery metal that textbooks long described as completely stable. Turns out the textbooks were wrong.

## The stable atom that wasn''t

For decades, bismuth-209 was considered the heaviest isotope in nature that never decays. Theorists had actually predicted more than 50 years earlier that it should slowly fall apart, according to Science News. But experiments between 1949 and 1972 found nothing, and the idea faded.

Then, in 2003, a team at the Institut d''Astrophysique Spatiale in Orsay, France, published the proof in Nature. Bismuth-209 does decay: it spits out an alpha particle and turns into thallium-205.

## Slower than slow

The catch is the timing. The team measured a half-life of about 19 billion billion years. That''s how long it takes for half of a pile of bismuth-209 atoms to decay. Science News puts it at roughly 1.4 billion times the current age of the universe. Guinness World Records lists it as the longest half-life by alpha decay ever measured.

So how do you catch something that rare? With a lot of atoms and a very cold detector. The researchers used a bolometer, a sensor that registers tiny bursts of heat, cooled to 20 millikelvin, just a hair above absolute zero. A crystal containing bismuth absorbs an alpha particle, warms up by a minuscule amount, and the sensor turns that into a signal. Across two runs with 31 and 62 grams of bismuth, the team counted 128 such events in 5 days.

> Bonus fact: Nobody was even looking for this. The team was hunting for dark matter and noticed the unexpected decays during a routine check of their detectors for contamination.

The result doesn''t make bismuth dangerous. Physics World notes that the alpha particles carry very little energy, which is one reason the decay was so hard to spot. The metal behaves as stable for every practical purpose. It just isn''t, technically. Forever turned out to be a little shorter than advertised.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bismuth-barely-radioactive', 'en', 1, 'Bismuth crystal specimen', 'bismuth crystal specimen rainbow', 'Lab-grown bismuth forms stair-step crystals with a shimmering rainbow surface.'),
  ('bismuth-barely-radioactive', 'en', 2, 'Periodic table poster', 'periodic table of elements poster', 'A classic wall chart for anyone who likes to look up elements and isotopes.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bismuth-barely-radioactive', 'en', 1, 'Physics World: Bismuth breaks half-life record for alpha decay', 'https://physicsworld.com/a/bismuth-breaks-half-life-record-for-alpha-decay/'),
  ('bismuth-barely-radioactive', 'en', 2, 'Science News: Not even bismuth-209 lasts forever', 'https://www.sciencenews.org/article/not-even-bismuth-209-lasts-forever'),
  ('bismuth-barely-radioactive', 'en', 3, 'Guinness World Records: Longest half-life by alpha decay', 'https://www.guinnessworldrecords.com/world-records/446037-longest-half-life-by-alpha-decay');
