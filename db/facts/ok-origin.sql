-- WTFact-Fakt „„OK“ begann 1839 als Witz über falsche Rechtschreibung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('ok-origin', '2026-09-09', 'language', '👌', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ok-origin', 'de', 'ok-oll-korrect',
  '„OK“ begann 1839 als Witz über falsche Rechtschreibung',
  'Das vielleicht bekannteste Wort der Welt war ursprünglich ein Insider-Gag in einer Zeitung aus Boston.',
  '„OK“ steht für „oll korrect“, eine absichtlich falsch geschriebene Version von „all correct“, zuerst gedruckt 1839 in einer Bostoner Zeitung.',
  'Du sagst es wahrscheinlich mehrmals am Tag, und es funktioniert von Berlin bis Tokio. „OK“ ist eines der am weitesten verbreiteten Wörter überhaupt. Dabei fing es als ziemlich alberner Gag an.

## Ein Trend aus Boston

In den späten 1830er-Jahren war in den USA, vor allem rund um Boston, ein Sprachtrend angesagt: Man kürzte Ausdrücke ab und schrieb sie dabei **absichtlich falsch**. Aus „know go“ statt „no go“ wurde „KG“, aus „know yuse“ statt „no use“ wurde „KY“, aus „oll wright“ statt „all right“ wurde „OW“. Eine Art Rechtschreib-Meme des 19. Jahrhunderts.

Am 23. März 1839 druckte die Zeitung „Boston Morning Post“ dann das Kürzel „o.k.“, gemeint war **„oll korrect“**, also „all correct“, mit Absicht falsch geschrieben. Verantwortlich war Herausgeber Charles Gordon Greene. Es ist der früheste bekannte gedruckte Beleg für das Wort.

## Ein Wahlkampf rettete das Wort

Die meisten dieser Witz-Abkürzungen waren schnell wieder verschwunden. „OK“ hatte Glück: 1840 trat Präsident Martin Van Buren zur Wiederwahl an. Er stammte aus Kinderhook im Bundesstaat New York und trug den Spitznamen **„Old Kinderhook“**. Seine Unterstützer gründeten einen „O.K. Club“, und plötzlich war das Kürzel überall zu sehen.

Danach half die Technik: Laut Farmers'' Almanac verbreitete sich „OK“ auch über den Telegrafen, weil es kurz, eindeutig und leicht zu übermitteln war. Außerdem eignete es sich perfekt, um auf Dokumenten schnell ein Einverständnis zu vermerken.

## Der Sprachdetektiv

Dass „OK“ aus Boston stammt, wissen wir vor allem dank des Sprachforschers Allen Walker Read. Er grub sich in den 1960er-Jahren durch alte Zeitungen und fand den Beleg von 1839. Damit waren viele andere Theorien erledigt, etwa dass „OK“ aus der Sprache der Choctaw oder aus dem Griechischen stamme. Für keine davon gibt es Belege, die älter sind als der Bostoner Zeitungsartikel.

> US-Präsident Woodrow Wilson soll das Wort als „okeh“ geschrieben haben, weil er an die Choctaw-Theorie glaubte.

Das erfolgreichste Kürzel der Welt ist also ein Rechtschreibfehler mit Absicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ok-origin', 'de', 1, '„OK: The Improbable Story of America''s Greatest Word“ von Allan Metcalf', 'OK The Improbable Story of America''s Greatest Word Metcalf', 'Ein ganzes Buch über zwei Buchstaben, auf Englisch. Erzählt locker, wie aus einem Zeitungswitz ein Weltwort wurde.'),
  ('ok-origin', 'de', 2, 'LED-Neonschild mit Schriftzug „OK“', 'LED Neon Schild OK', 'Leuchtet in warmen Farben und macht aus jeder Zimmerecke einen kleinen Hingucker.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ok-origin', 'de', 1, 'History.com: ''OK'' enters national vernacular', 'https://www.history.com/this-day-in-history/march-23/ok-enters-national-vernacular'),
  ('ok-origin', 'de', 2, 'Farmers'' Almanac: The Truth About the Origin of OK: A New England Joke', 'https://www.farmersalmanac.com/the-truth-about-o-k-from-the-1999-farmers-almanac'),
  ('ok-origin', 'de', 3, 'Etymonline: OK - Etymology, Origin & Meaning of the Name', 'https://www.etymonline.com/word/OK');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ok-origin', 'en', 'ok-oll-korrect',
  '‘OK’ started in 1839 as a joke about bad spelling',
  'Possibly the best-known word on the planet began as an inside joke in a Boston newspaper.',
  '‘OK’ stands for ‘oll korrect,’ a deliberately misspelled ‘all correct,’ first printed in a Boston newspaper in 1839.',
  'You probably say it several times a day, and it works from Berlin to Tokyo. "OK" is one of the most widespread words there is. Yet it started out as a pretty silly gag.

## A Boston trend

In the late 1830s, a language fad was all the rage in the US, especially around Boston: people abbreviated phrases and **deliberately misspelled them** along the way. "Know go" for "no go" became "KG," "know yuse" for "no use" became "KY," and "oll wright" for "all right" became "OW." Basically a 19th-century spelling meme.

On March 23, 1839, the Boston Morning Post printed "o.k.", short for **"oll korrect,"** meaning "all correct," misspelled on purpose. The man behind it was editor Charles Gordon Greene. It''s the earliest known use of the word in print.

## Saved by an election

Most of these joke abbreviations vanished quickly. "OK" got lucky: in 1840, President Martin Van Buren ran for reelection. He came from Kinderhook, New York, and went by the nickname **"Old Kinderhook."** His supporters formed an "O.K. Club," and suddenly the abbreviation was everywhere.

Then technology lent a hand. According to the Farmers'' Almanac, "OK" also spread via telegraph because it was short, unambiguous and easy to send over the wire. On top of that, it was a handy way to quickly mark approval on documents.

## The word detective

We know "OK" comes from Boston mostly thanks to linguist Allen Walker Read. In the 1960s, he dug through old newspapers and found the 1839 citation. That settled a lot of other theories, like the idea that "OK" came from the Choctaw language or from Greek. None of them has any evidence older than that Boston newspaper.

> US President Woodrow Wilson reportedly wrote the word as "okeh," because he believed in the Choctaw theory.

So the world''s most successful abbreviation is a spelling mistake made on purpose.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ok-origin', 'en', 1, 'OK: The Improbable Story of America''s Greatest Word by Allan Metcalf', 'OK The Improbable Story of America''s Greatest Word Metcalf', 'A whole book about two letters. A breezy read on how a newspaper joke turned into a global word.'),
  ('ok-origin', 'en', 2, 'OK LED neon sign', 'OK LED neon sign', 'Glows in warm colors and turns any corner of your room into a little eye-catcher.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ok-origin', 'en', 1, 'History.com: ''OK'' enters national vernacular', 'https://www.history.com/this-day-in-history/march-23/ok-enters-national-vernacular'),
  ('ok-origin', 'en', 2, 'Farmers'' Almanac: The Truth About the Origin of OK: A New England Joke', 'https://www.farmersalmanac.com/the-truth-about-o-k-from-the-1999-farmers-almanac'),
  ('ok-origin', 'en', 3, 'Etymonline: OK - Etymology, Origin & Meaning of the Name', 'https://www.etymonline.com/word/OK');
