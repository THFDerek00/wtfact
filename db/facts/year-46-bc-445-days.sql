-- WTFact-Fakt „Das Jahr 46 v. Chr. dauerte 445 Tage“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('year-46-bc-445-days', '2026-11-03T12:00:00+01:00', 'history', '📅', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'year-46-bc-445-days', 'de', 'das-jahr-mit-445-tagen',
  'Das Jahr 46 v. Chr. dauerte 445 Tage',
  'Julius Caesar hat Roms chaotischen Kalender mit einem riesigen Übergangsjahr repariert, das nie wieder übertroffen wurde.',
  'Um den römischen Kalender wieder an die Sonne anzupassen, streckte Julius Caesar das Jahr 46 v. Chr. auf 445 Tage.',
  'Stell dir ein Jahr vor, das einfach nicht aufhört und Monate dazubekommt, die es sonst gar nicht gibt. Bei den Römern ist genau das passiert: Das Jahr 46 v. Chr. dauerte 445 Tage.

## Ein Kalender in Priesterhand

Der alte römische Kalender hatte laut Amusing Planet 12 Monate und nur 355 Tage, also etwa 10 Tage weniger als ein Sonnenjahr. Um das auszugleichen, wurden jedes zweite Jahr Zusatztage eingeschoben, 22 oder 23 auf einmal.

Der Haken: Über diese Schalttage entschied der Pontifex Maximus, Roms oberster Priester. Laut Amusing Planet machten die Priester Jahre länger oder kürzer, um Verbündeten zu helfen oder Gegnern zu schaden. Das Ergebnis war Chaos, und normale Bürger wussten oft nicht, welches Datum gerade war. The Engines of Our Ingenuity, eine Sendung der University of Houston, schreibt, dass der Kalender in den politischen Wirren vor Caesars Aufstieg noch weiter verrutschte.

## Caesars XXL-Jahr

Julius Caesar war gleichzeitig oberster Priester und Diktator und konnte eine Lösung einfach durchsetzen. Er wollte, dass das folgende Jahr wieder zur richtigen Zeit beginnt, nach der Wintersonnenwende. Dafür erklärte er ein Übergangsjahr mit 445 Tagen, und den Römern wurde verkündet, dass 46 v. Chr. drei zusätzliche Monate bekommt.

Laut Amusing Planet nannte Caesar es das „letzte Jahr der Verwirrung“. Andere sprachen einfach vom Jahr der Verwirrung, auf Latein annus confusionis.

Am 1. Januar 45 v. Chr. startete dann das neue System: 365 Tage, dazu alle vier Jahre ein Extratag. Das ist der julianische Kalender, der direkte Vorfahr des Kalenders auf deinem Handy. Und wie The Engines of Our Ingenuity schreibt: So ein Riesenjahr wie 46 v. Chr. hat Europa nie wieder bekommen.

> Bonusfakt: Laut Cape Argus war das julianische Jahr immer noch 11 Minuten zu lang. Über die Jahrhunderte summierte sich das, also strich Papst Gregor XIII. im Oktober 1582 einfach 10 Tage aus dem Kalender.

Auch der Juli trägt ein Andenken an die Reform: Nach Caesars Tod benannte Marcus Antonius den Monat Quintilis ihm zu Ehren in Julius um. Caesar bekam einen ganzen Monat, und die Römer ein extralanges Jahr, um ihn sich zu verdienen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('year-46-bc-445-days', 'de', 1, 'Ewiger Tischkalender aus Holz', 'ewiger Kalender Holz Tischkalender', 'Ein Kalender, den du von Hand einstellst und nie neu kaufen musst.'),
  ('year-46-bc-445-days', 'de', 2, 'Sachbuch über das antike Rom', 'Sachbuch antikes Rom Geschichte', 'Ein gut lesbarer Überblick über Politik, Alltag und Menschen im alten Rom.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('year-46-bc-445-days', 'de', 1, 'The Engines of Our Ingenuity: The Longest Year in History', 'https://engines.egr.uh.edu/episode/2364'),
  ('year-46-bc-445-days', 'de', 2, 'Amusing Planet: 46 BC: The 445-Day Year', 'https://www.amusingplanet.com/2021/07/46-bc-445-day-year.html'),
  ('year-46-bc-445-days', 'de', 3, 'Cape Argus: The confusing history behind our modern calendar year', 'https://capeargus.co.za/news/2019-01-01-the-confusing-history-behind-our-modern-calendar-year/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'year-46-bc-445-days', 'en', 'the-year-with-445-days',
  'The year 46 BC lasted 445 days',
  'Julius Caesar fixed Rome''s messy calendar with one giant transition year that nobody has topped since.',
  'To get the Roman calendar back in step with the sun, Julius Caesar stretched the year 46 BC to 445 days.',
  'Imagine a year that just keeps going, with months you''ve never heard of. For the Romans, that actually happened: the year 46 BC lasted 445 days.

## A calendar run by priests

The old Roman calendar had 12 months and only 355 days, according to Amusing Planet, about 10 days short of a solar year. To catch up, extra days were slipped in every other year, 22 or 23 at a time.

The catch: those leap days were set by the Pontifex Maximus, Rome''s high priest. Amusing Planet says the pontiffs stretched or shortened years to help their allies or hurt their opponents. The result was chaos, and ordinary citizens often didn''t know what the date was. The Engines of Our Ingenuity, a program from the University of Houston, notes that the calendar drifted even further during the political turmoil before Caesar''s rise.

## Caesar''s jumbo year

Julius Caesar was both high priest and dictator, so he could simply impose a fix. He wanted the following year to start at the right time again, after the winter solstice. To get there, he declared a transition year of 445 days, and Romans were told that 46 BC would get three additional months.

According to Amusing Planet, Caesar called it the "last year of confusion". Others simply called it the year of confusion, in Latin annus confusionis.

Then the new system began on January 1, 45 BC: 365 days, plus an extra day every four years. That''s the Julian calendar, the direct ancestor of the one on your phone. And as The Engines of Our Ingenuity puts it, Europe never got another jumbo year like 46 BC.

> Bonus fact: According to the Cape Argus, the Julian year was still 11 minutes too long. Over the centuries that added up, so in October 1582 Pope Gregory XIII simply removed 10 days from the calendar.

The month of July also carries a souvenir of the reform: after Caesar''s death, Mark Antony renamed the month Quintilis to Julius in his honor. Caesar got a whole month named after him, and the Romans got an extra-long year to earn it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('year-46-bc-445-days', 'en', 1, 'Wooden perpetual desk calendar', 'wooden perpetual desk calendar', 'A reusable calendar you set by hand, so you never have to buy a new one.'),
  ('year-46-bc-445-days', 'en', 2, 'Popular history book about ancient Rome', 'ancient Rome history book', 'A readable overview of Roman politics, everyday life and the people behind them.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('year-46-bc-445-days', 'en', 1, 'The Engines of Our Ingenuity: The Longest Year in History', 'https://engines.egr.uh.edu/episode/2364'),
  ('year-46-bc-445-days', 'en', 2, 'Amusing Planet: 46 BC: The 445-Day Year', 'https://www.amusingplanet.com/2021/07/46-bc-445-day-year.html'),
  ('year-46-bc-445-days', 'en', 3, 'Cape Argus: The confusing history behind our modern calendar year', 'https://capeargus.co.za/news/2019-01-01-the-confusing-history-behind-our-modern-calendar-year/');
