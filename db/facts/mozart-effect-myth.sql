-- WTFact-Fakt „Der Mozart-Effekt war ein Mythos, trotzdem verteilte Georgia Klassik-CDs an Neugeborene“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('mozart-effect-myth', '2026-10-10T15:00:00+02:00', 'mind', '🎹', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mozart-effect-myth', 'de', 'mozart-effekt-mythos-georgia-klassik-cds',
  'Der Mozart-Effekt war ein Mythos, trotzdem verteilte Georgia Klassik-CDs an Neugeborene',
  'Aus einer einseitigen Studie über Studierende wurde ein Versprechen für Babys, und sogar ein Gouverneur sprang darauf an.',
  'Eine Studie von 1993 fand bei Studierenden nach Mozart einen kurzen Vorteil bei räumlichen Aufgaben, trotzdem ließ Georgia 1998 Klassik-CDs an Neugeborene verteilen, und spätere Analysen fanden keinen echten Effekt.',
  'Spiel deinem Baby Mozart vor, dann wird es klüger. In den 1990ern war diese Idee überall. Angefangen hat alles mit einer Studie von nur einer Seite.

## Zehn Minuten Mozart

1993 veröffentlichte die Psychologin Frances Rauscher mit Kollegen von der University of California, Irvine, eine kurze Studie in Nature. Laut Scientific American hörten 36 Studierende 10 Minuten lang eine Mozart-Sonate in D-Dur, eine Entspannungsaufnahme oder Stille und lösten danach Aufgaben zum räumlichen Denken. Bei einer Papierfalt-Aufgabe soll die Mozart-Gruppe etwa 8 bis 9 Punkte im räumlichen IQ zugelegt haben.

Achte darauf, was die Studie nicht gesagt hat. Getestet wurden Studierende, keine Babys. Gemessen wurde eine Art von räumlicher Aufgabe, nicht die allgemeine Intelligenz. Und laut NPR und dem Office for Science and Society der McGill University hielt der Effekt nur etwa 10 bis 15 Minuten.

## Vom Labor ins Gesetz

Den Hype hat das nicht gebremst. 1998 ließ Georgias Gouverneur Zell Miller laut NPR kostenlose Klassik-CDs an alle Babys verteilen, die in Georgia geboren wurden. Tennessee machte es nach. Florida verpflichtete Kitas laut Scientific American, Sinfonien abzuspielen. McGill weist außerdem darauf hin, dass Miller die „Ode an die Freude“ Mozart zuschrieb. Sie ist von Beethoven.

Dann holte die Wissenschaft auf. 1999 wertete Christopher Chabris 16 Studien aus und fand nur einen Effekt von etwa 1,5 IQ-Punkten, beschränkt auf die Papierfalt-Aufgabe, so klein, dass er auch normale Schwankung zwischen zwei Testterminen sein könnte. Eine Metaanalyse von 2010, laut McGill die größte zum Thema, fand insgesamt keinen Effekt. Selbst Rauscher nennt das Ganze laut Scientific American inzwischen „wirklich einen Mythos“.

> Bonusfakt: Eine Studie von 2004 ergab, dass Rauschers Mozart-Artikel in den 50 größten US-Zeitungen 8,3-mal so oft zitiert wurde wie der zweitbeliebteste Fachartikel, an dem Carl Sagan mitgeschrieben hatte.

An der Musik lag es nie. Sie kam nur nie mit einem IQ-Upgrade.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mozart-effect-myth', 'de', 1, 'Mozart-Klavierwerke auf CD oder Vinyl', 'Mozart Klaviersonaten CD', 'Schöne Musik zum Zuhören, ganz ohne Versprechen nebenbei.'),
  ('mozart-effect-myth', 'de', 2, 'Buch über Psychologie-Mythen', 'Buch Psychologie Mythen', 'Nimmt populäre Irrtümer über Kopf und Psyche auseinander.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mozart-effect-myth', 'de', 1, 'Scientific American: Fact or Fiction?: Babies Exposed to Classical Music End Up Smarter', 'https://www.scientificamerican.com/article/fact-or-fiction-babies-ex/'),
  ('mozart-effect-myth', 'de', 2, 'McGill Office for Science and Society: Mozart’s Music Doesn’t Make Baby Geniuses', 'https://www.mcgill.ca/oss/node/9857'),
  ('mozart-effect-myth', 'de', 3, 'NPR: Mozart Effect, Schmozart Effect: Science Misinterpreted', 'https://www.npr.org/transcripts/128104580');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mozart-effect-myth', 'en', 'mozart-effect-myth-georgia-classical-cds',
  'The Mozart effect was a myth, but Georgia still handed out classical CDs to newborns',
  'A one-page study on college students turned into a promise about babies, and a governor bought into it.',
  'A 1993 study found a brief boost on spatial tasks in college students after listening to Mozart, yet Georgia handed out classical CDs to newborns in 1998, and later analyses found no real effect.',
  'Play Mozart to your baby and it will grow up smarter. In the 1990s, that idea was everywhere. It all started with a study just one page long.

## Ten minutes of Mozart

In 1993, psychologist Frances Rauscher and colleagues at the University of California, Irvine published a short study in Nature. According to Scientific American, 36 college students listened to 10 minutes of a Mozart sonata in D major, a relaxation recording or silence, and then solved spatial reasoning tasks. On a paper-folding task, the Mozart group reportedly gained about 8 to 9 spatial IQ points.

Notice what the study did not say. It tested college students, not babies. It measured one kind of spatial task, not general intelligence. And according to NPR and McGill University''s Office for Science and Society, the effect lasted only about 10 to 15 minutes.

## From lab to law

None of that slowed the hype. In 1998, Georgia Governor Zell Miller gave free classical music CDs to every baby born in the state, NPR reports. Tennessee followed suit. Florida required day care centers to play symphonies, according to Scientific American. McGill also points out that Miller credited "Ode to Joy" to Mozart. It''s by Beethoven.

Then science caught up. In 1999, Christopher Chabris analyzed 16 studies and found an effect of only about 1.5 IQ points, limited to the paper-folding task, small enough that it could just be normal variation between two test sessions. A 2010 meta-analysis, the largest on the subject according to McGill, found no effect overall. Even Rauscher now calls it "really a myth", according to Scientific American.

> Bonus fact: A 2004 study found that Rauscher''s Mozart paper was cited 8.3 times more often in the top 50 US newspapers than the second most popular research paper, which Carl Sagan had co-written.

The music was never the problem. It just never came with an IQ upgrade.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mozart-effect-myth', 'en', 1, 'Mozart piano works on CD or vinyl', 'Mozart piano sonatas CD', 'Lovely music to listen to, with no promises attached.'),
  ('mozart-effect-myth', 'en', 2, 'Book about psychology myths', 'book psychology myths', 'Takes apart popular misconceptions about the mind.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mozart-effect-myth', 'en', 1, 'Scientific American: Fact or Fiction?: Babies Exposed to Classical Music End Up Smarter', 'https://www.scientificamerican.com/article/fact-or-fiction-babies-ex/'),
  ('mozart-effect-myth', 'en', 2, 'McGill Office for Science and Society: Mozart’s Music Doesn’t Make Baby Geniuses', 'https://www.mcgill.ca/oss/node/9857'),
  ('mozart-effect-myth', 'en', 3, 'NPR: Mozart Effect, Schmozart Effect: Science Misinterpreted', 'https://www.npr.org/transcripts/128104580');
