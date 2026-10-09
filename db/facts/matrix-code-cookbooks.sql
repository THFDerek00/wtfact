-- WTFact-Fakt „Der grüne Code aus „Matrix“ stammt aus japanischen Kochbüchern“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('matrix-code-cookbooks', '2026-10-10T12:00:00+02:00', 'popculture', '🍣', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'matrix-code-cookbooks', 'de', 'matrix-code-japanische-kochbuecher',
  'Der grüne Code aus „Matrix“ stammt aus japanischen Kochbüchern',
  'Die herabregnenden Zeichen aus dem Film von 1999 sehen nach Geheimcode aus. Ihre Vorlage lag in einer Küche.',
  'Designer Simon Whiteley zeichnete die Zeichen für den grünen Code in „Matrix“ von Hand, nach Vorlagen aus japanischen Kochbüchern und Kinder-Alphabetbüchern.',
  'Grüne Zeichen, die über einen schwarzen Bildschirm regnen: Kaum ein Bild steht so sehr für Sci-Fi von 1999 wie der Code aus „Matrix“. Was dahintersteckt, ist allerdings viel weniger geheimnisvoll, als es aussieht.

## Ein Designer, ein Kochbuch und ein Stift

Entworfen hat den Code Simon Whiteley, Produktionsdesigner beim Effektstudio Animal Logic. Im Interview mit dem Effekt-Magazin befores & afters erzählte er, dass er die Zeichen selbst von Hand gezeichnet hat. Seine Vorlagen: japanische Kochbücher und die japanischen Alphabetbücher, mit denen seine Kinder in der Schule lernten. Laut SYFY gehörte das Kochbuch seiner japanischen Frau.

Whiteley nahm Katakana, eine der japanischen Silbenschriften, weil ihm deren „sehr schöne, einfache Striche“ gefielen. Kanji und Hiragana waren ihm zu kompliziert. Er mischte die Zeichen mit arabischen Ziffern, ergänzte Striche, Punkte und Symbole und spiegelte vieles, damit der Code so aussieht, als würdest du ihn von innen sehen, so wie Neo.

## Warum der Code regnet

Zuerst liefen die Zeichen waagerecht über den Bildschirm. Weil der Text in den japanischen Kochbüchern aber von oben nach unten lief, drehte das Team den Code in die Senkrechte. Laut Whiteley sahen die fallenden Spalten aus wie Regen, und das machte das Ganze atmosphärischer.

Und das Sushi? Laut SYFY sagte Whiteley 2017 im Interview mit CNET, der Code bestehe aus japanischen Sushi-Rezepten. befores & afters schreibt, dass japanische Fans den Code nach Sushi und Rezepten abgesucht haben. Nimm die Sushi-Sache also eher als seinen Lieblingsspruch, nicht als entschlüsselte Speisekarte.

> Bonusfakt: Laut Whiteley passt das Grün zur Schrift auf alten IBM-Röhrenmonitoren.

Einer der berühmtesten Effekte der Science-Fiction begann mit einem Kochbuch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('matrix-code-cookbooks', 'de', 1, '„Matrix“-Trilogie auf Blu-ray', 'Matrix Trilogie Blu-ray', 'Alle drei Filme der Originaltrilogie, damit du den Code selbst studieren kannst.'),
  ('matrix-code-cookbooks', 'de', 2, 'Japanisches Kochbuch für Sushi', 'Sushi Kochbuch japanisch', 'Erklärt Schritt für Schritt, wie Reis, Fisch und Gemüse zu Sushi werden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('matrix-code-cookbooks', 'de', 1, 'befores & afters: Secrets of ''The Matrix'' code', 'https://beforesandafters.com/2019/03/27/secrets-of-the-matrix-code/'),
  ('matrix-code-cookbooks', 'de', 2, 'SYFY: The Iconic Green Matrix Code Language Actually Came From... a Cookbook?!', 'https://www.syfy.com/syfy-wire/the-matrix-green-code-language-came-from-a-cookbook');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'matrix-code-cookbooks', 'en', 'matrix-code-japanese-cookbooks',
  'The green code in The Matrix came from Japanese cookbooks',
  'The raining characters from the 1999 film look like a secret cipher. Their template was sitting in a kitchen.',
  'Designer Simon Whiteley hand-drew the characters for the green code in The Matrix, based on Japanese cookbooks and children''s alphabet books.',
  'Green characters raining down a black screen: few images say 1999 sci-fi quite like the code in The Matrix. What''s behind it is far less mysterious than it looks.

## A designer, a cookbook and a pen

The code was designed by Simon Whiteley, a production designer at the effects studio Animal Logic. In an interview with the effects site befores & afters, he explained that he drew the characters by hand himself. His templates: Japanese cookbooks and the Japanese alphabet books his kids used at school. According to SYFY, the cookbook belonged to his Japanese wife.

Whiteley went with katakana, one of the Japanese syllabic scripts, because he liked its "very nice simple strokes." Kanji and hiragana were too intricate for him. He mixed the characters with Arabic numerals, added strokes, dots and icons, and flipped a lot of it back to front, so the code looks as if you were seeing it from the inside, just like Neo.

## Why the code rains

At first, the characters ran across the screen horizontally. But the text in the Japanese cookbooks ran from top to bottom, so the team turned the code vertical. Whiteley said the falling columns looked like rain, which made the whole thing more atmospheric.

And the sushi? According to SYFY, Whiteley told CNET in 2017 that the code is made out of Japanese sushi recipes. befores & afters notes that Japanese fans have searched the code for sushi and recipes. So treat the sushi part as his favorite line, not as a decoded menu.

> Bonus fact: According to Whiteley, the green matches the text on old IBM CRT monitors.

One of the most famous effects in science fiction started with a cookbook.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('matrix-code-cookbooks', 'en', 1, 'The Matrix trilogy on Blu-ray', 'Matrix trilogy Blu-ray', 'All three films of the original trilogy, so you can study the code yourself.'),
  ('matrix-code-cookbooks', 'en', 2, 'Japanese sushi cookbook', 'sushi cookbook Japanese', 'Explains step by step how rice, fish and vegetables turn into sushi.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('matrix-code-cookbooks', 'en', 1, 'befores & afters: Secrets of ''The Matrix'' code', 'https://beforesandafters.com/2019/03/27/secrets-of-the-matrix-code/'),
  ('matrix-code-cookbooks', 'en', 2, 'SYFY: The Iconic Green Matrix Code Language Actually Came From... a Cookbook?!', 'https://www.syfy.com/syfy-wire/the-matrix-green-code-language-came-from-a-cookbook');
