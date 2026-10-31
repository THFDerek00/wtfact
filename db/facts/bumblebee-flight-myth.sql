-- WTFact-Fakt „Die Wissenschaft hat nie bewiesen, dass Hummeln nicht fliegen können“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bumblebee-flight-myth', '2026-11-05T12:00:00+01:00', 'myths', '🐝', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bumblebee-flight-myth', 'de', 'hummeln-koennen-doch-fliegen',
  'Die Wissenschaft hat nie bewiesen, dass Hummeln nicht fliegen können',
  'Der berühmte Spruch geht auf eine schnelle Rechnung aus den 1930ern zurück, die eine Biene wie ein Mini-Flugzeug behandelte.',
  'Der früheste bekannte Beleg für die Idee, dass Hummeln laut Physik nicht fliegen können, ist ein französisches Buch von 1934, dessen grobe Rechnung Insektenflügel wie glatte, starre Flugzeugtragflächen behandelte.',
  'Du kennst den Spruch bestimmt: Laut Wissenschaft dürfte die Hummel gar nicht fliegen können, aber das hat ihr niemand gesagt. Klingt super als Motivationsspruch. Ist aber ein Mythos. Die Wissenschaft hat nie bewiesen, dass Hummeln nicht fliegen können. Eine grobe Rechnung hat nur mit dem falschen Flügel gerechnet.

## Woher die Geschichte kommt

Der früheste bekannte Beleg steht in einem französischen Buch von 1934: „Le vol des insectes“ des Insektenforschers Antoine Magnan. Er schrieb, er habe die Gesetze des Luftwiderstands auf Insekten angewendet, und schrieb die Rechnung seinem Assistenten André Sainte-Laguë zu. Laut Caltech kamen die beiden zu dem Schluss, dass der Flug von Bienen aerodynamisch unmöglich sei.

Andere Versionen verlegen die Geschichte zu einem Abendessen im Deutschland der 1930er-Jahre, bei dem ein Aerodynamiker für einen Biologen eine schnelle Überschlagsrechnung gemacht haben soll. Mal wird der Schweizer Gasdynamiker Jakob Ackeret genannt, mal Studenten des Physikers Ludwig Prandtl. Wie genau aus einer Notiz in einem Buch Popwissenschafts-Folklore wurde, ist unklar.

## Die Rechnung stimmte, das Modell nicht

Das Problem war die Annahme. Die Schätzung behandelte einen Insektenflügel wie eine glatte, starre Flugzeugtragfläche im Gleitflug. So ein Flügel würde bei der Größe und dem Tempo einer Biene tatsächlich zu wenig Auftrieb liefern. Aber Bienen gleiten nicht. Ihre Flügel schlagen, biegen und verdrehen sich, und diese Bewegung erzeugt Luftwirbel, die zusätzlichen Auftrieb liefern.

2005 untersuchte ein Team um Michael Dickinson am Caltech Honigbienen mit Hochgeschwindigkeitskameras und einem riesigen Roboter-Bienenflügel. Die Bienen schlugen etwa 230-mal pro Sekunde mit den Flügeln, und zwar nur in einem Bogen von rund 90 Grad. Brauchen sie mehr Kraft, etwa wenn sie Pollen tragen, vergrößern sie diesen Bogen, statt schneller zu schlagen.

> Bonusfakt: Laut Caltech sind Fruchtfliegen 80-mal kleiner als Honigbienen, schlagen aber nur etwa 200-mal pro Sekunde mit den Flügeln.

