-- WTFact-Fakt „Für La Tomatina wurde 1957 eine Tomate zu Grabe getragen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tomatina-tomato-funeral', '2026-08-26T00:00:00+02:00', 'holiday', '🍅', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tomatina-tomato-funeral', 'de', 'tomatina-beerdigung-einer-tomate-1957',
  'Für La Tomatina wurde 1957 eine Tomate zu Grabe getragen',
  'Die größte Tomatenschlacht der Welt war jahrelang verboten. Gerettet hat sie ein Trauerzug mit Sarg und Blaskapelle.',
  'Als die Tomatenschlacht von Buñol in den 1950er-Jahren verboten war, protestierten die Leute 1957 mit einem Trauerzug, bei dem sie eine riesige Tomate in einem Sarg durch den Ort trugen.',
  'Heute um 11 Uhr knallt in Buñol bei Valencia ein Schuss, und dann fliegen Tomaten. Jede Menge Tomaten: Laut der spanischen Zeitung Público waren es 2015 rund 150 Tonnen. **Dabei war La Tomatina jahrelang verboten, bis die Leute einer Tomate eine Beerdigung ausrichteten.**

## Alles begann mit einer Rangelei

Die bekannteste Version der Entstehungsgeschichte geht so: Am letzten Mittwoch im August 1945 zog in Buñol der traditionelle Umzug der „Gigantes y Cabezudos“ durch den Ort, also Riesenfiguren und Großköpfe. Ein paar junge Leute drängelten sich so heftig dazu, dass ein Teilnehmer stürzte. Es gab eine Rangelei, und zufällig stand dort ein Gemüsestand. Die Tomaten wurden zu Wurfgeschossen.

Wie genau es ablief, ist nicht sicher belegt, auch das Magazin Xataka nennt 1945 nur das Jahr, in dem „angeblich“ alles anfing. Fest steht: Im Jahr darauf kamen die jungen Leute wieder, diesmal mit eigenen Tomaten. Die Polizei musste auch diese Schlacht beenden.

## Verboten, und trotzdem jedes Jahr

In den folgenden Jahren verboten die Behörden die Tomatenschlacht mehrmals. Gehalten hat sich daran kaum jemand. Laut dem Food-Magazin lovefood fand sie trotzdem statt, obwohl einige Teilnehmende festgenommen wurden.

Dann kam 1957 der schönste Protest der Festgeschichte: das „Entierro del Tomate“, die Beerdigung der Tomate. Die Leute aus Buñol trugen einen Sarg mit einer riesigen Tomate durch die Straßen, begleitet von einer Kapelle, die Trauermärsche spielte.

Es wirkte. Kurz darauf wurde die Tomatina erlaubt. Die Jahreszahl schwankt je nach Quelle: Xataka nennt 1957, Público 1959 als das Jahr, in dem das Fest offiziell wurde.

## Vom Verbot zur Touristenattraktion

Heute ist La Tomatina laut dem spanischen Tourismusportal spain.info ein „Fest von internationalem touristischem Interesse“. Den Titel bekam sie laut Público im Jahr 2002. Wer mitmachen will, braucht inzwischen ein Ticket. Gekämpft wird, bis ein zweiter Schuss das Ende anzeigt, danach spritzen Wasserschläuche alle wieder sauber.

> Vor der Schlacht gibt es noch einen Wettbewerb: Ein riesiger, mit Seife eingeschmierter Pfahl wird aufgestellt, ganz oben hängt ein Schinken. Wer hochklettert, bekommt ihn.

