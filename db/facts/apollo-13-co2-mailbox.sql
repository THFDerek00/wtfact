-- WTFact-Fakt „Eckig in rund: Wie Gewebeband die Crew von Apollo 13 rettete“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('apollo-13-co2-mailbox', '2026-10-08T03:58:31+02:00', 'survival', '🚀', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'apollo-13-co2-mailbox', 'de', 'apollo-13-eckig-rund-klebeband',
  'Eckig in rund: Wie Gewebeband die Crew von Apollo 13 rettete',
  'Die CO2-Filter an Bord passten nicht in die Mondfähre. Also bastelten Ingenieure eine Lösung aus Pappe, Plastiktüten und Klebeband.',
  'Weil die eckigen CO2-Filter der Kommandokapsel nicht in die runden Öffnungen der Mondfähre passten, baute die Crew von Apollo 13 nach Anleitung vom Boden einen Adapter aus Pappe, Plastikbeuteln und Gewebeband.',
  'Am Abend des 13. April 1970 ist Apollo 13 rund 200.000 Meilen von der Erde entfernt, gut 320.000 Kilometer. Dann knallt es: Im Servicemodul explodiert ein Sauerstofftank. Jack Swigert funkt den berühmten Satz: „Houston, we''ve had a problem here.“

## Die Mondfähre wird zum Rettungsboot

An Bord sind James Lovell, Fred Haise und Jack Swigert. Jetzt geht es darum, die Crew sicher zurück zur Erde zu bringen. Die drei ziehen in die Mondlandefähre um, die NASA nennt sie ihr Rettungsboot. Das Problem: Die Fähre war dafür gebaut, **2 Männer 2 Tage lang** zu versorgen. Jetzt sollte sie 3 Männer etwa 4 Tage durchbringen.

Nach anderthalb Tagen in der Fähre leuchtet eine Warnlampe auf. Das Kohlendioxid in der Kabinenluft hat einen gefährlichen Wert erreicht. Die Fähre hatte nur einen begrenzten Vorrat an Lithiumhydroxid, das CO2 aus der Luft filtert. In der Kommandokapsel lagen zwar noch Filterpatronen, aber die waren **eckig**. Die Öffnungen in der Fähre: **rund**.

## Bastelstunde mit 60 Ingenieuren

Am Boden übernahm Ingenieur Ed Smylie mit etwa 60 weiteren Ingenieuren. Seine Zusammenfassung: „Du kannst keinen eckigen Stift in ein rundes Loch stecken, und genau das hatten wir.“ Weniger als 2 Tage hatte das Team, und benutzen durfte es nur, was ohnehin an Bord war.

Die Lösung: ein Adapter aus 2 Filterpatronen der Kommandokapsel, Plastikbeuteln für Kleidung, Pappe vom Deckel des Flugplans, einem Raumanzugschlauch und einer Rolle grauem Gewebeband. Getestet wurde das Ganze vorher am Boden im Manned Spacecraft Center. Dann gab die Bodenkontrolle der Crew Schritt für Schritt durch, wo sie die Teile findet und wie sie alles zusammenbaut. Die NASA nennt das Ergebnis „Mailbox“, also Briefkasten.

Warum ausgerechnet Klebeband? Smylie erklärte das so: Wenn du aus dem Süden der USA kommst und sich etwas bewegt, das sich nicht bewegen soll, nimmst du Gewebeband.

## Kalt, aber zu Hause

Gemütlich wurde es trotzdem nicht. Die Temperatur fiel auf 38 Grad Fahrenheit, gut 3 Grad Celsius, und an allen Wänden bildete sich Kondenswasser. Am 17. April 1970 landeten die drei sanft im Pazifik nahe Samoa und wurden von der USS Iwo Jima aufgenommen.

> Lovell nahm auf der Mission 14 Pfund ab. Zusammen verlor die Crew 31,5 Pfund, fast 50 Prozent mehr als andere Crews.

Ed Smylie starb 2025 mit 95 Jahren. Drei Astronauten, eine Rolle graues Klebeband und am Ende passte Eckig doch an Rund.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('apollo-13-co2-mailbox', 'de', 1, 'Sachbuch über die Apollo-13-Mission', 'Apollo 13 Buch', 'Erzählt die ganze Mission von der Explosion bis zur Wasserung im Detail nach.'),
  ('apollo-13-co2-mailbox', 'de', 2, 'Modellbausatz Apollo-Mondlandefähre', 'Apollo Mondlandefähre Modellbausatz', 'Ein Bausatz der Mondfähre, der fertig zusammengebaut als Deko ins Regal passt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('apollo-13-co2-mailbox', 'de', 1, 'NASA: Apollo 13: Mission Details', 'https://www.nasa.gov/missions/apollo/apollo-13-mission-details/'),
  ('apollo-13-co2-mailbox', 'de', 2, 'NASA: Putting a Square Peg in a Round Hole', 'https://www.nasa.gov/image-article/putting-square-peg-round-hole'),
  ('apollo-13-co2-mailbox', 'de', 3, 'The Boston Globe: Ed Smylie, who saved Apollo 13 crew with duct tape, dies at 95', 'https://www.bostonglobe.com/2025/05/19/nation/ed-smylie-apollo-13-duct-tape-dies/'),
  ('apollo-13-co2-mailbox', 'de', 4, 'Space Center Houston: Apollo 13', 'https://spacecenter.org/apollo-13-virtual-exhibit/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'apollo-13-co2-mailbox', 'en', 'apollo-13-square-peg-duct-tape',
  'Square peg, round hole: how duct tape saved the Apollo 13 crew',
  'The CO2 filters on board didn''t fit the lunar module. So engineers built a fix out of cardboard, plastic bags and tape.',
  'Because the command module''s square CO2 canisters didn''t fit the lunar module''s round openings, the Apollo 13 crew built an adapter out of cardboard, plastic bags and duct tape, following instructions from the ground.',
  'On the evening of April 13, 1970, Apollo 13 is about 200,000 miles from Earth. Then comes a bang: an oxygen tank explodes in the service module. Jack Swigert radios the famous line: "Houston, we''ve had a problem here."

## The moon lander becomes a lifeboat

On board are James Lovell, Fred Haise and Jack Swigert. Now the goal is to get the crew safely back to Earth. The three move into the lunar module, which NASA calls their lifeboat. The catch: the lander was designed to support **2 men for 2 days**. Now it had to keep 3 men going for about 4 days.

After a day and a half in the lander, a warning light comes on. Carbon dioxide in the cabin air has built up to a dangerous level. The lander only had a limited supply of lithium hydroxide, the stuff that scrubs CO2 out of the air. The command module still had canisters, but they were **square**. The openings in the lander: **round**.

## Craft hour with 60 engineers

On the ground, engineer Ed Smylie took over with about 60 other engineers. His summary: "You can''t put a square peg in a round hole, and that''s what we had." The team had less than 2 days, and it could only use materials already on board.

The fix: an adapter made of 2 command module canisters, plastic garment bags, cardboard from the cover of the flight plan, a spacesuit hose and a roll of gray duct tape. It was designed and tested on the ground at the Manned Spacecraft Center first. Then mission control talked the crew through it step by step: where to find each part and how to build the thing. NASA calls the result the "mailbox."

Why duct tape of all things? Smylie put it like this: "If you''re a Southern boy, if it moves and it''s not supposed to, you use duct tape."

## Cold, but home

It still wasn''t cozy. The temperature dropped to 38 degrees Fahrenheit, and condensation formed on all the walls. On April 17, 1970, the three splashed down gently in the Pacific near Samoa and were picked up by the USS Iwo Jima.

> Lovell lost 14 pounds on the mission. The crew lost a combined 31.5 pounds, nearly 50 percent more than other crews.

Ed Smylie died in 2025 at 95. Three astronauts, one roll of gray tape, and in the end, square finally connected to round.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('apollo-13-co2-mailbox', 'en', 1, 'Lost Moon / Apollo 13 by Jim Lovell and Jeffrey Kluger', 'Apollo 13 Lost Moon Jim Lovell Jeffrey Kluger book', 'The mission told by its commander, from the explosion to splashdown.'),
  ('apollo-13-co2-mailbox', 'en', 2, 'Apollo lunar module model kit', 'Apollo lunar module model kit', 'A build-it-yourself lunar lander that looks great on a shelf once it''s done.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('apollo-13-co2-mailbox', 'en', 1, 'NASA: Apollo 13: Mission Details', 'https://www.nasa.gov/missions/apollo/apollo-13-mission-details/'),
  ('apollo-13-co2-mailbox', 'en', 2, 'NASA: Putting a Square Peg in a Round Hole', 'https://www.nasa.gov/image-article/putting-square-peg-round-hole'),
  ('apollo-13-co2-mailbox', 'en', 3, 'The Boston Globe: Ed Smylie, who saved Apollo 13 crew with duct tape, dies at 95', 'https://www.bostonglobe.com/2025/05/19/nation/ed-smylie-apollo-13-duct-tape-dies/'),
  ('apollo-13-co2-mailbox', 'en', 4, 'Space Center Houston: Apollo 13', 'https://spacecenter.org/apollo-13-virtual-exhibit/');
