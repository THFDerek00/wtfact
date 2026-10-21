-- WTFact-Fakt „Der erste Adventskranz war ein Wagenrad mit bis zu 24 Kerzen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('advent-wreath-wagon-wheel', '2026-12-01T00:00:00+01:00', 'history', '🕯️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'advent-wreath-wagon-wheel', 'de', 'erster-adventskranz-wagenrad',
  'Der erste Adventskranz war ein Wagenrad mit bis zu 24 Kerzen',
  'Vier Kerzen? Viel zu wenig. Der Erfinder des Adventskranzes zündete jeden Tag eine neue an.',
  'Der erste Adventskranz von 1839 war ein hölzernes Wagenrad, auf dem jeden Tag bis Heiligabend eine Kerze mehr brannte, je nach Jahr bis zu 24.',
  'Vier Kerzen, Tannengrün, fertig. So sieht ein Adventskranz heute aus. Der allererste hätte auf keinen Wohnzimmertisch gepasst.

## Ein Kalender aus Licht

Hamburg, 1839. Der Theologe Johann Hinrich Wichern leitet das Rauhe Haus, ein Heim für Kinder und Jugendliche aus armen Verhältnissen. Die Kinder fragen ihn im Dezember immer wieder dasselbe: Wann ist endlich Weihnachten?

Wicherns Antwort war ein altes hölzernes Wagenrad. Darauf steckte er Kerzen, eine für jeden Tag vom ersten Advent bis Heiligabend. Jeden Tag kam eine dazu, bis am Ende alle brannten. Damit konnten die Kinder die Zeit bis Weihnachten buchstäblich sehen. Der erste Adventskranz war also eigentlich ein Adventskalender.

## Wie viele Kerzen es wirklich waren

Wie viele Kerzen auf dem Rad standen, hing vom Jahr ab, denn der erste Advent fällt nicht immer auf denselben Tag. Je nach Kalender waren es zwischen 22 und 24 Tagen, also auch so viele Kerzen. Die Stuttgarter Zeitung beschreibt die bekannteste Version mit 23 Kerzen: vier großen weißen für die Sonntage und 19 kleinen roten für die Werktage.

Ganz sicher ist dieses Farbschema allerdings nicht. Laut evangelisch.de gibt es keinen Beleg dafür, dass Wichern verschiedene Größen oder Farben benutzt hat. Möglicherweise waren alle Kerzen gleich.

> Bonusfakt: Wicherns Kranz war so prägend, dass die Bundesbank ihm eine eigene 25-Euro-Sammlermünze gewidmet hat.

Erst später wurde der Kranz handlicher. Tannenzweige kamen dazu, die Zahl der Kerzen schrumpfte auf vier, eine für jeden Sonntag. Das Rauhe Haus steht übrigens noch, heute mitten in Hamburg-Horn.

Wer heute die vierte Kerze anzündet, sieht also nur die Kurzfassung einer Idee, die eigentlich jeden Tag ein bisschen heller werden sollte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('advent-wreath-wagon-wheel', 'de', 1, 'Adventskranz aus Holz zum Selbstbestücken', 'Adventskranz Holz Kerzenhalter modern', 'Ein schlichter Holzkranz, der jedes Jahr wieder aufgestellt werden kann.'),
  ('advent-wreath-wagon-wheel', 'de', 2, 'Bienenwachs-Stabkerzen im Set', 'Bienenwachs Stabkerzen Set rot', 'Brennen ruhig und duften leicht nach Honig.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('advent-wreath-wagon-wheel', 'de', 1, 'evangelisch.de: Neuigkeiten vom Adventskranz', 'https://www.evangelisch.de/inhalte/178946/27-11-2020/neue-erkenntnisse-zum-adventskranz'),
  ('advent-wreath-wagon-wheel', 'de', 2, 'Stuttgarter Zeitung: Adventskranz früher: eine ganze Wagenladung voller Kerzen', 'https://www.stuttgarter-zeitung.de/wissen/weihnachten-adventskranz-frueher-eine-ganze-wagenladung-voller-kerzen-79034545.html'),
  ('advent-wreath-wagon-wheel', 'de', 3, 'Deutsche Bundesbank: 25-Euro-Sammlermünze „Adventskranz“', 'https://www.bundesbank.de/de/aufgaben/bargeld/euro-muenzen/sammlermuenzen/25-euro-sammlermuenze-adventskranz--599188');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'advent-wreath-wagon-wheel', 'en', 'first-advent-wreath-wagon-wheel',
  'The first Advent wreath was a wagon wheel with up to 24 candles',
  'Four candles? Way too few. The man who invented the Advent wreath lit a new one every day.',
  'The first Advent wreath, made in 1839, was a wooden wagon wheel that held one more burning candle each day until Christmas Eve, up to 24 depending on the year.',
  'Four candles, some fir, done. That''s what an Advent wreath looks like today. The very first one wouldn''t have fit on your coffee table.

## A calendar made of light

Hamburg, 1839. The theologian Johann Hinrich Wichern runs the Rauhes Haus, a home for children and teenagers from poor families. Every December, the kids keep asking him the same thing: when is it finally Christmas?

Wichern''s answer was an old wooden wagon wheel. He put candles on it, one for each day from the first Sunday of Advent to Christmas Eve. Each day, one more was lit, until they were all burning. That way the children could literally watch Christmas get closer. The first Advent wreath was really an Advent calendar.

## How many candles there really were

The number of candles depended on the year, because the first Sunday of Advent doesn''t always fall on the same date. Depending on the calendar, Advent lasted between 22 and 24 days, so that''s how many candles there were. The Stuttgarter Zeitung describes the best-known version with 23 candles: four large white ones for the Sundays and 19 small red ones for the weekdays.

That color scheme isn''t certain, though. According to evangelisch.de, there''s no evidence that Wichern used different sizes or colors. All the candles may well have been the same.

> Bonus fact: Wichern''s wreath left such a mark that Germany''s central bank, the Bundesbank, dedicated its own 25-euro collector coin to it.

Only later did the wreath shrink to something you can carry. Fir branches were added and the candles went down to four, one for each Sunday. The Rauhes Haus still exists, by the way, now right in the middle of Hamburg.

So when you light the fourth candle, you''re looking at the short version of an idea that was meant to get a little brighter every single day.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('advent-wreath-wagon-wheel', 'en', 1, 'Wooden Advent candle holder', 'wooden advent wreath candle holder', 'A simple wooden holder you can set up again every year.'),
  ('advent-wreath-wagon-wheel', 'en', 2, 'Beeswax taper candles set', 'beeswax taper candles red set', 'They burn calmly and smell faintly of honey.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('advent-wreath-wagon-wheel', 'en', 1, 'evangelisch.de: Neuigkeiten vom Adventskranz', 'https://www.evangelisch.de/inhalte/178946/27-11-2020/neue-erkenntnisse-zum-adventskranz'),
  ('advent-wreath-wagon-wheel', 'en', 2, 'Stuttgarter Zeitung: Adventskranz früher: eine ganze Wagenladung voller Kerzen', 'https://www.stuttgarter-zeitung.de/wissen/weihnachten-adventskranz-frueher-eine-ganze-wagenladung-voller-kerzen-79034545.html'),
  ('advent-wreath-wagon-wheel', 'en', 3, 'Deutsche Bundesbank: 25-Euro-Sammlermünze „Adventskranz“', 'https://www.bundesbank.de/de/aufgaben/bargeld/euro-muenzen/sammlermuenzen/25-euro-sammlermuenze-adventskranz--599188');
