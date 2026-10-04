-- WTFact-Fakt „33 Bergleute steckten 69 Tage unter der Erde fest, und alle kamen wieder hoch“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('chile-miners-33', '2026-10-04T04:00:53+02:00', 'survival', '⛏️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'chile-miners-33', 'de', 'chile-bergleute-69-tage-gerettet',
  '33 Bergleute steckten 69 Tage unter der Erde fest, und alle kamen wieder hoch',
  'Ein Zettel an einem Bohrer bewies, dass sie lebten, und eine Kapsel mit NASA-Hilfe holte sie einzeln heraus.',
  'Nach 69 Tagen in rund 700 Metern Tiefe wurden 2010 alle 33 eingeschlossenen Bergleute der chilenischen Mine San José gerettet.',
  'Am 5. August 2010 stürzte in der Mine San José in der chilenischen Atacamawüste die Hauptrampe ein. Darunter: 33 Bergleute, rund 700 Meter tief im Berg. Von oben wusste niemand, ob überhaupt noch jemand lebte.

## Ein Zettel am Bohrkopf

Die Notvorräte im Schutzraum waren nur für zwei bis drei Tage gedacht. Oben bohrten Rettungsteams trotzdem eine Sonde nach der anderen in die Tiefe. Am 22. August, 17 Tage nach dem Einsturz, kam ein Bohrer wieder hoch, an dem ein Zettel klebte: **„Estamos bien en el refugio, los 33“**, also „Uns geht es gut im Schutzraum, uns 33“.

Eine Kamera, die durch das Bohrloch hinuntergelassen wurde, bestätigte es: Alle lebten. Ab da kam Nachschub über schmale Röhren, die sogenannten Palomas, „Tauben“. Eine Lieferung brauchte etwa eine Stunde bis nach unten.

## Tipps aus der Raumfahrt

Chile holte sich Rat bei der NASA, wie man Menschen monatelang auf engem Raum körperlich und psychisch fit hält. Ein vierköpfiges NASA-Team aus Ärzten, einem Psychologen und einem Ingenieur verbrachte drei Tage vor Ort. Zu ihren Vorschlägen gehörten zusätzliches Vitamin D und ein fester Tagesablauf mit Bewegung.

Auch bei der Rettungskapsel redete die NASA mit. Ihr Engineering and Safety Center lieferte **rund 75 Empfehlungen** für das Design. Heraus kam die Fénix: etwa 4 Meter lang und nur rund 54 Zentimeter breit. Gerade genug Platz für einen Menschen in einem Schacht durch den Fels.

## 33 von 33

Am Abend des 12. Oktober startete die Bergung. Florencio Ávalos fuhr als Erster nach oben, Schichtleiter Luis Urzúa als Letzter. Am 13. Oktober, **nach 69 Tagen unter Tage, waren alle 33 Männer sicher an der Oberfläche**.

> Allein im Livestream sollen geschätzt 5,3 Millionen Menschen die Rettung verfolgt haben.

Ein Zettel, eine Kapsel, 33 Namen auf der Liste der Geretteten. Kein einziger fehlte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('chile-miners-33', 'de', 1, 'Sachbuch über die Rettung der 33 Bergleute in Chile', 'Buch 33 Bergleute Chile Rettung San José', 'Erzählt die 69 Tage unter Tage und die Rettung ausführlich und mit vielen Details aus der Mine.'),
  ('chile-miners-33', 'de', 2, 'Film „The 33“ auf DVD oder Blu-ray', 'The 33 Film Antonio Banderas DVD', 'Die Spielfilmfassung der Rettung, mit Antonio Banderas als einem der Bergleute.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('chile-miners-33', 'de', 1, 'Britannica: Chile mine rescue of 2010', 'https://www.britannica.com/event/Chile-mine-rescue-of-2010'),
  ('chile-miners-33', 'de', 2, 'PBS News: Timeline: Trapped Chilean Miners May Be Near Rescue', 'https://www.pbs.org/newshour/world/miners-rescue'),
  ('chile-miners-33', 'de', 3, 'NASA: NASA Team Honored For Assisting Chilean Miner Rescue', 'https://www.nasa.gov/news-release/nasa-team-honored-for-assisting-chilean-miner-rescue/'),
  ('chile-miners-33', 'de', 4, 'Universe Today: How NASA Helped Rescue the Chilean Miners', 'https://www.universetoday.com/articles/how-nasa-helped-rescue-the-chilean-miners'),
  ('chile-miners-33', 'de', 5, 'Wikipedia: 2010 Copiapó mining accident', 'https://en.wikipedia.org/wiki/2010_Copiap%C3%B3_mining_accident');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'chile-miners-33', 'en', 'chile-miners-69-days-rescued',
  '33 miners were trapped underground for 69 days, and every one of them came back up',
  'A note on a drill bit proved they were alive, and a capsule designed with NASA''s input brought them out one by one.',
  'In 2010, all 33 miners trapped about 700 meters down in Chile''s San José mine were rescued after 69 days underground.',
  'On August 5, 2010, the main ramp of the San José mine in Chile''s Atacama Desert caved in. Below it: 33 miners, about 700 meters (2,300 feet) inside the mountain. Up top, nobody knew whether anyone was still alive.

## A note on a drill bit

The emergency supplies in the shelter were only meant to last two or three days. Rescue teams kept drilling probe after probe into the rock anyway. On August 22, 17 days after the collapse, one drill came back up with a note taped to it: **"Estamos bien en el refugio, los 33"**, meaning "We are fine in the shelter, the 33 of us."

A camera lowered through the borehole confirmed it: everyone was alive. From then on, supplies went down narrow tubes nicknamed palomas, "doves." Each delivery took about an hour to reach the men.

## Advice from space

Chile asked NASA how to keep people physically and mentally fit in a cramped space for months. A four-person NASA team of doctors, a psychologist and an engineer spent three days at the site. Their suggestions included extra vitamin D and an organized daily routine with exercise.

NASA also weighed in on the rescue capsule. Its Engineering and Safety Center sent **about 75 recommendations** for the design. The result was the Fénix: about 4 meters long and only around 54 centimeters wide. Just enough room for one person in a shaft through solid rock.

## 33 out of 33

The extraction began on the evening of October 12. Florencio Ávalos rode up first, shift supervisor Luis Urzúa last. On October 13, **after 69 days underground, all 33 men were safely at the surface**.

> An estimated 5.3 million people reportedly watched the rescue on the live video stream alone.

One note, one capsule, 33 names on the list of the rescued. Not a single one missing.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('chile-miners-33', 'en', 1, 'Nonfiction book about the rescue of the 33 Chilean miners', 'book Chilean miners 33 rescue nonfiction', 'Tells the 69 days underground and the rescue in detail, with stories from inside the mine.'),
  ('chile-miners-33', 'en', 2, 'The 33 movie on DVD or Blu-ray', 'The 33 movie Antonio Banderas DVD', 'The feature-film version of the rescue, with Antonio Banderas as one of the miners.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('chile-miners-33', 'en', 1, 'Britannica: Chile mine rescue of 2010', 'https://www.britannica.com/event/Chile-mine-rescue-of-2010'),
  ('chile-miners-33', 'en', 2, 'PBS News: Timeline: Trapped Chilean Miners May Be Near Rescue', 'https://www.pbs.org/newshour/world/miners-rescue'),
  ('chile-miners-33', 'en', 3, 'NASA: NASA Team Honored For Assisting Chilean Miner Rescue', 'https://www.nasa.gov/news-release/nasa-team-honored-for-assisting-chilean-miner-rescue/'),
  ('chile-miners-33', 'en', 4, 'Universe Today: How NASA Helped Rescue the Chilean Miners', 'https://www.universetoday.com/articles/how-nasa-helped-rescue-the-chilean-miners'),
  ('chile-miners-33', 'en', 5, 'Wikipedia: 2010 Copiapó mining accident', 'https://en.wikipedia.org/wiki/2010_Copiap%C3%B3_mining_accident');
