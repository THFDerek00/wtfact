-- WTFact-Fakt „Der kälteste je gemessene Ort der Erde erreichte minus 89,2 Grad“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('vostok-coldest-temperature', '2026-10-21T21:00:00+02:00', 'records', '🥶', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vostok-coldest-temperature', 'de', 'wostok-kaelteste-temperatur',
  'Der kälteste je gemessene Ort der Erde erreichte minus 89,2 Grad',
  'Gemessen mitten in der Antarktis, im Juli. Dort ist dann tiefster Winter.',
  'Am 21. Juli 1983 maß die russische Forschungsstation Wostok in der Antarktis minus 89,2 Grad Celsius. Laut Guinness World Records ist das die tiefste je direkt gemessene Temperatur auf der Erde.',
  'Ein kalter Wintertag in Deutschland hat vielleicht minus 10 Grad. Wer richtig Pech hat, erlebt minus 20. Doch es gibt einen Ort, an dem es noch viel, viel kälter wurde.

## Der Rekord von Wostok

Am 21. Juli 1983 zeigte das Thermometer an der russischen Forschungsstation Wostok in der Antarktis minus 89,2 Grad Celsius. Laut Guinness World Records ist das die tiefste Temperatur, die jemals auf der Erde mit einem Thermometer direkt gemessen wurde.

Juli ist auf der Südhalbkugel Winter. In der Antarktis herrscht dann monatelang Dunkelheit, denn die Sonne geht im tiefsten Winter gar nicht mehr auf. Ohne ihre Wärme kühlt das Eis immer weiter ab.

## Warum gerade dort?

Laut dem Farmers’ Almanac liegt die Station Wostok auf rund 3.500 Metern Höhe, mitten auf dem antarktischen Eisschild. Zum Südpol sind es etwa 1.300 Kilometer.

Diese Kombination macht den Ort so extrem: Er liegt sehr hoch, weit weg von jedem Meer, das Wärme liefern könnte, und mitten in einer riesigen Eisfläche. Je höher ein Ort liegt, desto dünner ist die Luft und desto kälter wird es in der Regel.

> Bonusfakt: Satelliten haben an einigen Stellen der Antarktis sogar Werte um minus 98 Grad erfasst. Laut Guinness zählen diese Messungen aber nicht als offizieller Rekord, weil sie nicht direkt mit einem Thermometer vor Ort gemacht wurden.

Bei minus 89,2 Grad wird alles anders. Atemluft gefriert fast sofort, ungeschützte Haut wäre in kürzester Zeit gefährlich unterkühlt. Die Menschen auf der Station arbeiten deshalb mit spezieller Kleidung und verbringen die meiste Zeit drinnen.

Zum Vergleich: In einer normalen Gefriertruhe herrschen etwa minus 18 Grad. Wostok war am Rekordtag also rund fünfmal so weit unter null.

Seit 1983 ist der Rekord nicht gebrochen worden. Und ehrlich gesagt muss das auch niemand unbedingt ausprobieren.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vostok-coldest-temperature', 'de', 1, 'Buch über die Antarktis', 'Buch Antarktis Expedition', 'Erzählt vom Leben und Forschen am kältesten Ort der Erde.'),
  ('vostok-coldest-temperature', 'de', 2, 'Thermometer für draußen mit Min-Max-Anzeige', 'Außenthermometer Min Max', 'Für eigene Rekorde, wenn auch hoffentlich nicht ganz so kalte.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vostok-coldest-temperature', 'de', 1, 'Guinness World Records: Lowest temperature recorded on Earth', 'https://www.guinnessworldrecords.com/world-records/66137-lowest-temperature-recorded-on-earth'),
  ('vostok-coldest-temperature', 'de', 2, 'Farmers’ Almanac: Today in 1983: The Coldest Temperature Ever Recorded on Earth', 'https://www.farmersalmanac.com/today-in-1983-the-coldest-temperature-ever-recorded-on-earth');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vostok-coldest-temperature', 'en', 'vostok-coldest-temperature',
  'The coldest place ever measured on Earth hit minus 89.2 degrees',
  'Measured in the middle of Antarctica, in July. That’s the dead of winter there.',
  'On July 21, 1983, the Russian research station Vostok in Antarctica recorded minus 89.2 degrees Celsius. According to Guinness World Records, it’s the lowest temperature ever directly measured on Earth.',
  'A cold winter day in many places might reach minus 10 degrees Celsius. With really bad luck, minus 20. But there’s a place that got much, much colder.

## The Vostok record

On July 21, 1983, the thermometer at the Russian research station Vostok in Antarctica showed minus 89.2 degrees Celsius (minus 128.6 degrees Fahrenheit). According to Guinness World Records, it’s the lowest temperature ever measured directly with a thermometer on Earth.

July is winter in the Southern Hemisphere. In Antarctica, that means months of darkness, because in the depths of winter the sun doesn’t rise at all. Without its warmth, the ice keeps cooling down.

## Why there?

According to the Farmers’ Almanac, Vostok station sits at an altitude of about 3,500 meters (11,500 feet), in the middle of the Antarctic ice sheet. The South Pole is about 1,300 kilometers away.

That combination makes the spot so extreme: it’s very high, far from any ocean that could bring warmth, and in the middle of a giant sheet of ice. The higher a place is, the thinner the air and usually the colder it gets.

> Bonus fact: Satellites have even picked up readings around minus 98 degrees in some parts of Antarctica. According to Guinness, those don’t count as the official record, because they weren’t taken directly with a thermometer on the ground.

At minus 89.2 degrees, everything changes. Your breath freezes almost instantly, and exposed skin would be in danger very quickly. That’s why people at the station work in special clothing and spend most of their time indoors.

For comparison: a regular freezer runs at about minus 18 degrees. On record day, Vostok was about five times as far below zero.

The record hasn’t been broken since 1983. And honestly, nobody needs to try.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vostok-coldest-temperature', 'en', 1, 'Book about Antarctica', 'book Antarctica expedition', 'Tells of life and research at the coldest place on Earth.'),
  ('vostok-coldest-temperature', 'en', 2, 'Outdoor thermometer with min-max display', 'outdoor thermometer min max', 'For your own records, hopefully not quite as cold.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vostok-coldest-temperature', 'en', 1, 'Guinness World Records: Lowest temperature recorded on Earth', 'https://www.guinnessworldrecords.com/world-records/66137-lowest-temperature-recorded-on-earth'),
  ('vostok-coldest-temperature', 'en', 2, 'Farmers’ Almanac: Today in 1983: The Coldest Temperature Ever Recorded on Earth', 'https://www.farmersalmanac.com/today-in-1983-the-coldest-temperature-ever-recorded-on-earth');
