-- WTFact-Fakt „Volleyball hieß 1895 „Mintonette“ und war ein Schonsport für Geschäftsmänner“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('volleyball-mintonette', '2026-10-03T04:08:12+02:00', 'sport', '🏐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'volleyball-mintonette', 'de', 'volleyball-hiess-mintonette',
  'Volleyball hieß 1895 „Mintonette“ und war ein Schonsport für Geschäftsmänner',
  'Basketball war den Herren im YMCA zu ruppig, also bekamen sie ein eigenes Spiel mit einem Namen, den heute keiner mehr kennt.',
  'Volleyball wurde 1895 von William G. Morgan in Holyoke, Massachusetts, erfunden, hieß zuerst „Mintonette“ und war als sanftere Alternative zu Basketball für Geschäftsmänner gedacht.',
  'Heute knallen beim Volleyball Schmetterbälle übers Netz, dass es nur so kracht. Angefangen hat der Sport als ziemliches Gegenteil davon: **als sanfte Alternative zu Basketball für Geschäftsmänner, und unter dem Namen „Mintonette“.**

## Basketball war den Herren zu ruppig

1895 war William G. Morgan 25 Jahre alt und Sportlehrer beim YMCA in Holyoke, Massachusetts. Ganz in der Nähe, in Springfield, war vier Jahre vorher Basketball erfunden worden, und das neue Spiel verbreitete sich rasend schnell.

Morgans Problem: In seine Halle kamen auch Geschäftsmänner mittleren Alters, die sich sonst eher wenig bewegten. Für sie war Basketball zu anstrengend und hatte zu viel Körperkontakt. Also baute Morgan sich ein eigenes Spiel zusammen. Laut Olympics.com kam der Ball vom Basketball, das Netz vom Tennis und das Spielen mit den Händen vom Handball.

Beim Ball wurde erst mal getüftelt. Morgan testete unter anderem die Gummiblase eines Basketballs, die war aber zu leicht und zu langsam. Einen eigens entwickelten Volleyball gab es erst ab 1900.

## Neun Innings und beliebig viele Ballkontakte

Die ersten Regeln von „Mintonette“ wirken heute ziemlich schräg. Das Netz hing auf 6 Fuß 6 Zoll, also knapp zwei Metern. Ein Match hatte neun Innings, fast wie beim Baseball, und jedes Team schlug pro Inning dreimal auf.

Wie oft ein Team den Ball berühren durfte, bevor er rübermusste? Völlig egal. Eine feste Teamgröße gab es auch nicht. Die Regel mit höchstens drei Ballkontakten pro Seite kam erst 1920.

## Ein Zuschauer findet den besseren Namen

1896 zeigte Morgan sein Spiel mit einem Demo-Team beim YMCA in Springfield. Einem Zuschauer fiel auf, dass die Spieler den Ball die ganze Zeit hin und her „volleyten“. Der Vorschlag: „Volleyball“ wäre doch ein guter Name. Morgan war einverstanden, und „Mintonette“ war Geschichte.

> Anfangs schrieb man den Namen getrennt, also „volley ball“. Erst 1952 wurde „volleyball“ offiziell als ein Wort festgelegt.

Über das Netzwerk des YMCA kam das Spiel bald in andere Länder. 1964 stand Volleyball in Tokio zum ersten Mal auf dem olympischen Programm, Beachvolleyball folgte 1996 in Atlanta. Heute spielen es Schätzungen zufolge über 800 Millionen Menschen.

Nicht schlecht für ein Spiel, das eigentlich nur Bürohengste schonen sollte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('volleyball-mintonette', 'de', 1, 'Volleyball aus weichem Kunstleder', 'Volleyball Kunstleder Größe 5', 'Griffiger Ball in Standardgröße, der sich in der Halle und im Garten gut spielen lässt.'),
  ('volleyball-mintonette', 'de', 2, 'Volleyballnetz-Set für Garten und Strand', 'Volleyballnetz Set Garten', 'Netz mit Pfosten und Abspannung, schnell aufgebaut für ein Match im Park oder am Strand.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('volleyball-mintonette', 'de', 1, 'International Volleyball Hall of Fame: William G. Morgan', 'https://www.volleyhall.org/william-g-morgan.html'),
  ('volleyball-mintonette', 'de', 2, 'Mass Moments: Holyoke Man Invents Volleyball', 'https://www.massmoments.org/moment-details/holyoke-man-invents-volleyball.html'),
  ('volleyball-mintonette', 'de', 3, 'Olympics.com: History of volleyball: From humble beginnings to a global sport', 'https://www.olympics.com/en/news/what-history-volleyball-game-origin-mintonette-ymca-fivb-olympics'),
  ('volleyball-mintonette', 'de', 4, 'Britannica: William G. Morgan', 'https://www.britannica.com/biography/William-G-Morgan'),
  ('volleyball-mintonette', 'de', 5, 'NCVA: History of Volleyball', 'https://ncva.com/info/general-info/history-of-volleyball/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'volleyball-mintonette', 'en', 'volleyball-was-called-mintonette',
  'Volleyball was called "Mintonette" in 1895 and was a gentler game for businessmen',
  'Basketball was too rough for the gentlemen at the YMCA, so they got their own game with a name almost nobody remembers.',
  'Volleyball was invented in 1895 by William G. Morgan in Holyoke, Massachusetts, was first called "Mintonette" and was meant as a gentler alternative to basketball for businessmen.',
  'Today, volleyball spikes slam over the net hard enough to make you flinch. But the sport started out as pretty much the opposite: **a gentle alternative to basketball for businessmen, under the name "Mintonette".**

## Basketball was too rough for the gentlemen

In 1895, William G. Morgan was a 25-year-old gym teacher at the YMCA in Holyoke, Massachusetts. Just down the road in Springfield, basketball had been invented four years earlier, and it was spreading like wildfire.

Morgan''s problem: his gym was also used by middle-aged businessmen who didn''t move around much otherwise. For them, basketball was too strenuous and involved too much physical contact. So Morgan put together a game of his own. According to Olympics.com, the ball came from basketball, the net from tennis and the use of hands from handball.

The ball took some trial and error. Among other things, Morgan tried the rubber bladder of a basketball, but it was too light and too slow. A ball designed specially for the sport only arrived in 1900.

## Nine innings and unlimited touches

The first rules of "Mintonette" look pretty strange today. The net hung at 6 feet 6 inches, just under two meters. A match had nine innings, a bit like baseball, and each team served three times per inning.

How often could a team touch the ball before sending it over? As often as it liked. There was no set team size either. The rule allowing at most three touches per side only came in 1920.

## A spectator comes up with a better name

In 1896, Morgan took a demonstration team to the YMCA in Springfield. A spectator noticed that the players seemed to be volleying the ball back and forth the whole time. The suggestion: "volleyball" would make a good name. Morgan agreed, and "Mintonette" was history.

> At first the name was written as two words, "volley ball". It was only in 1952 that "volleyball" was officially settled on as a single word.

Through the YMCA network, the game soon reached other countries. In 1964, volleyball made its Olympic debut in Tokyo, and beach volleyball followed in 1996 in Atlanta. Today it is estimated that over 800 million people play it.

Not bad for a game that was only supposed to go easy on a few desk-bound businessmen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('volleyball-mintonette', 'en', 1, 'Soft synthetic leather volleyball', 'soft touch volleyball size 5', 'A grippy standard-size ball that works indoors and in the backyard.'),
  ('volleyball-mintonette', 'en', 2, 'Portable volleyball net set', 'portable volleyball net set backyard', 'Net with poles and guy lines that sets up quickly for a match in the park or on the beach.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('volleyball-mintonette', 'en', 1, 'International Volleyball Hall of Fame: William G. Morgan', 'https://www.volleyhall.org/william-g-morgan.html'),
  ('volleyball-mintonette', 'en', 2, 'Mass Moments: Holyoke Man Invents Volleyball', 'https://www.massmoments.org/moment-details/holyoke-man-invents-volleyball.html'),
  ('volleyball-mintonette', 'en', 3, 'Olympics.com: History of volleyball: From humble beginnings to a global sport', 'https://www.olympics.com/en/news/what-history-volleyball-game-origin-mintonette-ymca-fivb-olympics'),
  ('volleyball-mintonette', 'en', 4, 'Britannica: William G. Morgan', 'https://www.britannica.com/biography/William-G-Morgan'),
  ('volleyball-mintonette', 'en', 5, 'NCVA: History of Volleyball', 'https://ncva.com/info/general-info/history-of-volleyball/');
