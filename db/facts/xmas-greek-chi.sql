-- WTFact-Fakt „Das X in „Xmas“ ist kein X, sondern ein griechischer Buchstabe“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('xmas-greek-chi', '2026-12-19T00:00:00+01:00', 'language', '✖️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'xmas-greek-chi', 'de', 'xmas-x-ist-griechisch',
  'Das X in „Xmas“ ist kein X, sondern ein griechischer Buchstabe',
  'Viele halten „Xmas“ für eine lieblose Abkürzung. Dabei steckt darin ein uralter Name.',
  'Das X in „Xmas“ ist eigentlich der griechische Buchstabe Chi, der Anfangsbuchstabe von „Christos“, also Christus.',
  '„Xmas“ steht auf Werbeplakaten, in Chats und auf Grußkarten. Manche Menschen ärgern sich jedes Jahr darüber, weil es so klingt, als hätte jemand Christus einfach aus Weihnachten herausgestrichen. Das Gegenteil ist der Fall.

## Ein X, das gar keins ist

Das Zeichen am Anfang ist kein lateinisches X. Laut Britannica ist es der griechische Buchstabe Chi. Er sieht aus wie unser X, wird aber anders gesprochen, ungefähr wie das „ch“ in „Bach“.

Und Chi ist der erste Buchstabe des griechischen Wortes Christos, also Christus. Britannica erinnert daran, dass große Teile des Neuen Testaments ursprünglich auf Griechisch geschrieben wurden. Für Schreiber, die Griechisch konnten, war das Chi deshalb eine naheliegende Abkürzung für Christus.

Aus „Christmas“ wurde so „Xmas“: Das X steht für Christ, die Endung „-mas“ kommt aus dem englischen Wort Christmas. Merriam-Webster erklärt die Herkunft genauso.

## Alt, aber nicht vornehm

Neu ist diese Schreibweise übrigens ganz und gar nicht. Laut Merriam-Webster ist sie in dieser Bedeutung schon seit 1721 belegt, also seit über 300 Jahren. Das Wörterbuch stuft sie aber als umgangssprachlich ein. Heute steht sie vor allem in Werbung und Schlagzeilen, wo jeder Buchstabe Platz kostet.

Wer „Xmas“ schreibt, kürzt also nichts weg, sondern benutzt eine alte Schreibtradition. Nur in einem förmlichen Brief an die Großeltern sollte man vielleicht trotzdem das ganze Wort nehmen.

> Bonusfakt: Weil das X „Christ“ bedeutet, heißt „Xmas“ eigentlich genau dasselbe wie „Christmas“, nur in kurz, und es wird trotzdem meistens „Ex-mas“ ausgesprochen.

So steckt in einem einzigen Buchstaben ein Stück Sprachgeschichte, das fast niemand kennt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('xmas-greek-chi', 'de', 1, 'Buch über die Geschichte der Schrift', 'Buch Geschichte der Schrift Alphabet', 'Erzählt, wie unsere Buchstaben entstanden sind.'),
  ('xmas-greek-chi', 'de', 2, 'Griechisch-Lernbuch für Einsteiger', 'Altgriechisch lernen Anfänger Buch', 'Für alle, die das Chi gleich selbst schreiben wollen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('xmas-greek-chi', 'de', 1, 'Britannica: One Good Fact about Xmas', 'https://www.britannica.com/one-good-fact/what-does-the-x-mean-in-xmas'),
  ('xmas-greek-chi', 'de', 2, 'Merriam-Webster: Xmas', 'https://www.merriam-webster.com/dictionary/Xmas');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'xmas-greek-chi', 'en', 'xmas-x-is-greek',
  'The X in ‘Xmas’ isn''t an X, it''s a Greek letter',
  'Many people see "Xmas" as a lazy shortcut. In fact it hides an ancient name.',
  'The X in "Xmas" is really the Greek letter chi, the first letter of "Christos", meaning Christ.',
  '"Xmas" shows up on billboards, in chats and on greeting cards. Some people get annoyed by it, because it sounds like someone simply crossed Christ out of Christmas. The opposite is true.

## An X that isn''t one

The character at the start isn''t a Latin X. According to Britannica, it''s the Greek letter chi. It looks like our X but is pronounced differently, a bit like the "ch" in the Scottish "loch".

And chi is the first letter of the Greek word Christos, meaning Christ. Britannica points out that much of the New Testament was originally written in Greek. So for writers who knew Greek, chi was an obvious shorthand for Christ.

That''s how "Christmas" became "Xmas": the X stands for Christ, and the "-mas" comes from Christmas. Merriam-Webster explains the origin the same way.

## Old, but not fancy

The spelling isn''t new. According to Merriam-Webster, it''s been recorded in this sense since 1721, more than 300 years ago. The dictionary does label it informal, though. Today it''s used mostly in ads and headlines, where every letter takes up space.

So anyone who writes "Xmas" isn''t cutting anything out, they''re using an old writing tradition. Still, in a formal letter to the grandparents, the full word might be the safer choice.

> Bonus fact: Because the X means "Christ", "Xmas" really means exactly the same as "Christmas", just shorter, even though most people pronounce it "ex-mas".

A single letter carries a piece of language history that almost nobody knows about.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('xmas-greek-chi', 'en', 1, 'Book on the history of writing', 'history of writing alphabet book', 'Tells how our letters came to be.'),
  ('xmas-greek-chi', 'en', 2, 'Beginner''s Ancient Greek book', 'learn ancient greek beginner book', 'For anyone who wants to write the chi themselves.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('xmas-greek-chi', 'en', 1, 'Britannica: One Good Fact about Xmas', 'https://www.britannica.com/one-good-fact/what-does-the-x-mean-in-xmas'),
  ('xmas-greek-chi', 'en', 2, 'Merriam-Webster: Xmas', 'https://www.merriam-webster.com/dictionary/Xmas');
