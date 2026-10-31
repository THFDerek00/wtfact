-- WTFact-Fakt „Der Nokia-Klingelton stammt aus einem klassischen Gitarrenstück von 1902“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('nokia-tune-gran-vals-1902', '2026-11-01T16:00:00+01:00', 'popculture', '📱', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nokia-tune-gran-vals-1902', 'de', 'nokia-klingelton-ist-gitarrenmusik-von-1902',
  'Der Nokia-Klingelton stammt aus einem klassischen Gitarrenstück von 1902',
  'Millionen Handys haben ihn täglich gedudelt. Geschrieben wurde die Melodie rund 90 Jahre vorher, für Gitarre.',
  'Der berühmte Nokia-Klingelton besteht aus vier Takten aus „Gran Vals“, einem Stück für Sologitarre, das der spanische Komponist Francisco Tárrega 1902 schrieb.',
  'Dü-dü-dü-dü, dü-dü-dü-dü, dü-dü-dü-düüü. Wahrscheinlich hörst du ihn gerade im Kopf. Was du vermutlich nicht wusstest: Diese Melodie ist rund 90 Jahre älter als das erste Nokia-Handy, für das mit ihr geworben wurde.

## Ein Walzer für Gitarre

Die Melodie stammt von Francisco Tárrega, einem spanischen Komponisten und Gitarristen der Romantik. 1902 schrieb er „Gran Vals“, einen Walzer für Sologitarre. Laut Classic FM besteht der Klingelton aus genau vier Takten daraus, den Takten 13 bis 16.

Damit ist es mit der Klassik noch nicht vorbei. Classic FM und BGR erwähnen beide, dass sich Tárrega möglicherweise von einer kurzen Passage aus Chopins „Grande Valse Brillante“ für Klavier inspirieren ließ.

## Vom Werbespot zum Klingelton

Nokia nutzte die Musik zuerst Anfang der 1990er, in einem TV-Spot für das Handy Nokia 1011. Laut BGR war das Stück gemeinfrei, Nokia musste also keine neue Musik in Auftrag geben. BGR berichtet, dass zwei Nokia-Manager, Anssi Vanjoki und Lauri Kivinen, die kurze Phrase 1993 auswählten.

Als Mitte der 1990er das Nokia 2110 kam, bei dem man den Klingelton selbst wählen konnte, hieß die Melodie angeblich einfach „Ringtone Type 7“. Einen richtigen Namen bekam sie erst später in den 1990ern: zuerst „Grande Valse“, dann den Namen, den sie bis heute trägt, „Nokia Tune“.

> Bonusfakt: Laut einer Schätzung von 2009, die Classic FM und BGR beide zitieren, war der Nokia Tune weltweit etwa 1,8 Milliarden Mal am Tag zu hören. Das sind rund 20.000 Mal pro Sekunde.

## Ein Gitarrenhit als Firmensound

Für die meisten Menschen ist Tárregas bekannteste Musik kein Konzertstück, sondern ein kurzer Schnipsel, der früher in Klassenzimmern, Bussen und Kinos losging, meist gefolgt von hektischem Wühlen in einer Tasche.

Eine der meistgehörten Melodien der Handy-Ära wurde für ein Instrument mit sechs Saiten und ohne Akku geschrieben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nokia-tune-gran-vals-1902', 'de', 1, 'Konzertgitarre für Einsteiger', 'Konzertgitarre Anfänger 4/4 Nylonsaiten', 'Eine Gitarre mit Nylonsaiten, das Instrument, für das Tárrega komponierte.'),
  ('nokia-tune-gran-vals-1902', 'de', 2, 'Retro-Tastenhandy', 'Nokia 3310 Retro Handy', 'Ein einfaches Tastenhandy mit langer Akkulaufzeit und viel Nostalgie.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nokia-tune-gran-vals-1902', 'de', 1, 'Classic FM: Did you know the original Nokia ringtone comes from a piece of Spanish classical guitar music?', 'https://www.classicfm.com/composers/tarrega/nokia-theme-tune-origins/'),
  ('nokia-tune-gran-vals-1902', 'de', 2, 'BGR: Where The Famous ''Nokia Tune'' Ringtone Actually Comes From', 'https://www.bgr.com/2290878/where-famous-nokia-tune-ringtone-comes-from-history/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nokia-tune-gran-vals-1902', 'en', 'nokia-ringtone-is-guitar-music-from-1902',
  'The Nokia ringtone comes from a classical guitar piece from 1902',
  'Millions of phones played it every day. The melody had been written for guitar about 90 years earlier.',
  'The famous Nokia ringtone is four bars from "Gran Vals", a solo guitar piece written in 1902 by the Spanish composer Francisco Tárrega.',
  'Dah-dah-dah-dah, dah-dah-dah-dah, dah-dah-dah-daaah. You can probably hear it in your head right now. What you probably didn''t know: that tune is about 90 years older than the first Nokia phone it was used to advertise.

## A waltz for guitar

The melody comes from Francisco Tárrega, a Spanish composer and guitarist of the Romantic era. In 1902 he wrote "Gran Vals", a waltz for solo guitar. According to Classic FM, the ringtone is made of exactly four bars from it, bars 13 to 16.

The classical twist doesn''t end there. Both Classic FM and BGR mention that Tárrega may have been inspired by a short passage in Chopin''s "Grande Valse Brillante" for piano.

## From TV ad to ringtone

Nokia first used the music in the early 1990s, in a TV ad for its Nokia 1011 phone. According to BGR, the piece was in the public domain, so Nokia didn''t have to commission any new music. BGR reports that two Nokia executives, Anssi Vanjoki and Lauri Kivinen, picked out the short phrase in 1993.

When the Nokia 2110 came out in the mid-1990s and let users choose their ringtone, the melody was reportedly listed simply as "Ringtone Type 7". It only got a proper name later in the 1990s: first "Grande Valse", and then the name it still has today, the "Nokia Tune".

> Bonus fact: According to a 2009 estimate cited by both Classic FM and BGR, the Nokia Tune was heard about 1.8 billion times a day worldwide. That''s roughly 20,000 times per second.

## A guitarist''s hit, a phone company''s sound

For most people, Tárrega''s best-known music isn''t a concert piece. It''s a short snippet that used to go off in classrooms, buses and cinemas, usually followed by someone digging frantically through a bag.

One of the most-heard melodies of the mobile phone era was written for an instrument with six strings and no battery.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nokia-tune-gran-vals-1902', 'en', 1, 'Classical guitar for beginners', 'classical guitar beginner 4/4 nylon strings', 'A nylon-string guitar, the instrument Tárrega wrote his music for.'),
  ('nokia-tune-gran-vals-1902', 'en', 2, 'Retro phone with keypad', 'Nokia 3310 retro mobile phone', 'A simple button phone with long battery life and plenty of nostalgia.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nokia-tune-gran-vals-1902', 'en', 1, 'Classic FM: Did you know the original Nokia ringtone comes from a piece of Spanish classical guitar music?', 'https://www.classicfm.com/composers/tarrega/nokia-theme-tune-origins/'),
  ('nokia-tune-gran-vals-1902', 'en', 2, 'BGR: Where The Famous ''Nokia Tune'' Ringtone Actually Comes From', 'https://www.bgr.com/2290878/where-famous-nokia-tune-ringtone-comes-from-history/');
