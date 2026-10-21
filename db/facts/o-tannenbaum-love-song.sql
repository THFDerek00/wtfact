-- WTFact-Fakt „„O Tannenbaum“ war ursprünglich ein Lied über eine untreue Geliebte“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('o-tannenbaum-love-song', '2026-12-16T00:00:00+01:00', 'language', '🌲', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'o-tannenbaum-love-song', 'de', 'o-tannenbaum-war-liebeslied',
  '„O Tannenbaum“ war ursprünglich ein Lied über eine untreue Geliebte',
  'Das bekannteste Weihnachtslied begann als Trennungssong. Der Baum war nur der Vergleich.',
  'Die Vorlage für „O Tannenbaum“ von 1819 war ein trauriges Liebeslied über eine untreue Frau, der immergrüne Baum stand darin für Treue.',
  '„O Tannenbaum, o Tannenbaum, wie treu sind deine Blätter.“ Jeder kennt die Zeile. Und kaum jemand weiß, warum ausgerechnet ein Baum für Treue gelobt wird. Die Antwort ist ein handfester Liebeskummer aus dem Jahr 1819.

## Erst Herzschmerz, dann Weihnachten

Die Melodie ist alt. Laut Sonntagsblatt stammt sie wahrscheinlich von 1799 und war im 19. Jahrhundert auch als Studentenlied bekannt. 1819 schrieb der Pädagoge und Volksliedsammler August Zarnack einen Text dazu, und der hatte mit Weihnachten nichts zu tun.

Laut evangelisch.de war Zarnacks Lied ein Liebeslied über die Untreue einer jungen Frau. Der Tannenbaum, der Sommer wie Winter grün bleibt, war darin das Gegenbild: Er hält, was er verspricht, im Gegensatz zu ihr. Die Treue der Blätter war also ein Seitenhieb.

## Der Umbau von 1824

Fünf Jahre später griff der Leipziger Lehrer, Musiker und Theologe Ernst Anschütz das Lied auf. 1824 veröffentlichte er es in seinem Musikalischen Schulgesangbuch. Laut evangelisch.de übernahm er Melodie und erste Strophe, strich die restlichen Strophen und schrieb zwei neue dazu.

Aus dem Trennungslied wurde so ein hoffnungsvolles Weihnachtslied mit dem Baum im Mittelpunkt. Laut evangelisch.de ist es vermutlich das erste Lied überhaupt, das Tannenbaum und Weihnachten miteinander verbindet. Richtig bekannt in ganz Deutschland wurde es laut Sonntagsblatt allerdings erst nach dem Zweiten Weltkrieg.

> Bonusfakt: Texte auf bekannte Melodien umzudichten war damals völlig normal. Ein Lied wechselte so manchmal mehrfach das Thema, bevor eine Fassung hängen blieb.

Wer also an Heiligabend die treuen Blätter besingt, singt eigentlich über eine junge Frau, die ihrem Liebsten gar nicht treu war.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('o-tannenbaum-love-song', 'de', 1, 'Liederbuch mit Weihnachtsliedern und Noten', 'Weihnachtslieder Liederbuch Noten Akkorde', 'Die bekannten Lieder mit Text, Noten und Gitarrengriffen.'),
  ('o-tannenbaum-love-song', 'de', 2, 'Kleine Spieluhr mit Weihnachtsmelodie', 'Spieluhr O Tannenbaum', 'Spielt die Melodie auf Knopfdruck, ganz ohne Gesang.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('o-tannenbaum-love-song', 'de', 1, 'Sonntagsblatt: O Tannenbaum', 'https://www.sonntagsblatt.de/ursprung-liedtext-alles-ueber-das-weihnachtslied-o-tannenbaum'),
  ('o-tannenbaum-love-song', 'de', 2, 'evangelisch.de: Wie „O Tannenbaum“ zum Weihnachtslied wurde', 'https://www.evangelisch.de/inhalte/237313/16-12-2024/hits-unterm-christbaum-wie-o-tannenbaum-zum-weihnachtslied-wurde');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'o-tannenbaum-love-song', 'en', 'o-christmas-tree-was-love-song',
  '‘O Tannenbaum’ was originally a song about an unfaithful lover',
  'Germany''s best-known Christmas carol started out as a breakup song. The tree was just the comparison.',
  'The 1819 original behind "O Tannenbaum" (O Christmas Tree) was a sad love song about an unfaithful woman, with the evergreen tree standing for loyalty.',
  '"O Tannenbaum, o Tannenbaum, how loyal are your leaves." That''s the literal German line behind "O Christmas Tree". Few people wonder why a tree gets praised for being loyal. The answer is heartbreak.

## Heartbreak first, Christmas later

The melody is old. According to Sonntagsblatt, it probably dates from 1799 and was also known as a student song in the 19th century. In 1819, teacher and folk song collector August Zarnack wrote lyrics for it, and they had nothing to do with Christmas.

According to evangelisch.de, Zarnack''s song was a love song about a young woman''s unfaithfulness. The fir tree, which stays green summer and winter, was the contrast: it keeps its promise, unlike her. So the loyal leaves were a dig at her.

## The 1824 remake

Five years later, the Leipzig teacher, musician and theologian Ernst Anschütz picked up the song. In 1824, he published it in his school songbook. According to evangelisch.de, he kept the melody and the first verse, dropped the other verses and wrote two new ones.

That turned the breakup song into a hopeful Christmas carol with the tree at its center. Evangelisch.de says it''s probably the first song ever to link the fir tree with Christmas. It only became truly famous across Germany after the Second World War, though, according to Sonntagsblatt.

> Bonus fact: Putting new words to well-known melodies was completely normal back then. A song could change its topic several times before one version stuck.

So anyone singing about loyal leaves on Christmas Eve is really singing about a woman who wasn''t loyal at all.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('o-tannenbaum-love-song', 'en', 1, 'Christmas carol songbook with sheet music', 'christmas carols songbook sheet music chords', 'The classic carols with lyrics, notes and guitar chords.'),
  ('o-tannenbaum-love-song', 'en', 2, 'Small music box with a Christmas tune', 'O Christmas Tree music box', 'Plays the melody at a turn of the handle, no singing needed.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('o-tannenbaum-love-song', 'en', 1, 'Sonntagsblatt: O Tannenbaum', 'https://www.sonntagsblatt.de/ursprung-liedtext-alles-ueber-das-weihnachtslied-o-tannenbaum'),
  ('o-tannenbaum-love-song', 'en', 2, 'evangelisch.de: Wie „O Tannenbaum“ zum Weihnachtslied wurde', 'https://www.evangelisch.de/inhalte/237313/16-12-2024/hits-unterm-christbaum-wie-o-tannenbaum-zum-weihnachtslied-wurde');
