-- WTFact-Fakt „Der schnellste je gemessene Wind erreichte 408 km/h“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('fastest-wind-408-kmh', '2026-10-23T19:00:00+02:00', 'records', '🌀', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'fastest-wind-408-kmh', 'de', 'schnellster-wind-408-kmh',
  'Der schnellste je gemessene Wind erreichte 408 km/h',
  'Schneller als ein Formel-1-Wagen auf der Geraden. Gemessen auf einer kleinen Insel vor Australien.',
  'Am 10. April 1996 maß eine Wetterstation auf Barrow Island vor Australien während des Zyklons Olivia eine Böe von 408 km/h. Laut Guinness World Records ist das der Rekord.',
  'Ein heftiger Herbststurm in Deutschland bringt vielleicht Böen von 120 km/h. Dann fallen Bäume um und Dachziegel fliegen. Jetzt stell dir einen Wind vor, der mehr als dreimal so schnell ist.

## Der Rekordwind

Am 10. April 1996 zog der tropische Wirbelsturm Olivia über die Nordwestküste Australiens. Auf der kleinen Insel Barrow Island stand eine Messstation mit einem Anemometer, einem Gerät, das Windgeschwindigkeiten misst.

Laut Guinness World Records zeichnete es dabei eine Böe von 408 Kilometern pro Stunde auf. Das ist laut Guinness die höchste Windgeschwindigkeit, die je auf der Erde gemessen wurde und nicht zu einem Tornado gehörte.

## Erst Jahre später bestätigt

Bekannt wurde der Rekord lange nicht. Laut Guinness prüfte ein Gremium der Weltorganisation für Meteorologie die Messung erst später und bestätigte sie 2010 offiziell. Das Gremium stellte fest, dass das Anemometer einwandfrei funktionierte und die Böe statistisch plausibel war.

Die australische Wetterbehörde BoM führt Olivia in ihrem Archiv als schweren tropischen Wirbelsturm.

> Bonusfakt: 408 km/h sind schneller als die Spitzengeschwindigkeit vieler Sportwagen. Ein Mensch hätte bei so einem Wind keine Chance, sich auf den Beinen zu halten.

Warum wurde die Böe gerade auf Barrow Island gemessen? Wirbelstürme sind riesig, aber Messstationen gibt es nur an wenigen Orten. Dass Olivia ausgerechnet über eine Station zog, war ein Glücksfall für die Wissenschaft. In vielen anderen Stürmen könnte es ähnlich starke Böen gegeben haben, die einfach niemand gemessen hat.

Barrow Island ist übrigens eine Insel, auf der Erdöl und Gas gefördert werden. Deshalb stand dort überhaupt eine Messstation.

Zum Glück erleben die meisten Menschen solche Winde nie. Ein ordentlicher Herbststurm reicht schon, um Regenschirme umzuklappen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('fastest-wind-408-kmh', 'de', 1, 'Wetterstation für zu Hause', 'Wetterstation Funk Windmesser', 'Misst Wind, Temperatur und Luftdruck direkt vor der Haustür.'),
  ('fastest-wind-408-kmh', 'de', 2, 'Handanemometer', 'Anemometer Windmesser Hand', 'Damit lässt sich die Windgeschwindigkeit selbst messen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('fastest-wind-408-kmh', 'de', 1, 'Guinness World Records: Fastest wind speed (recorded by an anemometer)', 'https://www.guinnessworldrecords.com/world-records/93573-fastest-wind-speed-recorded-by-an-anemometer'),
  ('fastest-wind-408-kmh', 'de', 2, 'Bureau of Meteorology: Severe Tropical Cyclone Olivia', 'https://www.bom.gov.au/cyclone/history/olivia.shtml');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'fastest-wind-408-kmh', 'en', 'fastest-wind-408-kmh',
  'The fastest wind ever measured reached 408 km/h',
  'Faster than a Formula 1 car on a straight. Measured on a small island off Australia.',
  'On April 10, 1996, a weather station on Barrow Island off Australia measured a gust of 408 km/h (253 mph) during Cyclone Olivia. According to Guinness World Records, that’s the record.',
  'A strong autumn storm might bring gusts of 120 km/h. Trees fall and roof tiles fly. Now imagine a wind more than three times as fast.

## The record wind

On April 10, 1996, Tropical Cyclone Olivia swept across Australia’s northwest coast. On small Barrow Island stood a weather station with an anemometer, a device that measures wind speed.

According to Guinness World Records, it recorded a gust of 408 kilometers per hour (253 mph). According to Guinness, it’s the fastest wind speed ever recorded on Earth that wasn’t associated with a tornado.

## Confirmed years later

The record went unnoticed for a long time. According to Guinness, a World Meteorological Organization panel reviewed the measurement later and officially ratified it in 2010. The panel found the anemometer mechanically sound and the gust within statistical probability.

Australia’s Bureau of Meteorology lists Olivia in its archive as a severe tropical cyclone.

> Bonus fact: 408 km/h is faster than the top speed of many sports cars. No person could stay on their feet in a wind like that.

Why was the gust measured on Barrow Island of all places? Cyclones are huge, but weather stations are few and far between. Olivia passing right over a station was a stroke of luck for science. Many other storms may have had gusts just as strong that nobody measured.

Barrow Island, by the way, is an island where oil and gas are produced. That’s why there was a weather station there at all.

Thankfully, most people never experience winds like that. A decent autumn storm is enough to flip umbrellas inside out.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('fastest-wind-408-kmh', 'en', 1, 'Home weather station', 'home weather station wind', 'Measures wind, temperature and air pressure right outside your door.'),
  ('fastest-wind-408-kmh', 'en', 2, 'Handheld anemometer', 'handheld anemometer', 'Lets you measure wind speed yourself.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('fastest-wind-408-kmh', 'en', 1, 'Guinness World Records: Fastest wind speed (recorded by an anemometer)', 'https://www.guinnessworldrecords.com/world-records/93573-fastest-wind-speed-recorded-by-an-anemometer'),
  ('fastest-wind-408-kmh', 'en', 2, 'Bureau of Meteorology: Severe Tropical Cyclone Olivia', 'https://www.bom.gov.au/cyclone/history/olivia.shtml');
