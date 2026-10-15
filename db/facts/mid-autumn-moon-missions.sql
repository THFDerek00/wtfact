-- WTFact-Fakt „Chinas Mondmissionen sind nach der Legende vom Mondfest benannt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('mid-autumn-moon-missions', '2026-09-25T00:00:00+02:00', 'holiday', '🐇', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mid-autumn-moon-missions', 'de', 'mondfest-chang-e-yutu-mondmissionen',
  'Chinas Mondmissionen sind nach der Legende vom Mondfest benannt',
  'Eine Mondgöttin und ihr Hase: Was beim Mondfest in jeder Familie erzählt wird, steht heute auf Raumsonden und Mondrovern.',
  'Chinas Mondprogramm heißt nach der Mondgöttin Chang’e aus der Legende des Mondfests, und seine Mondrover heißen Yutu, nach ihrem Hasen.',
  'Heute ist Mondfest. In China, Taiwan und vielen anderen Ländern Ostasiens sitzen Familien unter dem Vollmond und essen Mondkuchen. Gefeiert wird am 15. Tag des 8. Monats im chinesischen Mondkalender. **Und die Hauptfigur des Festes fliegt inzwischen echt zum Mond.**

## Eine Göttin im Mondpalast

Im Mittelpunkt des Mondfests steht eine Legende: Chang’e trank ein Elixier des ewigen Lebens, wurde unsterblich und schwebte zum Mond. Dort lebt sie seitdem im Mondpalast, zusammen mit ihrem Haustier, dem Hasen Yutu. Das ist ein Mythos, keine Geschichte, aber einer, den in China fast jedes Kind kennt.

Genau nach dieser Göttin hat China sein langfristiges Programm zur Monderkundung benannt. Die Sonden heißen schlicht Chang’e 1, Chang’e 2 und so weiter.

## Der Hase fährt mit

Und der Hase? Der bekam seinen eigenen Rover. Als China 2013 mit Chang’e 3 sein erstes Mondfahrzeug startete, durfte die Öffentlichkeit den Namen mitbestimmen. In der letzten Runde einer weltweiten Online-Abstimmung stimmten laut Space.com etwa 650.000 von mehr als 3,4 Millionen Teilnehmenden für Yutu. Übersetzt heißt das „Jadehase“.

Der Nachfolger Yutu-2 schaffte dann Geschichte: Er gehörte zur Mission Chang’e 4, die 2019 als erste überhaupt auf der Rückseite des Mondes landete. Weil von dort kein direkter Funkkontakt zur Erde möglich ist, brauchte es einen Relaissatelliten. Auch der hat einen Namen aus einer Volkssage: Queqiao, die „Elsternbrücke“.

## Mondgestein statt Mondkuchen

Die Göttin war seitdem noch fleißiger. Chang’e 5 brachte 2020 rund 1,7 Kilogramm Mondgestein und Staub zur Erde. Chang’e 6 startete im Mai 2024 und landete ebenfalls auf der Rückseite des Mondes.

> Schon die Apollo-11-Crew bekam 1969 die Legende zu hören. Mission Control las den Astronauten eine Zeitungsmeldung vor: Sie sollten nach einem „schönen chinesischen Mädchen namens Chang-o“ Ausschau halten, das seit 4000 Jahren dort lebe, samt einem großen Hasen.

Wenn du heute Abend in den Vollmond schaust, siehst du also nicht nur die Heimat einer Göttin, sondern auch ihren Arbeitsplatz.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mid-autumn-moon-missions', 'de', 1, 'Mondkuchen-Form mit Stempeln', 'Mondkuchen Form Stempel', 'Mit wechselbaren Stempeln drückst du die typischen Muster selbst in den Teig.'),
  ('mid-autumn-moon-missions', 'de', 2, '3D-Mondlampe mit Holzständer', '3D Mondlampe Holzständer', 'Eine Kugel mit der echten Mondoberfläche, die warm leuchtet, auch wenn draußen Wolken sind.'),
  ('mid-autumn-moon-missions', 'de', 3, 'Teeservice aus Porzellan im chinesischen Stil', 'chinesisches Teeservice Porzellan', 'Zum Mondkuchen gehört Tee, und ein schönes Set macht aus der Teepause ein kleines Ritual.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mid-autumn-moon-missions', 'de', 1, 'EarthDate: Chinese Moon Missions', 'https://www.earthdate.org/episodes/chinese-moon-missions'),
  ('mid-autumn-moon-missions', 'de', 2, 'Space.com: China Will Launch Its 1st Moon Rover, ''Jade Rabbit,'' On Sunday', 'https://www.space.com/23787-china-moon-rover-change3-launch.html'),
  ('mid-autumn-moon-missions', 'de', 3, 'Universe Today: Spectacular Liftoff Thrusts China''s First Rover ''Yutu'' to the Moon', 'https://www.universetoday.com/106864/spectacular-liftoff-thrusts-chinas-first-rover-yutu-to-the-moon'),
  ('mid-autumn-moon-missions', 'de', 4, 'Science Friday: The ‘Bunny Girl’ on the Moon', 'https://www.sciencefriday.com/articles/the-bunny-girl-on-the-moon/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mid-autumn-moon-missions', 'en', 'mid-autumn-chang-e-yutu-moon-missions',
  'China named its moon missions after the Mid-Autumn Festival legend',
  'A moon goddess and her rabbit: the story told in families every Mid-Autumn Festival is now written on space probes and rovers.',
  'China''s lunar exploration program is named after the moon goddess Chang''e from the Mid-Autumn Festival legend, and its moon rovers are called Yutu, after her rabbit.',
  'Today is the Mid-Autumn Festival. In China, Taiwan and many other parts of East Asia, families sit under the full moon and eat mooncakes. It is celebrated on the 15th day of the 8th month of the Chinese lunar calendar. **And the festival''s main character now actually flies to the moon.**

## A goddess in the Moon Palace

At the heart of the festival is a legend: Chang''e drank an elixir of eternal life, became immortal and floated up to the moon. She has lived there ever since in the Moon Palace, together with her pet, the rabbit Yutu. It''s a myth, not history, but one almost every child in China knows.

China named its long-term lunar exploration program after exactly this goddess. The probes are simply called Chang''e 1, Chang''e 2 and so on.

## The rabbit comes along

And the rabbit? It got its own rover. When China launched its first lunar vehicle with Chang''e 3 in 2013, the public got a say in the name. In the final round of a global online vote, about 650,000 of more than 3.4 million voters picked Yutu, according to Space.com. The name translates as "Jade Rabbit".

Its successor Yutu-2 made history: it was part of the Chang''e 4 mission, which in 2019 became the first ever to land on the far side of the moon. Because there is no direct radio contact with Earth from there, a relay satellite was needed. It, too, is named after a folk tale: Queqiao, the "Bridge of Magpies".

## Moon rocks instead of mooncakes

The goddess has kept busy since. In 2020, Chang''e 5 brought about 1.7 kilograms of lunar rock and dust back to Earth. Chang''e 6 launched in May 2024 and also landed on the far side of the moon.

> Even the Apollo 11 crew heard the legend in 1969. Mission Control read the astronauts a news item: they should watch for "a beautiful Chinese girl called Chang-o" who had supposedly lived there for 4000 years, along with a big rabbit.

So when you look at the full moon tonight, you''re seeing not only a goddess''s home, but also her workplace.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mid-autumn-moon-missions', 'en', 1, 'Mooncake mold with stamps', 'mooncake mold stamps', 'Interchangeable stamps let you press the classic patterns into the dough yourself.'),
  ('mid-autumn-moon-missions', 'en', 2, '3D moon lamp with wooden stand', '3D moon lamp wooden stand', 'A sphere with the real lunar surface that glows warmly, even when it''s cloudy outside.'),
  ('mid-autumn-moon-missions', 'en', 3, 'Chinese-style porcelain tea set', 'Chinese porcelain tea set', 'Mooncakes call for tea, and a beautiful set turns a tea break into a small ritual.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mid-autumn-moon-missions', 'en', 1, 'EarthDate: Chinese Moon Missions', 'https://www.earthdate.org/episodes/chinese-moon-missions'),
  ('mid-autumn-moon-missions', 'en', 2, 'Space.com: China Will Launch Its 1st Moon Rover, ''Jade Rabbit,'' On Sunday', 'https://www.space.com/23787-china-moon-rover-change3-launch.html'),
  ('mid-autumn-moon-missions', 'en', 3, 'Universe Today: Spectacular Liftoff Thrusts China''s First Rover ''Yutu'' to the Moon', 'https://www.universetoday.com/106864/spectacular-liftoff-thrusts-chinas-first-rover-yutu-to-the-moon'),
  ('mid-autumn-moon-missions', 'en', 4, 'Science Friday: The ‘Bunny Girl’ on the Moon', 'https://www.sciencefriday.com/articles/the-bunny-girl-on-the-moon/');
