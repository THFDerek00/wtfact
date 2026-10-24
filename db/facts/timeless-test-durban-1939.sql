-- WTFact-Fakt „Das längste Cricket-Testspiel der Geschichte zog sich über 12 Tage und endete unentschieden, weil England sein Schiff erwischen musste“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('timeless-test-durban-1939', '2026-10-28T12:00:00+01:00', 'sport', '🏏', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'timeless-test-durban-1939', 'de', 'laengstes-cricket-testspiel-12-tage',
  'Das längste Cricket-Testspiel der Geschichte zog sich über 12 Tage und endete unentschieden, weil England sein Schiff erwischen musste',
  '1939 wollte ein Cricketspiel ohne Zeitlimit einfach nicht enden, bis ein Zugfahrplan es beendete.',
  'Der letzte „Timeless Test“, England gegen Südafrika 1939 in Durban, zog sich über 12 Tage und wurde als Unentschieden abgebrochen, 42 Runs vor dem englischen Sieg, weil die Mannschaft den Zug zum Schiff nach Hause erwischen musste.',
  'Fast jeder Sport läuft nach der Uhr. 1939 versuchte Cricket es ohne, und das Spiel wollte einfach nicht aufhören.

## Ein Spiel ohne Zeitlimit

Manche Testspiele, also offizielle Länderspiele im Cricket, waren früher „timeless“: ohne Zeitlimit, gespielt, bis eine Seite gewinnt. Laut Wikipedia gab es zwischen 1877 und 1939 genau 99 davon. Das letzte begann am 3. März 1939 in Durban als fünfter Test zwischen Südafrika und England. England führte in der Serie 1:0, dieses Spiel sollte sie entscheiden. Erwartete Dauer laut Wikipedia: höchstens fünf Tage.

Es wurden 12. The Books Page zählt neun Spieltage, einen verregneten Tag und zwei Ruhetage.

## Jagd auf 696

Südafrika kam auf 530 und 481 Runs, England im ersten Durchgang auf 316. Damit brauchte England 696 Runs zum Sieg, und statt einzubrechen, schlug die Mannschaft immer weiter. Bill Edrich, der laut The Books Page im ersten Durchgang gerade mal einen Run geschafft hatte, machte laut It''s Only Cricket 219. Laut The Books Page war er damit der erste Engländer mit einem Doppel-Century im zweiten Durchgang eines Tests. Der Platz half den Schlagmännern: Jeden Morgen presste die schwere Walze Feuchtigkeit aus dem Lehm darunter, und die Sonne backte ihn wieder hart.

Am 14. März stand England bei 654 Runs mit 5 verlorenen Wickets. Nur noch 42 Runs fehlten. Dann stoppte Regen das Spiel, und die Gäste mussten los: Sie brauchten den Zug nach Kapstadt, um das Postschiff nach Hause zu erreichen. Hätten sie es verpasst, hätten sie mindestens noch einen Monat warten müssen. Das Spiel endete unentschieden.

> Bonusfakt: Südafrikas Kapitän Alan Melville verlor den Überblick über die Tage und kam an einem Ruhetag zum Frühstück. Ein Kellner musste ihm sagen, dass an diesem Tag gar nicht gespielt wurde.

## Das Ende einer Ära

Timeless Tests wurden abgeschafft, weil niemand vorhersagen konnte, wann sie enden, und das machte Planung und Geschäft schwierig. Durban war der letzte. Laut Wikipedia sind Englands 654 Runs der höchste je verzeichnete Wert in einem vierten Durchgang im First-Class-Cricket.

Zwölf Tage Cricket, kein Sieger, und das letzte Wort hatte der Zugfahrplan.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('timeless-test-durban-1939', 'de', 1, 'Cricket-Set aus Holz', 'Cricket Set Holz Schläger Ball', 'Schläger, Ball und Stäbe für ein Spiel im Park oder Garten.'),
  ('timeless-test-durban-1939', 'de', 2, 'Buch zur Geschichte des Crickets', 'Cricket Geschichte Buch', 'Erzählt die lange Geschichte des Sports, vom Dorfplatz bis zum Testspiel.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('timeless-test-durban-1939', 'de', 1, 'It''s Only Cricket: The Longest Cricket Match in History - the "Timeless Test"', 'https://www.itsonlycricket.com/longest-cricket-match-in-history'),
  ('timeless-test-durban-1939', 'de', 2, 'The Books Page: The last timeless test and the end of a cricketing era', 'https://thebookspage.co.za/2018/01/08/the-last-timeless-test-and-the-end-of-a-cricketing-era/'),
  ('timeless-test-durban-1939', 'de', 3, 'Wikipedia: Timeless Test', 'https://en.wikipedia.org/wiki/Timeless_Test');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'timeless-test-durban-1939', 'en', 'longest-cricket-test-12-days',
  'The longest Test match in cricket history stretched over 12 days and ended in a draw because England had to catch their boat',
  'In 1939, a cricket match with no time limit simply would not end, until a train timetable ended it.',
  'The last timeless Test, England against South Africa in Durban in 1939, stretched over 12 days and was abandoned as a draw with England 42 runs short, because the team had to catch the train to the boat home.',
  'Most sports run on a clock. In 1939, cricket tried playing without one, and the match simply refused to end.

## A game with no time limit

Some Test matches used to be timeless: no time limit, played until one side won. According to Wikipedia, there were 99 of them between 1877 and 1939. The last one began on 3 March 1939 in Durban as the fifth Test between South Africa and England. England led the series 1-0, so this match was meant to settle it. Expected length, according to Wikipedia: no more than five days.

It lasted 12. The Books Page counts nine days of play, one day rained off and two rest days.

## Chasing 696

South Africa scored 530 and 481, England made 316 in their first innings. That left England a target of 696 runs, and instead of collapsing, they kept batting. Bill Edrich, who according to The Books Page had managed just one run in the first innings, scored 219, according to It''s Only Cricket. The Books Page says he became the first Englishman to score a double century in the second innings of a Test. The pitch kept helping the batters: each morning the heavy roller squeezed moisture out of the clay underneath, and the sun baked it hard again.

By 14 March, England were 654 for 5. Only 42 runs short. Then rain stopped play, and the visitors had to go: they needed the train to Cape Town to reach the mailboat home. Missing it would have meant waiting at least another month. The match ended as a draw.

> Bonus fact: South Africa''s captain Alan Melville lost track of the days and turned up for breakfast on a rest day. A waiter had to tell him there was no play that day.

## The end of an era

Timeless Tests were dropped because nobody could predict when they would finish, which caused scheduling and commercial problems. Durban was the last one. According to Wikipedia, England''s 654 for 5 is the highest fourth-innings score on record in first-class cricket.

Twelve days of cricket, no winner, and the final decision went to the railway timetable.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('timeless-test-durban-1939', 'en', 1, 'Wooden cricket set', 'wooden cricket set bat ball stumps', 'Bat, ball and stumps for a game in the park or the garden.'),
  ('timeless-test-durban-1939', 'en', 2, 'Cricket history book', 'cricket history book', 'Tells the long story of the sport, from village greens to Test matches.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('timeless-test-durban-1939', 'en', 1, 'It''s Only Cricket: The Longest Cricket Match in History - the "Timeless Test"', 'https://www.itsonlycricket.com/longest-cricket-match-in-history'),
  ('timeless-test-durban-1939', 'en', 2, 'The Books Page: The last timeless test and the end of a cricketing era', 'https://thebookspage.co.za/2018/01/08/the-last-timeless-test-and-the-end-of-a-cricketing-era/'),
  ('timeless-test-durban-1939', 'en', 3, 'Wikipedia: Timeless Test', 'https://en.wikipedia.org/wiki/Timeless_Test');
