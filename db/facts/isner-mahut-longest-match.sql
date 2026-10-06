-- WTFact-Fakt „Ein Wimbledon-Match ging über drei Tage, der letzte Satz endete 70:68“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('isner-mahut-longest-match', '2026-10-06T03:59:39+02:00', 'sport', '🎾', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'isner-mahut-longest-match', 'de', 'laengstes-tennismatch-wimbledon-70-68',
  'Ein Wimbledon-Match ging über drei Tage, der letzte Satz endete 70:68',
  'Zwei Tennisprofis spielten 2010 so lange, dass sogar die Anzeigetafel aufgab.',
  'Isner gegen Mahut dauerte in Wimbledon 2010 insgesamt 11 Stunden und 5 Minuten an drei Tagen, der fünfte Satz endete 70:68.',
  'Lange Tennismatches gibt es viele. Das von John Isner und Nicolas Mahut spielt in einer eigenen Liga. **In der ersten Runde von Wimbledon 2010 spielten die beiden 11 Stunden und 5 Minuten, verteilt auf drei Tage, und der fünfte Satz endete 70:68.** Laut Guinness World Records ist das bis heute das längste Profi-Tennismatch.

## Ein Match, drei Tage

Los ging es am 22. Juni 2010 auf Platz 18, einem Nebenplatz, um 18 Uhr. Der US-Amerikaner Isner traf auf den Franzosen Mahut, der sich erst über die Qualifikation ins Turnier gespielt hatte. Am ersten Abend wurde es zu dunkel, es stand 2:2 in Sätzen.

Am nächsten Tag ging der fünfte Satz los. In Wimbledon gab es damals im letzten Satz keinen Tiebreak, also wurde einfach weitergespielt. Und weitergespielt. Beim Stand von 59:59 wurde es schon wieder zu dunkel. Erst am 24. Juni gewann Isner, Endstand 6:4, 3:6, 6:7, 7:6, 70:68.

Allein der fünfte Satz lief 8 Stunden und 11 Minuten und war damit länger als jedes komplette Match vor ihm. Insgesamt kamen 183 Spiele zusammen.

## Die Anzeigetafel gibt auf

Irgendwann konnte selbst die Technik nicht mehr. Die Anzeigetafel am Platz war nur bis 47:47 ausgelegt. Danach streikte sie und musste am Abend repariert werden. Mit so einem Satz hatte schlicht niemand gerechnet.

Dazu kamen die Asse: Mahut schlug 103, Isner laut den Quellen 112 bzw. 113. Der alte Rekord für ein einzelnes Match lag bei 78, aufgestellt von Ivo Karlović.

> Isner verlor sein Zweitrundenmatch gegen den Niederländer Thiemo de Bakker übrigens deutlich mit 0:6, 3:6, 2:6.

## Das Ende der Endlossätze

Isner blieb seinem Ruf treu. Im Halbfinale 2018 verlor er gegen Kevin Anderson mit 24:26 im fünften Satz. Danach beendete Wimbledon laut Tennis.com über 100 Jahre Tradition und führte einen Tiebreak beim Stand von 12:12 im letzten Satz ein.

Mit Tiebreak ist ein 70:68 im letzten Satz nicht mehr möglich. Der Rekord von Platz 18 ist damit praktisch für die Ewigkeit gebucht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('isner-mahut-longest-match', 'de', 1, 'Tennisball-Dosenset', 'Tennisbälle Dose', 'Druckfeste Bälle für viele lange Ballwechsel auf dem Platz.'),
  ('isner-mahut-longest-match', 'de', 2, 'Mini-Tischtennisnetz für jeden Tisch', 'Tischtennisnetz ausziehbar', 'Verwandelt fast jeden Tisch in wenigen Sekunden in eine Spielfläche.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('isner-mahut-longest-match', 'de', 1, 'Guinness World Records: Longest professional tennis match', 'https://www.guinnessworldrecords.com/world-records/longest-professional-tennis-match'),
  ('isner-mahut-longest-match', 'de', 2, 'Tennis Majors: June 24, 2010: The day Isner and Mahut completed the longest match in history', 'https://www.tennismajors.com/wimbledon-news/june-24-2010-the-day-marathon-men-isner-and-mahut-completed-the-longest-match-in-history-267343.html'),
  ('isner-mahut-longest-match', 'de', 3, 'Tennis.com: Ten years later: Reliving Isner and Mahut''s 183-game battle of 70-68', 'https://www.tennis.com/news/articles/ten-years-later-reliving-isner-and-mahut-s-183-game-battle-of-70-68');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'isner-mahut-longest-match', 'en', 'longest-tennis-match-wimbledon-70-68',
  'A Wimbledon match lasted three days, and the final set ended 70-68',
  'Two tennis pros played for so long in 2010 that even the scoreboard gave up.',
  'Isner vs. Mahut at Wimbledon 2010 lasted 11 hours and 5 minutes over three days, and the fifth set ended 70-68.',
  'Plenty of tennis matches run long. The one between John Isner and Nicolas Mahut is in a league of its own. **In the first round of Wimbledon 2010, the two played for 11 hours and 5 minutes, spread over three days, and the fifth set ended 70-68.** According to Guinness World Records, it is still the longest professional tennis match ever.

## One match, three days

It started at 6pm on 22 June 2010 on Court 18, a side court. American Isner faced Frenchman Mahut, who had only made the draw through qualifying. That first evening it got too dark to play, with the score at two sets all.

The fifth set began the next day. Back then, Wimbledon had no tiebreak in the final set, so they just kept playing. And playing. At 59-59, it got too dark again. Only on 24 June did Isner win, 6-4, 3-6, 6-7, 7-6, 70-68.

The fifth set alone lasted 8 hours and 11 minutes, longer than any complete match before it. In total, the two played 183 games.

## The scoreboard gives up

At some point even the technology quit. The courtside scoreboard was only designed to go up to 47-47. After that it broke and had to be fixed that evening. Nobody had planned for a set like this.

Then there were the aces: Mahut hit 103, and Isner 112 or 113, depending on the source. The previous record for a single match was 78, set by Ivo Karlović.

> Isner lost his second-round match to Dutchman Thiemo de Bakker, 0-6, 3-6, 2-6.

## The end of endless sets

Isner kept up his reputation. In the 2018 semifinal, he lost to Kevin Anderson 24-26 in the fifth set. After that, according to Tennis.com, Wimbledon ended more than 100 years of tradition and brought in a final-set tiebreak at 12-all.

With a tiebreak in place, a 70-68 final set is no longer possible. Court 18 holds a record that is basically booked forever.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('isner-mahut-longest-match', 'en', 1, 'Can of tennis balls', 'tennis balls can', 'Pressurized balls built for plenty of long rallies on court.'),
  ('isner-mahut-longest-match', 'en', 2, 'Retractable table tennis net', 'retractable table tennis net', 'Turns almost any table into a playing surface in seconds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('isner-mahut-longest-match', 'en', 1, 'Guinness World Records: Longest professional tennis match', 'https://www.guinnessworldrecords.com/world-records/longest-professional-tennis-match'),
  ('isner-mahut-longest-match', 'en', 2, 'Tennis Majors: June 24, 2010: The day Isner and Mahut completed the longest match in history', 'https://www.tennismajors.com/wimbledon-news/june-24-2010-the-day-marathon-men-isner-and-mahut-completed-the-longest-match-in-history-267343.html'),
  ('isner-mahut-longest-match', 'en', 3, 'Tennis.com: Ten years later: Reliving Isner and Mahut''s 183-game battle of 70-68', 'https://www.tennis.com/news/articles/ten-years-later-reliving-isner-and-mahut-s-183-game-battle-of-70-68');
