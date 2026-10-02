-- WTFact-Fakt „Pistazien können sich im Frachtraum von selbst erhitzen und entzünden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('pistachio-combustion', '2026-09-20', 'food', '🔥', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pistachio-combustion', 'de', 'pistazien-selbstentzuendung',
  'Pistazien können sich im Frachtraum von selbst erhitzen und entzünden',
  'Für Schiffstransporte gelten sie als möglicher Gefahrstoff, ähnlich wie selbsterhitzende Substanzen. Schuld ist das Fett.',
  'Große Mengen Pistazien können sich beim Transport selbst erhitzen und im Extremfall entzünden. Für Seefracht gelten deshalb besondere Regeln.',
  'Pistazien sind der Snack für den Sofa-Abend: knacken, knabbern, Schalen sammeln. Harmloser geht es kaum, sollte man meinen. Aber in großen Mengen, gestapelt in Säcken im Bauch eines Frachtschiffs, werden sie zum Problem. **Pistazien können sich selbst erhitzen und im Extremfall von allein Feuer fangen.**

## Zu viel Fett, zu viel Feuchtigkeit

Der Grund steckt in der Nuss selbst. Laut dem Transport-Informations-Service der deutschen Versicherungswirtschaft enthalten Pistazien je nach Quelle etwa 45 bis 55 Prozent Öl. Gleichzeitig sollen sie sehr trocken verschifft werden, mit nur wenigen Prozent Wasser.

Werden sie feucht, wird es heikel. Dann springen Enzyme an, die das Fett spalten. Fett kann außerdem durch Sauerstoff zerfallen. Beide Prozesse setzen Wärme frei, und an feuchten Stellen kann sich die Ladung laut dem Transport-Informations-Service schon innerhalb von Stunden erhitzen. In großen Stapeln kann die Wärme kaum entweichen, also wird es immer wärmer. Im schlimmsten Fall reicht das für einen Brand.

## Ein Fall für die Gefahrgut-Regeln

Weil das passieren kann, nehmen Fachleute die Nuss sehr ernst. **Laut dem Transport-Informations-Service können sich Pistazien wie Stoffe der Klasse 4.2 des IMDG-Codes verhalten.** Das ist das internationale Regelwerk für gefährliche Güter auf Schiffen, und Klasse 4.2 umfasst selbstentzündliche Stoffe.

Ein Faktor ist auch die Verpackung. Laut dem Transport-Informations-Service begünstigen hoher Stapeldruck und Öl, das sich in Jutesäcken sammelt, die Selbsterhitzung. Deshalb geht es beim Transport vor allem darum, die Ladung trocken und kühl zu halten.

> Laut HuffPost UK können sich unter ungünstigen Bedingungen auch andere fettreiche Nüsse und Samen selbst erhitzen, etwa Walnüsse, Cashews und Sonnenblumenkerne.

## Keine Gefahr fürs Sofa

Die Tüte Pistazien in deinem Schrank wird übrigens nicht plötzlich in Flammen aufgehen. Es geht um tonnenweise Ware, eng gestapelt und feucht geworden, wo sich Wärme über lange Zeit stauen kann.

Ein Snack, der in der richtigen Menge offiziell als heikle Fracht gilt: Das schafft nicht jede Nuss.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pistachio-combustion', 'de', 1, 'Pistaziencreme', 'Pistaziencreme ohne Palmöl', 'Süß, grün und cremig, perfekt aufs Brot oder als Füllung für Croissants.'),
  ('pistachio-combustion', 'de', 2, 'Backbuch mit Nüssen', 'Backbuch Nüsse Rezepte', 'Kuchen, Kekse und Tartes mit Pistazien, Mandeln und Haselnüssen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pistachio-combustion', 'de', 1, 'Transport Informations Service: Pistachio nuts', 'https://www.tis-gdv.de/tis_e/ware/nuesse/pistazie/pistazie-htm/'),
  ('pistachio-combustion', 'de', 2, 'HuffPost UK: Erm, What? Pistachios Can Spontaneously Combust', 'https://www.huffingtonpost.co.uk/entry/pistachio-spontaneous-combustion_uk_64d21eb9e4b0b9c9f3e34515');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pistachio-combustion', 'en', 'pistachios-self-heat',
  'Pistachios can heat themselves up and catch fire in a cargo hold',
  'For shipping, they can count as a potential hazard, much like self-heating substances. The fat is to blame.',
  'Large amounts of pistachios can heat up on their own during transport and, in extreme cases, ignite. That''s why sea freight has special rules for them.',
  'Pistachios are the ultimate couch snack: crack, nibble, collect shells. Hard to imagine anything more harmless. But in large quantities, stacked in sacks in the belly of a cargo ship, they become a problem. **Pistachios can heat themselves up and, in extreme cases, catch fire on their own.**

## Too much fat, too much moisture

The reason is the nut itself. According to the Transport Information Service run by the German insurance industry, pistachios contain about 45 to 55 percent oil, depending on the source. At the same time, they''re supposed to be shipped very dry, with only a few percent water.

If they get damp, things get tricky. Enzymes kick in that break down the fat. Fat can also break down through oxygen. Both processes release heat, and according to the Transport Information Service, damp spots in a cargo can start heating up within hours. In big stacks, the heat can barely escape, so it keeps building. In the worst case, that''s enough for a fire.

## A case for the dangerous goods rules

Because this can happen, experts take the nut very seriously. **According to the Transport Information Service, pistachios may behave like substances in Class 4.2 of the IMDG Code.** That''s the international rulebook for dangerous goods at sea, and Class 4.2 covers substances liable to spontaneous combustion.

Packaging matters too. According to the Transport Information Service, high stack pressure and oil collecting in jute bags encourage self-heating. That''s why shipping is mostly about keeping the cargo dry and cool.

> According to HuffPost UK, other high-fat nuts and seeds can also self-heat under the wrong conditions, including walnuts, cashews and sunflower seeds.

## No danger on your couch

The bag of pistachios in your cupboard won''t suddenly burst into flames. This is about tons of goods, packed tightly and gone damp, where heat can build up over a long time.

A snack that officially counts as tricky cargo in the right amounts: not every nut can say that.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pistachio-combustion', 'en', 1, 'Pistachio spread', 'pistachio cream spread', 'Sweet, green and creamy, great on toast or as a croissant filling.'),
  ('pistachio-combustion', 'en', 2, 'Nut baking cookbook', 'baking with nuts cookbook', 'Cakes, cookies and tarts with pistachios, almonds and hazelnuts.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pistachio-combustion', 'en', 1, 'Transport Informations Service: Pistachio nuts', 'https://www.tis-gdv.de/tis_e/ware/nuesse/pistazie/pistazie-htm/'),
  ('pistachio-combustion', 'en', 2, 'HuffPost UK: Erm, What? Pistachios Can Spontaneously Combust', 'https://www.huffingtonpost.co.uk/entry/pistachio-spontaneous-combustion_uk_64d21eb9e4b0b9c9f3e34515');
