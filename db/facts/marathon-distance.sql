-- WTFact-Fakt „Der Marathon ist 42,195 Kilometer lang, weil London 1908 so gelaufen wurde“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('marathon-distance', '2026-09-11', 'sport', '🏃', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'marathon-distance', 'de', 'marathon-42-kilometer-1908',
  'Der Marathon ist 42,195 Kilometer lang, weil London 1908 so gelaufen wurde',
  'Eigentlich waren es mal rund 40 Kilometer. Dann kamen die Olympischen Spiele in London und ein Schloss.',
  'Die krumme Marathondistanz von 42,195 Kilometern stammt von der Strecke der Olympischen Spiele 1908, die von Schloss Windsor bis vor die königliche Loge im Stadion führte.',
  '42,195 Kilometer. Eine absurd krumme Zahl für einen der bekanntesten Wettkämpfe der Welt. Warum nicht einfach 42 oder 40? **Die Antwort liegt in London, im Jahr 1908, und hat mit einem Schloss und einer königlichen Loge zu tun.**

## Anfangs waren es rund 40 Kilometer

Der Marathon geht auf eine griechische Legende zurück: Ein Bote soll von Marathon nach Athen gelaufen sein, um einen Sieg zu verkünden. Als die modernen Olympischen Spiele 1896 in Athen starteten, legten die Veranstalter die Strecke deshalb auf etwa 40 Kilometer fest. Eine feste Norm gab es danach noch nicht.

## Von Windsor bis vor die Loge

Bei den Spielen 1908 in London startete der Marathon an **Schloss Windsor** und endete im Olympiastadion. Laut World Athletics wurde die Strecke zuerst auf 26 Meilen gebracht und dann um weitere 385 Yards verlängert. Der Grund in der bekanntesten Version: Der Start wurde zurückverlegt, damit die königlichen Kinder ihn aus dem Fenster des Kinderzimmers im Schloss sehen konnten.

Zusammen ergibt das 26 Meilen und 385 Yards, also genau 42,195 Kilometer. Der offizielle Bericht von 1908 hält fest, dass die letzten 385 Yards auf der Aschenbahn im Stadion gelaufen wurden, bis zum Ziel direkt unter der königlichen Loge.

> Gestartet wurde das Rennen 1908 in Windsor laut Boston.com von Prinzessin Mary, und im Stadion sollte das Rennen vor Queen Alexandra enden.

## Die Geschichte hat einen Haken

Ob die Royals wirklich darum gebeten haben, ist umstritten. Laut Boston.com nannte der Olympiahistoriker Bob Wilcox die Kinderzimmer-Version einen Mythos, weil sich in den königlichen Archiven kein Beleg dafür finden ließ. Sicher ist nur: Die Strecke von 1908 war genau so lang.

Und genau diese Länge machte der internationale Leichtathletikverband 1921 offiziell zur Norm. Seitdem misst jeder Marathon auf der Welt 42,195 Kilometer, egal ob in Berlin, New York oder Tokio.

Die letzten 195 Meter, über die alle fluchen, verdanken Läuferinnen und Läufer also einem Londoner Streckenplan von 1908.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('marathon-distance', 'de', 1, 'Poster mit der Marathondistanz', 'Marathon 42,195 Poster', 'Typo-Poster für alle, die die Zahl schon mal gelaufen sind oder einfach mögen.'),
  ('marathon-distance', 'de', 2, 'Sachbuch zur Geschichte des Marathons', 'Geschichte Marathon Buch', 'Erzählt, wie aus einer griechischen Legende ein weltweites Laufevent wurde.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('marathon-distance', 'de', 1, 'World Athletics: Queen Elizabeth marks 1908 London Olympics and centenary of “classic marathon distance”', 'https://worldathletics.org/news/news/queen-elizabeth-marks-1908-london-olympics-an'),
  ('marathon-distance', 'de', 2, 'Boston.com: Why is a marathon 26.2 miles?', 'https://www.boston.com/sports/boston-marathon/2025/04/15/why-is-a-marathon-26-2-miles-2/'),
  ('marathon-distance', 'de', 3, 'IFLScience: Why Is A Marathon 26.2 Miles? Some Blame The British Royal Family', 'https://www.iflscience.com/why-is-a-marathon-262-miles-some-blame-the-british-royal-family-73883');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'marathon-distance', 'en', 'marathon-distance-1908',
  'A marathon is 26.2 miles because of how London ran it in 1908',
  'It used to be about 40 kilometers. Then came the London Olympics and a castle.',
  'The oddly specific marathon distance of 26 miles 385 yards comes from the 1908 Olympic course, which ran from Windsor Castle to a finish below the royal box.',
  '26.2 miles, or 42.195 kilometers. An absurdly specific number for one of the most famous races in the world. Why not just 26 miles, or 40 kilometers? **The answer lies in London in 1908, and it involves a castle and a royal box.**

## It started at about 40 kilometers

The marathon goes back to a Greek legend: a messenger is said to have run from Marathon to Athens to announce a victory. When the modern Olympic Games began in Athens in 1896, organizers set the course at about 40 kilometers. There was no fixed standard after that.

## From Windsor to the royal box

At the 1908 Games in London, the marathon started at **Windsor Castle** and finished in the Olympic stadium. According to World Athletics, the course was first set at 26 miles and then extended by another 385 yards. The reason, in the best-known version: the start was moved back so the royal children could watch it from the nursery window at the castle.

Put together, that makes 26 miles and 385 yards, or exactly 42.195 kilometers. The official 1908 report notes that the last 385 yards were run on the cinder track inside the stadium, finishing right below the royal box.

> According to Boston.com, Princess Mary started the 1908 race at Windsor, and it was meant to finish in front of Queen Alexandra in the stadium.

## The story has a catch

Whether the royals actually asked for it is disputed. According to Boston.com, Olympic historian Bob Wilcox called the nursery version a myth, because no evidence for it turned up in the royal archives. The only certain thing: the 1908 course was exactly that long.

And that exact length is what the international athletics federation made the official standard in 1921. Since then, every marathon on the planet measures 26.2 miles, whether it''s in Berlin, New York or Tokyo.

So the last 385 yards that everyone curses are a souvenir of one London course map from 1908.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('marathon-distance', 'en', 1, 'Marathon 26.2 typography poster', 'marathon 26.2 poster print', 'A clean wall print for anyone who has run the distance or just loves the number.'),
  ('marathon-distance', 'en', 2, 'History of the marathon book', 'history of the marathon book', 'Tells how a Greek legend turned into a global running event.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('marathon-distance', 'en', 1, 'World Athletics: Queen Elizabeth marks 1908 London Olympics and centenary of “classic marathon distance”', 'https://worldathletics.org/news/news/queen-elizabeth-marks-1908-london-olympics-an'),
  ('marathon-distance', 'en', 2, 'Boston.com: Why is a marathon 26.2 miles?', 'https://www.boston.com/sports/boston-marathon/2025/04/15/why-is-a-marathon-26-2-miles-2/'),
  ('marathon-distance', 'en', 3, 'IFLScience: Why Is A Marathon 26.2 Miles? Some Blame The British Royal Family', 'https://www.iflscience.com/why-is-a-marathon-262-miles-some-blame-the-british-royal-family-73883');
