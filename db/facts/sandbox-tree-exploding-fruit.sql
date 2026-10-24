-- WTFact-Fakt „Dieser Baum sprengt seine eigenen Früchte, und laut einer Messung fliegen die Samen mit bis zu 250 km/h davon“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('sandbox-tree-exploding-fruit', '2026-10-27T12:00:00+01:00', 'nature', '💥', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sandbox-tree-exploding-fruit', 'de', 'sandbuechsenbaum-explodierende-fruechte',
  'Dieser Baum sprengt seine eigenen Früchte, und laut einer Messung fliegen die Samen mit bis zu 250 km/h davon',
  'Die meisten Pflanzen lassen ihre Samen vom Wind oder von Vögeln verteilen. Der Sandbüchsenbaum nimmt lieber eine kleine Explosion.',
  'Ist die Frucht des Sandbüchsenbaums (Hura crepitans) reif, platzt sie auseinander und schießt ihre Samen heraus. Bei einer Messung von 1977 erreichten sie bis zu etwa 70 Meter pro Sekunde, also rund 250 km/h.',
  'Stell dir einen Baum vor, der nicht darauf wartet, dass jemand seine Samen verteilt. Er sprengt seine Früchte einfach. Das ist der Sandbüchsenbaum, Hura crepitans, auf Englisch auch „dynamite tree“ genannt.

## Ein Baum, den du nicht umarmen willst

Der Sandbüchsenbaum wächst in den amerikanischen Tropen und kann im Wald 60 Meter hoch werden. Sein Stamm ist mit spitzen Dornen besetzt, und sein milchiger Saft ist giftig. So weit, so unfreundlich.

Die eigentliche Show ist die Frucht. Sie ist etwa 6 Zentimeter breit und besteht aus 12 bis 16 Segmenten, ein bisschen wie ein Mini-Kürbis aus Spalten. Ist sie reif, platzt die Kapsel auseinander, und die Samen fliegen in alle Richtungen.

## Schnell, weit und mit Rückwärtsdrall

1977 maßen Forschende Startgeschwindigkeiten von bis zu 70 Metern pro Sekunde, rund 250 km/h, im Schnitt waren es 43 Meter pro Sekunde. Die Samen landeten bis zu 45 Meter vom Baum entfernt.

Mehr als 40 Jahre später filmte ein Team in Costa Rica explodierende Früchte mit 2.000 Bildern pro Sekunde und entdeckte etwas, das den älteren Messungen entgangen war: Die Samen fliegen mit Rückwärtsdrall, nicht mit Vorwärtsdrall, wie man angenommen hatte. Sie drehen sich etwa 80-mal pro Sekunde. Wie eine CD, die du mit Schwung wirfst, bleibt ein Samen mit Rückwärtsdrall stabil in der Luft und behält eine Lage mit wenig Luftwiderstand. Laut dem Modell des Teams käme ein Samen mit 43 Metern pro Sekunde und Rückwärtsdrall etwa 41 Meter weit, ein taumelnder nur etwa 17 Meter.

Ihr eigenes Video zeigte nur etwa 13 Meter pro Sekunde. Den Grund vermuten die Forschenden selbst: Ihre Früchte hatten im Gefrierschrank gelegen, was die Explosion wohl abgeschwächt hat. Für Explosionen in der Natur halten sie die älteren, schnelleren Werte für genauer.

> Bonusfakt: Der Name „Sandbüchsenbaum“ stammt aus der Zeit vor modernen Stiften. Man schnitt unreife Kapseln in der Mitte durch und nutzte sie als Büchsen für Sand, mit dem man nasse Tinte trocknete.

Wenn dieser Baum also seine Früchte loswird, lässt er sie nicht fallen. Er feuert sie ab.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sandbox-tree-exploding-fruit', 'de', 1, 'Sachbuch über Samen und Pflanzen', 'Sachbuch Samen Pflanzen Verbreitung', 'Erzählt die überraschenden Geschichten, wie Pflanzen sich verbreiten und überleben.'),
  ('sandbox-tree-exploding-fruit', 'de', 2, 'Botanisches Poster mit tropischen Pflanzen', 'botanisches Poster tropische Pflanzen vintage', 'Holt ein Stück Regenwald-Botanik im Vintage-Stil an deine Wand.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sandbox-tree-exploding-fruit', 'de', 1, 'Discover Wildlife: Its fruits explode when ripe, firing toxic seeds in all directions at speeds of up 160mph…', 'https://www.discoverwildlife.com/plant-facts/trees/dynamite-tree'),
  ('sandbox-tree-exploding-fruit', 'de', 2, 'Putting a New Spin on the Flight of Jabillo Seeds (Ribera, Desai, Whitaker)', 'https://par.nsf.gov/servlets/purl/10206558'),
  ('sandbox-tree-exploding-fruit', 'de', 3, 'Wikipedia: Hura crepitans', 'https://en.wikipedia.org/wiki/Hura_crepitans');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sandbox-tree-exploding-fruit', 'en', 'sandbox-tree-exploding-fruit',
  'This tree blows up its own fruit, and one measurement clocked the seeds at up to 250 km/h',
  'Most plants let the wind or a bird carry their seeds. The sandbox tree prefers a small explosion.',
  'When the fruit of the sandbox tree (Hura crepitans) is ripe, it bursts apart and shoots its seeds out. In a 1977 measurement, they reached up to about 70 meters per second, roughly 250 km/h.',
  'Picture a tree that doesn''t wait for anyone to spread its seeds. It just blows its fruit up. That''s the sandbox tree, Hura crepitans, also known as the dynamite tree.

## A tree you don''t want to hug

The sandbox tree grows in the American tropics, and in the forest it can reach 60 meters. Its trunk is covered in sharp thorns, and its milky sap is toxic. So far, so unfriendly.

The real show is the fruit. It''s about 6 centimeters across and built from 12 to 16 segments, a bit like a tiny pumpkin made of wedges. Once it is ripe, the capsule bursts apart, and the seeds shoot out in all directions.

## Fast, far and with backspin

In 1977, researchers measured launch speeds of up to 70 meters per second, about 250 km/h, with an average of 43 meters per second. Seeds landed up to 45 meters away from the tree.

More than 40 years later, a team filmed exploding fruits in Costa Rica at 2,000 frames per second and spotted something the older measurements had missed: the seeds fly with backspin, not topspin, as had been assumed. They spin at around 80 rotations per second. Like a CD you throw with a flick, a seed with backspin stays stable in the air and keeps an orientation with low drag. According to the team''s model, a seed launched at 43 meters per second with backspin could fly about 41 meters, compared with about 17 meters for one that tumbles.

Their own video only showed about 13 meters per second. The researchers suspect the reason: their fruits had been kept in a freezer, which probably weakened the blast. For explosions in nature, they consider the older, faster numbers more accurate.

> Bonus fact: The name "sandbox tree" comes from the days before modern pens. People cut unripe capsules in half and used them as little boxes for sand to dry wet ink.

So when this tree drops its fruit, it doesn''t drop anything. It fires.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sandbox-tree-exploding-fruit', 'en', 1, 'Popular science book about seeds', 'popular science book seeds plants', 'Tells the surprising stories of how plants spread and survive.'),
  ('sandbox-tree-exploding-fruit', 'en', 2, 'Botanical poster of tropical plants', 'botanical poster tropical plants vintage', 'Brings a vintage-style piece of rainforest botany to your wall.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sandbox-tree-exploding-fruit', 'en', 1, 'Discover Wildlife: Its fruits explode when ripe, firing toxic seeds in all directions at speeds of up 160mph…', 'https://www.discoverwildlife.com/plant-facts/trees/dynamite-tree'),
  ('sandbox-tree-exploding-fruit', 'en', 2, 'Putting a New Spin on the Flight of Jabillo Seeds (Ribera, Desai, Whitaker)', 'https://par.nsf.gov/servlets/purl/10206558'),
  ('sandbox-tree-exploding-fruit', 'en', 3, 'Wikipedia: Hura crepitans', 'https://en.wikipedia.org/wiki/Hura_crepitans');
