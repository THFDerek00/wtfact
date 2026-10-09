-- WTFact-Fakt „Dein Gehirn macht 2 Prozent deines Gewichts aus, verbraucht aber rund 20 Prozent deiner Energie“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('brain-20-percent-energy', '2026-10-10T03:00:00+02:00', 'mind', '🧠', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'brain-20-percent-energy', 'de', 'gehirn-2-prozent-gewicht-20-prozent-energie',
  'Dein Gehirn macht 2 Prozent deines Gewichts aus, verbraucht aber rund 20 Prozent deiner Energie',
  'Das Organ in deinem Kopf ist ein Leichtgewicht mit dem Appetit eines Schwergewichts.',
  'Dein Gehirn macht nur etwa 2 Prozent deines Körpergewichts aus, verbraucht aber rund 20 Prozent der Energie deines Körpers.',
  'Auf der Waage fällt dein Gehirn kaum ins Gewicht. Auf der Energierechnung dagegen ist es der größte Posten in deinem ganzen Körper.

## Klein, aber hungrig

Laut der Harvard Brain Science Initiative macht das Gehirn nur 2 Prozent deines Körpergewichts aus, verbraucht aber etwa 20 Prozent deiner täglichen Energie. Die Hochschule EPFL in Lausanne nennt dasselbe Verhältnis: Rund ein Fünftel der Energie, die dein Körper verbrennt, hält das Gehirn am Laufen. Scientific American schreibt, dass es damit mehr Energie verbraucht als jedes andere Organ.

Und das gilt schon im Ruhezustand. Du musst dafür keine Matheaufgabe lösen. Selbst wenn du nur an die Decke starrst, zieht dein Kopf seinen Anteil.

## Ungefähr eine schwache Glühbirne

Wie viel Leistung ist das? Das Physics Factbook, eine Sammlung von Physik-Abschätzungen, rechnet es vor: Ein durchschnittlicher Erwachsener verbraucht etwa 100 Watt, 20 Prozent davon sind ungefähr 20 Watt. Alles, was du gerade denkst, siehst und dir merkst, läuft also mit der Leistung einer ziemlich funzeligen Lampe.

## Wohin die Energie fließt

Scientific American beschreibt eine Studie, an der unter anderem der Radiologe Wei Chen von der University of Minnesota Medical School beteiligt war. Das Team verfolgte mit einem Scanverfahren namens Magnetresonanzspektroskopie das wichtigste Energiemolekül der Zellen, ATP. Das Ergebnis: Etwa zwei Drittel der Energie des Gehirns gehen dafür drauf, dass Nervenzellen feuern und Signale verschicken. Das restliche Drittel fließt in das, was der Artikel „Haushalt“ nennt, also in die Pflege der Zellen.

Der Großteil des Budgets geht demnach für das ständige Geplapper zwischen deinen Nervenzellen drauf.

> Bonusfakt: In derselben Studie produzierten tief narkotisierte Ratten 50 Prozent weniger ATP-Moleküle als leicht narkotisierte.

Zwei Prozent der Masse, ein Fünftel des Treibstoffs: Dein anspruchsvollster Mitbewohner wohnt zwischen deinen Ohren.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('brain-20-percent-energy', 'de', 1, 'Anatomisches Gehirnmodell zum Zerlegen', 'Gehirn Modell anatomisch zerlegbar', 'Zeigt dir die einzelnen Hirnregionen zum Anfassen und macht sich gut im Regal.'),
  ('brain-20-percent-energy', 'de', 2, 'Populärwissenschaftliches Buch über das Gehirn', 'Sachbuch Gehirn populärwissenschaftlich', 'Erklärt verständlich, wie dein Denkorgan aufgebaut ist und arbeitet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('brain-20-percent-energy', 'de', 1, 'Harvard Brain Science Initiative: Neurometabolism 101', 'https://brain.harvard.edu/hbi_events/neurometabolism-101/'),
  ('brain-20-percent-energy', 'de', 2, 'EPFL: Low-Cost Travel in Neurons', 'https://news.epfl.ch/news/low-cost-travel-in-neurons'),
  ('brain-20-percent-energy', 'de', 3, 'Scientific American: Why Does the Brain Need So Much Power?', 'https://www.scientificamerican.com/article/why-does-the-brain-need-s/'),
  ('brain-20-percent-energy', 'de', 4, 'The Physics Factbook: Power of a Human Brain', 'https://hypertextbook.com/facts/2001/JacquelineLing.shtml');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'brain-20-percent-energy', 'en', 'brain-2-percent-weight-20-percent-energy',
  'Your brain is 2 percent of your weight but burns about 20 percent of your energy',
  'The organ in your head is a lightweight with a heavyweight appetite.',
  'Your brain makes up only about 2 percent of your body weight, yet it uses roughly 20 percent of your body’s energy.',
  'On the scale, your brain barely registers. On the energy bill, it is the biggest item in your whole body.

## Small organ, big appetite

According to the Harvard Brain Science Initiative, the brain accounts for only 2 percent of your body weight but uses about 20 percent of your daily energy. EPFL in Lausanne gives the same ratio: roughly a fifth of the energy your body burns goes into keeping the brain running. Scientific American notes that this is more than any other organ uses.

And that is at rest. You don''t need to be solving a math problem for it. Even when you are just staring at the ceiling, your head is drawing its share.

## Roughly a dim light bulb

How much power is that? The Physics Factbook, a collection of physics estimates, does the math: an average adult runs on about 100 watts, and 20 percent of that is about 20 watts. So everything you are thinking, seeing and remembering right now runs on the power of a fairly feeble lamp.

## Where the energy goes

Scientific American describes a study that included radiologist Wei Chen of the University of Minnesota Medical School. The team used a scanning method called magnetic resonance spectroscopy to track ATP, the main energy molecule in cells. The result: about two-thirds of the brain''s energy goes into neurons firing and sending signals. The remaining third goes into what the article calls housekeeping, keeping the cells healthy.

So most of the budget is spent on the constant chatter between your nerve cells.

> Bonus fact: In the same study, deeply anesthetized rats produced 50 percent fewer ATP molecules than lightly anesthetized ones.

Two percent of the mass, a fifth of the fuel: your most demanding roommate lives between your ears.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('brain-20-percent-energy', 'en', 1, 'Anatomical brain model that comes apart', 'anatomical brain model', 'Lets you hold the individual brain regions in your hands and looks great on a shelf.'),
  ('brain-20-percent-energy', 'en', 2, 'Popular science book about the brain', 'popular science book brain', 'Explains in plain language how your thinking organ is built and how it works.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('brain-20-percent-energy', 'en', 1, 'Harvard Brain Science Initiative: Neurometabolism 101', 'https://brain.harvard.edu/hbi_events/neurometabolism-101/'),
  ('brain-20-percent-energy', 'en', 2, 'EPFL: Low-Cost Travel in Neurons', 'https://news.epfl.ch/news/low-cost-travel-in-neurons'),
  ('brain-20-percent-energy', 'en', 3, 'Scientific American: Why Does the Brain Need So Much Power?', 'https://www.scientificamerican.com/article/why-does-the-brain-need-s/'),
  ('brain-20-percent-energy', 'en', 4, 'The Physics Factbook: Power of a Human Brain', 'https://hypertextbook.com/facts/2001/JacquelineLing.shtml');
