-- WTFact-Fakt „Der Monopoly-Vorläufer von 1904 war ein Spiel gegen Monopole“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('monopoly-landlords-game', '2026-10-05T04:01:17+02:00', 'weird', '🎲', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'monopoly-landlords-game', 'de', 'monopoly-protest-gegen-monopole',
  'Der Monopoly-Vorläufer von 1904 war ein Spiel gegen Monopole',
  'Das Spiel, bei dem du deine Freunde in die Pleite treibst, sollte ursprünglich genau davor warnen.',
  'Der Vorläufer von Monopoly wurde 1904 von Lizzie Magie patentiert, als Protest gegen Monopolisten und ausbeuterische Vermieter.',
  'Du kaufst Straßen, baust Hotels und kassierst Miete, bis alle anderen pleite sind. So läuft Monopoly. Ziemlich ironisch, denn das Spiel, aus dem Monopoly entstanden ist, sollte genau das kritisieren. **Es war ein Protestspiel gegen Monopole.**

## Ein Brettspiel als Kampfansage

Die Erfinderin hieß Lizzie Magie. Am 5. Januar 1904 bekam sie in den USA das Patent Nr. 748,626 für „The Landlord''s Game“, also „Das Vermieter-Spiel“. Laut dem National Women''s History Museum entwarf sie es als Protest gegen die großen Monopolisten ihrer Zeit, Leute wie Andrew Carnegie und John D. Rockefeller.

Dahinter steckten die Ideen des Ökonomen Henry George. Laut Britannica sollte das Spiel zeigen, wie Vermieter ihre Mieter ausbeuten, und welche Vorteile eine einzige Steuer auf Grund und Boden hätte. Magie wollte also keinen Spaß am Abzocken vermitteln, sondern eine Lektion in Wirtschaftspolitik.

## Zwei Regelwerke, ein Gewinner

Später gab Magie dem Spiel **zwei Regelwerke**. In der einen Variante ging es darum, Monopole aufzubauen und die anderen aus dem Spiel zu drängen. In der anderen wurden alle belohnt, sobald Wohlstand entstand. Laut British Library hoffte sie, dass die Spielenden so merken, welche Variante die moralisch richtige ist.

Durchgesetzt hat sich am Ende die erste. Selbstgebastelte Spielbretter wanderten von Freundeskreis zu Freundeskreis, und Quäker ersetzten die Straßennamen durch welche aus Atlantic City.

## 500 Dollar und kein Cent mehr

Charles Darrow lernte eine dieser Hausversionen über einen Freund kennen und verkaufte sie an Parker Brothers. Am 31. Dezember 1935 bekam er sein eigenes Monopoly-Patent. Laut British Library gab er das Spiel als seine eigene Erfindung aus.

Weil Magie ein Patent auf ihr Spiel hatte, kaufte Parker Brothers es ihr 1935 ab. **Sie bekam 500 Dollar, Lizenzgebühren gab es keine.** Monopoly verkaufte sich 1935 laut British Library 278.000-mal, 1936 sogar 1.751.000-mal. Darrow wurde der erste Brettspiel-Millionär, Magie geriet fast in Vergessenheit.

> Bevor sie Spiele erfand, hatte Magie schon 1893 ein Patent für eine Verbesserung an Schreibmaschinen bekommen.

Das Spiel, das vor Gier warnen sollte, ist heute der Inbegriff von Gier am Küchentisch. Magie hätte vermutlich auf die zweite Regelvariante bestanden.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('monopoly-landlords-game', 'de', 1, 'Monopoly Brettspiel Classic', 'Monopoly Classic Brettspiel', 'Der Klassiker für lange Spieleabende, inklusive Streit um die Schlossallee.'),
  ('monopoly-landlords-game', 'de', 2, 'Sachbuch über die Geschichte der Brettspiele', 'Buch Geschichte der Brettspiele', 'Von alten Würfelspielen bis zu modernen Klassikern, gut für Spielenerds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('monopoly-landlords-game', 'de', 1, 'British Library: Lizzie Magie and the history of Monopoly', 'https://www.bl.uk/stories/blogs/posts/lizzie-magie-and-the-history-of-monopoly'),
  ('monopoly-landlords-game', 'de', 2, 'National Women''s History Museum: Monopoly''s Lost Female Inventor', 'https://www.womenshistory.org/articles/monopolys-lost-female-inventor'),
  ('monopoly-landlords-game', 'de', 3, 'Library of Congress: The Game of Monopoly is Patented', 'https://guides.loc.gov/this-month-in-business-history/december/game-of-monopoly-patent'),
  ('monopoly-landlords-game', 'de', 4, 'Britannica: Landlord''s Game', 'https://www.britannica.com/topic/Landlords-Game');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'monopoly-landlords-game', 'en', 'monopoly-anti-monopoly-protest',
  'Monopoly''s 1904 forerunner was a game against monopolies',
  'The game where you bankrupt your friends was originally meant to warn against exactly that.',
  'Monopoly''s forerunner was patented in 1904 by Lizzie Magie as a protest against monopolists and exploitative landlords.',
  'You buy streets, build hotels and collect rent until everyone else goes broke. That''s Monopoly. Pretty ironic, because the game Monopoly grew out of was meant to criticize exactly that. **It was a protest game against monopolies.**

## A board game as a protest

The inventor was Lizzie Magie. On January 5, 1904, she received US patent no. 748,626 for "The Landlord''s Game." According to the National Women''s History Museum, she designed it as a protest against the big monopolists of her time, people like Andrew Carnegie and John D. Rockefeller.

The ideas behind it came from economist Henry George. According to Britannica, the game was meant to illustrate how landlords exploit tenants and the benefits of a single tax on land. So Magie wasn''t trying to teach you the joy of ripping people off. She wanted to teach an economics lesson.

## Two rulebooks, one winner

Magie later gave the game **two sets of rules**. In one, the goal was to create monopolies and force the others out. In the other, everyone was rewarded when wealth was created. According to the British Library, she believed this would show players that the anti-monopoly version was the morally correct choice.

In the end, the first one won. Homemade boards spread from friend group to friend group, and Quakers changed the street names to ones from Atlantic City.

## 500 dollars and not a cent more

Charles Darrow was taught one of these homemade versions by a friend and sold it to Parker Brothers. On December 31, 1935, he received his own Monopoly patent. According to the British Library, he tried to sell the game as his own.

Because Magie held a patent on her game, Parker Brothers bought it from her in 1935. **She got 500 dollars, and no royalties.** According to the British Library, Monopoly sold 278,000 units in 1935 and 1,751,000 in 1936. Darrow became the first board game millionaire, and Magie was all but forgotten.

> Before she invented games, Magie had already received a patent in 1893 for an improvement to typewriters.

The game designed to warn against greed became the ultimate symbol of greed at the kitchen table. Magie would probably have insisted on the second rulebook.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('monopoly-landlords-game', 'en', 1, 'Monopoly classic board game', 'Monopoly classic board game', 'The classic for long game nights, arguments over Boardwalk included.'),
  ('monopoly-landlords-game', 'en', 2, 'Book on the history of board games', 'history of board games book', 'From ancient dice games to modern classics, great for game nerds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('monopoly-landlords-game', 'en', 1, 'British Library: Lizzie Magie and the history of Monopoly', 'https://www.bl.uk/stories/blogs/posts/lizzie-magie-and-the-history-of-monopoly'),
  ('monopoly-landlords-game', 'en', 2, 'National Women''s History Museum: Monopoly''s Lost Female Inventor', 'https://www.womenshistory.org/articles/monopolys-lost-female-inventor'),
  ('monopoly-landlords-game', 'en', 3, 'Library of Congress: The Game of Monopoly is Patented', 'https://guides.loc.gov/this-month-in-business-history/december/game-of-monopoly-patent'),
  ('monopoly-landlords-game', 'en', 4, 'Britannica: Landlord''s Game', 'https://www.britannica.com/topic/Landlords-Game');
