-- WTFact-Fakt „Hunde waren an Lord Byrons College verboten. Also hielt er einen Bären“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('byron-college-bear', '2026-10-05T04:01:17+02:00', 'history', '🐻', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'byron-college-bear', 'de', 'byron-baer-statt-hund-cambridge',
  'Hunde waren an Lord Byrons College verboten. Also hielt er einen Bären',
  'Der Dichter fand in den Regeln von Cambridge eine Lücke, und die hatte Fell und Krallen.',
  'Weil Studenten am Trinity College keine Hunde halten durften, schaffte sich Lord Byron einen zahmen Bären an.',
  'Stell dir vor, deine Uni verbietet Haustiere, und du suchst nach einem Schlupfloch. Genau das hat Lord Byron gemacht, der später einer der berühmtesten Dichter Englands wurde. **Hunde durften Studenten am Trinity College in Cambridge nicht halten. Also schaffte er sich einen zahmen Bären an.**

## Ein Schlupfloch mit Fell

Byron studierte von 1805 bis 1807 am Trinity College. Dass er dort keinen Hund halten durfte, passte ihm gar nicht. Laut dem Wordsworth Trust stand in den Regeln aber nichts über Bären, und deshalb hatte die Collegeleitung keine rechtliche Handhabe, sich zu beschweren.

Woher das Tier kam, ist nicht ganz sicher. Die University of Cambridge schreibt, Byron habe den Bären möglicherweise auf der Stourbridge Fair gekauft, einem Jahrmarkt.

## „Er soll sich um ein Fellowship bewerben“

Am 26. Oktober 1807 schrieb Byron seiner Freundin Elizabeth Pigot einen Brief, der bis heute zitiert wird. Er habe einen neuen Freund, „den feinsten der Welt, einen zahmen Bären“. Als man ihn gefragt habe, was er mit dem Tier vorhabe, sei seine Antwort gewesen: Der Bär solle sich um ein Fellowship bewerben, also um eine Stelle als Mitglied des Lehrkörpers.

Im selben Brief prahlt Byron mit „ewigen Partys“ auf seinen Zimmern, mit Jockeys, Spielern, Boxern, Autoren, Pfarrern und Dichtern als Gästen. Der Bär war also in bester Gesellschaft.

## Vom College aufs Landgut

Nach der Zeit in Cambridge nahm Byron den Bären laut dem Wordsworth Trust mit nach Newstead Abbey, dem Stammsitz seiner Familie. Dort streifte er zusammen mit einem zahmen Wolf über das Gelände.

Überhaupt hatte Byron ein Faible für Tiere. Zu seinem Haushalt gehörten im Lauf der Jahre unter anderem ein Fuchs, ein Papagei, ein Krokodil, ein Honigdachs, drei Gänse, ein Reiher und eine Ziege mit gebrochenem Bein.

> Als Percy Shelley Byron 1821 in Ravenna besuchte, notierte er zehn Pferde, acht riesige Hunde, drei Affen, fünf Katzen, einen Adler, eine Krähe und einen Falken. Alle außer den Pferden liefen frei durchs Haus.

Hausordnungen lesen kann jeder. Byron hat sie gelesen, um die Lücke zu finden, durch die ein ganzer Bär passt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('byron-college-bear', 'de', 1, 'Gedichtband von Lord Byron', 'Lord Byron Gedichte Buch', 'Die Werke des Mannes mit dem Bären, von kurzen Gedichten bis zu den großen Versepen.'),
  ('byron-college-bear', 'de', 2, 'Kuscheltier Braunbär', 'Braunbär Kuscheltier groß', 'Ein zahmer Bär fürs eigene Zimmer, ganz ohne Hausordnung und Futterkosten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('byron-college-bear', 'de', 1, 'University of Cambridge: Lord Byron and the bears beneath Cambridge', 'https://www.cam.ac.uk/research/news/lord-byron-and-the-bears-beneath-cambridge'),
  ('byron-college-bear', 'de', 2, 'Trinity College Cambridge: Trinity in Literature', 'https://www.trin.cam.ac.uk/about/historical-overview/trinity-in-literature/'),
  ('byron-college-bear', 'de', 3, 'Wordsworth Grasmere: Bears, badgers and Boatswain: Lord Byron and his animals', 'https://wordsworth.org.uk/blog/2015/04/21/bears-badgers-and-boatswain-lord-byron-and-his-animals/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'byron-college-bear', 'en', 'lord-byron-pet-bear-cambridge',
  'Lord Byron''s college banned dogs. So he kept a bear',
  'The poet found a loophole in Cambridge''s rules, and it came with fur and claws.',
  'Because students at Trinity College weren''t allowed to keep dogs, Lord Byron got himself a tame bear.',
  'Picture this: your college bans pets, and you go looking for a loophole. That''s exactly what Lord Byron did, years before he became one of England''s most famous poets. **Students at Trinity College, Cambridge, weren''t allowed to keep dogs. So he got himself a tame bear.**

## A loophole with fur

Byron studied at Trinity College from 1805 to 1807, and he resented the rule that kept him from having a dog there. According to the Wordsworth Trust, the rules said nothing about bears, so the college authorities had no legal basis to complain.

Where the animal came from isn''t completely certain. The University of Cambridge says Byron quite possibly bought it at Stourbridge Fair.

## "He should sit for a fellowship"

On 26 October 1807, Byron wrote a letter to his friend Elizabeth Pigot that people still quote today: "I have got a new friend, the finest in the world, a tame bear." When people asked what he meant to do with it, his answer was that the bear "should sit for a fellowship", meaning it should apply to become a member of the college''s academic staff.

In the same letter, Byron brags about "eternal parties" in his rooms, with jockeys, gamblers, boxers, authors, parsons and poets as guests. So the bear was in good company.

## From college to country estate

After Cambridge, according to the Wordsworth Trust, Byron took the bear home to Newstead Abbey, his family''s ancestral seat. There it roamed the grounds together with a tame wolf.

Byron had a real soft spot for animals. Over the years, his household included a fox, a parrot, a crocodile, a honey badger, three geese, a heron and a goat with a broken leg, among others.

> When Percy Shelley visited Byron in Ravenna in 1821, he counted ten horses, eight enormous dogs, three monkeys, five cats, an eagle, a crow and a falcon. All of them except the horses walked freely around the house.

Anyone can read the house rules. Byron read them looking for a gap big enough to fit a bear.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('byron-college-bear', 'en', 1, 'Lord Byron poetry collection', 'Lord Byron selected poems book', 'The work of the man with the bear, from short lyrics to his big narrative poems.'),
  ('byron-college-bear', 'en', 2, 'Brown bear plush toy', 'brown bear plush stuffed animal large', 'A tame bear for your own room, no house rules or feeding bills involved.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('byron-college-bear', 'en', 1, 'University of Cambridge: Lord Byron and the bears beneath Cambridge', 'https://www.cam.ac.uk/research/news/lord-byron-and-the-bears-beneath-cambridge'),
  ('byron-college-bear', 'en', 2, 'Trinity College Cambridge: Trinity in Literature', 'https://www.trin.cam.ac.uk/about/historical-overview/trinity-in-literature/'),
  ('byron-college-bear', 'en', 3, 'Wordsworth Grasmere: Bears, badgers and Boatswain: Lord Byron and his animals', 'https://wordsworth.org.uk/blog/2015/04/21/bears-badgers-and-boatswain-lord-byron-and-his-animals/');
