-- WTFact-Fakt „Diese Wüstenpflanze bildet in ihrem ganzen Leben nur zwei Blätter und behält sie Jahrhunderte“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('welwitschia-two-leaves', '2026-11-04T08:00:00+01:00', 'nature', '🌿', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'welwitschia-two-leaves', 'de', 'welwitschia-nur-zwei-blaetter',
  'Diese Wüstenpflanze bildet in ihrem ganzen Leben nur zwei Blätter und behält sie Jahrhunderte',
  'Welwitschia wirft nie ein Blatt ab, obwohl sie über tausend Jahre alt werden kann.',
  'Welwitschia mirabilis aus der Namib-Wüste bildet nur zwei Blätter und wirft sie nie ab, die Pflanze selbst kann dabei über 1.000 Jahre alt werden.',
  'Die meisten Pflanzen bilden Blätter, werfen sie ab und bilden neue. Welwitschia mirabilis lässt diesen ganzen Kreislauf einfach aus. Laut Guinness World Records bildet jede Pflanze nur zwei Blätter und wirft sie nie ab. Mit genau diesen zwei Blättern kommt sie Jahrhunderte aus.

## Zwei Blätter, ein sehr langes Leben

Die Pflanze wächst nur in der Namib-Wüste im Südwesten Afrikas. Ihre zwei Blätter wachsen aus einem Stamm, der größtenteils unter der Erde steckt. Guinness gibt ihr durchschnittliches Wachstum mit 0,2 bis 0,5 mm pro Tag an und führt Welwitschia als Pflanze mit den langlebigsten Blättern überhaupt: Kleine Exemplare wurden per Radiokarbonmethode auf 500 bis 600 Jahre datiert, größere könnten 2.000 bis 3.000 Jahre alt sein, das müssen weitere Analysen aber noch zeigen. Kew und der Hortus Botanicus Amsterdam schreiben beide, dass die Art über 1.000 Jahre alt werden kann.

Warum sieht sie dann aus wie ein wirrer Haufen aus Dutzenden Blättern? Der Wüstenwind spaltet die Blätter und rollt sie ein, je älter die Pflanze wird, schreibt der Hortus in Amsterdam. Das Liberty Hyde Bailey Conservatory der Cornell University beschreibt es genauso: Die Blätter verdrehen sich, reißen ein und fransen aus, bleiben aber trotzdem nur zwei. (Der Hortus ergänzt, dass eine Pflanze sehr selten auch mehr bildet.)

## Trinken aus dem Nebel

Regen ist dort selten. Der Hortus nennt 20 bis 200 mm im Jahr, Cornell schreibt, dass Teile ihres Verbreitungsgebiets weniger als einen halben Zoll abbekommen. Was die Namib dafür hat, ist Seenebel, der durch einen Küstenstreifen zieht, der mehr als 100 Kilometer ins Landesinnere reichen kann. Laut Hortus nehmen die Blätter etwas Feuchtigkeit aus Tau und Nebel auf. Kew ergänzt, manche behaupten sogar, die Pflanze könne fünf Jahre ohne einen Tropfen Wasser überleben.

Botanisch ist sie außerdem eine Einzelgängerin. Welwitschia gehört zu den Nacktsamern und ist mit Nadelbäumen und Palmfarnen verwandt, laut Kew bildet sie aber eine eigene Pflanzenfamilie, die Welwitschiaceae. Es gibt männliche und weibliche Pflanzen, und beide bilden Zapfen.

> Bonusfakt: Laut Kew ist Welwitschia im Staatswappen der Republik Namibia zu sehen. Entdeckt wurde sie 1859, benannt hat sie der Botaniker Joseph Dalton Hooker 1862 nach Friedrich Welwitsch.

Zwei Blätter, kein Ersatz, tausend Jahre. Das nennt man Treue.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('welwitschia-two-leaves', 'de', 1, 'Bildband über Wüstenpflanzen und Sukkulenten', 'Sukkulenten Wüstenpflanzen Bildband', 'Ein Bilderbuch-Rundgang durch Pflanzen, die mit fast keinem Regen auskommen.'),
  ('welwitschia-two-leaves', 'de', 2, 'Bildband Namibia', 'Bildband Namibia Namib Wüste', 'Große Landschaftsfotos von Dünen, Nebelküste und Wüstenleben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('welwitschia-two-leaves', 'de', 1, 'Guinness World Records: Longest leaf lifespan', 'https://www.guinnessworldrecords.com/world-records/84107-longest-leaf-lifespan'),
  ('welwitschia-two-leaves', 'de', 2, 'Kew: The living fossil', 'https://www.kew.org/read-and-watch/living-fossil'),
  ('welwitschia-two-leaves', 'de', 3, 'Hortus Botanicus Amsterdam: Desert wonder plant', 'https://www.dehortus.nl/en/?p=16232'),
  ('welwitschia-two-leaves', 'de', 4, 'Welwitschia mirabilis | Liberty Hyde Bailey Conservatory', 'https://conservatory.cals.cornell.edu/plants/welwitschia-mirabilis');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'welwitschia-two-leaves', 'en', 'welwitschia-only-two-leaves',
  'This desert plant grows just two leaves in its entire life, and keeps them for centuries',
  'Welwitschia never sheds a leaf, even though it can live for more than a thousand years.',
  'Welwitschia mirabilis from the Namib Desert produces only two leaves and never sheds them, while the plant itself can live for more than 1,000 years.',
  'Most plants grow leaves, drop them and grow new ones. Welwitschia mirabilis skips the whole cycle. According to Guinness World Records, each plant produces only two leaves and never sheds them. Those same two leaves keep it going for centuries.

## Two leaves, one very long life

The plant grows only in the Namib Desert in southwestern Africa. Its two leaves grow from a stem that sits mostly underground. Guinness puts their average growth at 0.2 to 0.5 mm per day, and it lists Welwitschia for the longest-lived leaves of any plant: small specimens have been carbon-dated at 500 to 600 years, and larger ones may be 2,000 to 3,000 years old, pending further analysis. Kew and Hortus Botanicus Amsterdam both say the species can live for more than 1,000 years.

So why does it look like a tangled heap of dozens of leaves? Desert winds split and curl them as the plant ages, says the Hortus in Amsterdam. Cornell''s Liberty Hyde Bailey Conservatory describes the same thing: the leaves twist, split and fray, but they are still only two. (The Hortus adds that very occasionally a plant grows more.)

## Drinking from the fog

Rain is rare where it lives. The Hortus gives 20 to 200 mm a year, and Cornell notes that parts of its range get less than half an inch. What the Namib does have is sea fog, which rolls through a coastal belt that can reach more than 100 kilometres inland. According to the Hortus, the leaves absorb some moisture from dew and fog. Kew adds that some people claim the plant can survive five years without a drop of water.

It''s also a botanical loner. Welwitschia is a gymnosperm, related to conifers and cycads, and according to Kew it sits in its own plant family, Welwitschiaceae. Male and female plants are separate, and both produce cones.

> Bonus fact: According to Kew, Welwitschia appears on the coat of arms of the Republic of Namibia. It was found in 1859 and named in 1862 by the botanist Joseph Dalton Hooker after Friedrich Welwitsch.

Two leaves, no replacements, a thousand years. Talk about commitment.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('welwitschia-two-leaves', 'en', 1, 'Illustrated book on desert plants and succulents', 'desert plants succulents illustrated book', 'A visual tour of plants that cope with almost no rain.'),
  ('welwitschia-two-leaves', 'en', 2, 'Namibia photo book', 'Namibia photo book Namib desert', 'Big landscape photos of dunes, fog coast and desert life.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('welwitschia-two-leaves', 'en', 1, 'Guinness World Records: Longest leaf lifespan', 'https://www.guinnessworldrecords.com/world-records/84107-longest-leaf-lifespan'),
  ('welwitschia-two-leaves', 'en', 2, 'Kew: The living fossil', 'https://www.kew.org/read-and-watch/living-fossil'),
  ('welwitschia-two-leaves', 'en', 3, 'Hortus Botanicus Amsterdam: Desert wonder plant', 'https://www.dehortus.nl/en/?p=16232'),
  ('welwitschia-two-leaves', 'en', 4, 'Welwitschia mirabilis | Liberty Hyde Bailey Conservatory', 'https://conservatory.cals.cornell.edu/plants/welwitschia-mirabilis');
