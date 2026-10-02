-- WTFact-Fakt „Luftpolsterfolie sollte 1957 eigentlich an die Wand“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('bubble-wrap', '2026-08-30', 'weird', '🫧', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bubble-wrap', 'de', 'luftpolsterfolie-tapete',
  'Luftpolsterfolie sollte 1957 eigentlich an die Wand',
  'Das Zeug, das du so gern zerploppst, war als schicke Tapete gedacht. Und floppte.',
  'Luftpolsterfolie wurde 1957 als strukturierte Tapete erfunden. Erst als das niemand wollte, wurde sie zur Verpackung.',
  'Stell dir vor, dein Wohnzimmer wäre mit Luftpolsterfolie tapeziert. Klingt nach einem schlechten Witz, war aber 1957 ein ernst gemeinter Plan. Und genau aus diesem Fehlschlag ist eines der beliebtesten Verpackungsmaterialien der Welt entstanden.

## Zwei Duschvorhänge und eine Idee

Die beiden Ingenieure Alfred Fielding und Marc Chavannes wollten in den USA eine neue Art von Tapete erfinden. **Eine aus Kunststoff, mit plastischer Struktur**, modern, leicht zu reinigen. Laut Smithsonian Magazine zielten sie damit auf die junge, stilbewusste Beat-Generation.

Für ihren Versuch schickten sie zwei Stücke Duschvorhang durch eine Heißsiegelmaschine. Heraus kam aber keine elegante Wandverkleidung, sondern eine Folie voller eingeschlossener Luftblasen. Als Tapete wollte das niemand haben.

## Plan B, Plan C, Plan IBM

Die Erfinder gaben nicht auf und suchten neue Einsatzzwecke. Einer davon war Isolierung für Gewächshäuser. Auch das funktionierte nicht richtig.

**1960 gründeten sie die Firma Sealed Air**, und dann kam der Durchbruch von unerwarteter Seite: IBM brachte gerade den Computer IBM 1401 auf den Markt. Die empfindlichen Geräte mussten heil beim Kunden ankommen. Die Luftblasenfolie war genau die richtige Lösung. „Das war die Antwort auf die Probleme von IBM“, sagt Chad Stephens von Sealed Air im Smithsonian Magazine.

Ab da ging es steil bergauf. Verpackung statt Wanddeko, Schutzpolster statt Designerstück.

## Warum Ploppen so zufrieden macht

Heute steht Luftpolsterfolie in jedem Versandlager und in vielen Kellern. Viele Leute lieben vor allem das Geräusch, wenn die Blasen platzen. **Aus der Tapete, die niemand wollte, wurde ein Stressabbau-Spielzeug, das fast jeder kennt.** Es gibt sogar Plopp-Spielzeug aus Silikon, das genau dieses Gefühl nachahmt.

> Fielding und Chavannes erhielten für ihre Arbeit insgesamt 6 Patente, vor allem für Verfahren zum Prägen und Laminieren von Kunststoff.

Manchmal ist der größte Erfolg einfach das, was übrig bleibt, wenn der eigentliche Plan scheitert. Hier sogar mit Soundeffekt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bubble-wrap', 'de', 1, 'Luftpolsterfolie auf der Rolle', 'Luftpolsterfolie Rolle', 'Schützt alles, was verschickt wird. Und ein paar Blasen bleiben immer zum Ploppen übrig.'),
  ('bubble-wrap', 'de', 2, 'Plopp-Fidget-Spielzeug aus Silikon', 'Pop it Fidget Spielzeug Silikon', 'Endloses Ploppen ohne Müll: Die Silikonblasen lassen sich immer wieder zurückdrücken.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bubble-wrap', 'de', 1, 'Wikipedia: Luftpolsterfolie', 'https://de.wikipedia.org/wiki/Luftpolsterfolie'),
  ('bubble-wrap', 'de', 2, 'Smithsonian Magazine: The Accidental Invention of Bubble Wrap', 'https://www.smithsonianmag.com/innovation/accidental-invention-bubble-wrap-180971325/'),
  ('bubble-wrap', 'de', 3, 'Invention & Technology: Bubble Wrap: From Wallpaper To Stress Reliever', 'https://www.inventionandtech.com/content/bubble-wrap-wallpaper-stress-reliever');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bubble-wrap', 'en', 'bubble-wrap-wallpaper',
  'Bubble wrap was supposed to go on your walls in 1957',
  'The stuff you love popping was meant to be trendy wallpaper. It flopped.',
  'Bubble wrap was invented in 1957 as textured wallpaper. Only when nobody wanted it did it become packaging.',
  'Picture your living room covered wall to wall in bubble wrap. Sounds like a bad joke, but in 1957 it was a serious plan. And that failed plan gave us one of the most popular packing materials on the planet.

## Two shower curtains and an idea

Engineers Alfred Fielding and Marc Chavannes set out to invent a new kind of wallpaper. **Plastic, with a 3D texture**, modern and easy to clean. According to Smithsonian Magazine, they were aiming it at the young, style-conscious Beat generation.

For their experiment, they ran two pieces of shower curtain through a heat-sealing machine. What came out wasn''t sleek wall decor, though. It was a sheet full of trapped air bubbles. As wallpaper, nobody wanted it.

## Plan B, Plan C, Plan IBM

The inventors didn''t give up and went looking for other uses. One was insulation for greenhouses. That didn''t really work either.

**In 1960 they founded a company called Sealed Air**, and then the breakthrough came from an unexpected direction. IBM had just launched its 1401 computer, and those delicate machines had to reach customers in one piece. The bubbly plastic was exactly what they needed. "It was the answer to IBM''s problems," Chad Stephens of Sealed Air told Smithsonian Magazine.

From there, things took off. Packaging instead of wall decor, padding instead of a design statement.

## Why popping feels so good

Today bubble wrap sits in every shipping warehouse and plenty of basements. Lots of people mainly love the sound of the bubbles bursting. **The wallpaper nobody wanted turned into a stress-relief toy almost everyone knows.** There are even silicone toys made just to copy that popping feeling.

> Fielding and Chavannes earned 6 patents in total for their work, mostly for processes that emboss and laminate plastic.

Sometimes the biggest success is whatever''s left over when the original plan fails. In this case, with sound effects.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bubble-wrap', 'en', 1, 'Bubble wrap roll', 'bubble wrap roll', 'Protects anything you ship, and there are always a few bubbles left over to pop.'),
  ('bubble-wrap', 'en', 2, 'Silicone pop it fidget toy', 'pop it fidget toy silicone', 'Endless popping with zero waste: the silicone bubbles push right back.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bubble-wrap', 'en', 1, 'Wikipedia: Bubble wrap', 'https://en.wikipedia.org/wiki/Bubble_wrap'),
  ('bubble-wrap', 'en', 2, 'Smithsonian Magazine: The Accidental Invention of Bubble Wrap', 'https://www.smithsonianmag.com/innovation/accidental-invention-bubble-wrap-180971325/'),
  ('bubble-wrap', 'en', 3, 'Invention & Technology: Bubble Wrap: From Wallpaper To Stress Reliever', 'https://www.inventionandtech.com/content/bubble-wrap-wallpaper-stress-reliever');
