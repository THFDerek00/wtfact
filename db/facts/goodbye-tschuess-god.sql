-- WTFact-Fakt „In „Tschüss“ und „Goodbye“ steckt Gott“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('goodbye-tschuess-god', '2026-11-02T16:00:00+01:00', 'language', '👋', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'goodbye-tschuess-god', 'de', 'gott-steckt-in-tschuess-und-goodbye',
  'In „Tschüss“ und „Goodbye“ steckt Gott',
  'Dein lässigster Abschiedsgruß ist ein geschrumpfter Segen, auf Deutsch und auf Englisch.',
  '„Tschüss“ geht wohl über niederdeutsch „adjüs“ und spanisch „adiós“ auf lateinisch „ad deum“ zurück, „zu Gott“, und das englische „goodbye“ ist eine Zusammenziehung von „God be with you“.',
  'Jedes Mal, wenn du „tschüss“ sagst, sprichst du streng genommen einen kleinen Segen. Und wer auf Englisch „goodbye“ sagt, macht genau dasselbe, nur auf einem ganz anderen Weg.

## Tschüss nahm den Umweg über Spanien

Laut Duden geht „tschüs“ auf ein älteres „atschüs“ zurück, eine Nebenform von niederdeutsch „adjüs“, wohl aus spanisch „adiós“, und das wiederum aus lateinisch „ad deum“: „zu Gott“. Wissen.de übersetzt den Abschiedsgruß ungefähr mit „(Geh) mit Gott!“ und nennt Verwandte auf dem Weg: wallonisch „adjuus“, französisch „adieu“ und italienisch „addio“. Auch das alte deutsche „ade“ stammt von derselben lateinischen Wurzel.

## Goodbye hieß mal „God be with you“

Auf Englisch steckt Gott genauso drin. Laut Grammarphobia nennt das Oxford English Dictionary „goodbye“ eine „contraction of the phrase God be with you (or ye)“, also eine Zusammenziehung von „Gott sei mit dir (oder euch)“. Mental Floss schreibt, dass man sich auf Englisch schon im 14. Jahrhundert mit „God be with you“ verabschiedete.

Die Kurzform taucht in den 1570er-Jahren in einem Brief des elisabethanischen Gelehrten Gabriel Harvey auf: „To requite your gallonde of godbwyes, I regive you a pottle of how-dyes.“ Ein „pottle“ ist eine halbe Gallone, Harvey schickt also halb so viele „Howdys“ (Hallos) zurück, wie er Goodbyes bekommen hat.

Bei der Schreibweise war alles erlaubt. Mental Floss zählt Formen wie „God be wy you“, „God buoye“ und „good b'' w'' y“ auf, und Shakespeare schrieb es in drei Stücken auf mindestens drei verschiedene Arten.

## Wie aus God good wurde

Und woher kommt das „good“? Das OED vermutet laut Grammarphobia, dass Abschiedsgrüße wie „good day“ und „good night“ den Tausch beeinflusst haben. Lange und kurze Form existierten nebeneinander bis Anfang des 19. Jahrhunderts, dann setzte sich die kurze durch.

> Bonusfakt: Viele glauben, „goodbye“ sei ein Wunsch nach einem „guten Bye“, so wie „good night“ eine gute Nacht wünscht. Laut Mental Floss stimmt das nicht: „Bye“ begann als Abkürzung, und das „good“ war ursprünglich gar nicht „good“.

Das Englische hat Gott so lange geschrumpft, bis man ihn nicht mehr hört, das Deutsche hat ihn aus Spanien importiert und zu „tschüss“ abgeschliffen. So oder so: Das lässigste Wort deines Tages hat einen eingebauten Segen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('goodbye-tschuess-god', 'de', 1, 'Buch über Wortherkunft', 'Etymologie Buch Wortherkunft', 'Kurze, unterhaltsame Geschichten hinter Alltagswörtern, ideal zum Schmökern.'),
  ('goodbye-tschuess-god', 'de', 2, 'Fußmatte mit Tschüss', 'Fußmatte lustig Tschüss', 'Verabschiedet deine Gäste, bevor du es tun musst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('goodbye-tschuess-god', 'de', 1, 'Duden: Tschüs', 'https://www.duden.de/rechtschreibung/Tschues'),
  ('goodbye-tschuess-god', 'de', 2, 'wissen.de: Was bedeutet eigentlich „tschüs“?', 'https://www.wissen.de/was-bedeutet-eigentlich-tschues'),
  ('goodbye-tschuess-god', 'de', 3, 'Grammarphobia: The long goodbye', 'https://grammarphobia.com/blog/2011/11/goodbye.html'),
  ('goodbye-tschuess-god', 'de', 4, 'Mental Floss: What Does ‘Goodbye’ Actually Mean?', 'https://www.mentalfloss.com/language/words/what-does-goodbye-actually-mean');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'goodbye-tschuess-god', 'en', 'god-hidden-in-goodbye-and-tschuess',
  'There''s a God hidden in both "goodbye" and "tschüss"',
  'Your most casual farewell is a shrunken blessing, in English and in German.',
  '"Goodbye" is a contraction of "God be with you", and the German "tschüss" probably goes back via Low German "adjüs" and Spanish "adiós" to Latin "ad deum", "to God".',
  'Every time you say "goodbye", you''re technically saying a tiny blessing. And if you''ve ever said "tschüss" in Germany, you''ve done the same thing, just with a detour through Spain.

## Goodbye used to be "God be with you"

According to the Grammarphobia Blog, the Oxford English Dictionary calls "goodbye" a "contraction of the phrase God be with you (or ye)". Mental Floss notes that English speakers were already saying "God be with you" when parting by the 14th century.

The short version shows up in a letter by the Elizabethan scholar Gabriel Harvey in the 1570s: "To requite your gallonde of godbwyes, I regive you a pottle of how-dyes." A pottle is half a gallon, so Harvey sends back half as many "howdies" as the goodbyes he received.

Spelling was a free-for-all. Mental Floss lists forms such as "God be wy you", "God buoye" and "good b'' w'' y", and says Shakespeare wrote it at least three different ways across three plays.

## How God turned into good

So where did "good" come from? The OED, as quoted by Grammarphobia, suggests the swap may have been influenced by farewells like "good day" and "good night". The long and the clipped forms existed side by side until the early 1800s, when the short one won.

> Bonus fact: Lots of people assume "goodbye" is a wish for a "good bye", like "good night". Mental Floss says that''s wrong: "bye" began as an abbreviation, and "good" wasn''t originally "good" at all.

## Tschüss took the scenic route

German hides the same idea, it just travelled further. Duden traces "tschüs" back to an older "atschüs", a variant of Low German "adjüs", probably from Spanish "adiós", which goes back to Latin "ad deum": "to God". Wissen.de explains it as a farewell meaning roughly "go with God" and lists relatives along the way: Walloon "adjuus", French "adieu" and Italian "addio". The old German farewell "ade" comes from the same Latin root.

English shrank God until you can''t hear him anymore, and German imported him from Spain and polished him into "tschüss". Either way, the most casual word of your day comes with a blessing built in.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('goodbye-tschuess-god', 'en', 1, 'Etymology book on word origins', 'etymology book word origins', 'Short, fun stories behind everyday words, perfect for dipping into.'),
  ('goodbye-tschuess-god', 'en', 2, 'Goodbye doormat', 'funny goodbye doormat', 'Says farewell to your guests before you have to.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('goodbye-tschuess-god', 'en', 1, 'Duden: Tschüs', 'https://www.duden.de/rechtschreibung/Tschues'),
  ('goodbye-tschuess-god', 'en', 2, 'wissen.de: Was bedeutet eigentlich „tschüs“?', 'https://www.wissen.de/was-bedeutet-eigentlich-tschues'),
  ('goodbye-tschuess-god', 'en', 3, 'Grammarphobia: The long goodbye', 'https://grammarphobia.com/blog/2011/11/goodbye.html'),
  ('goodbye-tschuess-god', 'en', 4, 'Mental Floss: What Does ‘Goodbye’ Actually Mean?', 'https://www.mentalfloss.com/language/words/what-does-goodbye-actually-mean');
