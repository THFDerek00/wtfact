-- WTFact-Fakt „Das römische Vomitorium war kein Raum zum Erbrechen, sondern ein Stadionausgang“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('vomitorium-stadium-exit', '2026-10-11T12:00:00+02:00', 'history', '🏟️', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vomitorium-stadium-exit', 'de', 'vomitorium-war-ein-stadionausgang',
  'Das römische Vomitorium war kein Raum zum Erbrechen, sondern ein Stadionausgang',
  'Den ekligen Partyraum im alten Rom gab es nie. Bei dem Wort ging es um Menschenmassen, nicht um Mägen.',
  'Im alten Rom waren Vomitorien die Durchgänge, durch die Menschenmassen in Theater und Amphitheater hinein- und wieder hinausströmten, und keine Räume, in denen sich schlemmende Römer übergaben.',
  'Bestimmt kennst du die Geschichte: Reiche Römer aßen, bis nichts mehr ging, liefen in einen extra Raum namens Vomitorium, übergaben sich und setzten sich wieder an den Tisch. Klingt super. Nur hat das Wort nie das bedeutet.

## Menschenmassen statt Mägen

Vomitorien waren die Zugänge in römischen Theatern und Amphitheatern, durch die das Publikum zu seinen Plätzen und wieder hinaus kam. Der erste bekannte Autor, der das Wort benutzt, ist Macrobius in seinen Saturnalia aus dem 5. Jahrhundert nach Christus. Laut Caillan Davenport und Shushma Malik, die an der University of Queensland Alte Geschichte lehren, meinte er damit Gänge, durch die Zuschauer auf ihre Plätze „hinausgespien“ wurden.

Das Bild passt. Das lateinische Verb vomere heißt tatsächlich „erbrechen“, und ein volles Amphitheater, das sich durch seine Tore leert, wirkt ein bisschen wie ein Gebäude, das Menschen ausspuckt. Live Science erklärt, dass Macrobius ein vorhandenes lateinisches Wort nahm und die Endung „-orium“ anhängte, die daraus einen Ort macht.

## Woher der Mythos kommt

Die falsche Bedeutung taucht viel später auf, im Englischen. Davenport und Malik nennen Beispiele aus dem 19. Jahrhundert, etwa Augustus Hares „Walks in Rome“ von 1871. World Wide Words fand ein Buch von 1915, das ein „Vomitorium“ in Pompeji beschreibt, in dem sich Römer übergaben, um weiteressen zu können. Auch Aldous Huxley benutzte das Wort in seinem Roman „Antic Hay“ so. Live Science vermutet einen schlichten Sprachfehler, befeuert vom alten Klischee des verfressenen Römers.

Kritik an der Völlerei gab es in Rom durchaus. Der Philosoph Seneca schrieb: „Sie erbrechen sich, um zu essen, und essen, um sich zu erbrechen.“ Davenport und Malik lesen das aber als moralische Kritik, nicht als Beleg für eine alltägliche Gewohnheit, und weisen darauf hin, dass Erbrechen in Rom eher als medizinische Behandlung verbreitet war. Einen eigenen Raum dafür? Genau das ist der Mythos.

> Bonusfakt: Das Wort ist nie verschwunden. Laut World Wide Words heißen die Zugänge in Theatern mit Rundum-Bühne bis heute Vomitorien, inzwischen vor allem die Wege für die Schauspieler.

Wenn du also mal durch ein Vomitorium gehst: entspann dich. Du bist nur auf dem Weg zu deinem Platz.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vomitorium-stadium-exit', 'de', 1, 'Kolosseum-Modellbausatz', 'Kolosseum 3D Puzzle Modellbausatz', 'Damit baust du das berühmteste Amphitheater samt Toren auf deinem Schreibtisch nach.'),
  ('vomitorium-stadium-exit', 'de', 2, 'Buch über den Alltag im alten Rom', 'Alltag im alten Rom Buch', 'Ein lesbarer Einstieg, wie Römer wirklich aßen, feierten und zu den Spielen gingen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vomitorium-stadium-exit', 'de', 1, 'The University of Queensland: Mythbusting Ancient Rome – the truth about the vomitorium', 'https://hpi.uq.edu.au/article/2017/01/mythbusting-ancient-rome-%E2%80%93-truth-about-vomitorium'),
  ('vomitorium-stadium-exit', 'de', 2, 'Live Science: What''s a Vomitorium?', 'https://www.livescience.com/55899-what-is-a-vomitorium.html'),
  ('vomitorium-stadium-exit', 'de', 3, 'World Wide Words: Vomitorium', 'https://worldwidewords.org/ww-vom1.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vomitorium-stadium-exit', 'en', 'vomitorium-was-a-stadium-exit',
  'The Roman vomitorium wasn''t a room for throwing up. It was a stadium exit',
  'The gross party room of ancient Rome never existed. The word was about crowds, not stomachs.',
  'In ancient Rome, vomitoria were the passageways that let crowds pour into and out of theaters and amphitheaters, not rooms where feasting Romans went to throw up.',
  'You''ve probably heard it: rich Romans ate until they were full, went to a special room called the vomitorium, threw up, and went back to the table. It''s a great story. It''s also not what the word meant.

## Crowds, not stomachs

Vomitoria were the access ways in Roman theaters and amphitheaters that moved audiences to and from their seats. The first writer known to use the word is Macrobius, in his Saturnalia from the 5th century AD. According to Caillan Davenport and Shushma Malik, who teach ancient history at the University of Queensland, he used it for passages through which spectators could "spew forth" into their seats.

The image fits. The Latin verb vomere does mean "to vomit", and a packed amphitheater emptying through its gates looks a bit like a building spitting out people. Live Science explains that Macrobius took an existing Latin word and added the ending "-orium", which turns it into a place.

## Where the myth came from

The wrong meaning shows up much later, in English. Davenport and Malik point to 19th-century examples, such as Augustus Hare''s Walks in Rome from 1871. World Wide Words found a 1915 book that describes a "vomitorium" in Pompeii where Romans threw up so they could keep eating. Aldous Huxley also used the word that way in his novel Antic Hay. Live Science suspects a simple language mistake, helped along by the old cliché of the gluttonous Roman.

Romans did criticize excess at the table. The philosopher Seneca wrote: "They vomit so that they can eat, and they eat so that they can vomit." But Davenport and Malik read that as moral criticism, not proof of a daily habit, and note that vomiting was more common in Rome as a medical treatment. A dedicated room for it? That part is the myth.

> Bonus fact: The word never went away. According to World Wide Words, theaters in the round still call their access ways vomitoria, today mostly for the actors.

So if you ever walk through a vomitorium, relax. You''re just heading to your seat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vomitorium-stadium-exit', 'en', 1, 'Roman Colosseum model kit', 'Colosseum 3D puzzle model kit', 'Lets you build the most famous amphitheater, gates and all, on your desk.'),
  ('vomitorium-stadium-exit', 'en', 2, 'Book on everyday life in ancient Rome', 'everyday life in ancient Rome book', 'A readable way into how Romans really ate, partied and went to the games.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vomitorium-stadium-exit', 'en', 1, 'The University of Queensland: Mythbusting Ancient Rome – the truth about the vomitorium', 'https://hpi.uq.edu.au/article/2017/01/mythbusting-ancient-rome-%E2%80%93-truth-about-vomitorium'),
  ('vomitorium-stadium-exit', 'en', 2, 'Live Science: What''s a Vomitorium?', 'https://www.livescience.com/55899-what-is-a-vomitorium.html'),
  ('vomitorium-stadium-exit', 'en', 3, 'World Wide Words: Vomitorium', 'https://worldwidewords.org/ww-vom1.html');
