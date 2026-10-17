-- WTFact-Fakt „Jeder MLB-Baseball wird mit Schlamm von einer geheimen Stelle in New Jersey eingerieben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('baseball-rubbing-mud', '2026-10-18T12:00:00+02:00', 'sport', '⚾', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'baseball-rubbing-mud', 'de', 'mlb-baseballs-geheimer-schlamm',
  'Jeder MLB-Baseball wird mit Schlamm von einer geheimen Stelle in New Jersey eingerieben',
  'Neue Baseballs glänzen zu sehr zum Werfen, deshalb behandelt die Profiliga sie mit einer ganz bestimmten Sorte Dreck.',
  'Vor Spielen der Major League Baseball werden neue Bälle mit „Lena Blackburne Baseball Rubbing Mud“ eingerieben, einem Schlamm, der seit den 1930er-Jahren von einer geheimen Stelle in New Jersey nahe dem Delaware River stammt.',
  'Ein nagelneuer Baseball sieht perfekt aus: strahlend weiß, glatt, glänzend. Genau das ist das Problem. Neue Bälle sind so rutschig, dass Pitcher sie schlecht greifen können, und laut der Baseball Hall of Fame hat ihr Glanz manchmal auch die Schlagleute geblendet. Vor einem Profispiel muss der Glanz also weg. Und zwar mit Schlamm. Mit ganz bestimmtem Schlamm.

## Ein Coach und sein geheimer Bach

Vorher probierten die Teams alles Mögliche aus, etwa Tabaksaft, Spucke und Erde vom Spielfeld, berichten WHYY und Princeton Info. Normale Erde war oft zu grob und zerkratzte das Leder. 1938 beschwerte sich der Schiedsrichter Harry Geisel aus der American League über diese Arbeit, schreibt die Hall of Fame. Lena Blackburne, damals Coach bei den Philadelphia Athletics, erinnerte sich an den feinen Schlamm, den er als Junge in einem Bach im Süden von New Jersey gefunden hatte. Er gab Geisel eine Dose, und bald wurde jedes Team der American League beliefert. An die National League verkaufte er erst ab Mitte der 1950er-Jahre.

## Bis heute ein Familiengeheimnis

Blackburne starb 1968 und vermachte das Geschäft seinem Jugendfreund John Haas, der die Fundstelle geheim halten sollte, so die Hall of Fame. Seitdem ist es in der Familie geblieben. Jim Bintliff, der Enkel von Haas, grub laut Princeton Info schon mit 9 Jahren mit seinem Großvater. WHYY beschreibt, wie er mit der Schaufel nur die oberste Schicht Schlamm abträgt, ihn zu Hause siebt und reifen lässt, bevor er ihn verschickt.

Die offiziellen Regeln verlangen, dass die Schiedsrichter dafür sorgen, dass neue Bälle ordentlich eingerieben sind, erklärt die Hall of Fame. Vor einem Spiel reiben die Schiedsrichter, manchmal zusammen mit Betreuern aus der Kabine, 8 bis 10 Dutzend Bälle ein, dazu 6 Dutzend in Reserve, berichtet Princeton Info. Laut Eos bekommt jeder Ball einen fingergroßen Klecks.

> Bonusfakt: Ein Team der University of Pennsylvania hat den Schlamm für eine Studie in der Fachzeitschrift PNAS untersucht. Laut Eos lässt er sich verteilen wie Hautcreme, während seine Körnchen für Grip sorgen. Etwas Magisches fanden die Forschenden an Mineralien und Mechanik aber nicht.

Jeder Wurf in der Profiliga beginnt also mit ein bisschen Dreck aus New Jersey.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('baseball-rubbing-mud', 'de', 1, 'Baseball-Set mit Handschuh', 'Baseball Handschuh mit Ball Set Erwachsene', 'Alles, was du für eine Runde Fangen im Park brauchst.'),
  ('baseball-rubbing-mud', 'de', 2, 'Baseball-Vitrine', 'Baseball Vitrine UV-Schutz', 'Hält einen signierten oder besonderen Ball staubfrei im Regal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('baseball-rubbing-mud', 'de', 1, 'National Baseball Hall of Fame and Museum: Lena Blackburne rubbing mud a secret of the game', 'https://baseballhall.org/discover/lena-blackburne-rubbing-mud-a-secret-of-the-game'),
  ('baseball-rubbing-mud', 'de', 2, 'WHYY: All MLB baseballs get treatment from South Jersey mud', 'https://whyy.org/articles/joy-in-mudville-all-major-league-baseballs-get-treatment-from-south-jersey-grime'),
  ('baseball-rubbing-mud', 'de', 3, 'Princeton Info: The Real Dirt on Baseball''s Secret Delaware River Mud', 'https://princetoninfo.com/artsandentertainment/the-real-dirt-on-baseballs-secret-delaware-river-mud/'),
  ('baseball-rubbing-mud', 'de', 4, 'Eos: Geoscientists Demystify Baseball''s Magic Mud', 'https://eos.org/articles/geoscientists-demystify-baseballs-magic-mud');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'baseball-rubbing-mud', 'en', 'mlb-baseballs-secret-mud',
  'Every MLB baseball gets rubbed with mud from a secret spot in New Jersey',
  'Brand-new baseballs are too shiny to pitch, so the big leagues fix them with one very particular kind of dirt.',
  'Before Major League Baseball games, new balls are rubbed with Lena Blackburne Baseball Rubbing Mud, which has come from a secret spot in New Jersey near the Delaware River since the 1930s.',
  'A brand-new baseball looks perfect: bright white, smooth, shiny. That''s exactly the problem. New balls are so slick that pitchers have trouble gripping them, and according to the Baseball Hall of Fame, their glare sometimes bothered hitters too. So before a big-league game, the shine has to go. And it goes with mud. Very specific mud.

## A coach and his secret creek

Teams tried all sorts of things first, including tobacco juice, spit and infield dirt, according to WHYY and Princeton Info. Regular dirt was often too coarse and scratched the covers. In 1938, American League umpire Harry Geisel complained about the job, the Hall of Fame writes. Lena Blackburne, then a coach for the Philadelphia Athletics, remembered the fine mud he had found as a boy in a creek in southern New Jersey. He gave Geisel a can, and soon every American League team was supplied. He only started selling to the National League in the mid-1950s.

## Still a family secret

Blackburne died in 1968 and left the business to his childhood friend John Haas, who was to keep the source secret, says the Hall of Fame. It has stayed in the family ever since. Jim Bintliff, Haas''s grandson, started digging with his grandfather at age 9, according to Princeton Info. WHYY describes how he skims off just the top layer of mud with a shovel, screens it at home and lets it age before shipping.

The official rules require umpires to make sure new balls are properly rubbed, the Hall of Fame notes. Before a game, umpires, sometimes with clubhouse attendants, rub 8 to 10 dozen balls, with 6 dozen more in reserve, Princeton Info reports. Eos says each ball gets a finger-sized dollop.

> Bonus fact: A team from the University of Pennsylvania analyzed the mud in a study in PNAS. According to Eos, it spreads like skin cream while its grit adds grip, but nothing about its minerals or mechanics turned out to be magical.

So every big-league pitch starts with a little bit of New Jersey dirt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('baseball-rubbing-mud', 'en', 1, 'Baseball and glove set', 'baseball glove and ball set adult', 'Everything you need for a game of catch in the park.'),
  ('baseball-rubbing-mud', 'en', 2, 'Baseball display case', 'baseball display case UV protection', 'Keeps a signed or special ball dust-free on the shelf.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('baseball-rubbing-mud', 'en', 1, 'National Baseball Hall of Fame and Museum: Lena Blackburne rubbing mud a secret of the game', 'https://baseballhall.org/discover/lena-blackburne-rubbing-mud-a-secret-of-the-game'),
  ('baseball-rubbing-mud', 'en', 2, 'WHYY: All MLB baseballs get treatment from South Jersey mud', 'https://whyy.org/articles/joy-in-mudville-all-major-league-baseballs-get-treatment-from-south-jersey-grime'),
  ('baseball-rubbing-mud', 'en', 3, 'Princeton Info: The Real Dirt on Baseball''s Secret Delaware River Mud', 'https://princetoninfo.com/artsandentertainment/the-real-dirt-on-baseballs-secret-delaware-river-mud/'),
  ('baseball-rubbing-mud', 'en', 4, 'Eos: Geoscientists Demystify Baseball''s Magic Mud', 'https://eos.org/articles/geoscientists-demystify-baseballs-magic-mud');
