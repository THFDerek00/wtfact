-- WTFact-Fakt „Atari hat sein E.T.-Debakel wirklich auf einer Müllhalde in der Wüste entsorgt, und 2014 wurde es ausgegraben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('et-atari-landfill-dig', '2026-10-20T08:00:00+02:00', 'popculture', '👽', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'et-atari-landfill-dig', 'de', 'atari-et-muellhalde-ausgegraben',
  'Atari hat sein E.T.-Debakel wirklich auf einer Müllhalde in der Wüste entsorgt, und 2014 wurde es ausgegraben',
  'Jahrzehntelang klang das wie eine Großstadtlegende. Dann rückte ein Bautrupp mit Kamerateam an.',
  '1983 landeten Lastwagenladungen unverkaufter Atari-Spielmodule, darunter der Flop E.T., auf einer Mülldeponie in Alamogordo in New Mexico, und 2014 wurden bei einer Grabung über tausend davon geborgen.',
  '1982 hatte Atari eine der größten Filmlizenzen überhaupt: E.T. – Der Außerirdische. Was danach passierte, wurde zu einer der schrägsten Geschichten der Gaming-Welt, und jahrzehntelang klang sie wie eine Großstadtlegende.

## Fünf Wochen für einen Blockbuster

Den Job bekam Programmierer Howard Scott Warshaw, sobald der Lizenzdeal stand. Laut Guinness World Records lief die Entwicklung vom 27. Juli bis zum 1. September 1982. Damit hält das Spiel den Rekord für die kürzeste Entwicklungszeit einer Videospiel-Umsetzung eines Films. Warshaw sagte dazu: „Niemand hatte je ein Spiel in weniger als fünf oder sechs Monaten gemacht, und ich hatte fünf Wochen!“

Dann fing der Ärger an. Laut dem Centre for Computing History wurden 5 Millionen E.T.-Module hergestellt, aber nur 1,5 Millionen verkauft.

## Die Legende von der Müllkippe

Im September 1983 landeten Lastwagenladungen voller Spielmodule und Computertechnik auf einer Mülldeponie in Alamogordo in New Mexico, berichtet Waste360. Bald hieß es, Atari kippe lastwagenweise Spiele in die Wüste. Das Henry Ford Museum spricht von 700.000 vergrabenen Modulen und schreibt, die Geschichte sei zu einer „obskuren Popkultur-Legende“ geworden.

## Das Grab wird geöffnet

Am Samstag, dem 26. April 2014, wurde die Legende überprüft. Der örtliche Bauunternehmer Joe Lewandowski bekam den Auftrag für die Grabung auf dem rund 300 Acres großen Gelände, und laut Equipment World durfte er nur ein einziges Loch graben. Wäre es leer geblieben, wäre die Suche vorbei gewesen. Gegen 13 Uhr stieß der Trupp auf Spiele, und zwar nicht nur auf E.T.: Auch Centipede, Space Invaders und Asteroids sollen aufgetaucht sein. Die Grabung war Teil von „Atari: Game Over“, einer Doku aus dem Xbox-Studio von Microsoft.

Geborgen wurden über tausend Module. Einige kamen später online unter den Hammer, E.T.-Exemplare gingen für mehr als 1.500 Dollar weg. Das Henry Ford Museum nennt die Grabung die erste Videospiel-Ausgrabung der Welt.

> Bonusfakt: Das Centre for Computing History zeigt ein E.T.-Modul aus der Grabung, zusammen mit Sand vom Fundort.

Das Spiel, das 1983 keiner wollte, liegt heute hinter Museumsglas. Ziemlich gute Karriere für ein Stück Müll.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('et-atari-landfill-dig', 'de', 1, 'Atari 2600+ Retro-Konsole', 'Atari 2600+ Retro Konsole', 'Eine moderne Neuauflage der Kultkonsole, die auch Original-Module abspielt.'),
  ('et-atari-landfill-dig', 'de', 2, 'Buch zur Geschichte der Videospiele', 'Geschichte der Videospiele Buch', 'Erzählt Aufstieg, Crash und Comeback des Gamings in einem Band.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('et-atari-landfill-dig', 'de', 1, 'The Henry Ford: E.T. Video Game Excavated April 2014 at the Alamogordo, New Mexico Landfill, Site of the 1983 Atari Video Game Burial', 'https://www.thehenryford.org/collections/explore/artifact/403653'),
  ('et-atari-landfill-dig', 'de', 2, 'Equipment World: PHOTOS: Construction workers unearth E.T. in the New Mexico Desert', 'https://www.equipmentworld.com/construction-equipment/article/14953473/photos-construction-workers-unearth-et-in-the-new-mexico-desert'),
  ('et-atari-landfill-dig', 'de', 3, 'Waste360: In 1983, Atari dumped unsold video games in a NM landfill', 'https://www.waste360.com/landfill/in-1983-atari-dumped-truckloads-of-unsold-video-games-in-a-new-mexico-landfill-when-the-site-was-excavated-in-2014-about-1-300-cartridges-were-recovered-with-some-later-selling-for-hundreds-or-thousands-of-dollars'),
  ('et-atari-landfill-dig', 'de', 4, 'Guinness World Records: Shortest development period for a videogame film conversion', 'https://www.guinnessworldrecords.com/world-records/412757-shortest-development-period-for-a-videogame-film-conversion'),
  ('et-atari-landfill-dig', 'de', 5, 'Centre for Computing History: New Mexico landfill site is excavated for Atari materials', 'https://computinghistory.org.uk/det/57264/New%20Mexico%20landfill%20site%20is%20excavated%20for%20Atari%20materials');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'et-atari-landfill-dig', 'en', 'atari-et-landfill-dug-up',
  'Atari''s E.T. flop really ended up in a desert landfill, and in 2014 it was dug up',
  'For decades it sounded like an urban legend. Then a construction crew went looking with a camera team in tow.',
  'In 1983, truckloads of unsold Atari cartridges, including the flop E.T., were dumped in a landfill in Alamogordo, New Mexico, and in 2014 a dig recovered more than a thousand of them.',
  'In 1982, Atari had one of the biggest movie licenses around: E.T. the Extra-Terrestrial. What happened next became one of the strangest stories in gaming, and for decades it sounded like an urban legend.

## Five weeks for a blockbuster

Programmer Howard Scott Warshaw got the job once the license deal was done. According to Guinness World Records, the development window ran from 27 July to 1 September 1982, which gave the game the record for the shortest development period for a videogame film conversion. Warshaw put it like this: “No one had ever done a game in less than five or six months and I had five weeks!”

Then the trouble started. The Centre for Computing History says 5 million E.T. cartridges were manufactured, but only 1.5 million were sold.

## The landfill legend

In September 1983, truckloads of video game cartridges and computer equipment ended up in a landfill in Alamogordo, New Mexico, according to Waste360. Rumors spread that Atari was dumping truckloads of games in the desert. The Henry Ford museum puts the burial at 700,000 cartridges and says the story became “an obscure pop culture legend”.

## Digging up the tomb

On Saturday, April 26, 2014, a crew put the legend to the test. Local contractor Joe Lewandowski was hired for the dig on the 300-acre site, and Equipment World reports that he could only dig one hole. If it came up empty, the search was over. Around 1 p.m., the crew hit games, and not only E.T.: Centipede, Space Invaders and Asteroids reportedly turned up too. The dig was part of “Atari: Game Over”, a documentary from Microsoft''s Xbox studio.

More than a thousand cartridges were recovered. Some were later auctioned online, and E.T. copies sold for more than 1,500 dollars. The Henry Ford calls the dig the world''s first video game excavation.

> Bonus fact: The Centre for Computing History displays an E.T. cartridge from the dig, together with sand from the site.

The game nobody wanted in 1983 now sits behind museum glass. Pretty good career for a piece of landfill.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('et-atari-landfill-dig', 'en', 1, 'Atari 2600+ retro console', 'Atari 2600+ retro console', 'A modern take on the classic console that plays original cartridges.'),
  ('et-atari-landfill-dig', 'en', 2, 'Video game history book', 'history of video games book', 'Covers the rise, the crash and the comeback of gaming in one read.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('et-atari-landfill-dig', 'en', 1, 'The Henry Ford: E.T. Video Game Excavated April 2014 at the Alamogordo, New Mexico Landfill, Site of the 1983 Atari Video Game Burial', 'https://www.thehenryford.org/collections/explore/artifact/403653'),
  ('et-atari-landfill-dig', 'en', 2, 'Equipment World: PHOTOS: Construction workers unearth E.T. in the New Mexico Desert', 'https://www.equipmentworld.com/construction-equipment/article/14953473/photos-construction-workers-unearth-et-in-the-new-mexico-desert'),
  ('et-atari-landfill-dig', 'en', 3, 'Waste360: In 1983, Atari dumped unsold video games in a NM landfill', 'https://www.waste360.com/landfill/in-1983-atari-dumped-truckloads-of-unsold-video-games-in-a-new-mexico-landfill-when-the-site-was-excavated-in-2014-about-1-300-cartridges-were-recovered-with-some-later-selling-for-hundreds-or-thousands-of-dollars'),
  ('et-atari-landfill-dig', 'en', 4, 'Guinness World Records: Shortest development period for a videogame film conversion', 'https://www.guinnessworldrecords.com/world-records/412757-shortest-development-period-for-a-videogame-film-conversion'),
  ('et-atari-landfill-dig', 'en', 5, 'Centre for Computing History: New Mexico landfill site is excavated for Atari materials', 'https://computinghistory.org.uk/det/57264/New%20Mexico%20landfill%20site%20is%20excavated%20for%20Atari%20materials');
