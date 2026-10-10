-- WTFact-Fakt „Das älteste bekannte gedruckte „Nerd“ ist ein Fantasietier aus einem Dr.-Seuss-Buch von 1950“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('nerd-dr-seuss-zoo', '2026-10-15T16:00:00+02:00', 'language', '🤓', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nerd-dr-seuss-zoo', 'de', 'nerd-war-ein-dr-seuss-fabelwesen',
  'Das älteste bekannte gedruckte „Nerd“ ist ein Fantasietier aus einem Dr.-Seuss-Buch von 1950',
  'Bevor es Computer-Genie bedeutete, stand das Wort in einem Kinderbuch, mitten in einem Reim.',
  'Der älteste bekannte Beleg für das Wort „Nerd“ im Druck stammt aus dem Bilderbuch „If I Ran the Zoo“ von Dr. Seuss aus dem Jahr 1950, wo es eines der erfundenen Tiere bezeichnet, die ein Junge für seinen Zoo holen will.',
  'Du hast bestimmt schon mal jemanden Nerd genannt oder bist selbst so genannt worden. Das englische Wort ist längst auch im Deutschen angekommen. Sein ältester bekannter Auftritt im Druck war aber nicht auf einem Schulflur oder in einem Technikmagazin. Sondern in einem Kinderbuch.

## Ein Nerkle, ein Nerd und ein Seersucker

1950 veröffentlichte Dr. Seuss, das Pseudonym von Theodor Seuss Geisel, das Buch „If I Ran the Zoo“ (auf Deutsch etwa: „Wenn ich den Zoo leiten würde“). Darin denkt sich ein Junge absurde Tiere für seinen perfekten Zoo aus. Ein Reim lautet: „And then, just to show them, I''ll sail to Ka-Troo / And bring back an It-kutch, a Preep and a Proo, / A Nerkle, a Nerd, and a Seersucker, too!“ Sinngemäß: Er segelt nach Ka-Troo und bringt ein It-kutch, ein Preep, ein Proo, ein Nerkle, einen Nerd und einen Seersucker mit.

Dieser Nerd ist ein Fantasiewesen, kein Mensch. Trotzdem nennt NPR das Buch die führende Theorie dafür, wo das Wort zuerst gedruckt auftauchte, und auch World Wide Words führt es als einen der beiden ältesten bekannten Belege.

## Ein Jahr später war es Slang

Schon ein Jahr danach tauchte das Wort mit seiner heutigen Bedeutung auf. Im Oktober 1951 schrieb Newsweek über neuen Slang: „In Detroit ist jemand, den man früher einen Langweiler oder Spießer genannt hätte, jetzt bedauerlicherweise ein Nerd.“

Hat Seuss das Wort also erfunden? Sicher sagen kann das niemand. Das Online Etymology Dictionary hält es für wahrscheinlich, dass Nerd aus dem älteren Slangwort „nert“ entstand, einer Variante von „nut“ für eine dumme oder verrückte Person, und dass das Seuss-Buch beim Verbreiten geholfen haben könnte. World Wide Words bezweifelt, dass ein Wort aus einem Buch für kleine Kinder so schnell zum Teenie-Slang wurde, und weist darauf hin, dass das Oxford English Dictionary die Herkunft „unsicher und umstritten“ nennt.

> Bonusfakt: Es gibt auch „knurd“, also „drunk“ (betrunken) rückwärts geschrieben. Laut World Wide Words war dieser Witz schon im 19. Jahrhundert im Umlauf.

## Vom Schimpfwort zum Ehrentitel

Jahrzehntelang war Nerd vor allem eine Beleidigung. Der Film „Revenge of the Nerds“ von 1984 verschaffte dem Wort einen großen Popkultur-Moment, und um 1989 nutzte der Uni-Slang es neutral für jemanden, der sich auskennt. Heute lautet die Hauptdefinition bei Merriam-Webster: eine Person, die sich intellektuellen, akademischen oder technischen Beschäftigungen und Interessen widmet.

Nicht schlecht für ein Wort, das neben einem It-kutch und einem Proo angefangen hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nerd-dr-seuss-zoo', 'de', 1, 'If I Ran the Zoo von Dr. Seuss', 'Dr. Seuss If I Ran the Zoo Buch', 'Das gereimte Original-Bilderbuch voller absurder Fantasietiere, auf Englisch.'),
  ('nerd-dr-seuss-zoo', 'de', 2, 'Buch über Wortherkunft', 'Buch Wortherkunft Etymologie', 'Viele kurze Geschichten darüber, woher Alltagswörter kommen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nerd-dr-seuss-zoo', 'de', 1, 'KPBS (NPR): Nerd! How the word popularized by Dr. Seuss went from geeky insult to mainstream', 'https://www.kpbs.org/news/2025/08/20/nerd-how-the-word-popularized-by-dr-seuss-went-from-geeky-insult-to-mainstream'),
  ('nerd-dr-seuss-zoo', 'de', 2, 'Online Etymology Dictionary: Nerd - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/nerd'),
  ('nerd-dr-seuss-zoo', 'de', 3, 'World Wide Words: Nerd: The Mysterious Origins and Evolution of a Word', 'https://worldwidewords.org/qa-ner1.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nerd-dr-seuss-zoo', 'en', 'nerd-started-as-dr-seuss-creature',
  'The oldest known printed ‘nerd’ is an imaginary zoo creature from a 1950 Dr. Seuss book',
  'Before it meant computer whiz, the word showed up in a children''s book, tucked into a rhyme.',
  'The earliest known appearance of the word ‘nerd’ in print is in Dr. Seuss''s 1950 picture book ‘If I Ran the Zoo’, where it names one of the made-up creatures a boy wants to bring back for his zoo.',
  'You''ve probably called someone a nerd, or been called one. The word travels just fine into German too. But its oldest known appearance in print isn''t in a school hallway or a tech magazine. It''s in a children''s book.

## A Nerkle, a Nerd and a Seersucker

In 1950, Dr. Seuss, the pen name of Theodor Seuss Geisel, published ‘If I Ran the Zoo’. In it, a boy dreams up absurd animals he would collect for his perfect zoo. One rhyme goes: "And then, just to show them, I''ll sail to Ka-Troo / And bring back an It-kutch, a Preep and a Proo, / A Nerkle, a Nerd, and a Seersucker, too!"

That Nerd is a fantasy creature, not a person. Still, NPR calls the book the leading theory for where the word first showed up in print, and World Wide Words lists it as one of the two earliest known appearances.

## One year later, it was slang

Just a year later, the word turned up with its modern meaning. In October 1951, Newsweek wrote about modern slang: "In Detroit, someone who once would be called a drip or a square is now, regrettably, a nerd."

Did Seuss invent it? Nobody can say for sure. The Online Etymology Dictionary suggests nerd probably grew out of the older slang word "nert", a variant of "nut" for a stupid or crazy person, and that the Seuss book may have helped it spread. World Wide Words doubts that a word from a book for young children became teen slang that fast, and points out that the Oxford English Dictionary calls the origin "uncertain and disputed".

> Bonus fact: There''s also "knurd", which is "drunk" spelled backwards. According to World Wide Words, that joke was already around in the 19th century.

## From insult to badge of honor

For decades, nerd was mostly a put-down. The 1984 film ‘Revenge of the Nerds’ gave it a big pop culture moment, and by around 1989 college slang used it neutrally for someone who knows their stuff. Today, Merriam-Webster''s main definition is "a person devoted to intellectual, academic, or technical pursuits or interests".

Not bad for a word that started out next to an It-kutch and a Proo.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nerd-dr-seuss-zoo', 'en', 1, 'If I Ran the Zoo by Dr. Seuss', 'Dr. Seuss If I Ran the Zoo book', 'The original rhyming picture book, full of absurd imaginary animals.'),
  ('nerd-dr-seuss-zoo', 'en', 2, 'Etymology book about English words', 'etymology book origins of English words', 'Hundreds of short stories about where everyday words come from.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nerd-dr-seuss-zoo', 'en', 1, 'KPBS (NPR): Nerd! How the word popularized by Dr. Seuss went from geeky insult to mainstream', 'https://www.kpbs.org/news/2025/08/20/nerd-how-the-word-popularized-by-dr-seuss-went-from-geeky-insult-to-mainstream'),
  ('nerd-dr-seuss-zoo', 'en', 2, 'Online Etymology Dictionary: Nerd - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/nerd'),
  ('nerd-dr-seuss-zoo', 'en', 3, 'World Wide Words: Nerd: The Mysterious Origins and Evolution of a Word', 'https://worldwidewords.org/qa-ner1.html');
