-- WTFact-Fakt „Australien ist breiter als der Mond“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('australia-wider-than-moon', '2026-10-22T19:00:00+02:00', 'places', '🌏', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'australia-wider-than-moon', 'de', 'australien-breiter-als-mond',
  'Australien ist breiter als der Mond',
  'Klingt falsch, stimmt aber. Zumindest, solange man nur von West nach Ost misst.',
  'Australien ist von West nach Ost fast 4.000 Kilometer breit. Der Mond hat einen Durchmesser von rund 3.475 Kilometern.',
  'Der Mond ist ein ganzer Himmelskörper, Australien „nur“ ein Kontinent. Trotzdem gewinnt Australien einen Vergleich, den kaum jemand erwartet: den in der Breite.

## Die Zahlen

Australien ist von West nach Ost fast 4.000 Kilometer breit. Laut Snopes, das die Behauptung überprüft hat, stimmt das: Der Mond hat am Äquator einen Durchmesser von etwa 3.476 Kilometern. „Universe Today“ gibt den mittleren Durchmesser mit 3.474 Kilometern an. Rund 3.475 Kilometer also.

Legt man Australien und den Mond nebeneinander, ragt Australien an den Seiten ein gutes Stück über den Mond hinaus. Rund 500 Kilometer Unterschied, das ist ungefähr die Strecke von Berlin nach München.

## Der Haken

Ganz so klein ist der Mond natürlich nicht. Snopes weist darauf hin, dass der Vergleich zwar wörtlich stimmt, aber leicht in die Irre führt. Der Mond ist eine Kugel, Australien eine flache Landfläche. Die gesamte Oberfläche des Mondes ist deutlich größer als die Fläche Australiens.

Es ist also ein Vergleich wie zwischen einem Fußball und einem großen Pizzakarton. Der Karton kann breiter sein, auch wenn im Ball viel mehr Oberfläche steckt.

> Bonusfakt: Der Mond ist an den Polen etwas schmaler als am Äquator. Laut „Universe Today“ misst er von Pol zu Pol etwa 3.472 Kilometer.

Trotzdem hilft der Vergleich, beides besser einzuschätzen. Der Mond wirkt am Himmel riesig, ist aber kleiner, als die meisten denken. Und Australien ist größer, als es auf vielen Weltkarten aussieht.

Wer also einmal quer durch Australien fährt, hat eine Strecke hinter sich, die länger ist als einmal quer durch den Mond. Mit deutlich besserer Aussicht auf Kängurus.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('australia-wider-than-moon', 'de', 1, 'Mondlampe mit 3D-Oberfläche', 'Mondlampe 3D', 'Holt sich den Mond ins Zimmer, in handlicher Größe.'),
  ('australia-wider-than-moon', 'de', 2, 'Puzzle Weltkarte Australien', 'Australien Puzzle Karte', 'Setzt den Kontinent Stück für Stück zusammen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('australia-wider-than-moon', 'de', 1, 'Snopes: Is Australia Wider Than the Moon?', 'https://www.snopes.com/fact-check/australia-wider-than-earths-moon/'),
  ('australia-wider-than-moon', 'de', 2, 'Universe Today: What is Diameter of the Moon?', 'https://www.universetoday.com/articles/diameter-of-the-moon');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'australia-wider-than-moon', 'en', 'australia-wider-than-moon',
  'Australia is wider than the Moon',
  'Sounds wrong, but it holds up. As long as you only measure from west to east.',
  'Australia is almost 4,000 kilometers wide from west to east. The Moon’s diameter is about 3,475 kilometers.',
  'The Moon is an entire celestial body, Australia is "just" a continent. Still, Australia wins a comparison almost nobody expects: width.

## The numbers

Australia is almost 4,000 kilometers (about 2,485 miles) wide from west to east. According to Snopes, which checked the claim, that holds up: the Moon’s diameter at its equator is about 3,476 kilometers. Universe Today gives the mean diameter as 3,474 kilometers. So roughly 3,475 kilometers.

Put Australia and the Moon side by side and Australia sticks out past the Moon on both sides. A difference of about 500 kilometers, roughly the distance from London to Edinburgh.

## The catch

Of course, the Moon isn’t that small. Snopes points out that the comparison is literally true but a bit misleading. The Moon is a sphere, Australia is a flat landmass. The Moon’s total surface area is far bigger than Australia’s.

So it’s like comparing a football with a large pizza box. The box can be wider, even though the ball has much more surface.

> Bonus fact: The Moon is slightly narrower at the poles than at the equator. According to Universe Today, it measures about 3,472 kilometers from pole to pole.

Still, the comparison helps put both in perspective. The Moon looks huge in the sky but is smaller than most people think. And Australia is bigger than it looks on a lot of world maps.

So anyone who drives across Australia has covered a longer distance than straight across the Moon. With a much better view of kangaroos.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('australia-wider-than-moon', 'en', 1, '3D moon lamp', '3D moon lamp', 'Brings the Moon into your room, in a handy size.'),
  ('australia-wider-than-moon', 'en', 2, 'Australia map jigsaw puzzle', 'Australia map puzzle', 'Puts the continent together piece by piece.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('australia-wider-than-moon', 'en', 1, 'Snopes: Is Australia Wider Than the Moon?', 'https://www.snopes.com/fact-check/australia-wider-than-earths-moon/'),
  ('australia-wider-than-moon', 'en', 2, 'Universe Today: What is Diameter of the Moon?', 'https://www.universetoday.com/articles/diameter-of-the-moon');
