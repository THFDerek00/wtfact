-- WTFact-Fakt „Der erdige Geruch nach Regen ist ein Lockstoff von Bakterien für winzige Bodentiere“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('rain-smell-springtail-lure', '2026-10-26T12:00:00+01:00', 'science', '🌧️', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rain-smell-springtail-lure', 'de', 'regengeruch-lockt-springschwaenze',
  'Der erdige Geruch nach Regen ist ein Lockstoff von Bakterien für winzige Bodentiere',
  'Der Duft, den du nach einem Schauer so magst, ist zum großen Teil Bakterien-Werbung für Tiere, die einen Millimeter groß sind.',
  'Den erdigen Duftstoff Geosmin bilden Streptomyces-Bodenbakterien, und er lockt Springschwänze an, die dann die Sporen der Bakterien auf ihrem Körper und mit ihrem Kot verbreiten.',
  'Du kennst diesen Geruch, wenn Regen auf trockenen Boden fällt oder du im Garten gräbst. Wirkt wie der Raumduft der Natur. In Wahrheit ist ein großer Teil davon Werbung: Bakterien im Boden locken winzige Tiere an, damit die ihren Nachwuchs herumtragen.

## Das Molekül hinter dem Geruch

Die erdige Note stammt von einem Stoff namens Geosmin. Laut dem John Innes Centre in England stellen ihn Bodenbakterien der Gattung Streptomyces her, also genau die Gruppe, von der viele der wirksamsten Antibiotika der Welt stammen. Science Notes ergänzt, dass auch bestimmte Cyanobakterien Geosmin bilden und dass Regen, der auf den Boden prasselt, den Stoff in die Luft verteilt.

Deine Nase ist darin extrem gut. Je nach Quelle nehmen Menschen Geosmin schon ab etwa 5 bis 100 Teilen pro Billion wahr. Laut John Innes Centre sind wir damit empfindlicher für diesen Geruch als Haie für Blut.

## Ein Duft mit Auftrag

Alle untersuchten Streptomyces-Arten bilden Geosmin. Das deutete darauf hin, dass der Geruch einen Nutzen haben muss. Eine Studie von 2020 in der Fachzeitschrift Nature Microbiology, geleitet von Forschenden in Schweden, unter anderem zusammen mit dem John Innes Centre, hat herausgefunden, welchen. Der Geruch lockt Springschwänze an, millimetergroße sechsbeinige Bodentiere.

Das zeigte das Team auf mehreren Wegen, wie die Universität Lund berichtet. Fallen mit Streptomyces als Köder fingen im Freiland Springschwänze. Elektroden an den Fühlern der Tiere zeigten, dass sie Geosmin wahrnehmen. Und in Y-förmigen Röhren wählten die Springschwänze den Weg, der nach Erde roch.

Von dem Deal haben beide etwas. Die Springschwänze fressen die Bakterien und vertragen dank spezieller Enzyme deren Antibiotika. Gleichzeitig bleiben Sporen an ihren wachsartigen Körpern kleben und überstehen sogar den Weg durch den Darm. So verbreiten die Springschwänze die Bakterien auf ihrem Körper und mit ihrem Kot. Passend dazu bilden die Bakterien Geosmin nur, wenn sie Sporen herstellen. Mark Buttner vom John Innes Centre vergleicht das mit Vögeln, die Früchte fressen und dabei die Samen verteilen.

> Bonusfakt: Das englische Wort „petrichor“ für den Regengeruch haben 1964 zwei Forschende der australischen Behörde CSIRO erfunden, Isabel Joy Bear und Richard Thomas. Es verbindet das griechische „petra“ (Stein) mit „ichor“, dem ätherischen Blut der Götter in der griechischen Mythologie.

Dieser gemütliche Regenduft ist also im Grunde eine Einladung zum Essen, nur eben nicht an dich.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rain-smell-springtail-lure', 'de', 1, 'Duftkerze mit Regenduft', 'Duftkerze Regen Petrichor', 'Holt den Geruch von frischem Regen auch an trockenen Tagen ins Zimmer.'),
  ('rain-smell-springtail-lure', 'de', 2, 'Taschenmikroskop für unterwegs', 'Taschenmikroskop 60x 120x', 'Klein genug für draußen, um Erde, Moos und winzige Krabbeltiere aus der Nähe anzusehen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rain-smell-springtail-lure', 'de', 1, 'John Innes Centre: Research unearths the science behind the smell of spring', 'https://www.jic.ac.uk/press-release/research-unearths-the-science-behind-the-smell-of-spri'),
  ('rain-smell-springtail-lure', 'de', 2, 'Lund University: The story behind that earthy smell in spring', 'https://www.lunduniversity.lu.se/article/story-behind-earthy-smell-spring'),
  ('rain-smell-springtail-lure', 'de', 3, 'Science Notes: Petrichor and Geosmin - The Smell of Rain', 'https://sciencenotes.org/petrichor-and-geosmin-the-smell-of-rain/'),
  ('rain-smell-springtail-lure', 'de', 4, 'CSIRO: The smell of rain: how our scientists invented a new word', 'https://www.csiro.au/en/news/all/articles/2015/march/the-smell-of-rain-how-our-scientists-invented-a-new-word');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rain-smell-springtail-lure', 'en', 'rain-smell-lures-springtails',
  'That earthy smell after rain is bacteria luring tiny soil animals',
  'The scent you love after a shower is largely a bacterial ad aimed at creatures a millimetre long.',
  'The earthy smell of geosmin is made by Streptomyces soil bacteria and attracts springtails, which then spread the bacteria''s spores on their bodies and in their droppings.',
  'You know that smell when rain hits dry ground, or when you dig around in a garden. It feels like nature''s own air freshener. In reality, a big part of it is advertising: bacteria in the soil luring tiny animals so they''ll carry their offspring around.

## The molecule behind the smell

The earthy note comes from a compound called geosmin. According to the John Innes Centre in England, it is made by soil bacteria of the genus Streptomyces, the same group that gives us many of the world''s most effective antibiotics. Science Notes adds that certain cyanobacteria produce it too, and that rain hitting the ground helps spread it into the air.

Your nose is extremely good at catching it. Depending on the source, people can detect geosmin at somewhere between 5 and 100 parts per trillion. The John Innes Centre says that makes us more sensitive to it than sharks are to blood.

## A scent with a job

Every Streptomyces species studied makes geosmin, which hinted that the smell has to be useful. A 2020 study in the journal Nature Microbiology, led by researchers in Sweden with partners including the John Innes Centre, found out what for. The smell attracts springtails, millimetre-sized, six-legged soil animals.

The team showed this in several ways, as Lund University reports. Traps baited with Streptomyces caught springtails in the field. Electrodes on the animals'' antennae showed that they sense geosmin. And in Y-shaped tubes, the springtails chose the path that smelled of soil.

The deal works for both sides. The springtails eat the bacteria and, thanks to special enzymes, can handle their antibiotics. Meanwhile, spores stick to their waxy bodies and survive the trip through their gut, so the springtails spread the bacteria on their bodies and in their droppings. Fittingly, the bacteria only make geosmin when they form spores. Mark Buttner of the John Innes Centre compares it to birds eating fruit and spreading the seeds.

> Bonus fact: The word "petrichor" for the smell of rain was coined in 1964 by two CSIRO scientists in Australia, Isabel Joy Bear and Richard Thomas. It combines the Greek "petra" (stone) with "ichor", the ethereal blood of the gods in Greek mythology.

That cosy rain smell is basically a dinner invitation, just not addressed to you.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rain-smell-springtail-lure', 'en', 1, 'Petrichor scented candle', 'petrichor rain scented candle', 'Brings the smell of fresh rain into your room on any dry day.'),
  ('rain-smell-springtail-lure', 'en', 2, 'Pocket field microscope', 'pocket field microscope 60x 120x', 'Small enough to take outside and look at soil, moss and tiny critters up close.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rain-smell-springtail-lure', 'en', 1, 'John Innes Centre: Research unearths the science behind the smell of spring', 'https://www.jic.ac.uk/press-release/research-unearths-the-science-behind-the-smell-of-spri'),
  ('rain-smell-springtail-lure', 'en', 2, 'Lund University: The story behind that earthy smell in spring', 'https://www.lunduniversity.lu.se/article/story-behind-earthy-smell-spring'),
  ('rain-smell-springtail-lure', 'en', 3, 'Science Notes: Petrichor and Geosmin - The Smell of Rain', 'https://sciencenotes.org/petrichor-and-geosmin-the-smell-of-rain/'),
  ('rain-smell-springtail-lure', 'en', 4, 'CSIRO: The smell of rain: how our scientists invented a new word', 'https://www.csiro.au/en/news/all/articles/2015/march/the-smell-of-rain-how-our-scientists-invented-a-new-word');
