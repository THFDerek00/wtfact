-- WTFact-Fakt „Sechs Sekunden Schlagzeug von 1969 gehören zu den meistgesampelten Klängen der Musik“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('amen-break', '2026-10-10T01:00:00+02:00', 'popculture', '🥁', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'amen-break', 'de', 'amen-break-sechs-sekunden',
  'Sechs Sekunden Schlagzeug von 1969 gehören zu den meistgesampelten Klängen der Musik',
  'Du hast diesen Beat garantiert schon gehört, wahrscheinlich in Dutzenden Songs. Die Band dahinter bekam dafür jahrzehntelang offenbar nichts.',
  'Ein etwa sechs Sekunden langes Schlagzeugsolo aus „Amen Brother“ von The Winstons aus dem Jahr 1969 wurde tausendfach gesampelt, doch die Band bekam dafür lange offenbar keine Tantiemen.',
  'Du hast ihn fast sicher schon gehört, wahrscheinlich in vielen verschiedenen Songs, ohne seinen Namen zu kennen. Er heißt Amen Break und ist nur etwa sechs Sekunden lang.

## Die B-Seite, mit der keiner gerechnet hat

1969 veröffentlichte die Funk- und Soulband The Winstons das Stück „Amen Brother“ als B-Seite. Mittendrin steckt ein kurzes Schlagzeugsolo von Drummer Gregory C. Coleman. Damals hielt das wohl niemand für einen besonders großen Moment.

Dann fingen Hip-Hop-Produzenten an, Drum-Breaks aus alten Platten in Schleife zu legen. Laut Cambridge Audio war der Amen Break schon Anfang der 1980er auf Hip-Hop-Platten verbreitet. Später nutzten ihn unter anderem Oasis, The Prodigy, David Bowie und N.W.A, zählt das Musikmagazin NME auf. Die Sample-Datenbank WhoSampled schätzt laut NME fast 1.900 Verwendungen, Cambridge Audio spricht von tausenden. Mixmag nennt ihn eines der meistgesampelten Musikstücke der Geschichte.

## Bezahlt nach 46 Jahren

Der unangenehme Teil: Die Band verdiente an all dem Sampling offenbar nichts. Laut Cambridge Audio bekamen The Winstons lange Zeit keine Tantiemen dafür, und Mixmag schreibt, dass Coleman nie welche erhielt. Richard L. Spencer, Frontmann der Band, hatte das Stück arrangiert und hält das Urheberrecht.

Die britischen DJs Martyn Webster und Steve Theobald starteten deshalb eine Spendenaktion, um etwas zurückzugeben. Sie brachte rund 24.000 Pfund ein, und Spencer bekam den Scheck, 46 Jahre nach Erscheinen des Songs.

> Bonusfakt: Laut NME lag das ursprüngliche Spendenziel bei gerade mal 1.000 Pfund.

Sechs Sekunden Schlagzeug haben die Musik geprägt, und am Ende mussten die Fans für die Band den Hut herumgehen lassen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('amen-break', 'de', 1, 'Plattenspieler mit Lautsprechern', 'Plattenspieler mit Lautsprechern Bluetooth', 'Damit klingen alte Funk- und Soulplatten so, wie sie gedacht waren.'),
  ('amen-break', 'de', 2, 'Drum-Pad zum Beats-Bauen', 'Drum Pad MIDI Controller Beats', 'Hier kannst du Samples auf Pads legen und eigene Beats zusammenklopfen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('amen-break', 'de', 1, 'NME: Musician behind ''Amen Break'', as sampled by Oasis and The Prodigy, gets paid after 46 years', 'https://www.nme.com/?p=1199522'),
  ('amen-break', 'de', 2, 'Mixmag: Amen Break creator finally receives his dues', 'https://mixmag.net/read/amen-break-arranger-finally-receives-royalties-news'),
  ('amen-break', 'de', 3, 'Cambridge Audio: The Amen Break - Six Important Seconds in Music', 'https://www.cambridgeaudio.com/row/en/blog/amen-break-six-important-seconds-music');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'amen-break', 'en', 'amen-break-six-seconds',
  'Six seconds of drumming from 1969 are among the most sampled sounds in music',
  'You''ve definitely heard this beat, probably in dozens of songs. The band behind it reportedly got nothing for decades.',
  'A roughly six-second drum solo from the 1969 track "Amen Brother" by The Winstons has been sampled thousands of times, yet the band reportedly saw no royalties for a long time.',
  'You''ve almost certainly heard it, probably in lots of different songs, without knowing its name. It''s called the Amen break, and it''s only about six seconds long.

## The B-side nobody saw coming

In 1969, the funk and soul band The Winstons released a track called "Amen Brother" as a B-side. In the middle sits a short drum solo played by drummer Gregory C. Coleman. Back then, nobody thought of it as a big moment.

Then hip hop producers started looping drum breaks from old records. According to Cambridge Audio, the Amen break was already common on hip hop records in the early 1980s. Later it was used by Oasis, The Prodigy, David Bowie and N.W.A, among others, NME lists. The sample database WhoSampled estimates nearly 1,900 uses, NME reports, while Cambridge Audio speaks of thousands. Mixmag calls it one of the most sampled pieces of music in history.

## Paid after 46 years

The awkward part: the band reportedly made nothing from all that sampling. According to Cambridge Audio, The Winstons received no royalties for it for a long time, and Mixmag writes that Coleman never received any. Richard L. Spencer, the band''s frontman, had arranged the track and holds its copyright.

So British DJs Martyn Webster and Steve Theobald started a fundraiser to give something back. It raised about 24,000 pounds, and Spencer got the cheque, 46 years after the song came out.

> Bonus fact: According to NME, the fundraiser''s original goal was just 1,000 pounds.

Six seconds of drumming shaped music, and in the end the fans had to pass the hat for the band.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('amen-break', 'en', 1, 'Record player with built-in speakers', 'record player with speakers Bluetooth', 'Makes old funk and soul records sound the way they were meant to.'),
  ('amen-break', 'en', 2, 'Drum pad controller for making beats', 'drum pad MIDI controller beat making', 'Lets you load samples onto pads and tap out your own beats.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('amen-break', 'en', 1, 'NME: Musician behind ''Amen Break'', as sampled by Oasis and The Prodigy, gets paid after 46 years', 'https://www.nme.com/?p=1199522'),
  ('amen-break', 'en', 2, 'Mixmag: Amen Break creator finally receives his dues', 'https://mixmag.net/read/amen-break-arranger-finally-receives-royalties-news'),
  ('amen-break', 'en', 3, 'Cambridge Audio: The Amen Break - Six Important Seconds in Music', 'https://www.cambridgeaudio.com/row/en/blog/amen-break-six-important-seconds-music');
