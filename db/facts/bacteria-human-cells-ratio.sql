-- WTFact-Fakt „Bakterien sind dir nicht 10 zu 1 überlegen. Es steht eher 1 zu 1“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bacteria-human-cells-ratio', '2026-10-22T08:00:00+02:00', 'body', '🦠', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bacteria-human-cells-ratio', 'de', 'bakterien-menschliche-zellen-verhaeltnis',
  'Bakterien sind dir nicht 10 zu 1 überlegen. Es steht eher 1 zu 1',
  'Der berühmte Spruch „Du bist hauptsächlich Mikrobe“ stammt aus einer groben Schätzung von 1972, und eine Neuzählung hat ihn kräftig geschrumpft.',
  'Ein durchschnittlicher Erwachsener hat etwa 30 Billionen menschliche Zellen und knapp 40 Billionen Bakterien, das Verhältnis liegt also viel näher an 1 zu 1 als an den oft zitierten 10 zu 1.',
  'Bestimmt hast du es schon gehört: Auf jede menschliche Zelle in deinem Körper kommen zehn Bakterien, du bist also eigentlich hauptsächlich Mikrobe. Toller Partyspruch. Blöd nur, dass er ziemlich danebenliegt.

## Woher die 10 zu 1 kommen

Das berühmte Verhältnis geht auf eine Schätzung des Mikrobiologen Thomas Luckey von 1972 zurück. Laut Scientific American nahm er etwa 100 Milliarden Bakterien pro Gramm Kot an und rechnete das auf das ungefähr einen Liter große Volumen des Verdauungstrakts hoch. Ergebnis: rund 100 Billionen Darmbakterien und ein Verhältnis, das jahrzehntelang nachgeplappert wurde. Die Autoren der Neuzählung meinen, die Zahl sei wohl nie dafür gedacht gewesen, Jahrzehnte später noch überall zitiert zu werden.

Der Haken: Die meisten Darmbakterien leben im Dickdarm, und der fasst nur etwa 0,4 Liter. Außerdem zeigen Messungen im Stuhl weniger Bakterien, als Luckey angenommen hatte.

## Die Neuzählung

Anfang 2016 rechneten Ron Milo und Ron Sender vom Weizmann-Institut in Israel zusammen mit Shai Fuchs vom Hospital for Sick Children in Toronto neu. Für einen Referenzmann (70 Kilogramm, 20 bis 30 Jahre alt, 1,7 Meter groß) kamen sie auf etwa 30 Billionen menschliche Zellen und etwa 39 Billionen Bakterien. Das sind rund 1,3 Bakterien pro menschlicher Zelle, mit großer Unsicherheit. Das Verhältnis liegt also viel näher an 1 zu 1.

Ein Teil des alten Fehlers war die Größe. Die frühere Schätzung ging unter anderem davon aus, dass ein durchschnittliches Bakterium etwa 1.000-mal kleiner ist als eine durchschnittliche menschliche Zelle. Aber die allermeisten deiner menschlichen Zellen sind rote Blutkörperchen, und die sind mindestens 100-mal kleiner als Fett- oder Muskelzellen.

> Bonusfakt: Weil die beiden Zahlen so nah beieinanderliegen, vermuten die Autoren, dass jeder Toilettengang das Verhältnis zugunsten der menschlichen Zellen kippen könnte.

