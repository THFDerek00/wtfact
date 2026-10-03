-- WTFact-Fakt „Die DDR-Nationalelf gewann ihr letztes Länderspiel, mit nur 14 Spielern im Kader“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('gdr-last-football-match', '2026-10-03T11:51:32+02:00', 'sport', '⚽', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'gdr-last-football-match', 'de', 'letztes-ddr-laenderspiel-gewonnen',
  'Die DDR-Nationalelf gewann ihr letztes Länderspiel, mit nur 14 Spielern im Kader',
  'Drei Wochen vor der Einheit spielte die DDR noch einmal Fußball. Fast keiner wollte mit, gewonnen haben sie trotzdem.',
  'Am 12. September 1990 bestritt die DDR-Fußballnationalmannschaft ihr letztes Länderspiel und gewann in Brüssel 2:0 gegen Belgien, obwohl nur 14 Spieler angereist waren.',
  'Ein Länderspiel, für das 22 Spieler absagen, klingt nach einer Pleite mit Ansage. **Am 12. September 1990 gewann die DDR-Nationalmannschaft trotzdem: 2:0 gegen Belgien, im allerletzten Spiel ihrer Geschichte.**

## Ein Qualifikationsspiel, das keins mehr war

Eigentlich sollte die Partie in Brüssel ein Qualifikationsspiel für die EM 1992 in Schweden werden. Doch die Einheit kam schneller als gedacht. Der DDR-Verband meldete seine Mannschaft von der Qualifikation ab, und aus dem Pflichtspiel wurde ein Freundschaftsspiel. Drei Wochen später, am 3. Oktober, gab es die DDR nicht mehr.

Für Trainer Eduard „Ede“ Geyer wurde die Kaderplanung zum Problem. Laut Fussballdaten hatten ihm 22 Spieler abgesagt, darunter Ulf Kirsten und Thomas Doll. Eurosport beschreibt die Stimmung so: Nach dem Mauerfall hatte jeder mit sich selbst zu tun. Am Ende reisten nur 14 Spieler nach Brüssel.

## Zwei Tore vom Mann, der eigentlich gehen wollte

Ausgerechnet Matthias Sammer, damals beim VfB Stuttgart, wäre beinahe auch nicht geblieben. Er erzählte später, er habe eigentlich gar nicht bleiben wollen, aber an dem Abend sei kein Flugzeug mehr gegangen. Also spielte er mit und schoss beide Tore zum 2:0 im Constant-Vanden-Stock-Stadion.

Laut Berliner Kurier soll Geyer sein Team vorher mit dem Satz „Ihr könnt Geschichte schreiben!“ angefeuert haben. Hat geklappt: Die Tore von Sammer waren die letzten, die eine DDR-Auswahl je geschossen hat.

> Mit dem Sieg in Brüssel endete die Bilanz der DDR-Nationalelf nach Angaben von Fussballdaten bei 138 Siegen in 293 Länderspielen.

Sammer spielte danach für die gesamtdeutsche Nationalmannschaft und wurde 1996 Europameister, mit einem Team, das es 1990 so noch gar nicht gab.

Ein Abschied mit Rumpfkader, aber immerhin ohne Niederlage.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('gdr-last-football-match', 'de', 1, 'Sachbuch zur Geschichte des DDR-Fußballs', 'Buch Geschichte DDR Fußball', 'Erzählt von Oberliga, Länderspielen und Stars, die nach 1990 in den Westen wechselten.'),
  ('gdr-last-football-match', 'de', 2, 'Mini-Tischkicker für den Schreibtisch', 'Mini Tischkicker Tischfußball', 'Kleiner Kicker für schnelle Duelle zwischendurch, passt auf jeden Tisch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('gdr-last-football-match', 'de', 1, 'Fussballdaten: Einheits-Special: Das letzte Länderspiel der DDR', 'https://www.fussballdaten.de/news/nationalmannschaften/einheits-special-das-letzte-landerspiel-der-ddr-0442521e/'),
  ('gdr-last-football-match', 'de', 2, 'Berliner Kurier: Letztes DDR-Länderspiel: Was wurde aus den Helden von einst?', 'https://www.berliner-kurier.de/fussball/letztes-ddr-laenderspiel-was-wurde-aus-den-helden-von-einst-li.104476'),
  ('gdr-last-football-match', 'de', 3, 'Eurosport: Kein Tag wie jeder andere: Das letzte Länderspiel der DDR', 'https://www.eurosport.de/alle-sportarten/special/2023/kein-tag-wie-jeder-andere-das-letzte-landerspiel-der-ddr_sto9788278/story.shtml');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'gdr-last-football-match', 'en', 'east-germany-won-last-football-match',
  'East Germany won its last international football match with just 14 players in the squad',
  'Three weeks before reunification, East Germany played one more game. Hardly anyone wanted to go, and they won anyway.',
  'On September 12, 1990, the East German national football team played its last international match and beat Belgium 2-0 in Brussels, even though only 14 players had made the trip.',
  'An international match where 22 players turn down the call-up sounds like a disaster waiting to happen. **But on September 12, 1990, East Germany''s national team won anyway: 2-0 against Belgium, in the very last match in its history.**

## A qualifier that no longer was one

The game in Brussels was originally supposed to be a qualifier for Euro 1992 in Sweden. But reunification came faster than expected. The East German football association withdrew its team from qualifying, and the competitive match turned into a friendly. Three weeks later, on October 3, East Germany no longer existed.

For coach Eduard "Ede" Geyer, putting a squad together became a real problem. According to Fussballdaten, 22 players turned him down, including Ulf Kirsten and Thomas Doll. Eurosport describes the mood like this: after the fall of the Wall, everyone was busy with their own lives. In the end, only 14 players travelled to Brussels.

## Two goals from the man who wanted to leave

Of all people, Matthias Sammer, then playing for VfB Stuttgart, almost didn''t stay either. He later said he hadn''t really wanted to stay, but there were no more flights that evening. So he played, and he scored both goals in the 2-0 win at the Constant Vanden Stock Stadium.

According to the Berliner Kurier, Geyer fired up his team beforehand with the words "You can make history!" It worked: Sammer''s goals were the last ever scored by an East German national team.

> With the win in Brussels, the East German national team finished with 138 wins in 293 international matches, according to Fussballdaten.

Sammer went on to play for the reunified German national team and won the European Championship in 1996, with a team that didn''t even exist in this form in 1990.

A farewell with a skeleton squad, but at least without a defeat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('gdr-last-football-match', 'en', 1, 'Book on the history of East German football', 'East German football history book', 'Covers the league, the national team and the stars who moved West after 1990.'),
  ('gdr-last-football-match', 'en', 2, 'Mini desktop foosball table', 'mini desktop foosball table', 'A small table football game for quick matches, fits on any desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('gdr-last-football-match', 'en', 1, 'Fussballdaten: Einheits-Special: Das letzte Länderspiel der DDR', 'https://www.fussballdaten.de/news/nationalmannschaften/einheits-special-das-letzte-landerspiel-der-ddr-0442521e/'),
  ('gdr-last-football-match', 'en', 2, 'Berliner Kurier: Letztes DDR-Länderspiel: Was wurde aus den Helden von einst?', 'https://www.berliner-kurier.de/fussball/letztes-ddr-laenderspiel-was-wurde-aus-den-helden-von-einst-li.104476'),
  ('gdr-last-football-match', 'en', 3, 'Eurosport: Kein Tag wie jeder andere: Das letzte Länderspiel der DDR', 'https://www.eurosport.de/alle-sportarten/special/2023/kein-tag-wie-jeder-andere-das-letzte-landerspiel-der-ddr_sto9788278/story.shtml');
