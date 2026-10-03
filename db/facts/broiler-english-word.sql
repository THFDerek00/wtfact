-- WTFact-Fakt „Das DDR-Wort „Broiler“ ist ein Anglizismus“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('broiler-english-word', '2026-10-03T11:51:32+02:00', 'language', '🍗', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'broiler-english-word', 'de', 'broiler-kommt-aus-dem-englischen',
  'Das DDR-Wort „Broiler“ ist ein Anglizismus',
  'Im Osten bestellt man einen Broiler, im Westen ein Brathähnchen. Das ostdeutsche Wort ist dabei das englischere.',
  'Das vor allem in Ostdeutschland übliche Wort „Broiler“ für Brathähnchen stammt vom englischen „to broil“, also grillen, und ist dort seit etwa 1960 in Gebrauch.',
  'Wenn jemand aus Leipzig oder Rostock „einen halben Broiler“ bestellt, guckt man in Köln schon mal ratlos. **Dabei ist ausgerechnet dieses typisch ostdeutsche Wort ein Anglizismus: „Broiler“ kommt vom englischen Verb „to broil“.**

## Vom Grillrost ins Wörterbuch

„To broil“ heißt so viel wie auf dem Rost braten oder grillen. Das Digitale Wörterbuch der deutschen Sprache (DWDS) führt das Wort zurück auf das altfranzösische „brûler“, also brennen. Ein Broiler ist damit ganz wörtlich ein Huhn zum Grillen.

Der Duden kennt zwei Bedeutungen. Regional ist ein Broiler ein Brathähnchen. In der Fachsprache ist es ein Hähnchen, das zur Mast bestimmt ist. Das DWDS markiert beide Bedeutungen mit „oft DDR“ und ordnet sie dem Nordosten und der Mitte Ostdeutschlands zu. In Gebrauch ist das Wort dort laut DWDS seit etwa 1960.

## Englisch in der DDR?

Das klingt erst mal paradox, denn bei anderen Imbiss-Klassikern ging die DDR einen anderen Weg. Laut Zeitklicks wurde aus dem Hot Dog zum Beispiel die „Ketwurst“ und aus dem Hamburger die „Grilletta“. Beim Hähnchen blieb es dagegen beim englischen Begriff. Besonders saftige, knusprig gebratene Hähnchen hießen sogar „Goldbroiler“.

> „Ketwurst“ ist eine Wortschöpfung aus Ketchup und Wurst. Laut Zeitklicks war die Wurst darin dicker als beim Hot Dog.

Im Englischen gibt es „broiler“ übrigens schon seit dem 14. Jahrhundert. Laut Merriam-Webster ist damit unter anderem ein junges, kleines Hähnchen zum Grillen gemeint. In Süddeutschland und Österreich sagt man dagegen „Hendl“ oder „Backhendl“, und sonst meist „Brathähnchen“ oder „Grillhähnchen“. Für ein und dasselbe Essen hat Deutschland also gleich mehrere Wörter, und eines davon ist englisch.

Wer „Broiler“ sagt, spricht also ein kleines bisschen Englisch, ob er will oder nicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('broiler-english-word', 'de', 1, 'Wörterbuch der Alltagssprache in der DDR', 'Wörterbuch DDR Sprache Alltag', 'Sammelt Wörter, die es nur im Osten gab, mit Erklärung und Herkunft.'),
  ('broiler-english-word', 'de', 2, 'Drehspieß-Set für den Grill', 'Drehspieß Set Grill Hähnchen', 'Damit gelingt ein ganzes Hähnchen auf dem Grill gleichmäßig knusprig.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('broiler-english-word', 'de', 1, 'DWDS: Broiler', 'https://www.dwds.de/wb/Broiler'),
  ('broiler-english-word', 'de', 2, 'Duden: Broiler', 'https://www.duden.de/rechtschreibung/Broiler'),
  ('broiler-english-word', 'de', 3, 'Zeitklicks: Broiler, Grilleta und Ketwurst', 'https://www.zeitklicks.de/ddr/alltag/freizeit/broiler-grilleta-und-ketwurst'),
  ('broiler-english-word', 'de', 4, 'Merriam-Webster: Broiler', 'https://www.merriam-webster.com/dictionary/broiler');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'broiler-english-word', 'en', 'broiler-german-word-from-english',
  'The East German word "Broiler" is borrowed from English',
  'In eastern Germany you order a "Broiler", in the West a "Brathähnchen". Surprisingly, the eastern word is the more English one.',
  'The word "Broiler", used mainly in eastern Germany for roast chicken, comes from the English verb "to broil" and has been in use there since about 1960.',
  'When someone from Leipzig or Rostock orders "half a Broiler", people in Cologne may look a bit lost. **Yet this typically East German word is borrowed from English: "Broiler" comes from the verb "to broil".**

## From the grill to the dictionary

"To broil" means to cook on a grill or under high heat. The German dictionary DWDS traces it back to the Old French "brûler", to burn. So a broiler is literally a chicken for grilling.

The German dictionary Duden lists two meanings. Regionally, a "Broiler" is a roast chicken. In technical language, it''s a chicken raised for meat. The DWDS marks both meanings as "often GDR" and links them to the northeast and the central east of Germany. According to the DWDS, the word has been used there since about 1960.

## English in East Germany?

At first that sounds like a paradox, because East Germany took a different route with other fast-food classics. According to the German history site Zeitklicks, the hot dog became the "Ketwurst" and the hamburger became the "Grilletta". The chicken, however, kept its English name. Especially juicy, crispy roast chickens were even called "Goldbroiler".

> "Ketwurst" is a blend of ketchup and Wurst, the German word for sausage. According to Zeitklicks, the sausage in it was thicker than in a hot dog.

In English, "broiler" goes back to the 14th century. According to Merriam-Webster, one meaning is a young, small chicken for broiling. In southern Germany and Austria, people say "Hendl" or "Backhendl" instead, and elsewhere mostly "Brathähnchen" or "Grillhähnchen". So Germany has several words for the same dish, and one of them is English.

Anyone in Germany who says "Broiler" is speaking a little bit of English, whether they mean to or not.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('broiler-english-word', 'en', 1, 'German slang dictionary', 'German slang dictionary book', 'Explains everyday German words that you won''t find in a classroom textbook.'),
  ('broiler-english-word', 'en', 2, 'Rotisserie spit kit for the grill', 'rotisserie spit kit grill', 'Lets you roast a whole chicken on the grill evenly and crispy.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('broiler-english-word', 'en', 1, 'DWDS: Broiler', 'https://www.dwds.de/wb/Broiler'),
  ('broiler-english-word', 'en', 2, 'Duden: Broiler', 'https://www.duden.de/rechtschreibung/Broiler'),
  ('broiler-english-word', 'en', 3, 'Zeitklicks: Broiler, Grilleta und Ketwurst', 'https://www.zeitklicks.de/ddr/alltag/freizeit/broiler-grilleta-und-ketwurst'),
  ('broiler-english-word', 'en', 4, 'Merriam-Webster: Broiler', 'https://www.merriam-webster.com/dictionary/broiler');