Aus einer Rauferei am Gemüsestand wurde also ein Fest mit Ticketpflicht. Die Tomate hat ihre Beerdigung gut überstanden.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tomatina-tomato-funeral', 'de', 1, 'Paella-Pfanne aus Carbonstahl, 46 cm', 'Paella Pfanne Carbonstahl 46 cm', 'Eine echte Paellera aus Valencias Heimat, groß genug für eine ganze Runde Gäste.'),
  ('tomatina-tomato-funeral', 'de', 2, 'Hochleistungsmixer für Gazpacho und Salmorejo', 'Hochleistungsmixer Standmixer', 'Ein starker Standmixer macht aus reifen Tomaten in Sekunden eine samtige kalte Suppe.'),
  ('tomatina-tomato-funeral', 'de', 3, 'Spanisches Kochbuch mit Tapas und Paella', 'spanisches Kochbuch Tapas Paella', 'Sammelt die Klassiker der spanischen Küche, von Tapas bis zur Paella.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tomatina-tomato-funeral', 'de', 1, 'Público: La Tomatina: todo comenzó con una pelea cerca de un puesto de verduras', 'https://www.publico.es/sociedad/tomatina-comenzo-pelea-cerca-puesto-verduras.html'),
  ('tomatina-tomato-funeral', 'de', 2, 'Xataka: 13 cifras para comprender la Tomatina', 'https://www.xataka.com/magnet/13-cifras-para-comprender-la-tomatina'),
  ('tomatina-tomato-funeral', 'de', 3, 'lovefood: The strangest food festival: La Tomatina', 'https://www.lovefood.com/news/57436/the-strangest-food-festival-la-tomatina'),
  ('tomatina-tomato-funeral', 'de', 4, 'spain.info: La Tomatina. Fiestas en Buñol', 'https://www.spain.info/es/agenda/la-tomatina/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tomatina-tomato-funeral', 'en', 'tomatina-tomato-funeral-1957',
  'In 1957, La Tomatina fans held a funeral for a tomato',
  'The world''s biggest tomato fight was banned for years. It was saved by a funeral procession with a coffin and a band.',
  'When the tomato fight in Buñol was banned in the 1950s, locals protested in 1957 with a funeral procession, carrying a giant tomato through town in a coffin.',
  'Today at 11 a.m., a shot rings out in Buñol near Valencia, and then the tomatoes start flying. Lots of tomatoes: according to the Spanish newspaper Público, about 150 tonnes in 2015. **Yet La Tomatina was banned for years, until people threw a tomato a funeral.**

## It started with a scuffle

The best-known version of the origin story goes like this: on the last Wednesday of August 1945, Buñol''s traditional parade of "Gigantes y Cabezudos", giant figures and big-headed costumes, was moving through town. A few young people pushed their way in so hard that one participant fell. A scuffle broke out, and there happened to be a vegetable stall nearby. The tomatoes became ammunition.

Exactly how it happened isn''t firmly documented. Even the magazine Xataka calls 1945 the year it "supposedly" all began. What is clear: the next year, the young people came back, this time bringing their own tomatoes. The police had to break up that fight too.

## Banned, and still every year

In the years that followed, the authorities banned the tomato fight several times. Hardly anyone cared. According to the food magazine lovefood, it still took place, even though some participants were arrested.

Then, in 1957, came the best protest in the festival''s history: the "Entierro del Tomate", the burial of the tomato. The people of Buñol carried a coffin with a giant tomato inside through the streets, accompanied by a band playing funeral marches.

It worked. Soon after, La Tomatina was allowed. The year varies by source: Xataka says 1957, Público says it became an official festival in 1959.

## From banned to tourist magnet

Today, according to Spain''s official tourism portal spain.info, La Tomatina is a "Festival of International Tourist Interest". It received the title in 2002, according to Público. If you want to join in, you now need a ticket. The fight goes on until a second shot signals the end, and then hoses wash everyone clean.

> Before the battle there''s another contest: a huge pole greased with soap is put up, with a ham hanging at the very top. Whoever climbs up gets to keep it.

So a scuffle at a vegetable stall turned into a festival you need a ticket for. The tomato survived its funeral just fine.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tomatina-tomato-funeral', 'en', 1, 'Carbon steel paella pan, 46 cm', 'carbon steel paella pan 46 cm', 'A proper paellera from Valencia''s home turf, big enough for a whole group of guests.'),
  ('tomatina-tomato-funeral', 'en', 2, 'High-performance blender for gazpacho and salmorejo', 'high performance countertop blender', 'A powerful blender turns ripe tomatoes into a silky cold soup in seconds.'),
  ('tomatina-tomato-funeral', 'en', 3, 'Spanish cookbook with tapas and paella', 'Spanish cookbook tapas paella', 'Collects the classics of Spanish cooking, from tapas to paella.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tomatina-tomato-funeral', 'en', 1, 'Público: La Tomatina: todo comenzó con una pelea cerca de un puesto de verduras', 'https://www.publico.es/sociedad/tomatina-comenzo-pelea-cerca-puesto-verduras.html'),
  ('tomatina-tomato-funeral', 'en', 2, 'Xataka: 13 cifras para comprender la Tomatina', 'https://www.xataka.com/magnet/13-cifras-para-comprender-la-tomatina'),
  ('tomatina-tomato-funeral', 'en', 3, 'lovefood: The strangest food festival: La Tomatina', 'https://www.lovefood.com/news/57436/the-strangest-food-festival-la-tomatina'),
  ('tomatina-tomato-funeral', 'en', 4, 'spain.info: La Tomatina. Fiestas en Buñol', 'https://www.spain.info/es/agenda/la-tomatina/');