Dickinsons Fazit: Die Bienengeschichte taugt nicht mehr als Beispiel dafür, dass die Wissenschaft versagt hat, „weil sie einfach nicht stimmt“. Die Bienen haben nie die Physik ausgetrickst. Die Gleichung beschrieb nur ein anderes Tier: eins mit Flugzeugflügeln.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bumblebee-flight-myth', 'de', 1, 'Hummelnistkasten', 'Hummelnistkasten Garten', 'Bietet wilden Hummeln einen geschützten Nistplatz im Garten.'),
  ('bumblebee-flight-myth', 'de', 2, 'Hummel-Plüschtier', 'Hummel Plüschtier', 'Eine weiche, flauschige Hummel, die man einfach mögen muss.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bumblebee-flight-myth', 'de', 1, 'Snopes: Bumblebees Can''t Fly', 'https://www.snopes.com/fact-check/bumblebees-cant-fly/'),
  ('bumblebee-flight-myth', 'de', 2, 'Caltech: Deciphering the Mystery of Bee Flight', 'https://www.caltech.edu/news/deciphering-mystery-bee-flight-1075'),
  ('bumblebee-flight-myth', 'de', 3, 'Today I Found Out: Bumblebee Flight Does Not Violate the Laws of Physics', 'https://www.todayifoundout.com/index.php/2013/08/bumblebee-flight-does-not-violate-the-laws-of-physics/'),
  ('bumblebee-flight-myth', 'de', 4, 'Alaska Science Forum: Bumbling Bees and Fast Flies', 'https://www.gi.alaska.edu/alaska-science-forum/bumbling-bees-and-fast-flies');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bumblebee-flight-myth', 'en', 'bumblebees-can-fly-myth',
  'Science never proved that bumblebees can''t fly',
  'The famous claim goes back to a quick 1930s calculation that treated a bee like a tiny airplane.',
  'The earliest known source for the idea that bumblebees can''t fly according to physics is a 1934 French book whose rough calculation treated insect wings like smooth, rigid airplane wings.',
  'You''ve probably heard it: according to science, bumblebees shouldn''t be able to fly, but nobody told the bee. It''s a great motivational line. It''s also a myth. Science never proved that bees can''t fly. A rough calculation just used the wrong kind of wing.

## Where the story comes from

The earliest known reference sits in a French book from 1934, Le vol des insectes by entomologist Antoine Magnan. He wrote that he had applied the laws of air resistance to insects, and he credited the calculation to his assistant André Sainte-Laguë. According to Caltech, the two concluded that bee flight was aerodynamically impossible.

Other versions place the story at a dinner in 1930s Germany, where an aerodynamicist did a quick back-of-the-envelope estimate for a biologist. Some name Swiss gas dynamicist Jacob Ackeret, others link it to students of physicist Ludwig Prandtl. How exactly a note in a book turned into pop-science folklore is unclear.

## The math was fine, the model wasn''t

The problem was the assumption. The estimate treated an insect wing like a smooth, rigid airplane wing gliding through the air. That kind of wing really would produce too little lift at a bee''s size and speed. But bees don''t glide. Their wings flap, bend and twist, and that motion creates swirling vortices of air that generate extra lift.

In 2005, a team led by Michael Dickinson at Caltech studied honeybees with high-speed cameras and a giant robotic bee wing. The bees beat their wings around 230 times per second, through an arc of only about 90 degrees. When they need more power, for example while carrying pollen, they widen that arc instead of flapping faster.

> Bonus fact: According to Caltech, fruit flies are 80 times smaller than honeybees but flap their wings only about 200 times per second.

Dickinson''s verdict: the bee story can''t be used as an example of science failing anymore, "because it is just not true." The bees were never breaking physics. The equation was just describing a different animal: one with airplane wings.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bumblebee-flight-myth', 'en', 1, 'Bumblebee nesting box', 'bumblebee nesting box', 'Gives wild bumblebees a sheltered place to nest in your garden.'),
  ('bumblebee-flight-myth', 'en', 2, 'Bumblebee plush toy', 'bumblebee plush toy', 'A soft, fuzzy bee that is impossible not to like.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bumblebee-flight-myth', 'en', 1, 'Snopes: Bumblebees Can''t Fly', 'https://www.snopes.com/fact-check/bumblebees-cant-fly/'),
  ('bumblebee-flight-myth', 'en', 2, 'Caltech: Deciphering the Mystery of Bee Flight', 'https://www.caltech.edu/news/deciphering-mystery-bee-flight-1075'),
  ('bumblebee-flight-myth', 'en', 3, 'Today I Found Out: Bumblebee Flight Does Not Violate the Laws of Physics', 'https://www.todayifoundout.com/index.php/2013/08/bumblebee-flight-does-not-violate-the-laws-of-physics/'),
  ('bumblebee-flight-myth', 'en', 4, 'Alaska Science Forum: Bumbling Bees and Fast Flies', 'https://www.gi.alaska.edu/alaska-science-forum/bumbling-bees-and-fast-flies');
