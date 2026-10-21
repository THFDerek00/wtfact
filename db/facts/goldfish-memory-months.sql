-- WTFact-Fakt „Goldfische vergessen nicht nach drei Sekunden, sondern erinnern sich monatelang“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('goldfish-memory-months', '2026-10-21T21:00:00+02:00', 'myths', '🐠', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'goldfish-memory-months', 'de', 'goldfisch-gedaechtnis-monate',
  'Goldfische vergessen nicht nach drei Sekunden, sondern erinnern sich monatelang',
  'Das berühmte Drei-Sekunden-Gedächtnis ist frei erfunden. Fische lernen sogar Uhrzeiten.',
  'Goldfische können sich Dinge mindestens drei Monate lang merken. Fische lassen sich auf Töne, Lichtsignale und feste Fütterungszeiten trainieren.',
  'Der Goldfisch dreht seine Runde im Glas und freut sich jedes Mal neu über dieselbe Plastikpflanze. So erzählt es zumindest der Mythos vom Drei-Sekunden-Gedächtnis. Mit echten Fischen hat das wenig zu tun.

## Mindestens drei Monate

Laut dem Wissenschaftsmagazin „How It Works“ halten Erinnerungen bei Goldfischen mindestens drei Monate. Forscher haben Goldfische und andere Fische darauf trainiert, durch Labyrinthe zu schwimmen, auf Licht- und Tonsignale zu reagieren und jeden Tag zur gleichen Zeit an dieselbe Futterstelle zu kommen.

Wer jemals Fische gefüttert hat, kennt das: Kaum geht der Deckel auf, drängelt sich die ganze Truppe an der Oberfläche. Das ist kein Zufall, sondern gelerntes Verhalten.

## Der Lautsprecher im Meer

Ein Versuch aus Israel zeigt besonders schön, wie lange so etwas hält. Forscher spielten Fischen auf einer Fischfarm einen Monat lang einen Ton über einen Unterwasserlautsprecher vor, jedes Mal zusammen mit Futter. Bald versammelten sich die Fische beim Ton von selbst am Lautsprecher.

Dann ließen die Forscher die Fische frei ins offene Meer. Monate später spielten sie den Ton wieder ab, und die Fische kamen zurück zum Lautsprecher. Laut „Practical Fishkeeping“ erinnerten sie sich vier bis fünf Monate lang daran.

> Bonusfakt: In einem anderen Versuch lernten Goldfische, Bereiche im Becken zu meiden, in denen sie einen leichten Stromschlag bekommen hatten. Sie mieden sie mindestens 24 Stunden lang.

Warum hält sich der Mythos dann so hartnäckig? „How It Works“ vermutet einen bequemen Grund: Wer glaubt, dass ein Fisch alles sofort vergisst, hat weniger schlechtes Gewissen bei einem kleinen, leeren Glas.

Der Goldfisch weiß also ziemlich genau, wann es Futter gibt. Und vermutlich auch, wer es regelmäßig vergisst.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('goldfish-memory-months', 'de', 1, 'Buch über das Verhalten von Fischen', 'Buch Fische Verhalten Intelligenz', 'Zeigt, wie viel in Fischköpfen wirklich vorgeht.'),
  ('goldfish-memory-months', 'de', 2, 'Goldfisch-Kuscheltier', 'Goldfisch Kuscheltier', 'Ein knuffiger Goldfisch, der kein Wasser braucht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('goldfish-memory-months', 'de', 1, 'How It Works: Why goldfish having a three-second memory is a myth…', 'https://www.howitworksdaily.com/why-goldfish-having-a-three-second-memory-is-a-myth/'),
  ('goldfish-memory-months', 'de', 2, 'Practical Fishkeeping: Do fish have a three second memory?', 'https://www.practicalfishkeeping.co.uk/features/articles/do-fish-have-a-three-second-memory');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'goldfish-memory-months', 'en', 'goldfish-memory-months',
  'Goldfish don’t forget after three seconds, they remember for months',
  'The famous three-second memory is made up. Fish can even learn what time it is.',
  'Goldfish can remember things for at least three months. Fish can be trained to respond to sounds, light signals and fixed feeding times.',
  'The goldfish swims its lap around the bowl and is delighted by the same plastic plant every single time. That’s the story behind the three-second memory myth, anyway. It has very little to do with real fish.

## At least three months

According to the science magazine How It Works, goldfish memories last at least three months. Researchers have trained goldfish and other fish to swim through mazes, respond to light and sound cues, and show up at the same feeding spot at the same time every day.

Anyone who has ever fed fish knows the drill: the lid barely opens and the whole crowd is jostling at the surface. That’s not a coincidence, it’s learned behavior.

## The loudspeaker in the sea

An experiment from Israel shows how long that can last. On a fish farm, researchers played a sound to fish through an underwater loudspeaker for one month, each time together with food. Soon the fish gathered at the speaker on their own whenever they heard it.

Then the researchers released the fish into the open sea. Months later, they played the sound again, and the fish swam back to the speaker. According to Practical Fishkeeping, they remembered it for four to five months.

> Bonus fact: In another experiment, goldfish learned to avoid areas of their tank where they had received a mild electric shock. They stayed away for at least 24 hours.

So why does the myth hang on? How It Works suggests a convenient reason: if you believe a fish forgets everything instantly, you feel less guilty about keeping it in a small, empty bowl.

The goldfish knows exactly when dinner is due. And probably who keeps forgetting it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('goldfish-memory-months', 'en', 1, 'Book about fish behavior', 'book fish behavior intelligence', 'Shows how much is really going on inside fish brains.'),
  ('goldfish-memory-months', 'en', 2, 'Goldfish plush toy', 'goldfish plush toy', 'A cuddly goldfish that doesn’t need any water.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('goldfish-memory-months', 'en', 1, 'How It Works: Why goldfish having a three-second memory is a myth…', 'https://www.howitworksdaily.com/why-goldfish-having-a-three-second-memory-is-a-myth/'),
  ('goldfish-memory-months', 'en', 2, 'Practical Fishkeeping: Do fish have a three second memory?', 'https://www.practicalfishkeeping.co.uk/features/articles/do-fish-have-a-three-second-memory');
