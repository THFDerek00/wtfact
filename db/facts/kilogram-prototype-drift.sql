-- WTFact-Fakt „Das Ur-Kilogramm und seine Kopien sind um rund 50 Mikrogramm auseinandergedriftet“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('kilogram-prototype-drift', '2026-11-03T08:00:00+01:00', 'science', '⚖️', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kilogram-prototype-drift', 'de', 'das-ur-kilogramm-und-seine-kopien',
  'Das Ur-Kilogramm und seine Kopien sind um rund 50 Mikrogramm auseinandergedriftet',
  'Über ein Jahrhundert lang war ein Metallzylinder bei Paris das Kilogramm, und niemand konnte sicher sagen, ob er leichter wurde.',
  'Der Metallzylinder, der das Kilogramm festlegte, und seine offiziellen Kopien sind in 100 Jahren um rund 50 Mikrogramm auseinandergedriftet, und weil der Zylinder per Definition das Kilogramm war, konnte niemand sagen, wer sich verändert hatte.',
  'Über hundert Jahre lang war ein Kilogramm keine Idee, sondern ein ganz bestimmtes Ding. Ein kleiner Metallzylinder in einem Tresor bei Paris wog per Definition exakt ein Kilogramm. Dann fing er an, sich mit seinen eigenen Kopien zu streiten.

## Drei Glasglocken und ein Tresor

Der Zylinder heißt Internationaler Kilogrammprototyp, Spitzname Le Grand K. Laut National Geographic wurde er 1889 aus einer Platin-Iridium-Legierung neu geschmiedet. Laut NIST ist das eine korrosionsbeständige Mischung aus 90 Prozent Platin und 10 Prozent Iridium. Er lagert im Internationalen Büro für Maß und Gewicht in Sèvres bei Paris, in einem temperierten Tresor unter drei ineinandergestellten Glasglocken.

Behandelt wurde er wie eine Reliquie. National Geographic berichtet, dass er in fast 130 Jahren nur dreimal aus dem Tresor geholt wurde, um ihn mit seinen Kopien zu vergleichen.

## Das Kilogramm, das nicht stillhielt

Genau dabei fiel etwas auf. Laut NIST haben die meisten offiziellen Kopien im Vergleich zum Prototyp an Masse zugelegt, im Schnitt rund 50 Mikrogramm in 100 Jahren. Das ist laut National Geographic ungefähr so viel wie ein Salzkorn.

Und jetzt kommt das Absurde: Vielleicht wurden die Kopien schwerer, vielleicht wurde Le Grand K leichter, vielleicht beides. Herausfinden ließ sich das nicht. Der Zylinder war ja das Kilogramm. Er wog also immer genau ein Kilogramm, selbst wenn er in Wahrheit ein bisschen Metall verloren hatte.

## Physik statt Metall

Am 16. November 2018 stimmten in Versailles Vertreter aus mehr als 60 Ländern einstimmig dafür, das zu ändern. Seit dem 20. Mai 2019 ist das Kilogramm über die Planck-Konstante festgelegt, eine Grundgröße der Physik mit dem fixen Wert 6,62607015 × 10⁻³⁴ kg·m²/s. Präzise messen lässt sich diese Konstante zum Beispiel mit einer Kibble-Waage, die eine Masse mit elektromagnetischer Kraft ausgleicht statt mit einem anderen Gewicht.

Le Grand K gibt es immer noch. Das Sagen hat er nur nicht mehr.

> Bonusfakt: Laut NIST war das Kilogramm die letzte Einheit des internationalen Systems, die noch über einen Gegenstand definiert war, und zwar bis zum 20. Mai 2019.

Das wichtigste Stück Metall der Messgeschichte wurde also in Rente geschickt, weil es nichts gab, das genauer war als es selbst.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kilogram-prototype-drift', 'de', 1, 'Digitale Feinwaage mit 0,01 g Auflösung', 'Feinwaage digital 0,01g', 'Klein genug für den Schreibtisch und empfindlich genug für eine einzelne Münze.'),
  ('kilogram-prototype-drift', 'de', 2, 'Sachbuch über die Geschichte der Maßeinheiten', 'Buch Geschichte der Maßeinheiten', 'Erzählt verständlich, wie Meter, Sekunde und Kilogramm zu ihren Definitionen kamen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kilogram-prototype-drift', 'de', 1, 'National Geographic: The kilogram is forever changed. Here''s why that matters.', 'https://www.nationalgeographic.com/science/article/kilogram-forever-changed-why-mass-matters'),
  ('kilogram-prototype-drift', 'de', 2, 'NIST: Kilogram: The Present', 'https://www.nist.gov/node/1338221');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kilogram-prototype-drift', 'en', 'the-kilogram-that-changed-weight',
  'The official kilogram and its copies drifted apart by about 50 micrograms',
  'For more than a century, one metal cylinder near Paris was the kilogram, and nobody could say for sure whether it was getting lighter.',
  'The metal cylinder that defined the kilogram and its official copies drifted apart by around 50 micrograms over 100 years, and since the cylinder was the kilogram by definition, no one could tell which side had changed.',
  'For more than a hundred years, a kilogram was not an idea. It was one specific object. A small metal cylinder in a vault near Paris weighed exactly one kilogram, by definition. Then it started to disagree with its own copies.

## Three bell jars and a vault

The cylinder is called the International Prototype of the Kilogram, nicknamed Le Grand K. According to National Geographic, it was reforged in 1889 from a platinum-iridium alloy, and NIST describes it as a corrosion-resistant alloy of 90 percent platinum and 10 percent iridium. It sits at the International Bureau of Weights and Measures in Sèvres, France, in a temperature-controlled vault under three nested glass bell jars.

It was treated like a relic. National Geographic reports that researchers took it out of its vault only three times in nearly 130 years to compare it with its copies.

## The kilogram that would not hold still

Those comparisons turned up a problem. NIST says most official copies gained mass relative to the prototype, averaging around 50 micrograms over 100 years. That''s roughly the mass of a grain of salt, according to National Geographic.

Here''s the absurd part: maybe the copies got heavier, maybe Le Grand K got lighter, maybe both. There was no way to know. The cylinder was the kilogram, so by definition it always weighed exactly one kilogram, even if it had actually lost a bit of metal.

## Swapping metal for physics

On November 16, 2018, representatives from more than 60 countries voted unanimously in Versailles to change that. Since May 20, 2019, the kilogram has been defined by the Planck constant, a fundamental number of physics, fixed at 6.62607015 × 10⁻³⁴ kg·m²/s. One way to measure that constant precisely is a Kibble balance, which balances a mass with electromagnetic force instead of with another weight.

Le Grand K still exists. It just isn''t in charge anymore.

> Bonus fact: According to NIST, the kilogram was the last unit of the international system still defined by a physical object, right up until May 20, 2019.

So the most important lump of metal in measurement history was retired because nobody could weigh it against anything that was more correct than itself.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kilogram-prototype-drift', 'en', 1, 'Digital precision scale with 0.01 g resolution', 'digital precision scale 0.01g', 'Small enough for a desk and sensitive enough to weigh a single coin.'),
  ('kilogram-prototype-drift', 'en', 2, 'Popular science book on units and measurement', 'book history of measurement units', 'A readable history of how meters, seconds and kilograms got their definitions.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kilogram-prototype-drift', 'en', 1, 'National Geographic: The kilogram is forever changed. Here''s why that matters.', 'https://www.nationalgeographic.com/science/article/kilogram-forever-changed-why-mass-matters'),
  ('kilogram-prototype-drift', 'en', 2, 'NIST: Kilogram: The Present', 'https://www.nist.gov/node/1338221');
