-- WTFact-Fakt „Die Freiheitsstatue war früher nicht grün, sondern kupferbraun“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('statue-of-liberty-was-copper', '2026-10-22T19:00:00+02:00', 'art', '🗽', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'statue-of-liberty-was-copper', 'de', 'freiheitsstatue-war-kupferfarben',
  'Die Freiheitsstatue war früher nicht grün, sondern kupferbraun',
  'Bei ihrer Einweihung glänzte sie wie eine neue Münze. Grün wurde sie erst über Jahrzehnte.',
  'Die Freiheitsstatue in New York ist aus Kupfer. Bei ihrer Einweihung 1886 glänzte sie rotbraun, ihre grüne Farbe bekam sie erst durch eine Schutzschicht, die sich über rund 30 Jahre bildete.',
  'Grün ist die Farbe, die jeder mit der Freiheitsstatue verbindet. Doch das war nicht immer so. Als sie in New York aufgestellt wurde, sah sie ganz anders aus.

## Glänzend wie eine neue Münze

Die Freiheitsstatue wurde 1886 eingeweiht. Ihre Außenhaut besteht aus Kupfer, also aus demselben Metall wie viele Münzen. Laut dem Wetterdienst AccuWeather glänzte sie damals „wie ein neuer Penny“, also rotbraun und metallisch.

Die Kupferhaut ist dabei erstaunlich dünn. Laut AccuWeather ist sie nur ungefähr so dick wie zwei übereinandergelegte Pennys. Gestützt wird sie von einem Gerüst im Inneren.

## Wie aus Braun Grün wurde

Kupfer reagiert mit der Luft, mit Wasser und mit Stoffen, die in der Luft schweben. Dabei bildet sich auf der Oberfläche nach und nach eine neue Schicht, die sogenannte Patina. Und die ist grün.

Laut dem US-Sender PBS dauerte es rund 30 Jahre, bis die Statue komplett grün war. In dieser Zeit wechselte ihre Farbe langsam von Kupferbraun über dunklere Töne bis zum heutigen Blaugrün.

> Bonusfakt: Die grüne Schicht ist kein Schaden. Laut AccuWeather schützt die Patina das Kupfer darunter vor weiterer Verwitterung. Man hat deshalb bewusst darauf verzichtet, sie zu entfernen.

Das heißt auch: Die Statue, die wir heute kennen, ist eigentlich das Ergebnis jahrzehntelanger Chemie unter freiem Himmel. Regen, Wind und Seeluft im Hafen von New York haben sie mitgestaltet.

Wer eine alte Kupfermünze oder ein Kupferdach kennt, kann den Effekt im Kleinen beobachten. Auch dort bildet sich mit der Zeit ein grünlicher Belag.

Lady Liberty trägt ihr Grün also nicht aus Modegründen. Sie hat es sich über 30 Jahre hart erarbeitet.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('statue-of-liberty-was-copper', 'de', 1, 'Modell der Freiheitsstatue', 'Freiheitsstatue Modell Figur', 'Ein Stück New York fürs Regal, in Grün natürlich.'),
  ('statue-of-liberty-was-copper', 'de', 2, 'Chemie-Experimentierkasten', 'Chemie Experimentierkasten Kinder', 'Zeigt, wie Metalle mit Luft und Wasser reagieren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('statue-of-liberty-was-copper', 'de', 1, 'AccuWeather: The changing face of Lady Liberty', 'https://www.accuweather.com/en/weather-news/the-changing-face-of-lady-liberty/767769'),
  ('statue-of-liberty-was-copper', 'de', 2, 'PBS: Why is the Statue of Liberty Green?', 'https://www.pbs.org/video/why-is-the-statue-of-liberty-green-k31x0j');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'statue-of-liberty-was-copper', 'en', 'statue-of-liberty-was-copper',
  'The Statue of Liberty used to be copper brown, not green',
  'When it was unveiled, it shone like a new coin. It only turned green over decades.',
  'The Statue of Liberty in New York is made of copper. When it was dedicated in 1886, it shone reddish brown. It got its green color from a protective layer that formed over about 30 years.',
  'Green is the color everyone associates with the Statue of Liberty. But it wasn’t always that way. When it was put up in New York, it looked completely different.

## Shiny like a new penny

The Statue of Liberty was dedicated in 1886. Its outer skin is made of copper, the same metal as many coins. According to the weather service AccuWeather, it shone "like a new penny" back then, reddish brown and metallic.

The copper skin is surprisingly thin. According to AccuWeather, it’s only about as thick as two pennies stacked on top of each other. A framework inside holds it up.

## How brown became green

Copper reacts with air, water and substances floating in the air. Over time, a new layer gradually forms on the surface, called patina. And patina is green.

According to the US broadcaster PBS, it took about 30 years for the statue to turn completely green. During that time, its color slowly shifted from copper brown through darker shades to today’s blue-green.

> Bonus fact: The green layer isn’t damage. According to AccuWeather, the patina protects the copper underneath from further weathering. That’s why it was deliberately left in place.

That also means the statue we know today is really the result of decades of chemistry in the open air. Rain, wind and sea air in New York Harbor helped shape it.

If you’ve ever seen an old copper coin or a copper roof, you can watch the effect on a small scale. A greenish coating forms there over time too.

So Lady Liberty doesn’t wear green for fashion. She earned it over 30 years.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('statue-of-liberty-was-copper', 'en', 1, 'Statue of Liberty model', 'Statue of Liberty model figure', 'A piece of New York for your shelf, in green of course.'),
  ('statue-of-liberty-was-copper', 'en', 2, 'Chemistry science kit', 'chemistry science kit for kids', 'Shows how metals react with air and water.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('statue-of-liberty-was-copper', 'en', 1, 'AccuWeather: The changing face of Lady Liberty', 'https://www.accuweather.com/en/weather-news/the-changing-face-of-lady-liberty/767769'),
  ('statue-of-liberty-was-copper', 'en', 2, 'PBS: Why is the Statue of Liberty Green?', 'https://www.pbs.org/video/why-is-the-statue-of-liberty-green-k31x0j');
