-- WTFact-Fakt „Dull, Boring und Bland: Drei echte Orte haben eine eigene Liga gegründet“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('dull-boring-bland-league', '2026-11-04T16:00:00+01:00', 'weird', '😴', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dull-boring-bland-league', 'de', 'dull-boring-und-bland-verbuendet',
  'Dull, Boring und Bland: Drei echte Orte haben eine eigene Liga gegründet',
  'Ein Dorf in Schottland, eine Gemeinde in Oregon und ein Bezirk in Australien machten aus ihren Namen eine Partnerschaft.',
  'Dull in Schottland und Boring in Oregon wurden 2012 Schwestergemeinden, später schloss sich Bland Shire in Australien ihnen in der League of Extraordinary Communities an.',
  'Stell dir vor, dein Heimatort heißt Dull, also „langweilig“ oder „öde“. Und dann erfährst du, dass es einen Ort namens Boring gibt, was ebenfalls „langweilig“ heißt. Der logische nächste Schritt? Klar, man verbündet sich. Genau das haben ein Dorf in Schottland und eine Gemeinde in Oregon gemacht, und später kam noch ein Verwaltungsbezirk in Australien dazu: Bland, also „fad“.

## Eine Radtour mit Folgen

Angefangen hat alles mit einem Fahrradurlaub. Laut The Scotsman fuhr Elizabeth Leighton aus Grandtully in Perthshire auf einer Tour durch Oregon durch Boring. Danach schrieb sie Steve Bates an, den Vorsitzenden der Boring Community Planning Organisation, und der war einverstanden, dass die beiden Orte eine Beziehung aufbauen. 2012 wurden Dull und Boring Schwestergemeinden, berichtete die Nachrichtenagentur AP.

Warum keine offizielle Städtepartnerschaft? Laut The Scotsman war Dull dafür zu klein. Damals hatte es 84 Einwohnerinnen und Einwohner und eine einzige Straße an der Nordseite des Tay-Tals, Boring dagegen rund 13.000. In Boring hängen Schilder, die den Ort als „The most exciting place to live“ feiern, also als aufregendsten Wohnort überhaupt.

## Die Liga bekommt ein drittes Mitglied

Laut der Regierung von New South Wales machte Bland ein Jahr später, 2013, das Trio komplett. Zusammen nennen sie sich League of Extraordinary Communities, die Liga der außergewöhnlichen Gemeinden. Bland Shire liegt etwa 500 Kilometer westlich von Sydney und hatte laut The Scotsman rund 6.000 Einwohnerinnen und Einwohner. Bürgermeister Neil Pokoney sagte, die Partnerschaft sei eine humorvolle Art, mit einem Namen umzugehen, den viele als Last empfinden. Laut The Scotsman soll sie außerdem Gäste anlocken.

Die Namen sind übrigens keine Beleidigungen. Laut der Regierung von New South Wales sind Bland und Boring nach frühen Siedlern benannt, William Bland und William Boring. Der Name Dull geht vermutlich auf ein piktisches Wort für „Feld“ zurück.

> Bonusfakt: 2017 empfing Dull den Bürgermeister von Bland Shire. Dennis Melloy, Provost der Region Perth and Kinross, meinte, die Liga könne noch wachsen: „Wir haben Ordinary und Dreary gefunden, beide in Amerika.“ Auf Deutsch also etwa „Gewöhnlich“ und „Trostlos“.

Heute gibt es in West Wyalong in New South Wales sogar einen Selfie-Rahmen der Liga im Lions Park. Dull, Boring und Bland sind am Ende alles andere als das.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dull-boring-bland-league', 'de', 1, 'Buch über skurrile Ortsnamen', 'Buch kuriose Ortsnamen', 'Zum Schmökern: die lustigsten Ortsnamen aus aller Welt.'),
  ('dull-boring-bland-league', 'de', 2, 'Rubbel-Weltkarte', 'Rubbel Weltkarte Poster', 'Hier rubbelst du jedes Land frei, in dem du schon warst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dull-boring-bland-league', 'de', 1, 'MPR News: Dull, Boring and Bland forge an international alliance', 'https://mprnews.org/story/2017/07/28/dull-boring-and-bland-forge-international-alliance'),
  ('dull-boring-bland-league', 'de', 2, 'The Scotsman: Scots town Dull joins forces with Bland and Boring', 'https://www.scotsman.com/news/scots-town-dull-joins-forces-with-bland-and-boring-1553399'),
  ('dull-boring-bland-league', 'de', 3, 'NSW Government: League Of Extraordinary Communities Selfie Frame', 'https://www.nsw.gov.au/visiting-and-exploring-nsw/locations-and-attractions/league-of-extraordinary-communities-selfie-frame');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dull-boring-bland-league', 'en', 'dull-boring-and-bland-teamed-up',
  'Dull, Boring and Bland: three real places that formed their own league',
  'A village in Scotland, a community in Oregon and a shire in Australia turned their names into a partnership.',
  'Dull in Scotland and Boring in Oregon became sister communities in 2012, and Bland Shire in Australia later joined them in the League of Extraordinary Communities.',
  'Imagine your hometown is called Dull. Now imagine you find out there''s a place called Boring. The logical next step? Obviously, you team up. That''s exactly what a village in Scotland and a community in Oregon did, and later a shire in Australia called Bland joined them.

## A bike tour with consequences

It started with a cycling holiday. According to The Scotsman, Elizabeth Leighton from Grandtully in Perthshire rode through Boring, Oregon, while touring the state. Afterwards she contacted Steve Bates, chairman of the Boring Community Planning Organisation, and he agreed that the two places could build a relationship. In 2012, Dull and Boring became sister communities, reported the Associated Press.

Why not official twin towns? According to The Scotsman, Dull was too small. At the time it had 84 residents and a single street on the north side of the Tay valley, while Boring had around 13,000 people. In Boring, locals display signs calling it "The most exciting place to live."

## The league gets a third member

The NSW Government says Bland completed the trio a year later, in 2013. Together they call themselves the League of Extraordinary Communities. Bland Shire lies about 500 kilometres west of Sydney and had about 6,000 inhabitants, according to The Scotsman. Its mayor, Neil Pokoney, said the partnership was a light-hearted way to deal with a name many see as a burden. According to The Scotsman, it is also meant to bring in visitors.

The names, by the way, aren''t insults. According to the NSW Government, Bland and Boring were each named after an early settler, William Bland and William Boring. Dull''s name is believed to come from a Pictish word meaning "field."

> Bonus fact: In 2017, Dull hosted the mayor of Bland Shire at a reception. Dennis Melloy, provost of Perth and Kinross, said that the league could grow: "we''ve found Ordinary and Dreary, both in America."

Today there''s even a League of Extraordinary Communities selfie frame in Lions Park in West Wyalong, New South Wales. Dull, Boring and Bland turned out to be anything but.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dull-boring-bland-league', 'en', 1, 'Book of strange place names', 'book strange place names world', 'A browsable collection of the funniest town names around the globe.'),
  ('dull-boring-bland-league', 'en', 2, 'Scratch-off world map poster', 'scratch off world map poster', 'Lets you scratch away every country you have visited.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dull-boring-bland-league', 'en', 1, 'MPR News: Dull, Boring and Bland forge an international alliance', 'https://mprnews.org/story/2017/07/28/dull-boring-and-bland-forge-international-alliance'),
  ('dull-boring-bland-league', 'en', 2, 'The Scotsman: Scots town Dull joins forces with Bland and Boring', 'https://www.scotsman.com/news/scots-town-dull-joins-forces-with-bland-and-boring-1553399'),
  ('dull-boring-bland-league', 'en', 3, 'NSW Government: League Of Extraordinary Communities Selfie Frame', 'https://www.nsw.gov.au/visiting-and-exploring-nsw/locations-and-attractions/league-of-extraordinary-communities-selfie-frame');
