-- WTFact-Fakt „Tauziehen war von 1900 bis 1920 eine olympische Disziplin“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('olympic-tug-of-war', '2026-09-19', 'sport', '🪢', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'olympic-tug-of-war', 'de', 'tauziehen-war-olympisch',
  'Tauziehen war von 1900 bis 1920 eine olympische Disziplin',
  'Acht Leute, ein Seil, Medaillen. Und einmal ein Streit um Polizeistiefel.',
  'Tauziehen gehörte von 1900 bis 1920 zur Leichtathletik bei Olympia, inklusive Gold, Silber und Bronze.',
  'Das Spiel vom Kindergeburtstag hatte mal olympischen Status. Und zwar nicht als Showeinlage: **Von 1900 bis 1920 war Tauziehen eine offizielle olympische Disziplin**, mit Medaillen, Nationalteams und allem Drum und Dran.

## Ziehen für Gold

Tauziehen lief damals als Teil der Leichtathletik. Insgesamt stand es bei sechs Spielen auf dem Programm: 1900, 1904, 1906, 1908, 1912 und 1920. Anfangs bestand ein Team aus fünf oder sechs Leuten, ab 1908 waren es acht.

Die Regeln waren simpel. Wer das andere Team rund sechs Fuß, also knapp zwei Meter, über die Linie zog, gewann. Schaffte das niemand, bekamen beide Seiten noch fünf Minuten extra. Danach gewann das Team, das am meisten Boden gutgemacht hatte.

## Stiefel, Ersatzspieler und ein Duell zu zweit

So harmlos die Disziplin klingt, sie hatte ihre Skandale. 1904 trat das Siegerteam offiziell für den Milwaukee Athletic Club an, bestand aber laut Mental Floss aus eingekauften Leuten aus Chicago.

1908 in London protestierte das US-Team gegen die britischen Gegner, ein Team der Polizei aus Liverpool. Der Vorwurf: verbotene Stiefel mit Stollen. Die Briten boten sogar an, barfuß anzutreten. Die Amerikaner lehnten ab und zogen zurück.

1912 sprangen mehrere Länder ab, sodass am Ende nur Großbritannien gegen Schweden zog. Schweden gewann.

> Drei Briten, Frederick Humphreys, Edwin Mills und James Shepherd, holten im olympischen Tauziehen jeweils drei Medaillen, darunter zwei goldene.

## Das letzte Ziehen

1920 in Antwerpen war dann Schluss. Großbritannien gewann das letzte olympische Tauziehen vor den Niederlanden und Belgien. Laut Olympedia flog die Disziplin wegen der vielen Streitereien aus dem Programm, obwohl ausgerechnet 1920 alles friedlich ablief.

Ganz verschwunden ist der Sport aber nicht. Seit 1981 ist Tauziehen fester Bestandteil der World Games, und der internationale Verband zählt heute 76 Mitgliedsverbände.

Großbritannien steht übrigens bis heute an der Spitze der ewigen Tauzieh-Medaillenliste. Den Titel kann ihnen auch niemand mehr wegnehmen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('olympic-tug-of-war', 'de', 1, 'Tauziehseil für Garten und Kindergeburtstag', 'Tauziehen Seil Spiel Garten', 'Ein dickes Seil für Sommerfeste, Klassenfahrten und Familientreffen.'),
  ('olympic-tug-of-war', 'de', 2, 'Buch mit kuriosen Geschichten aus der Olympia-Geschichte', 'Olympia Geschichte kurios Buch', 'Sammelt schräge Disziplinen, Pannen und Rekorde aus über 100 Jahren Olympischen Spielen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('olympic-tug-of-war', 'de', 1, 'Olympedia: Tug-Of-War', 'https://www.olympedia.org/sports/TOW'),
  ('olympic-tug-of-war', 'de', 2, 'Olympedia: Tug-Of-War at the 1920 Summer Olympics', 'https://www.olympedia.org/editions/7/sports/TOW'),
  ('olympic-tug-of-war', 'de', 3, 'Mental Floss: Tug of War Used to Be an Olympic Sport', 'https://www.mentalfloss.com/article/55107/tug-war-used-be-olympic-sport');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'olympic-tug-of-war', 'en', 'tug-of-war-olympic-sport',
  'Tug of war was an Olympic event from 1900 to 1920',
  'Eight people, one rope, real medals. And one big fight over police boots.',
  'From 1900 to 1920, tug of war was part of Olympic athletics, complete with gold, silver and bronze.',
  'That game from every kid''s birthday party once had Olympic status. And not as a side show: **from 1900 to 1920, tug of war was an official Olympic event**, with medals, national teams and everything.

## Pulling for gold

Back then, tug of war was part of track and field. It appeared at six Games in total: 1900, 1904, 1906, 1908, 1912 and 1920. Teams started out with five or six people, and from 1908 on, there were eight.

The rules were simple. Pull the other team about six feet, a little under two meters, and you win. If nobody managed that, both sides got five extra minutes. After that, the team that had gained the most ground won.

## Boots, ringers and a two-team final

As harmless as it sounds, the event had its scandals. In 1904, the winning team officially represented the Milwaukee Athletic Club, but according to Mental Floss it was made up of ringers recruited from Chicago.

In 1908 in London, the US team protested against their British opponents, a team from the Liverpool police. The complaint: illegal boots with cleats. The British even offered to pull barefoot. The Americans declined and withdrew.

In 1912, several countries pulled out, so in the end only Great Britain and Sweden faced off. Sweden won.

> Three British athletes, Frederick Humphreys, Edwin Mills and James Shepherd, each won three Olympic tug of war medals, two of them gold.

## The final pull

In 1920 in Antwerp, it was over. Great Britain won the last Olympic tug of war ahead of the Netherlands and Belgium. According to Olympedia, the event was dropped because of all the controversies, even though the 1920 contest itself went off peacefully.

The sport didn''t disappear, though. Tug of war has been part of the World Games since 1981, and its international federation now counts 76 member associations.

Great Britain still tops the all-time Olympic tug of war medal table. And nobody is ever going to pull that title away from them.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('olympic-tug-of-war', 'en', 1, 'Tug of war rope for backyard games', 'tug of war rope game backyard', 'A thick rope for summer parties, school trips and family get-togethers.'),
  ('olympic-tug-of-war', 'en', 2, 'Book of strange Olympic history', 'strange Olympic history book', 'Collects odd events, blunders and records from more than 100 years of Olympic Games.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('olympic-tug-of-war', 'en', 1, 'Olympedia: Tug-Of-War', 'https://www.olympedia.org/sports/TOW'),
  ('olympic-tug-of-war', 'en', 2, 'Olympedia: Tug-Of-War at the 1920 Summer Olympics', 'https://www.olympedia.org/editions/7/sports/TOW'),
  ('olympic-tug-of-war', 'en', 3, 'Mental Floss: Tug of War Used to Be an Olympic Sport', 'https://www.mentalfloss.com/article/55107/tug-war-used-be-olympic-sport');
