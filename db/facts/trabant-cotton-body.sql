-- WTFact-Fakt „Die Karosserie des Trabi bestand aus Baumwolle und Kunstharz“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('trabant-cotton-body', '2026-10-03T11:51:32+02:00', 'tech', '🚗', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'trabant-cotton-body', 'de', 'trabant-karosserie-aus-baumwolle',
  'Die Karosserie des Trabi bestand aus Baumwolle und Kunstharz',
  'Blech war knapp, also baute man das Auto aus etwas anderem. Der Trabant war ein Kunststoffauto, lange bevor das cool war.',
  'Die Karosserie des Trabant bestand nicht aus Stahlblech, sondern aus Duroplast: mit Phenolharz getränkten Baumwoll-Pressteilen.',
  'Wer an Autos denkt, denkt an Stahlblech. Der Trabant, das bekannteste Auto der DDR, hatte da andere Pläne. **Seine Karosserie bestand aus Duroplast, also aus Baumwolle, die mit Phenolharz getränkt und gepresst wurde.**

## Kunststoff statt Blech

Das KÜS Magazin beschreibt die Außenhaut des Trabant P 601 als „mit Phenolharz getränkte Baumwoll-Pressteile“. Phenolharz ist ein Kunstharz, das beim Aushärten fest wird und sich danach nicht mehr verformen lässt. Zusammen mit den Baumwollfasern entsteht ein harter, leichter Werkstoff.

Warum der Aufwand? Laut KÜS Magazin gab es zwei Gründe. Erstens sollte das Auto leichter werden. Zweitens war Karosserieblech in der DDR-Planwirtschaft schlicht knapp. Aus der Not wurde so eine Technik, die heute fast futuristisch klingt.

Im Volksmund hieß der Trabi trotzdem wenig schmeichelhaft „Pappe“. Mit Pappe hat Duroplast aber nichts zu tun.

## Fast drei Millionen Stück

Der P 601 lief ab Juli 1964 vom Band. Angetrieben wurde er von einem luftgekühlten Zweizylinder-Zweitaktmotor, erst mit 23 PS, ab 1969 mit 26 PS. Bis 1989 entstanden laut KÜS Magazin 2.821.381 Exemplare dieses Modells.

Danach kam von 1988 bis 1991 noch der Trabant 1.1, jetzt mit einem Motor von VW. Am 30. April 1991 rollte in Zwickau der letzte Trabant vom Band. Er trägt die Fahrzeugnummer 3.096.099, ist pink und steht heute im Depot des August Horch Museums.

> Laut autohaus.de waren 2011 von den rund drei Millionen gebauten Trabis noch etwa 30.000 übrig.

Und dort, wo der letzte Trabi vom Band lief, baute Volkswagen laut demselben Bericht inzwischen Golf und Passat. Von Baumwolle in der Karosserie war da keine Rede mehr.

Ein Auto, das zum Teil aus demselben Stoff war wie dein T-Shirt, nur deutlich härter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('trabant-cotton-body', 'de', 1, 'Trabant-Modellauto im Maßstab 1:24', 'Trabant Modellauto 1:24', 'Detailreiches Modell des Klassikers für Regal oder Schreibtisch.'),
  ('trabant-cotton-body', 'de', 2, 'Sachbuch über die Geschichte des Trabant', 'Buch Trabant Geschichte', 'Von der Entwicklung bis zum letzten Exemplar, mit vielen Fotos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('trabant-cotton-body', 'de', 1, 'KÜS Magazin: Duroplast und zwei Zylinder: 50 Jahre Trabant P 601', 'https://www.kues-magazin.de/duroplast-und-zwei-zylinder-50-jahre-trabant-p-601/'),
  ('trabant-cotton-body', 'de', 2, 'autohaus.de: Vor 20 Jahren: Letzter Trabi läuft vom Band', 'https://www.autohaus.de/nachrichten/autohersteller/vor-20-jahren-letzter-trabi-laeuft-vom-band-2748461');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'trabant-cotton-body', 'en', 'trabant-body-made-of-cotton',
  'The Trabant''s body was made of cotton and synthetic resin',
  'Sheet steel was scarce, so they built the car from something else. The Trabant was a plastic car long before that was cool.',
  'The body of the East German Trabant wasn''t made of sheet steel but of Duroplast: pressed cotton parts soaked in phenolic resin.',
  'When you think of cars, you think of steel. The Trabant, East Germany''s most famous car, had other ideas. **Its body was made of Duroplast: cotton soaked in phenolic resin and pressed into shape.**

## Plastic instead of steel

The German car magazine KÜS Magazin describes the outer skin of the Trabant P 601 as pressed cotton parts soaked in phenolic resin. Phenolic resin is a synthetic resin that sets hard and can''t be reshaped afterwards. Combined with the cotton fibers, it makes a hard, light material.

Why go to all that trouble? According to KÜS Magazin, there were two reasons. First, the car was supposed to be lighter. Second, sheet steel for car bodies was simply in short supply in East Germany''s planned economy. Necessity turned into a technique that sounds almost futuristic today.

People still gave the Trabi a not-so-flattering nickname: "Pappe", German for cardboard. Duroplast has nothing to do with cardboard, though.

## Almost three million cars

The P 601 went into production in July 1964. It was powered by an air-cooled two-cylinder two-stroke engine, first with 23 horsepower, from 1969 with 26. By 1989, according to KÜS Magazin, 2,821,381 cars of this model had been built.

From 1988 to 1991 there was also the Trabant 1.1, now with an engine from VW. On April 30, 1991, the last Trabant rolled off the line in Zwickau. It carries the vehicle number 3,096,099, is pink, and is now kept in the depot of the August Horch Museum.

> According to autohaus.de, about 30,000 of the roughly three million Trabis ever built were still around in 2011.

And where the last Trabi rolled off the line, Volkswagen was building Golfs and Passats by then, according to the same report. No more cotton in the bodywork there.

A car partly made of the same stuff as your T-shirt, just a lot harder.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('trabant-cotton-body', 'en', 1, 'Trabant scale model car 1:24', 'Trabant model car 1:24', 'A detailed model of the classic for your shelf or desk.'),
  ('trabant-cotton-body', 'en', 2, 'Book on the history of the Trabant', 'Trabant history book', 'From development to the very last car, with lots of photos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('trabant-cotton-body', 'en', 1, 'KÜS Magazin: Duroplast und zwei Zylinder: 50 Jahre Trabant P 601', 'https://www.kues-magazin.de/duroplast-und-zwei-zylinder-50-jahre-trabant-p-601/'),
  ('trabant-cotton-body', 'en', 2, 'autohaus.de: Vor 20 Jahren: Letzter Trabi läuft vom Band', 'https://www.autohaus.de/nachrichten/autohersteller/vor-20-jahren-letzter-trabi-laeuft-vom-band-2748461');
