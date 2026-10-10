-- WTFact-Fakt „Den Elfmeter hat ein Torwart erfunden, dessen Team alle 14 Spiele verlor“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('penalty-kick-goalkeeper-mccrum', '2026-10-13T08:00:00+02:00', 'sport', '⚽', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'penalty-kick-goalkeeper-mccrum', 'de', 'elfmeter-von-torwart-erfunden',
  'Den Elfmeter hat ein Torwart erfunden, dessen Team alle 14 Spiele verlor',
  'Der dramatischste Moment im Fußball stammt vom Keeper des schlechtesten Teams der Liga.',
  'Den Strafstoß hat William McCrum vorgeschlagen, Torwart des Milford FC, der in der ersten Saison der Irish Football League 1890/91 alle 14 Spiele verlor.',
  'Jedes Elfmeterschießen, bei dem du je an den Fingernägeln gekaut hast, geht auf einen einzigen Mann zurück. Und der war kein Stürmer. William McCrum war Torwart, und zwar kein besonders erfolgreicher.

## Das schlechteste Team der Liga

McCrum stand für den Milford FC im Tor, einen Dorfverein aus dem County Armagh im heutigen Nordirland. Er war Erbe einer reichen Leinenfabrikanten-Familie und hatte am Trinity College Dublin studiert. In der allerersten Saison der Irish Football League, 1890/91, verlor Milford alle 14 Spiele, holte 0 Punkte und kassierte 62 Gegentore.

Genervt von absichtlichen Fouls vor dem Tor hatte McCrum 1890 eine Idee: einen freien Schuss aufs Tor aus 12 Yards, wann immer ein Verteidiger nahe am eigenen Tor absichtlich foult oder den Ball mit der Hand spielt. Als Mitglied des irischen Fußballverbands brachte er den Vorschlag bis zum International Football Association Board (IFAB). Kritiker verspotteten ihn als „Irishman''s motion“, den Antrag des Iren.

## Ein Handspiel ändert alles

Dann kam ein Viertelfinale im FA Cup im Februar 1891. Notts County führte gegen Stoke in der letzten Minute 1:0, als ein Verteidiger von County einen Schuss, der ins Tor gegangen wäre, einfach mit der Hand abwehrte. Die Regeln erlaubten nur einen indirekten Freistoß, also stellten sich die County-Spieler auf die Torlinie und blockten ihn. Stoke war raus.

Diese Szene half, die Stimmung zu drehen. Im Juni 1891 beschloss das IFAB bei einem Treffen in Glasgow den Strafstoß. Die erste Version sah etwas anders aus: Der Ball lag irgendwo auf einer Linie 12 Yards vor dem Tor, und der Torwart durfte bis zu 6 Yards herauskommen. Den Elfmeterpunkt gibt es erst seit 1902.

> Bonusfakt: Nicht alle fanden die Idee gut. Viele Gentlemen des Spiels wollten nicht glauben, dass ein Gentleman je absichtlich foulen würde, und der Torwart der Corinthians soll bei Strafstößen einfach zur Seite getreten sein.

McCrum selbst verlor das Familienvermögen und starb 1932 fast mittellos. Heute nennt sich Milford die Heimat des Elfmeters. Gar nicht schlecht für den Keeper eines Teams, das eine ganze Saison lang keinen einzigen Punkt geholt hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('penalty-kick-goalkeeper-mccrum', 'de', 1, 'Faltbares Mini-Fußballtor-Set', 'Pop up Mini Fußballtor Set', 'Lässt sich flach zusammenfalten und macht jeden Garten zum Elfmeterpunkt.'),
  ('penalty-kick-goalkeeper-mccrum', 'de', 2, 'Torwarthandschuhe', 'Torwarthandschuhe Fußball', 'Gepolsterte Handschuhe mit Grip für alle, die lieber halten als schießen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('penalty-kick-goalkeeper-mccrum', 'de', 1, 'The University Times: William McCrum: Trinity''s Forgotten Sporting Hero', 'https://universitytimes.ie/2024/04/william-mccrum-trinitys-forgotten-sporting-hero/'),
  ('penalty-kick-goalkeeper-mccrum', 'de', 2, 'Outside Write: The ''Irishman''s Motion'' and the Birth of the Penalty Kick', 'https://outsidewrite.co.uk/the-irishmans-motion-and-the-birth-of-the-penalty-kick'),
  ('penalty-kick-goalkeeper-mccrum', 'de', 3, 'Wikipedia: William McCrum', 'https://en.wikipedia.org/wiki/William_McCrum');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'penalty-kick-goalkeeper-mccrum', 'en', 'penalty-kick-invented-by-goalkeeper',
  'The penalty kick was invented by a goalkeeper whose team lost all 14 games',
  'Football''s most dramatic moment was dreamed up by the keeper of the worst team in the league.',
  'The penalty kick was proposed by William McCrum, goalkeeper of Milford FC, a club that lost all 14 of its games in the first Irish Football League season of 1890-91.',
  'Every penalty shootout you have ever bitten your nails through goes back to one man. And he wasn''t a striker. William McCrum was a goalkeeper, and not exactly a successful one.

## The worst team in the league

McCrum kept goal for Milford FC, a club from a village in County Armagh, in what is now Northern Ireland. He was the heir of a wealthy linen family and had studied at Trinity College Dublin. In the very first season of the Irish Football League, 1890-91, Milford lost all 14 of its games, finished with 0 points and conceded 62 goals.

Fed up with deliberate fouls near the goal, McCrum came up with a fix in 1890: a free shot at goal from 12 yards whenever a defender fouled or handled the ball on purpose close to his own goal. As a member of the Irish Football Association, he got the idea passed on to the International Football Association Board (IFAB). Critics mocked it as the "Irishman''s motion".

## A handball changes everything

Then came an FA Cup quarter-final in February 1891. Notts County led Stoke 1-0 in the final minute when a County defender simply handled a goal-bound shot. The rules only allowed an indirect free kick, so County players lined up on the goal line and blocked it. Stoke were out.

That scene helped turn opinion. In June 1891, IFAB approved the penalty kick at a meeting in Glasgow. The early version looked a bit different: the ball went anywhere on a line 12 yards from goal, and the goalkeeper was allowed to come out up to 6 yards. The penalty spot only arrived in 1902.

> Bonus fact: Not everyone liked the idea. Many gentlemen of the game refused to believe a gentleman would ever foul on purpose, and the Corinthians goalkeeper reportedly stepped aside when facing a penalty.

McCrum himself lost the family fortune and died almost destitute in 1932. Today Milford calls itself the home of the penalty kick. Not bad for the keeper of a team that didn''t earn a single point all season.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('penalty-kick-goalkeeper-mccrum', 'en', 1, 'Pop-up mini football goal set', 'pop up mini football goal set', 'Folds flat and turns any garden or park into a penalty spot.'),
  ('penalty-kick-goalkeeper-mccrum', 'en', 2, 'Goalkeeper gloves', 'goalkeeper gloves football', 'Padded gloves with grip for anyone who prefers saving shots to taking them.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('penalty-kick-goalkeeper-mccrum', 'en', 1, 'The University Times: William McCrum: Trinity''s Forgotten Sporting Hero', 'https://universitytimes.ie/2024/04/william-mccrum-trinitys-forgotten-sporting-hero/'),
  ('penalty-kick-goalkeeper-mccrum', 'en', 2, 'Outside Write: The ''Irishman''s Motion'' and the Birth of the Penalty Kick', 'https://outsidewrite.co.uk/the-irishmans-motion-and-the-birth-of-the-penalty-kick'),
  ('penalty-kick-goalkeeper-mccrum', 'en', 3, 'Wikipedia: William McCrum', 'https://en.wikipedia.org/wiki/William_McCrum');
