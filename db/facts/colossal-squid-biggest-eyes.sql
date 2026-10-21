-- WTFact-Fakt „Der Koloss-Kalmar hat Augen so groß wie ein Fußball“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('colossal-squid-biggest-eyes', '2026-10-21T21:00:00+02:00', 'ocean', '🦑', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'colossal-squid-biggest-eyes', 'de', 'koloss-kalmar-groesste-augen',
  'Der Koloss-Kalmar hat Augen so groß wie ein Fußball',
  'Kein Tier der Welt hat größere Augen. Und sie haben sogar eingebaute Scheinwerfer.',
  'Die Augen des Koloss-Kalmars messen rund 27 Zentimeter. Laut Guinness World Records sind es die größten Augen im ganzen Tierreich.',
  'Ein Auge so groß wie ein Fußball. Klingt nach einem Monster aus einem Film, gehört aber zu einem echten Tier, das in den eisigen Tiefen rund um die Antarktis lebt: dem Koloss-Kalmar.

## Rekordaugen aus der Tiefe

Laut dem neuseeländischen Nationalmuseum Te Papa, das ein Exemplar dieses Kalmars besitzt, hat ein Auge des Tiers einen Durchmesser von etwa 27 Zentimetern. Das ist ungefähr die Größe eines Fußballs. Die Linse allein misst 80 bis 90 Millimeter und ist damit so groß wie eine Orange.

Guinness World Records führt das Auge als größtes im ganzen Tierreich und gibt 27 bis 28 Zentimeter an. Gemessen wurde es an einem Kalmar, der 2007 im Rossmeer in der Antarktis gefangen wurde.

## Wofür so riesige Augen?

Der Koloss-Kalmar lebt in großer Tiefe, Te Papa nennt rund 1.000 Meter. Dort unten ist es fast völlig dunkel. Große Augen fangen mehr von dem bisschen Licht ein, das es noch gibt, etwa das Leuchten anderer Tiere.

Das Besondere: Der Kalmar hat direkt an seinen Augen eigene Leuchtorgane, sogenannte Photophoren. Laut Te Papa funktionieren sie wie Scheinwerfer. Wenn der Kalmar in eine Richtung schaut, kann er dorthin auch Licht werfen.

> Bonusfakt: Laut Te Papa schauen die Augen des Koloss-Kalmars nach vorn. So kann er räumlich sehen und Entfernungen zu seiner Beute abschätzen. Sein Verwandter, der Riesenkalmar, hat die Augen dagegen seitlich am Kopf.

Wie dunkel es dort unten ist, zeigt ein Vergleich von Te Papa: Menschliche Augen können Licht nur bis in etwa 500 bis 600 Meter Tiefe wahrnehmen. Der Kalmar lebt fast doppelt so tief.

Das Licht seiner Leuchtorgane entsteht übrigens durch eine chemische Reaktion mit Bakterien. Laut Te Papa ist es dauerhaft eingeschaltet. Der Kalmar fährt also sozusagen immer mit Abblendlicht durch die Tiefsee.

Wer also beim nächsten Fußballspiel den Ball fliegen sieht, kann sich vorstellen: Irgendwo am Grund der Antarktis schaut gerade ein Auge in genau dieser Größe in die Finsternis.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('colossal-squid-biggest-eyes', 'de', 1, 'Kalmar-Kuscheltier', 'Kalmar Kuscheltier Riesenkalmar', 'Ein weicher Tiefseebewohner mit deutlich kleineren Augen.'),
  ('colossal-squid-biggest-eyes', 'de', 2, 'Buch über Tiefseetiere', 'Buch Tiefsee Tiere', 'Zeigt die seltsamsten Lebewesen aus der Dunkelheit des Ozeans.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('colossal-squid-biggest-eyes', 'de', 1, 'Te Papa: The eyes of the colossal squid', 'https://www.tepapa.govt.nz/discover-collections/read-watch-play/science/anatomy-colossal-squid/eyes-colossal-squid'),
  ('colossal-squid-biggest-eyes', 'de', 2, 'Guinness World Records: Largest eye', 'https://www.guinnessworldrecords.com/world-records/70673-largest-eye');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'colossal-squid-biggest-eyes', 'en', 'colossal-squid-biggest-eyes',
  'The colossal squid has eyes the size of a football',
  'No animal in the world has bigger eyes. And they come with built-in headlights.',
  'The colossal squid’s eyes measure about 27 centimeters across. According to Guinness World Records, they’re the largest eyes in the entire animal kingdom.',
  'An eye the size of a football. Sounds like a movie monster, but it belongs to a real animal that lives in the icy depths around Antarctica: the colossal squid.

## Record eyes from the deep

According to Te Papa, New Zealand’s national museum, which holds a specimen of this squid, one of its eyes measures about 27 centimeters (almost 11 inches) across. That’s roughly the size of a football. The lens alone is 80 to 90 millimeters wide, as big as an orange.

Guinness World Records lists it as the largest eye in the animal kingdom and gives 27 to 28 centimeters. It was measured on a squid caught in the Ross Sea in Antarctica in 2007.

## Why such huge eyes?

The colossal squid lives very deep, Te Papa says about 1,000 meters down. It’s almost completely dark there. Big eyes catch more of what little light there is, such as the glow of other animals.

The twist: the squid has its own light organs, called photophores, right on its eyes. According to Te Papa, they work like headlights. When the squid looks in a direction, it can also shine light there.

> Bonus fact: According to Te Papa, the colossal squid’s eyes face forward. That gives it depth perception, so it can judge the distance to its prey. Its relative, the giant squid, has its eyes on the sides of its head instead.

Te Papa offers a comparison that shows how dark it is down there: human eyes can only detect light down to about 500 to 600 meters. The squid lives almost twice as deep.

The light from its light organs comes from a chemical reaction involving bacteria. According to Te Papa, it stays on all the time. So the squid basically cruises through the deep sea with its low beams permanently on.

So whenever a football flies across a pitch, picture this: somewhere near the bottom of Antarctica, an eye that exact size is staring into the darkness.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('colossal-squid-biggest-eyes', 'en', 1, 'Squid plush toy', 'giant squid plush toy', 'A soft deep-sea creature with much smaller eyes.'),
  ('colossal-squid-biggest-eyes', 'en', 2, 'Book about deep-sea creatures', 'book deep sea creatures', 'Shows the weirdest creatures from the ocean’s darkness.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('colossal-squid-biggest-eyes', 'en', 1, 'Te Papa: The eyes of the colossal squid', 'https://www.tepapa.govt.nz/discover-collections/read-watch-play/science/anatomy-colossal-squid/eyes-colossal-squid'),
  ('colossal-squid-biggest-eyes', 'en', 2, 'Guinness World Records: Largest eye', 'https://www.guinnessworldrecords.com/world-records/70673-largest-eye');
