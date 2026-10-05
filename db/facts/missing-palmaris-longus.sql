-- WTFact-Fakt „Bis zu 26 Prozent der Menschen fehlt dieser Muskel im Unterarm“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('missing-palmaris-longus', '2026-10-05T04:01:17+02:00', 'body', '✋', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'missing-palmaris-longus', 'de', 'muskel-im-unterarm-fehlt',
  'Bis zu 26 Prozent der Menschen fehlt dieser Muskel im Unterarm',
  'Ein kleiner Test mit Daumen und kleinem Finger verrät dir, ob du ihn hast, und vermissen wirst du ihn so oder so nicht.',
  'Je nach Bevölkerung kommen 2,5 bis 26 Prozent der Menschen ohne den Musculus palmaris longus im Unterarm zur Welt, ohne dass ihre Griffkraft darunter leidet.',
  'Mach mal kurz mit: Drück die Daumenkuppe gegen die Kuppe deines kleinen Fingers und knick das Handgelenk leicht zu dir hin. Springt in der Mitte deines Handgelenks eine dünne Sehne hervor? Glückwunsch, du hast einen Musculus palmaris longus. **Keine Sehne? Dann fehlt dir womöglich ein ganzer Muskel.**

## Der Muskel, den nicht jeder abbekommt

Der lange Hohlhandmuskel, so heißt der Palmaris longus auf Deutsch, ist ein schmaler Muskel in deinem Unterarm. Er entspringt am inneren Knochenvorsprung deines Ellbogens und läuft in eine lange Sehne aus, die in die feste Bindegewebsplatte deiner Handfläche übergeht. Laut StatPearls kommen je nach untersuchter Bevölkerung zwischen 2,5 und 26 Prozent der Menschen ohne ihn auf die Welt. Physiopedia spricht sogar von fast 30 Prozent, denen er in einem oder beiden Unterarmen fehlen könnte.

Es wird noch schräger: Dass er auf beiden Seiten fehlt, ist häufiger, als dass er nur auf einer fehlt. Und laut Studien fehlt er bei Frauen öfter. Der Daumen-an-kleinen-Finger-Trick von oben ist übrigens ein echter klinischer Test, der Schaeffer-Test.

## Macht der überhaupt was?

Ein bisschen. Er hilft beim Beugen des Handgelenks und hält das Bindegewebe deiner Handfläche unter Spannung, was die Haut dort offenbar stabilisiert. StatPearls nennt seinen tatsächlichen Beitrag zur Beugung aber „wahrscheinlich minimal“. Die größere Überraschung: Wer ihn nicht hat, greift und kneift nicht schwächer. Dein Körper vermisst ihn schlicht nicht.

Anatomen haben für so einen Muskel einen passenden Begriff. Physiopedia beschreibt den Palmaris longus als „phylogenetisch rückläufig“: ein kurzer Muskelbauch an einer langen Sehne. Vereinfacht gesagt: ein Muskel, der sich im Lauf der Evolution offenbar auf dem Rückzug befindet.

> Für Chirurgen ist diese Sehne wertvoll. Weil man so leicht auf sie verzichten kann, entnehmen sie sie als Transplantat, um andere Sehnen an Hand und Fingern zu reparieren oder ein schweres Karpaltunnelsyndrom zu behandeln.

Also los, teste beide Handgelenke. Zwei Sehnen, eine oder keine: Jedes Ergebnis ist normal. Dein Unterarm verrät dir nur leise, welche Version des menschlichen Bauplans du bekommen hast.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('missing-palmaris-longus', 'de', 1, 'Anatomie-Malbuch', 'Anatomie Malbuch Muskeln Knochen', 'Muskeln, Knochen und Sehnen zum Ausmalen. So bleibt Anatomie wirklich hängen.'),
  ('missing-palmaris-longus', 'de', 2, 'Anatomisches Handmodell mit Muskeln und Sehnen', 'Anatomie Modell Hand Muskeln Sehnen', 'Ein zerlegbares Modell, an dem du Sehnen und Muskeln der Hand von allen Seiten anschauen kannst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('missing-palmaris-longus', 'de', 1, 'StatPearls (NCBI Bookshelf): Anatomy, Shoulder and Upper Limb, Hand Palmaris Tendon', 'https://www.ncbi.nlm.nih.gov/books/NBK519516/'),
  ('missing-palmaris-longus', 'de', 2, 'Physiopedia: Palmaris Longus', 'https://www.physio-pedia.com/Palmaris_Longus'),
  ('missing-palmaris-longus', 'de', 3, 'Kenhub: Palmaris longus: Origin, insertion and function', 'https://www.kenhub.com/en/library/anatomy/palmaris-longus-muscle');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'missing-palmaris-longus', 'en', 'missing-forearm-muscle',
  'Up to 26 percent of people are missing this forearm muscle',
  'A quick thumb-and-pinky test tells you whether you have it, and either way you won''t miss it.',
  'Depending on the population, 2.5 to 26 percent of people are born without the palmaris longus muscle in their forearm, and their grip strength doesn''t suffer.',
  'Try this: press the tip of your thumb against the tip of your pinky and bend your wrist slightly toward you. See a thin cord popping up in the middle of your wrist? Congrats, you have a palmaris longus. **No cord? Then you might be missing a whole muscle.**

## The muscle some people just don''t get

The palmaris longus is a slim muscle in your forearm. It starts at the inner bump of your elbow and ends in a long tendon that fans out into the tough tissue of your palm. According to StatPearls, depending on the population studied, somewhere between 2.5 and 26 percent of people are born without it. Physiopedia even says almost 30 percent could be lacking it in one or both forearms.

And it gets stranger. Missing it on both sides is more common than missing it on just one, and studies report it is absent more often in women. The thumb-to-pinky trick above is a real clinical check, known as the Schaeffer test.

## Does it even do anything?

A little. It helps bend your wrist and keeps the tissue in your palm under tension, which seems to steady the skin of your palm. But StatPearls calls its actual contribution to bending the wrist "likely minimal". The bigger surprise: people who don''t have it show no weaker grip or pinch strength. Your body simply doesn''t miss it.

Anatomists have a fitting label for this kind of muscle. Physiopedia describes the palmaris longus as "phylogenetically retrogressive": a short muscle belly attached to a long tendon. Put simply: a muscle that seems to be in retreat over the course of evolution.

> Surgeons value this tendon. Because it''s so easy to spare, they harvest it as a graft to repair other tendons in the hand and fingers, or to treat severe carpal tunnel syndrome.

So go ahead and test both wrists. Two cords, one cord or none at all: every result is normal. It''s just your forearm quietly showing you which version of the human blueprint you got.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('missing-palmaris-longus', 'en', 1, 'Anatomy coloring book', 'anatomy coloring book muscles bones', 'Muscles, bones and tendons to color in, which makes anatomy actually stick.'),
  ('missing-palmaris-longus', 'en', 2, 'Anatomical hand model with muscles and tendons', 'anatomical hand model muscles tendons', 'A take-apart model that lets you look at the hand''s tendons and muscles from every angle.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('missing-palmaris-longus', 'en', 1, 'StatPearls (NCBI Bookshelf): Anatomy, Shoulder and Upper Limb, Hand Palmaris Tendon', 'https://www.ncbi.nlm.nih.gov/books/NBK519516/'),
  ('missing-palmaris-longus', 'en', 2, 'Physiopedia: Palmaris Longus', 'https://www.physio-pedia.com/Palmaris_Longus'),
  ('missing-palmaris-longus', 'en', 3, 'Kenhub: Palmaris longus: Origin, insertion and function', 'https://www.kenhub.com/en/library/anatomy/palmaris-longus-muscle');