Nicht alle Fachleute waren beeindruckt. Peer Bork vom Europäischen Laboratorium für Molekularbiologie fand die bessere Zahl zwar nützlich zum Zitieren, biologisch aber wohl bedeutungslos. Trotzdem: Du bist keine Bakterienkolonie im Menschenkostüm. Eher eine WG, in der die Mikroben knapp die Mehrheit haben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bacteria-human-cells-ratio', 'de', 1, 'Riesenmikrobe als Plüschtier', 'Giant Microbes Plüsch E. coli', 'Ein kuscheliges, erstaunlich genaues Stofftier nach dem Vorbild einer echten Bakterie.'),
  ('bacteria-human-cells-ratio', 'de', 2, 'Sachbuch über das Mikrobiom', 'Ed Yong Winzige Gefährten Buch', 'Ein gut lesbarer Ausflug zu den Mikroben, die auf und in uns leben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bacteria-human-cells-ratio', 'de', 1, 'Scientific American: Scientists Bust Myth That Our Bodies Have More Bacteria Than Human Cells', 'https://www.scientificamerican.com/article/scientists-bust-myth-that-our-bodies-have-more-bacteria-than-human-cells/'),
  ('bacteria-human-cells-ratio', 'de', 2, 'Weizmann Wonder Wander: Germs, Humans and Numbers', 'https://wis-wander.weizmann.ac.il/life-sciences/germs-humans-and-numbers');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bacteria-human-cells-ratio', 'en', 'bacteria-human-cells-ratio',
  'You''re not outnumbered 10 to 1 by bacteria. It''s closer to 1 to 1',
  'The famous "you''re mostly microbes" line comes from a rough estimate from 1972, and a recount shrank it massively.',
  'An average adult has about 30 trillion human cells and just under 40 trillion bacteria, so the ratio is much closer to 1 to 1 than the often quoted 10 to 1.',
  'You''ve probably heard it: for every human cell in your body there are ten bacteria, so technically you''re mostly microbe. Great party line. Too bad it''s off by a lot.

## Where the 10 to 1 came from

The famous ratio goes back to a 1972 estimate by microbiologist Thomas Luckey. According to Scientific American, he assumed about 100 billion bacteria per gram of feces and scaled that up to the roughly one liter volume of the digestive tract. The result: about 100 trillion gut bacteria, and a ratio that got repeated for decades. The authors of the recount say it "was probably never meant to be widely quoted decades later."

The catch: most gut bacteria live in the colon, which holds only about 0.4 liters, and stool measurements show fewer bacteria than Luckey assumed.

## The recount

In early 2016, Ron Milo and Ron Sender at the Weizmann Institute of Science in Israel, together with Shai Fuchs from the Hospital for Sick Children in Toronto, ran the numbers again. For a reference man (70 kilograms, 20 to 30 years old, 1.7 meters tall) they arrived at about 30 trillion human cells and about 39 trillion bacteria. That''s roughly 1.3 bacteria per human cell, with wide uncertainty. So the ratio is much closer to 1 to 1.

Part of the old mistake was size. The earlier estimate partly assumed that the average bacterium is about 1,000 times smaller than the average human cell. But the vast majority of your human cells are red blood cells, and those are at least 100 times smaller than fat or muscle cells.

> Bonus fact: Because the two counts are so close, the authors suggest that each trip to the toilet may flip the ratio in favor of human cells.

Not every scientist was impressed. Peer Bork of the European Molecular Biology Laboratory said the better number is useful to quote but probably has no biological significance. Still, you''re not a bacteria colony in a human costume. It''s more of a shared flat where the microbes have a slim majority.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bacteria-human-cells-ratio', 'en', 1, 'Giant microbe plush toy', 'giant microbes plush e coli', 'A soft, surprisingly accurate stuffed version of a real bacterium.'),
  ('bacteria-human-cells-ratio', 'en', 2, 'Popular science book about the microbiome', 'I Contain Multitudes Ed Yong book', 'A readable deep dive into the microbes that live on and in us.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bacteria-human-cells-ratio', 'en', 1, 'Scientific American: Scientists Bust Myth That Our Bodies Have More Bacteria Than Human Cells', 'https://www.scientificamerican.com/article/scientists-bust-myth-that-our-bodies-have-more-bacteria-than-human-cells/'),
  ('bacteria-human-cells-ratio', 'en', 2, 'Weizmann Wonder Wander: Germs, Humans and Numbers', 'https://wis-wander.weizmann.ac.il/life-sciences/germs-humans-and-numbers');
