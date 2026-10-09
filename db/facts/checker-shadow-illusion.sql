-- WTFact-Fakt „Die Felder A und B in dieser Täuschung haben genau dasselbe Grau“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('checker-shadow-illusion', NULL, 'mind', '🏁', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'checker-shadow-illusion', 'de', 'schachbrett-schatten-taeuschung-gleiches-grau',
  'Die Felder A und B in dieser Täuschung haben genau dasselbe Grau',
  'Eins sieht dunkel aus, eins hell, und trotzdem kommt von beiden exakt gleich viel Licht.',
  'In Edward Adelsons Schachbrett-Schatten-Täuschung wirkt Feld A dunkel und Feld B hell, obwohl beide genau denselben Grauton haben.',
  'Das Bild wirkt harmlos: ein Schachbrett, ein grüner Zylinder, ein Schatten. Zwei Felder sind mit A und B markiert. A sieht eindeutig dunkel aus, B eindeutig hell. Sie haben exakt dasselbe Grau.

## Gleiche Pixel, zwei Welten

Die Schachbrett-Schatten-Täuschung hat Edward H. Adelson, Professor für Sehforschung am MIT, 1995 veröffentlicht. Feld A liegt im Licht, Feld B im Schatten des Zylinders. Dein Gehirn ist sich sicher, dass es zwei völlig verschiedene Farben sind.

Michael Bach, der auf seiner Website optische Täuschungen sammelt, bringt es auf den Punkt: Beide Felder haben dieselbe Leuchtdichte, von beiden kommt also gleich viel Licht. Deckst du alles um sie herum ab, sodass nur noch die zwei Felder zu sehen sind, ist der Unterschied sofort weg. Nimmst du die Abdeckung weg, ist er augenblicklich wieder da.

## Dein Gehirn ist kein Belichtungsmesser

Warum passiert das? Laut der New World Encyclopedia liest dein visuelles System das Bild als dreidimensionale Szene. Es erkennt, woher das Licht kommt, bemerkt den Schatten und rechnet ihn heraus. Ein Feld, das im Schatten noch mittelgrau aussieht, muss nach dieser Logik ein helles Feld sein. Ein Feld im vollen Licht mit demselben Grau muss ein dunkles sein.

Dazu kommt der lokale Kontrast. B ist von dunkleren Feldern umgeben und wirkt dadurch heller. A ist von helleren Feldern umgeben und wirkt dadurch dunkler. Und das Schachbrettmuster selbst sagt deinem Gehirn, welche Felder dunkel und welche hell sein sollten.

Bachs Fazit: Augen arbeiten nicht wie ein Belichtungsmesser, sie nutzen den Zusammenhang. Die Frage „Welches Feld ist heller?“ beantwortet dein Gehirn deshalb in Wahrheit als: Ist das ein helles oder ein dunkles Feld auf diesem Brett, egal bei welchem Licht? Und das beantwortet es völlig richtig.

> Bonusfakt: Schatten haben meist weiche, verschwommene Ränder, aufgemalte Kanten sind scharf, und dein visuelles System nutzt diesen Unterschied, um Schatten von echter Oberflächenfarbe zu trennen.

Dein Gehirn zeigt dir nicht, was vor dir liegt. Es zeigt dir, was es für wahrscheinlich hält.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('checker-shadow-illusion', 'de', 1, 'Buch mit optischen Täuschungen', 'optische Täuschungen Buch', 'Jede Menge Bilder, bei denen du deinen Augen nicht mehr traust.'),
  ('checker-shadow-illusion', 'de', 2, 'Holz-Schachspiel mit Brett', 'Schachspiel Holz Brett', 'Ein klassisches Spiel für lange Abende, schön genug, um es stehen zu lassen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('checker-shadow-illusion', 'de', 1, 'Michael’s Visual Phenomena & Optical Illusions: Adelson’s Checker-shadow illusion', 'https://michaelbach.de/ot/lum-adelsonCheckShadow/'),
  ('checker-shadow-illusion', 'de', 2, 'New World Encyclopedia: Same color illusion', 'https://www.newworldencyclopedia.org/entry/Same_color_illusion'),
  ('checker-shadow-illusion', 'de', 3, 'The Planetary Society: The “checkershadow” illusion', 'https://planetary.org/space-images/the-checkershadow-illusion');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'checker-shadow-illusion', 'en', 'checker-shadow-illusion-same-gray',
  'Squares A and B in this illusion are the exact same gray',
  'One looks dark, one looks light, and yet exactly the same amount of light comes off both.',
  'In Edward Adelson’s checker shadow illusion, square A looks dark and square B looks light, even though both are exactly the same shade of gray.',
  'The picture looks harmless: a checkerboard, a green cylinder, a shadow. Two squares are labeled A and B. A looks clearly dark, B looks clearly light. They are exactly the same gray.

## Same pixels, two worlds

The checker shadow illusion was published in 1995 by Edward H. Adelson, a professor of vision science at MIT. Square A sits in the light, square B in the cylinder''s shadow. Your brain is certain they are two completely different colors.

Michael Bach, who collects optical illusions on his website, puts it plainly: both squares have the same luminance, so the same amount of light comes off each. Cover everything around them so that only the two squares are visible, and the difference vanishes instantly. Take the cover away and it snaps right back.

## Your brain is not a light meter

Why does this happen? According to the New World Encyclopedia, your visual system reads the image as a three-dimensional scene. It works out where the light is coming from, notices the shadow and corrects for it. A square that still looks medium gray inside a shadow must, by that logic, be a light square. A square in full light with the same gray must be a dark one.

Local contrast adds to it. B is surrounded by darker squares, which makes it look lighter. A is surrounded by lighter squares, which makes it look darker. And the checkerboard pattern itself tells your brain which squares ought to be dark and which light.

Bach''s conclusion: eyes don''t work like an exposure meter, they use context. So when you ask "which square is brighter?", your brain actually answers a different question: is this a light or a dark square on this board, whatever the lighting? And it gets that one completely right.

> Bonus fact: Shadows usually have soft, fuzzy edges while painted edges are sharp, and your visual system uses that difference to tell shadows apart from real surface color.

Your brain doesn''t show you what is in front of you. It shows you what it thinks is most likely there.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('checker-shadow-illusion', 'en', 1, 'Book of optical illusions', 'optical illusions book', 'Packed with images that make you stop trusting your own eyes.'),
  ('checker-shadow-illusion', 'en', 2, 'Wooden chess set with board', 'wooden chess set', 'A classic game for long evenings, nice enough to leave out on display.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('checker-shadow-illusion', 'en', 1, 'Michael’s Visual Phenomena & Optical Illusions: Adelson’s Checker-shadow illusion', 'https://michaelbach.de/ot/lum-adelsonCheckShadow/'),
  ('checker-shadow-illusion', 'en', 2, 'New World Encyclopedia: Same color illusion', 'https://www.newworldencyclopedia.org/entry/Same_color_illusion'),
  ('checker-shadow-illusion', 'en', 3, 'The Planetary Society: The “checkershadow” illusion', 'https://planetary.org/space-images/the-checkershadow-illusion');
