-- WTFact-Fakt „Drei Männer flohen 1962 aus Alcatraz und ließen falsche Köpfe mit echten Haaren in ihren Betten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('alcatraz-escape-dummy-heads', '2026-11-05T16:00:00+01:00', 'crime', '🏝️', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'alcatraz-escape-dummy-heads', 'de', 'alcatraz-flucht-falsche-koepfe',
  'Drei Männer flohen 1962 aus Alcatraz und ließen falsche Köpfe mit echten Haaren in ihren Betten',
  'Die Wärter dachten, die Gefangenen schlafen. Sie sahen auf Pappmaché, und der Fall ist bis heute offen.',
  'Als Frank Morris und die Brüder John und Clarence Anglin im Juni 1962 aus Alcatraz flohen, ließen sie selbst gebastelte Köpfe mit echtem Menschenhaar in ihren Betten zurück, und offiziell gelöst ist der Fall bis heute nicht.',
  'Am Morgen des 12. Juni 1962 machten die Wärter auf Alcatraz ihre übliche Bettkontrolle und fanden drei schlafende Häftlinge. Nur dass es keine Häftlinge waren. Es waren Köpfe. Frank Morris und die Brüder John und Clarence Anglin hatten Attrappen in ihre Betten gelegt und waren aus dem berühmten Inselgefängnis in der Bucht von San Francisco verschwunden.

## Die Bastelabteilung von Alcatraz

Laut History Hit bestanden die Köpfe aus Pappmaché aus Toilettenpapier, Seife und Zahnpasta, bemalt mit hautfarbener Farbe aus der Werkstatt und versehen mit echten Haaren, die vom Boden des Gefängnis-Friseurs stammten. Das FBI spricht von Gips, hautfarbener Farbe und echtem Menschenhaar. Kleidung und Handtücher unter den Decken erledigten den Rest. Laut NPR planten die Männer ihre Flucht mehr als sechs Monate im Voraus.

Der Rest ihrer Ausrüstung klingt wie ein Bastelprojekt, das aus dem Ruder gelaufen ist. Das FBI nennt Sägeblätter, Holzpaddel, einen selbst gebauten Bohrer aus dem Motor eines kaputten Staubsaugers und ein Floß aus mehr als 50 Regenmänteln, etwa 1,8 mal 4,3 Meter groß. Die Nähte dichteten sie mit den heißen Dampfrohren des Gefängnisses ab, und ein Musikinstrument, eine Konzertina, wurde zur Pumpe für das Floß. Ein vierter Mann, Allen West, war eingeweiht, blieb aber zurück.

## Ein Fall ohne Ende

FBI, Küstenwache und Gefängnisbehörde rekonstruierten den Plan. Sie fanden Paddelteile, Gummifetzen und ein verschweißtes Päckchen mit Briefen, aber keine glaubwürdigen Hinweise darauf, dass die Männer überlebt haben. Und auch keine Leichen. Das FBI schloss seine Akte am 31. Dezember 1979, nach 17 Jahren, und übergab den Fall an den U.S. Marshals Service, der den Haftbefehl aktiv hielt. Wie US-Marshal Michael Dyke 2009 zu NPR sagte: „Der Marshals Service gibt die Suche nach Menschen nicht auf.“

> Bonusfakt: Laut FBI versuchten zwischen 1934 und 1963 insgesamt 36 Männer bei 14 Fluchtversuchen, von Alcatraz zu entkommen. Die Wärter zählten die Häftlinge etwa ein Dutzend Mal am Tag.

Ob die drei je das Ufer erreicht haben oder nicht: Ihre falschen Köpfe haben es in die Geschichtsbücher geschafft, denn offiziell gelöst ist der Fall bis heute nicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('alcatraz-escape-dummy-heads', 'de', 1, 'Buch über Alcatraz', 'Alcatraz Buch Geschichte', 'Erzählt von der Gefängnisinsel, ihren berühmten Insassen und den Fluchtversuchen.'),
  ('alcatraz-escape-dummy-heads', 'de', 2, 'Escape-Room-Brettspiel', 'Escape Room Spiel', 'Hier knackst du Rätsel und brichst zu Hause aus einem verschlossenen Szenario aus.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('alcatraz-escape-dummy-heads', 'de', 1, 'FBI: A Byte Out of History - Escape From Alcatraz', 'https://www.fbi.gov/news/stories/2007/june/alcatraz_060807/'),
  ('alcatraz-escape-dummy-heads', 'de', 2, 'History Hit: How Did 3 People Seemingly Escape From Alcatraz?', 'https://www.historyhit.com/how-did-3-people-seemingly-escape-from-alcatraz/'),
  ('alcatraz-escape-dummy-heads', 'de', 3, 'NPR: Escape From Alcatraz And A 47-Year Manhunt', 'https://www.npr.org/2009/09/21/112746496/escape-from-alcatraz-and-a-47-year-manhunt');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'alcatraz-escape-dummy-heads', 'en', 'alcatraz-escape-fake-heads',
  'Three men escaped from Alcatraz in 1962 and left fake heads with real hair in their beds',
  'Guards thought the prisoners were asleep. They were looking at papier-mâché, and the case is still open.',
  'When Frank Morris and John and Clarence Anglin escaped from Alcatraz in June 1962, they left homemade heads with real human hair in their beds, and the case has never been officially solved.',
  'On the morning of June 12, 1962, guards at Alcatraz did their routine bed check and found three sleeping inmates. Except they weren''t inmates. They were heads. Frank Morris and the brothers John and Clarence Anglin had left decoys in their beds and vanished from the famous island prison in San Francisco Bay.

## The art department of Alcatraz

According to History Hit, the heads were papier-mâché made from toilet paper, soap and toothpaste, painted with flesh-tone paint from the maintenance workshop and topped with real hair collected from the barbershop floor. The FBI describes plaster, flesh-tone paint and real human hair. Clothes and towels under the blankets did the rest. NPR says the men planned the escape more than six months in advance.

The rest of their kit sounds like a craft project gone rogue. The FBI lists saw blades, wooden paddles, a homemade drill built from the motor of a broken vacuum cleaner and a raft of more than 50 raincoats, about 6 by 14 feet. They used the prison''s hot steam pipes to seal the seams, and they turned a musical instrument, a concertina, into a pump to inflate the raft. A fourth man, Allen West, was in on the plan but stayed behind.

## A case without an ending

The FBI, the Coast Guard and the Bureau of Prisons pieced together the plan. They found paddle pieces, scraps of rubber and a sealed packet of letters, but no credible evidence that the men survived. And no bodies either. The FBI closed its case on December 31, 1979, after 17 years, and handed it to the U.S. Marshals Service, which kept the warrant active. As U.S. Marshal Michael Dyke told NPR in 2009, "the Marshals Service doesn''t give up looking for people."

> Bonus fact: According to the FBI, 36 men tried 14 escapes from Alcatraz between 1934 and 1963. Guards counted the prisoners about a dozen times a day.

Whether the three made it to shore or not, their fake heads made it into history: nobody has ever officially solved the case.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('alcatraz-escape-dummy-heads', 'en', 1, 'Alcatraz history book', 'Alcatraz history book', 'Covers the island prison, its famous inmates and its escape attempts.'),
  ('alcatraz-escape-dummy-heads', 'en', 2, 'Escape room board game', 'escape room board game', 'Lets you crack puzzles and break out of a locked scenario at home.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('alcatraz-escape-dummy-heads', 'en', 1, 'FBI: A Byte Out of History - Escape From Alcatraz', 'https://www.fbi.gov/news/stories/2007/june/alcatraz_060807/'),
  ('alcatraz-escape-dummy-heads', 'en', 2, 'History Hit: How Did 3 People Seemingly Escape From Alcatraz?', 'https://www.historyhit.com/how-did-3-people-seemingly-escape-from-alcatraz/'),
  ('alcatraz-escape-dummy-heads', 'en', 3, 'NPR: Escape From Alcatraz And A 47-Year Manhunt', 'https://www.npr.org/2009/09/21/112746496/escape-from-alcatraz-and-a-47-year-manhunt');
