-- WTFact-Fakt „In Halberstadt läuft ein Orgelstück bis zum Jahr 2640“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('cage-organ-639-years', NULL, 'popculture', '🎹', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cage-organ-639-years', 'de', 'orgelstueck-bis-2640',
  'In Halberstadt läuft ein Orgelstück bis zum Jahr 2640',
  'Die meisten Songs dauern drei Minuten. Dieses Stück läuft seit 2001 und hat noch mehr als sechs Jahrhunderte vor sich.',
  'In der Burchardikirche in Halberstadt spielt eine Orgel seit 2001 John Cages Stück „ORGAN²/ASLSP“, und die Aufführung soll erst 2640 enden, nach 639 Jahren.',
  'Die meisten Songs dauern um die drei Minuten. Dieses Stück läuft seit 2001 und hat noch mehr als sechs Jahrhunderte vor sich.

## So langsam wie möglich

Der US-Komponist John Cage schrieb ein Stück namens ORGAN²/ASLSP. ASLSP steht für „As SLow aS Possible“, also „so langsam wie möglich“, und wie langsam das sein soll, hat Cage nie festgelegt. Ein Projekt in Halberstadt in Sachsen-Anhalt hat ihn beim Wort genommen: In der Burchardikirche spielt eine Orgel das Stück über 639 Jahre, bis 2640.

Warum 639? Laut der Nachrichtenagentur AP erinnert die Zahl an eine Halberstädter Orgel von 1361, die 639 Jahre vor dem Projektstart im Jahr 2000 gebaut wurde. Die Aufführung selbst begann am 5. September 2001, Cages 89. Geburtstag. Und zwar mit Stille: Die ersten Töne erklangen erst am 5. Februar 2003.

## Wenn sich der Klang ändert, reisen Leute an

Ein einzelner Akkord kann Monate oder Jahre lang in der Luft hängen. Ein elektrisches Gebläse versorgt die Orgel mit Luft, Pfeifen werden von Hand hinzugefügt oder entfernt. Jeder Klangwechsel ist deshalb ein Ereignis. Classic FM berichtete über einen Wechsel am 5. September 2020, den ersten seit Oktober 2013. Laut AP saßen beim 17. Klangwechsel 2026 mehr als 150 Menschen in der Kirche, Dutzende weitere schauten draußen per Livestream zu. Damit waren etwa 4 Prozent der Gesamtdauer geschafft.

Der Orgelbauer ist optimistisch, was die Technik angeht. Johannes Hüfken sagte der AP, die Pfeifen sollten noch mindestens 500 Jahre halten.

> Bonusfakt: Ein Ticket fürs Finale kannst du schon kaufen. Die vererbbaren „Final Tickets“ für 2640 kosten 2.640 Euro.

Wer den letzten Akkord hört, ist noch nicht geboren. Seine Urgroßeltern übrigens auch nicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cage-organ-639-years', 'de', 1, 'Buch über John Cage', 'John Cage Biografie Buch', 'Erklärt, wie Cage mit Stille, Zufall und Zeit Musik neu gedacht hat.'),
  ('cage-organ-639-years', 'de', 2, 'Klangschale', 'Klangschale mit Klöppel', 'Ein einziger Ton, der lange nachklingt, für alle, die gern langsame Klänge mögen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cage-organ-639-years', 'de', 1, 'Classic FM: A 639-year-long John Cage organ piece had a very rare chord change. And it was quite an event.', 'https://www.classicfm.com/composers/cage/as-slow-as-possible-organ-chord-change/'),
  ('cage-organ-639-years', 'de', 2, 'WTOP: This organ will play one composition until 2640. It''s redefining how slowly music can be played', 'https://wtop.com/trending-now/2026/08/this-organ-will-play-one-composition-until-2640-its-redefining-how-slowly-music-can-be-played/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cage-organ-639-years', 'en', 'organ-piece-until-2640',
  'In a German church, one piece of organ music will play until 2640',
  'Most songs last three minutes. This one has been going since 2001 and still has more than six centuries to go.',
  'In St. Burchardi Church in Halberstadt, an organ has been playing John Cage''s piece "ORGAN²/ASLSP" since 2001, and the performance is set to end in 2640, after 639 years.',
  'Most songs last around three minutes. This one has been going since 2001 and still has more than six centuries to go.

## As slow as possible

The American composer John Cage wrote a piece called ORGAN²/ASLSP. ASLSP stands for "As SLow aS Possible," and Cage never said exactly how slow that should be. A project in Halberstadt, Germany, took him at his word: in St. Burchardi Church, an organ is playing the piece over 639 years, until 2640.

Why 639? According to the Associated Press, the number honors a Halberstadt organ from 1361, which was built 639 years before the project started in 2000. The performance itself began on September 5, 2001, Cage''s 89th birthday. And it began with silence: the first notes only sounded on February 5, 2003.

## When the sound changes, people show up

A single chord can hang in the air for months or years. An electric blower keeps the organ supplied with wind, and pipes are added or removed by hand. That makes every chord change an event. Classic FM reported on a change on September 5, 2020, the first since October 2013. According to the AP, more than 150 people sat in the church for the 17th change in 2026, while dozens more watched a livestream outside. It marked about 4 percent of the total duration.

The organ builder is optimistic about the hardware. Johannes Hüfken told the AP the pipes should last at least 500 more years.

> Bonus fact: You can already buy a ticket for the finale. The inheritable "final tickets" for 2640 cost 2,640 euros.

Whoever hears the final chord hasn''t been born yet. Neither have their great-grandparents.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cage-organ-639-years', 'en', 1, 'Book about John Cage', 'John Cage biography book', 'Explains how Cage rethought music through silence, chance and time.'),
  ('cage-organ-639-years', 'en', 2, 'Singing bowl', 'singing bowl with mallet', 'A single tone that rings for a long time, for anyone who likes slow sounds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cage-organ-639-years', 'en', 1, 'Classic FM: A 639-year-long John Cage organ piece had a very rare chord change. And it was quite an event.', 'https://www.classicfm.com/composers/cage/as-slow-as-possible-organ-chord-change/'),
  ('cage-organ-639-years', 'en', 2, 'WTOP: This organ will play one composition until 2640. It''s redefining how slowly music can be played', 'https://wtop.com/trending-now/2026/08/this-organ-will-play-one-composition-until-2640-its-redefining-how-slowly-music-can-be-played/');
