-- WTFact-Fakt „Bei der Weltmeisterschaft im Frauentragen in Finnland gewinnt man das Gewicht der Frau in Bier“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('wife-carrying-beer-prize', '2026-10-12T12:00:00+02:00', 'weird', '🏃', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wife-carrying-beer-prize', 'de', 'frauentragen-weltmeisterschaft-bier-preis',
  'Bei der Weltmeisterschaft im Frauentragen in Finnland gewinnt man das Gewicht der Frau in Bier',
  'Ein kleiner finnischer Ort hat aus einer Räuberlegende eine Weltmeisterschaft gemacht, mit Wassergraben und Mindestgewicht.',
  'Bei der Weltmeisterschaft im Frauentragen im finnischen Sonkajärvi rennen die Teilnehmenden mit einer Partnerin auf dem Rücken über eine 253,5 Meter lange Hindernisstrecke, und das Siegerpaar bekommt das Gewicht der Frau in Bier.',
  'Es gibt Sportarten mit Medaillen, Sportarten mit Pokalen und dann gibt es Eukonkanto. In Sonkajärvi, einer kleinen Gemeinde in der finnischen Region Nordsavo, rennen Leute seit 1992 mit einer Partnerin auf dem Rücken um die Wette. Offizieller Name: Weltmeisterschaft im Frauentragen.

## Die Regeln gibt es wirklich, und sie sind schräg genau

Die offizielle Strecke ist 253,5 Meter lang, mit zwei trockenen Hindernissen und einem etwa einen Meter tiefen Wasserhindernis. Getragen werden darf die eigene Frau oder die eines anderen, aber sie muss mindestens 17 Jahre alt sein und mindestens 49 Kilogramm wiegen. Zu leicht? Dann trägt sie einen Rucksack mit Zusatzgewichten.

Fallenlassen wird übrigens nicht bestraft. Man muss sie nur sofort wieder aufnehmen und weiterlaufen. Laut Euronews ist als Ausrüstung nur ein Helm für die Frau und ein Gürtel für den Träger erlaubt.

Wie du sie trägst, ist deine Sache. Huckepack oder Feuerwehrgriff gehen beide, aber laut VinePair setzen die erfolgreichsten Teams oft auf den Estnischen Griff: Sie hängt kopfüber auf seinem Rücken, die Beine über seinem Nacken und seinen Schultern.

## Der Preis wird auf einer Wippe gewogen

Geld gibt es nicht. Laut Regeln bekommen die Gewinner ein Getränk im Gewicht der Frau, und Euronews und VinePair beschreiben das beide als Bier. Laut VinePair wird auf einer Wippe abgemessen: Sie sitzt auf der einen Seite, auf die andere kommt so lange Bier, bis beides im Gleichgewicht ist.

Und woher kommt das Ganze? Angeblich von Herkko Rosvo-Ronkainen, genannt „Ronkainen der Räuber“, im 19. Jahrhundert. Einer Version nach ließ er Anwärter für seine Bande schwere Getreidesäcke oder sogar lebende Schweine über Hindernisstrecken tragen. Einer anderen nach trug seine Bande Frauen aus Nachbardörfern auf dem Rücken davon.

> Bonusfakt: Laut Euronews halten Taisto Miettinen und Katja Kovanen aus Finnland den Rekord für die meisten Titel, mit acht Siegen zwischen 2009 und 2023.

Irgendwo in Finnland trainiert gerade jemand hart für einen Preis, den man auf einer Wippe abwiegen muss.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wife-carrying-beer-prize', 'de', 1, 'Reiseführer Finnland', 'Reiseführer Finnland', 'Zeigt Seen, Saunen und kleine Orte weit jenseits von Helsinki.'),
  ('wife-carrying-beer-prize', 'de', 2, 'Buch über seltsame Feste weltweit', 'Buch kuriose Feste Bräuche weltweit', 'Sammelt schräge Traditionen und Wettbewerbe von allen Kontinenten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wife-carrying-beer-prize', 'de', 1, 'Wife-Carrying World Championship: Competition Track and Rules', 'https://eukonkanto.fi/en/competition-track-and-rules/'),
  ('wife-carrying-beer-prize', 'de', 2, 'Euronews: Everything you need to know about the Wife-Carrying World Championship in Finland', 'https://www.euronews.com/2025/07/04/everything-you-need-to-know-about-the-wife-carrying-world-championship-in-finland'),
  ('wife-carrying-beer-prize', 'de', 3, 'VinePair: At Finland''s Wife-Carrying Competition, Winners Are Paid in Beer', 'https://vinepair.com/articles/finland-wife-carrying-competition-beer-prize');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wife-carrying-beer-prize', 'en', 'wife-carrying-world-championship-beer-prize',
  'Finland''s wife-carrying world champions win the wife''s weight in beer',
  'A small Finnish town turned a robber legend into a world championship, complete with a water pit and a minimum weight.',
  'At the Wife-Carrying World Championship in Sonkajärvi, Finland, competitors race a partner on their back over a 253.5-meter obstacle course, and the winning couple takes home the wife''s weight in beer.',
  'There are sports with medals, sports with trophies, and then there''s eukonkanto. In Sonkajärvi, a small town in Finland''s Northern Savonia region, people have been racing with a partner on their back since 1992. Its official name: the Wife-Carrying World Championship.

## The rules are real, and oddly specific

The official track is 253.5 meters long, with two dry obstacles and one water obstacle about one meter deep. The person being carried can be your own wife or someone else''s, but she must be at least 17 years old and weigh at least 49 kilograms. Too light? Then she wears a backpack with extra weights.

Dropping her isn''t penalized, by the way. You just have to pick her up again right away and keep going. According to Euronews, the only equipment allowed is a helmet for the wife and a belt for the carrier.

How you carry her is up to you. Piggyback and fireman''s lift both work, but VinePair says the most successful teams often use the Estonian carry: she hangs upside down on his back with her legs over his neck and shoulders.

## The prize is weighed on a seesaw

Forget cash. The rules promise the winners a drink equal to the wife''s weight, which Euronews and VinePair both describe as beer. According to VinePair, it''s measured on a seesaw: she sits on one end while beer is added to the other until it balances.

And the origin story? It reportedly goes back to Herkko Rosvo-Ronkainen, known as Ronkainen the Robber, in the 1800s. One version says he made his gang recruits carry heavy grain sacks or even live pigs around obstacle courses. Another says his gang carried off women from nearby villages on their backs.

> Bonus fact: According to Euronews, Taisto Miettinen and Katja Kovanen from Finland hold the record for most titles, with eight wins between 2009 and 2023.

Somewhere in Finland, someone is training hard for a prize that has to be weighed on a seesaw.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wife-carrying-beer-prize', 'en', 1, 'Finland travel guide', 'Finland travel guide book', 'Covers lakes, saunas and small towns way beyond Helsinki.'),
  ('wife-carrying-beer-prize', 'en', 2, 'Book about strange festivals around the world', 'book strange festivals around the world', 'Collects odd traditions and competitions from every continent.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wife-carrying-beer-prize', 'en', 1, 'Wife-Carrying World Championship: Competition Track and Rules', 'https://eukonkanto.fi/en/competition-track-and-rules/'),
  ('wife-carrying-beer-prize', 'en', 2, 'Euronews: Everything you need to know about the Wife-Carrying World Championship in Finland', 'https://www.euronews.com/2025/07/04/everything-you-need-to-know-about-the-wife-carrying-world-championship-in-finland'),
  ('wife-carrying-beer-prize', 'en', 3, 'VinePair: At Finland''s Wife-Carrying Competition, Winners Are Paid in Beer', 'https://vinepair.com/articles/finland-wife-carrying-competition-beer-prize');
