-- WTFact-Fakt „Der Eiffelturm ist im Sommer bis zu 15 Zentimeter höher als im Winter“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('eiffel-tower-grows', '2026-09-07', 'science', '🗼', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'eiffel-tower-grows', 'de', 'eiffelturm-waechst',
  'Der Eiffelturm ist im Sommer bis zu 15 Zentimeter höher als im Winter',
  'Paris'' berühmtestes Bauwerk wächst und schrumpft mit dem Wetter. Und bei Sonne lehnt es sich sogar zur Seite.',
  'Weil sich Metall bei Hitze ausdehnt, schwankt die Höhe des Eiffelturms zwischen heißesten und kältesten Tagen um bis zu 15 Zentimeter.',
  'Der Eiffelturm wirkt wie das Sinnbild von Stabilität: 330 Meter hoch, seit 1889 fest in Paris verankert. Aber ganz so starr ist er nicht. **Der Turm wächst im Sommer und schrumpft im Winter.**

## Metall mag keine Temperaturschwankungen

Fast alle Materialien dehnen sich aus, wenn sie warm werden, und ziehen sich zusammen, wenn sie abkühlen. Physiker nennen das **Wärmeausdehnung**. Bei Metall ist der Effekt besonders gut zu beobachten. Deshalb haben Brücken und Bahngleise kleine Lücken und Fugen, damit sie sich bei Hitze nicht verbiegen.

Beim Eiffelturm summiert sich der Effekt über die enorme Höhe. Laut der Purdue University und Lonely Planet **schwankt seine Höhe zwischen dem heißesten und dem kältesten Tag um bis zu 15 Zentimeter.** Im Sommer ist er also ein Stück größer, im Winter wieder kleiner. Mit bloßem Auge merkt das natürlich niemand.

## Der Turm dreht sich von der Sonne weg

Es geht aber nicht nur nach oben. Scheint die Sonne nur auf eine Seite des Turms, dehnt sich diese Seite stärker aus als die im Schatten. Die Folge: **Die Spitze neigt sich von der Sonne weg, laut Wikipedia um bis zu 18 Zentimeter.**

Auch Wind bringt den Turm in Bewegung. Laut Wikipedia schwankt er im Wind um bis zu 9 Zentimeter. Klingt gruselig, ist für ein so hohes Bauwerk aus Metall aber völlig normal.

## Ein Riese aus Einzelteilen

Gebaut wurde der Turm aus Puddeleisen, einer Art Schmiedeeisen. Laut Wikipedia besteht er aus **18.038 Einzelteilen, die mit rund 2,5 Millionen Nieten verbunden sind**. Das Eisengerüst wiegt etwa 7300 Tonnen.

> Damit der Turm nicht rostet, wird er laut Wikipedia alle 7 Jahre neu gestrichen. Dafür braucht es rund 60 Tonnen Farbe.

Der Eiffelturm steht also nie ganz still. Er atmet sozusagen mit den Jahreszeiten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('eiffel-tower-grows', 'de', 1, 'Eiffelturm als 3D-Metallbausatz', 'Eiffelturm 3D Metall Bausatz', 'Ein kniffliges Bastelprojekt aus Metallplatinen. Am Ende steht ein Mini-Eiffelturm auf deinem Schreibtisch.'),
  ('eiffel-tower-grows', 'de', 2, 'Eiffelturm-Figur als Deko', 'Eiffelturm Figur Deko Metall', 'Ein bisschen Paris fürs Regal, ganz ohne Anreise.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('eiffel-tower-grows', 'de', 1, 'Wikipedia: Eiffel Tower', 'https://en.wikipedia.org/wiki/Eiffel_Tower'),
  ('eiffel-tower-grows', 'de', 2, 'Purdue University: Eiffel Tower - Materials Engineering', 'https://engineering.purdue.edu/MSE/about-us/gotmaterials/Buildings/patel.html'),
  ('eiffel-tower-grows', 'de', 3, 'Lonely Planet: 10 Fascinating Facts to Mark Eiffel Tower Day', 'https://www.lonelyplanet.com/articles/facts-about-eiffel-tower-paris-secret-history');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'eiffel-tower-grows', 'en', 'eiffel-tower-grows',
  'The Eiffel Tower is up to 15 centimeters taller in summer than in winter',
  'Paris'' most famous landmark grows and shrinks with the weather. On sunny days, it even leans.',
  'Because metal expands in the heat, the Eiffel Tower''s height varies by up to 15 centimeters between the hottest and coldest days.',
  'The Eiffel Tower seems like the very picture of stability: 330 meters tall, anchored in Paris since 1889. But it isn''t quite as rigid as it looks. **The tower grows in summer and shrinks in winter.**

## Metal hates temperature swings

Almost every material expands when it heats up and contracts when it cools down. Physicists call this **thermal expansion**. With metal, the effect is especially easy to spot. That''s why bridges and railroad tracks have small gaps and joints, so they don''t buckle in the heat.

With the Eiffel Tower, the effect adds up over its huge height. According to Purdue University and Lonely Planet, **its height varies by up to 15 centimeters between the hottest and coldest days.** So in summer it''s a bit taller, and in winter it''s shorter again. Nobody can see that with the naked eye, of course.

## The tower leans away from the sun

It''s not just about going up, though. When the sun shines on only one side of the tower, that side expands more than the shady ones. The result: **the top tilts away from the sun, by up to 18 centimeters (7 inches), according to Wikipedia.**

Wind gets the tower moving too. According to Wikipedia, it sways by up to 9 centimeters in the wind. Sounds scary, but for a tall metal structure that''s totally normal.

## A giant made of parts

The tower was built from puddle iron, a type of wrought iron. According to Wikipedia, it''s made of **18,038 individual parts joined by about 2.5 million rivets**. The iron structure weighs around 7,300 tonnes.

> To keep it from rusting, the tower gets repainted every 7 years, according to Wikipedia. That takes about 60 tons of paint.

So the Eiffel Tower never really stands still. In a way, it breathes with the seasons.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('eiffel-tower-grows', 'en', 1, 'Eiffel Tower 3D metal model kit', 'Eiffel Tower 3D metal model kit', 'A fiddly build from metal sheets that ends with a mini Eiffel Tower on your desk.'),
  ('eiffel-tower-grows', 'en', 2, 'Eiffel Tower decor statue', 'Eiffel Tower statue decor metal', 'A little bit of Paris for your shelf, no plane ticket needed.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('eiffel-tower-grows', 'en', 1, 'Wikipedia: Eiffel Tower', 'https://en.wikipedia.org/wiki/Eiffel_Tower'),
  ('eiffel-tower-grows', 'en', 2, 'Purdue University: Eiffel Tower - Materials Engineering', 'https://engineering.purdue.edu/MSE/about-us/gotmaterials/Buildings/patel.html'),
  ('eiffel-tower-grows', 'en', 3, 'Lonely Planet: 10 Fascinating Facts to Mark Eiffel Tower Day', 'https://www.lonelyplanet.com/articles/facts-about-eiffel-tower-paris-secret-history');
