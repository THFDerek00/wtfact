-- WTFact-Fakt „Im Death Valley wandern Steine über einen trockenen See, und erst 2013 erwischten Forschende sie dabei“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('death-valley-sailing-stones', '2026-10-17T12:00:00+02:00', 'nature', '🪨', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'death-valley-sailing-stones', 'de', 'wandernde-steine-im-death-valley',
  'Im Death Valley wandern Steine über einen trockenen See, und erst 2013 erwischten Forschende sie dabei',
  'Jahrzehntelang hinterließen Steine Spuren auf einem Wüstenseeboden, ohne dass jemand sie wandern sah. Dann verriet sie das Eis.',
  'Die wandernden Steine der Racetrack Playa im Death Valley werden von Eisplatten, die nur wenige Millimeter dick sind und vom Wind getrieben werden, über den Seeboden geschoben, wie Forschende im Winter 2013/2014 erstmals beobachteten.',
  'Im Death-Valley-Nationalpark gibt es einen ausgetrockneten Seeboden, auf dem Steine lange Spuren hinter sich herziehen, als hätte sie jemand durch den Schlamm geschleift. Geschoben hat sie niemand. Und jahrzehntelang hatte auch niemand gesehen, wie sich einer bewegt.

## Ein Rätsel seit den 1940ern

Der Ort heißt Racetrack Playa. Manche der Steine wiegen bis zu 320 Kilogramm, und ihre Spuren können Hunderte Meter lang sein. Erklärungsversuche gibt es seit den 1940er-Jahren; laut der Studie stammt der erste Bericht von 1948. Die Ideen reichten von Staubteufeln und starkem Wind bis zu Wasser und Eis.

Im Winter 2011 stellte ein Team um Richard Norris von der Scripps Institution of Oceanography eine Wetterstation auf und verteilte 15 Steine mit bewegungsgesteuerten GPS-Geräten auf der Playa. Laut dem National Park Service rechnete das Team damit, fünf bis zehn Jahre auf eine Bewegung warten zu müssen. Es dauerte zwei.

## Geschoben von Eis, dünn wie eine Fensterscheibe

Im Winter 2013/2014 bildete sich auf der Playa ein flacher Teich, höchstens 7 Zentimeter tief. Darauf bildete sich eine Eisschicht, nur wenige Millimeter dick. Wenn dieses Eis tagsüber aufbrach, schob leichter Wind riesige treibende Eisplatten über das Wasser, und diese Platten schoben die Steine über den weichen Schlamm.

Die Steine flogen nicht davon. Sie krochen mit ein paar Metern pro Minute, manche nur ein paar Sekunden lang, andere bis zu 16 Minuten. Bei einem Ereignis bewegten sich mindestens 60 Steine gleichzeitig. Ein GPS-Stein legte bei mindestens zwei getrennten Ereignissen insgesamt 224 Meter zurück. Kein Sturm, keine Magie, nur Eis, dünn wie eine Fensterscheibe, und eine Brise.

> Bonusfakt: Bewegung ist so selten, dass die Steine laut Mitautor Ralph Lorenz vielleicht nur etwa ein Millionstel der Zeit unterwegs sind.

Die Steine selbst sehen völlig gewöhnlich aus. Ihr Geheimnis ist ein flacher Teich, eine dünne Eisschicht und eine leichte Brise, die mitten in der Wüste zusammenkommen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('death-valley-sailing-stones', 'de', 1, 'Reiseführer Death Valley', 'Death Valley Nationalpark Reiseführer', 'Karten und Hintergründe zum Nationalpark und seinen Sehenswürdigkeiten.'),
  ('death-valley-sailing-stones', 'de', 2, 'Gesteins- und Mineraliensammlung', 'Mineralien Steine Sammlung Set', 'Eine Kiste mit beschrifteten Fundstücken für alle, die Steine gern genau anschauen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('death-valley-sailing-stones', 'de', 1, 'National Park Service: Mystery Solved Mysterious “sailing stones” of Death Valley seen in action for the first time', 'https://www.nps.gov/deva/learn/news/racetrack.htm'),
  ('death-valley-sailing-stones', 'de', 2, 'PLOS ONE via PMC: Sliding Rocks on Racetrack Playa, Death Valley National Park: First Observation of Rocks in Motion', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC4146553/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'death-valley-sailing-stones', 'en', 'death-valley-sailing-stones',
  'Death Valley''s rocks wander across a dry lake, and researchers first caught them moving in 2013',
  'For decades, rocks left trails across a desert lake bed without anyone seeing them move. Then the ice gave them away.',
  'The sailing stones of Racetrack Playa in Death Valley are pushed across the lake bed by wind-driven panels of ice only a few millimeters thick, as researchers first observed in winter 2013/2014.',
  'In Death Valley National Park, there''s a dried-up lake bed where rocks leave long tracks behind them, as if someone had dragged them through the mud. Nobody was pushing them. For decades, nobody had even seen one move.

## A mystery since the 1940s

The place is called Racetrack Playa. Some of its rocks weigh up to 320 kilograms, and their trails can stretch for hundreds of meters. People have been trying to explain them since the 1940s; according to the study, the first report dates to 1948. Ideas ranged from dust devils and strong winds to water and ice.

In winter 2011, a team led by Richard Norris of the Scripps Institution of Oceanography set up a weather station and placed 15 rocks fitted with motion-activated GPS units on the playa. The National Park Service says the team expected to wait five to ten years for any movement. It took two.

## Pushed by windowpane ice

In winter 2013/2014, a shallow pond formed on the playa, no more than 7 centimeters deep. A thin sheet of ice formed on top, only a few millimeters thick. When that ice broke up during the day, light winds pushed huge floating panels of ice across the water, and those panels shoved the rocks along the soft mud.

The rocks didn''t fly. They crept at a few meters per minute, and some moved for just a few seconds, others for up to 16 minutes. In one event, at least 60 rocks moved at once. One GPS rock covered 224 meters in total over at least two separate events. No hurricane, no magic, just ice as thin as a windowpane and a breeze.

> Bonus fact: Movement is so rare that, according to co-author Ralph Lorenz, the rocks may be moving only about one millionth of the time.

The rocks themselves look completely ordinary. Their secret is a shallow pond, a thin layer of ice and a light breeze, all lining up in the middle of a desert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('death-valley-sailing-stones', 'en', 1, 'Death Valley travel guide', 'Death Valley National Park guide book', 'Maps and background on the national park and its sights.'),
  ('death-valley-sailing-stones', 'en', 2, 'Rock and mineral collection kit', 'rock and mineral collection kit', 'A box of labeled specimens for anyone who likes looking closely at stones.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('death-valley-sailing-stones', 'en', 1, 'National Park Service: Mystery Solved Mysterious “sailing stones” of Death Valley seen in action for the first time', 'https://www.nps.gov/deva/learn/news/racetrack.htm'),
  ('death-valley-sailing-stones', 'en', 2, 'PLOS ONE via PMC: Sliding Rocks on Racetrack Playa, Death Valley National Park: First Observation of Rocks in Motion', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC4146553/');
