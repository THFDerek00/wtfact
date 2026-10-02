-- WTFact-Fakt „„Nice“ bedeutete früher „dumm““
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('nice-meant-foolish', '2026-09-05', 'language', '🙃', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nice-meant-foolish', 'de', 'nice-hiess-frueher-dumm',
  '„Nice“ bedeutete früher „dumm“',
  'Das Lieblingswort für alles Gute hatte einen ziemlich peinlichen Start.',
  'Als „nice“ im Mittelalter ins Englische kam, bedeutete es „töricht, unwissend, dumm“.',
  '„Nice!“ sagst du vielleicht, wenn jemand ein starkes Tor schießt, das neue Outfit gut aussieht oder die Pizza endlich kommt. Das englische Wort ist längst auch im Deutschen angekommen. Im mittelalterlichen England hätte man das aber eher als Beleidigung verstanden.

## Am Anfang: keine Ahnung

„Nice“ kam im späten 13. Jahrhundert über das Altfranzösische ins Englische. Die Wurzel ist das lateinische **„nescius“, „unwissend“**, wörtlich „nicht wissend“. Genau so wurde „nice“ anfangs auch benutzt: Laut Etymonline bedeutete es „töricht, unwissend, leichtfertig, sinnlos“. Merriam-Webster fasst die alte Bedeutung knapp zusammen: „trivial; foolish or stupid“, also belanglos, töricht oder dumm.

## Eine Reise durch die Bedeutungen

Danach begann eine lange Wanderung. Etymonline zeichnet sie ungefähr so nach:

- vor 1300: „ängstlich, zaghaft“
- spätes 14. Jahrhundert: „pingelig, wählerisch“
- um 1400: „zart, fein“
- 16. Jahrhundert: „genau, sorgfältig“
- 1769: „angenehm, erfreulich“
- 1830: „freundlich, rücksichtsvoll“

Die Bedeutung „genau“ steckt heute noch in Ausdrücken wie „a nice distinction“, also ein feiner Unterschied. Und laut Merriam-Webster kann „nice“ manchmal immer noch „wählerisch“ heißen, etwa wenn jemand einen zu feinen Gaumen für Fast Food hat.

## Zu viel des Guten

Irgendwann wurde „nice“ zum Allzweckwort für alles irgendwie Gute. Jane Austen machte sich darüber schon in ihrem Roman „Northanger Abbey“ lustig: Eine Figur stellt dort fest, das Wort passe einfach für alles. Und der Wörterbuchautor Henry Fowler beschwerte sich 1926, „nice“ sei so beliebt geworden, dass es kaum noch etwas Genaues bedeute.

Vom Schimpfwort zum Lob in ein paar Jahrhunderten: Das ist ein ziemlich irres Comeback für ein Wort.

> Auch „bully“ hat eine Kehrtwende hinter sich, nur in die andere Richtung: Laut Merriam-Webster bedeutete es früher „Schatz, Liebling“.

Von „dumm“ zu „super“, und keiner hat''s gemerkt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nice-meant-foolish', 'de', 1, '„Die Abtei von Northanger“ von Jane Austen', 'Die Abtei von Northanger Jane Austen', 'Austens wohl witzigster Roman: eine junge Frau, zu viele Schauergeschichten und jede Menge Ironie.'),
  ('nice-meant-foolish', 'de', 2, 'Sachbuch über die Herkunft englischer Wörter', 'Buch Herkunft englischer Wörter Etymologie', 'Für alle, die beim Englischsprechen ab und zu denken: Moment, woher kommt eigentlich dieses Wort?');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nice-meant-foolish', 'de', 1, 'Etymonline: Nice - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/nice'),
  ('nice-meant-foolish', 'de', 2, 'Merriam-Webster: 15 Words That Used to Mean Something Different', 'https://www.merriam-webster.com/wordplay/words-that-used-to-mean-something-different');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nice-meant-foolish', 'en', 'nice-used-to-mean-foolish',
  '‘Nice’ used to mean ‘foolish’',
  'Your go-to word for anything good got off to a pretty embarrassing start.',
  'When ‘nice’ entered English in the Middle Ages, it meant ‘foolish, ignorant, stupid.’',
  '"Nice!" you might say when someone scores a great goal, rocks a new outfit, or the pizza finally shows up. But in medieval England, calling someone nice would have come across more like an insult.

## In the beginning: clueless

"Nice" came into English in the late 13th century via Old French. Its root is the Latin **"nescius," "ignorant,"** literally "not knowing." And that''s exactly how "nice" was first used: according to Etymonline, it meant "foolish, ignorant, frivolous, senseless." Merriam-Webster sums up the old meaning in a few words: "trivial; foolish or stupid."

## A journey through meanings

Then began a long wander through different meanings. Etymonline traces it roughly like this:

- before 1300: "timid, faint-hearted"
- late 14th century: "fussy, fastidious"
- around 1400: "dainty, delicate"
- 16th century: "precise, careful"
- 1769: "agreeable, delightful"
- 1830: "kind, thoughtful"

The "precise" sense still survives in phrases like "a nice distinction," meaning a fine difference. And according to Merriam-Webster, "nice" can still sometimes mean "finicky," as in having too nice a palate to enjoy fast food.

## Too much of a good thing

Eventually, "nice" became an all-purpose word for anything vaguely good. Jane Austen was already poking fun at that in her novel Northanger Abbey, where a character remarks that the word does for everything. And in 1926, the usage writer Henry Fowler complained that "nice" had become such a favorite that it barely meant anything specific anymore.

From insult to compliment in a few centuries: that''s quite the comeback story for a single word.

> "Bully" has made a U-turn too, just in the opposite direction: according to Merriam-Webster, it once meant "sweetheart, darling."

From "stupid" to "awesome," and nobody even noticed.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nice-meant-foolish', 'en', 1, 'Northanger Abbey by Jane Austen', 'Northanger Abbey Jane Austen', 'Probably Austen''s funniest novel: a young woman, too many gothic thrillers and a whole lot of irony.'),
  ('nice-meant-foolish', 'en', 2, 'The Etymologicon by Mark Forsyth', 'The Etymologicon Mark Forsyth', 'A witty romp through the surprising connections between English words. Hard to put down.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nice-meant-foolish', 'en', 1, 'Etymonline: Nice - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/nice'),
  ('nice-meant-foolish', 'en', 2, 'Merriam-Webster: 15 Words That Used to Mean Something Different', 'https://www.merriam-webster.com/wordplay/words-that-used-to-mean-something-different');
