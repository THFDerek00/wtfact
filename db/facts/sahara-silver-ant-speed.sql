-- WTFact-Fakt „Die Silberameise der Sahara rennt 108 Körperlängen pro Sekunde über glühenden Sand“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('sahara-silver-ant-speed', '2026-10-12T08:00:00+02:00', 'survival', '🐜', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sahara-silver-ant-speed', 'de', 'sahara-silberameise-108-koerperlaengen-pro-sekunde',
  'Die Silberameise der Sahara rennt 108 Körperlängen pro Sekunde über glühenden Sand',
  'Während sich andere Wüstentiere vor der Mittagshitze verstecken, zieht diese Ameise los und rennt so schnell, dass ihre Füße kaum den Boden berühren.',
  'Die Saharische Silberameise schafft bis zu 855 Millimeter pro Sekunde, etwa 108 eigene Körperlängen, und sucht ausgerechnet mittags nach Futter, wenn der Wüstenboden bis zu 70 Grad Celsius heiß werden kann.',
  'Die meisten Wüstentiere verkriechen sich, wenn die Sahara am heißesten ist. Die Saharische Silberameise (Cataglyphis bombycina) macht genau das Gegenteil: Sie verlässt mittags ihr Nest und sprintet über den Sand.

## Schneller als jede andere gemessene Ameise

Biologinnen und Biologen der Universität Ulm haben Silberameisen in einer Oase am Nordrand der Sahara in Tunesien mit einer Hochgeschwindigkeitskamera gefilmt. Mit Mehlwürmern lockten sie die Tiere auf eine mit Sand bestreute Laufbahn. Höchstgeschwindigkeit: 855 Millimeter pro Sekunde. Das sind etwa 108 Körperlängen pro Sekunde, so ihre Studie im Journal of Experimental Biology.

Zum Vergleich: ScienceAlert gibt für einen Geparden etwa 16 Körperlängen pro Sekunde an, für Usain Bolt 6,2. Mit dem Tempo der Ameise, umgerechnet auf seine Größe, käme Bolt auf rund 800 km/h.

Der Trick sind nicht lange Beine. Silberameisen haben sogar kürzere Beine als ihre nahe Verwandte Cataglyphis fortis. Dafür machen sie bis zu 47 Schritte pro Sekunde, und bei hohem Tempo heben alle sechs Füße gleichzeitig ab. Die Ameise fliegt also kurz. Jeder Fuß berührt den Sand nur bis zu 7 Millisekunden lang.

## Silberhaare als Sonnenschutz

Warum die Eile? Mittags kann der Boden 70 Grad Celsius erreichen, während die kritische Höchsttemperatur der Ameise bei 53,6 Grad liegt, berichtet UW News. Deshalb bleibt sie nur wenige Minuten draußen und sammelt Insekten und andere kleine Tiere, die an der Hitze gestorben sind. Dass sie zur heißesten Zeit unterwegs ist, schützt sie außerdem vor räuberischen Wüsteneidechsen.

Ihr silberner Glanz hilft dabei. Ein Team um Nanfang Yu von der Columbia University fand 2015 heraus, dass die Haare der Ameise einen dreieckigen Querschnitt haben. Sie reflektieren sichtbares und nahes Infrarot-Sonnenlicht und helfen, Körperwärme an den Himmel abzugeben. Zusammen hält das die Ameise 5 bis 10 Grad kühler als ohne diese Haare.

> Bonusfakt: Selbst die Silberameise ist nicht der schnellste Läufer unter den Gliederfüßern. ScienceAlert sieht sie bei den Körperlängen pro Sekunde auf Platz drei, hinter einer kalifornischen Küstenmilbe mit 322 und einem australischen Sandlaufkäfer mit 170.

Die schnellste Ameise der Welt jagt also auf einer heißen Herdplatte, in einem Mantel, der wie ein Spiegel funktioniert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sahara-silver-ant-speed', 'de', 1, 'Ameisenfarm mit Gel', 'Ameisenfarm Gel Kinder', 'Damit siehst du Ameisen direkt auf deinem Schreibtisch beim Tunnelbau zu.'),
  ('sahara-silver-ant-speed', 'de', 2, 'Illustriertes Sachbuch über Ameisen', 'Sachbuch Ameisen illustriert', 'Taucht tief ein in Ameisenstaaten, Kasten und ihr seltsames Verhalten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sahara-silver-ant-speed', 'de', 1, 'Science News: How Saharan silver ants, the world''s fastest, sprint on hot sand', 'https://www.sciencenews.org/article/sahara-silver-ants-world-fastest-despite-relatively-short-legs'),
  ('sahara-silver-ant-speed', 'de', 2, 'ScienceAlert: World''s Fastest Ant Has Just Been Clocked at a Breathtaking 855 Millimetres Per Second', 'https://www.sciencealert.com/world-s-fastest-ants-clock-855-millimetres-per-second'),
  ('sahara-silver-ant-speed', 'de', 3, 'UW News: Saharan silver ants use hair to survive Earth''s hottest temperatures', 'https://www.washington.edu/news/2015/06/18/saharan-silver-ants-use-hair-to-survive-earths-hottest-temperatures/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sahara-silver-ant-speed', 'en', 'sahara-silver-ant-108-body-lengths-per-second',
  'The Sahara silver ant sprints 108 body lengths per second across scorching sand',
  'While other desert animals hide from the midday heat, this ant heads out and runs so fast its feet barely touch the ground.',
  'The Saharan silver ant reaches up to 855 millimeters per second, about 108 of its own body lengths, and it goes out foraging at midday, when the desert ground can heat up to 70 degrees Celsius.',
  'Most desert animals hide when the Sahara is at its hottest. The Saharan silver ant (Cataglyphis bombycina) does the opposite: it leaves its nest at midday and sprints across the sand.

## Faster than any other ant on record

Biologists from the University of Ulm in Germany filmed silver ants with a high-speed camera at an oasis on the northern edge of the Sahara in Tunisia, luring them onto a sand-dusted runway with mealworms. Top speed: 855 millimeters per second. That''s about 108 body lengths per second, according to their study in the Journal of Experimental Biology.

For comparison, ScienceAlert puts a cheetah at about 16 body lengths per second and Usain Bolt at 6.2. At the ant''s relative speed, Bolt would hit roughly 800 km/h.

The trick isn''t long legs. Silver ants actually have shorter legs than their close relative Cataglyphis fortis. Instead, they take up to 47 strides per second, and at high speeds all six feet leave the ground at once, so the ant is briefly airborne. Each foot touches the sand for as little as 7 milliseconds.

## Silver hair as sunscreen

Why the rush? At midday the ground can reach 70 degrees Celsius, while the ant''s critical thermal maximum is 53.6 degrees, as UW News reports. So it spends only a few minutes outside, scavenging insects and other small creatures that died in the heat. Heading out at the hottest time also helps it avoid predatory desert lizards.

Its silvery shine helps too. A team led by Nanfang Yu at Columbia University found in 2015 that the ant''s hairs have a triangular cross section. They reflect visible and near-infrared sunlight and help the ant shed body heat to the sky. Together, this keeps the ant 5 to 10 degrees cooler than it would be without the hair.

> Bonus fact: Even the silver ant isn''t the fastest runner among arthropods. ScienceAlert ranks it third in body lengths per second, behind a Californian coastal mite at 322 and an Australian tiger beetle at 170.

So the fastest ant on Earth hunts on a hot plate, wearing a coat that works like a mirror.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sahara-silver-ant-speed', 'en', 1, 'Ant farm with gel habitat', 'ant farm gel habitat kids', 'Lets you watch ants dig their tunnels right on your desk.'),
  ('sahara-silver-ant-speed', 'en', 2, 'Illustrated book about ants', 'illustrated book about ants', 'A deep dive into ant colonies, castes and their strange behaviors.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sahara-silver-ant-speed', 'en', 1, 'Science News: How Saharan silver ants, the world''s fastest, sprint on hot sand', 'https://www.sciencenews.org/article/sahara-silver-ants-world-fastest-despite-relatively-short-legs'),
  ('sahara-silver-ant-speed', 'en', 2, 'ScienceAlert: World''s Fastest Ant Has Just Been Clocked at a Breathtaking 855 Millimetres Per Second', 'https://www.sciencealert.com/world-s-fastest-ants-clock-855-millimetres-per-second'),
  ('sahara-silver-ant-speed', 'en', 3, 'UW News: Saharan silver ants use hair to survive Earth''s hottest temperatures', 'https://www.washington.edu/news/2015/06/18/saharan-silver-ants-use-hair-to-survive-earths-hottest-temperatures/');
