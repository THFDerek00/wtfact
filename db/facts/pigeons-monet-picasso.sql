-- WTFact-Fakt „Tauben können Monet von Picasso unterscheiden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('pigeons-monet-picasso', NULL, 'animals', '🎨', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pigeons-monet-picasso', 'de', 'tauben-unterscheiden-monet-und-picasso',
  'Tauben können Monet von Picasso unterscheiden',
  'Die Vögel, die dir am Bahnhof die Pommes klauen, haben im Labor einen Kunstkurs bestanden. Dafür gab es sogar einen Preis.',
  'Der japanische Psychologe Shigeru Watanabe brachte Tauben bei, Gemälde von Monet und Picasso auseinanderzuhalten, und gewann dafür 1995 den Ig-Nobelpreis.',
  'Tauben haben keinen guten Ruf. Sie gelten als Ratten der Lüfte, picken Krümel vom Boden und sitzen auf Denkmälern. Dass sie einen Impressionisten von einem Kubisten unterscheiden können, traut ihnen kaum jemand zu.

## Ein Kunstkurs mit Körnerfutter

Genau das hat Shigeru Watanabe getestet, Psychologieprofessor an der Keiō-Universität in Tokio. Laut nippon.com zeigte er zwei Gruppen von Tauben je 10 Gemälde von Claude Monet und von Pablo Picasso. Die eine Gruppe bekam Futter, wenn sie bei einem Monet auf eine Taste pickte, die andere bei einem Picasso.

Nach 20 Tagen konnten die Vögel die beiden Maler mit hoher Genauigkeit auseinanderhalten. Watanabe stellt dabei klar: Die Tauben reagierten auf die Belohnung, nicht auf eine Liebe zur Kunst. Sie sind also keine Kunstkritiker, aber erstaunlich gute Mustererkenner.

## Sogar bei Bildern, die sie nie gesehen hatten

Richtig spannend wurde es, als Watanabe den Tauben Werke anderer Maler zeigte. Laut nippon.com ordneten sie auch Bilder weiterer Impressionisten und Kubisten ähnlich gut zu. Die Vögel hatten also nicht einfach einzelne Bilder auswendig gelernt, sondern so etwas wie einen Stil erkannt.

Auch Tricks brachten sie kaum aus dem Konzept. Die Tauben schnitten laut nippon.com weiterhin gut ab, wenn die Bilder schwarz-weiß, auf dem Kopf, gespiegelt oder in Stücke zerteilt waren.

> Bonusfakt: Laut nippon.com lernten Watanabes Tauben später sogar, Kinderzeichnungen zu sortieren, die Erwachsene als „schön“ oder „hässlich“ bewertet hatten.

## Ein Preis, der erst lachen und dann nachdenken lässt

1995 bekam Watanabe zusammen mit Kollegen den Ig-Nobelpreis für Psychologie. Den vergibt die Zeitschrift Improbable Research für Forschung, die Menschen zuerst zum Lachen und dann zum Nachdenken bringt. Laut Improbable Research baute sein Team später zusammen mit der Queen''s University in Kanada eine virtuelle 3D-Taube. Echte Tauben nahmen sie offenbar weitgehend als Artgenossin wahr.

Hinter dem lustigen Versuch steckt eine ernste Frage: Wie erkennen Lebewesen Kategorien, also dass verschiedene Dinge zusammengehören? Watanabe verbindet seine Arbeit laut nippon.com mit der Idee der „Familienähnlichkeit“ des Philosophen Ludwig Wittgenstein.

Die Taube vor deinem Fenster hätte im Museum vermutlich mehr Ahnung als gedacht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pigeons-monet-picasso', 'de', 1, 'Kunstdruck „Seerosen“ von Claude Monet', 'Monet Seerosen Kunstdruck Poster', 'Ein Klassiker des Impressionismus, der jede Wand ruhiger wirken lässt.'),
  ('pigeons-monet-picasso', 'de', 2, 'Buch über Intelligenz von Vögeln', 'Buch Intelligenz Vögel', 'Zeigt, was Raben, Papageien und Tauben im Kopf alles draufhaben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pigeons-monet-picasso', 'de', 1, 'nippon.com: Monet or Picasso? Japanese Researcher Watanabe Shigeru Proves Art Is for the Birds', 'https://www.nippon.com/en/japan-topics/c12401/'),
  ('pigeons-monet-picasso', 'de', 2, 'Improbable Research: The Virtual Pigeon''s Progress', 'https://improbable.com/2012/06/29/the-virtual-pigeons-progress/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pigeons-monet-picasso', 'en', 'pigeons-tell-monet-from-picasso',
  'Pigeons can tell a Monet from a Picasso',
  'The birds that steal your fries at the train station passed an art course in the lab. It even won a prize.',
  'Japanese psychologist Shigeru Watanabe trained pigeons to tell paintings by Monet and Picasso apart and won the 1995 Ig Nobel Prize for it.',
  'Pigeons don''t have a great reputation. People call them rats with wings, they peck crumbs off the ground and sit on statues. Hardly anyone would expect them to tell an Impressionist from a Cubist.

## An art class paid in birdseed

That is exactly what Shigeru Watanabe tested, a psychology professor at Keio University in Tokyo. According to nippon.com, he showed two groups of pigeons 10 paintings each by Claude Monet and Pablo Picasso. One group got food for pecking a key when a Monet appeared, the other for a Picasso.

After 20 days, the birds could tell the two painters apart with high accuracy. Watanabe is clear about one thing: the pigeons were responding to the reward, not to a love of art. So they aren''t art critics, but they are surprisingly good at spotting patterns.

## Even with paintings they had never seen

It got really interesting when Watanabe showed the pigeons works by other painters. According to nippon.com, they sorted paintings by other Impressionists and Cubists just as well. So the birds hadn''t simply memorized individual pictures, they had picked up something like a style.

Tricks barely threw them off either. According to nippon.com, the pigeons still did well when the images were black and white, upside down, mirrored or cut into pieces.

> Bonus fact: According to nippon.com, Watanabe''s pigeons later even learned to sort children''s drawings that adults had rated "beautiful" or "ugly".

## A prize that makes you laugh, then think

In 1995, Watanabe and colleagues received the Ig Nobel Prize in psychology. It is awarded by the magazine Improbable Research for research that first makes people laugh and then makes them think. According to Improbable Research, his team later worked with Queen''s University in Canada to build a virtual 3D pigeon. Real pigeons apparently largely accepted it as one of their own.

Behind the funny experiment is a serious question: how do living things recognize categories, meaning that different things belong together? According to nippon.com, Watanabe links his work to philosopher Ludwig Wittgenstein''s idea of "family resemblance".

The pigeon outside your window might know more about art than you''d think.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pigeons-monet-picasso', 'en', 1, 'Claude Monet "Water Lilies" art print', 'Monet water lilies art print poster', 'An Impressionist classic that makes any wall feel calmer.'),
  ('pigeons-monet-picasso', 'en', 2, 'Book about bird intelligence', 'bird intelligence book', 'Shows what ravens, parrots and pigeons really have going on in their heads.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pigeons-monet-picasso', 'en', 1, 'nippon.com: Monet or Picasso? Japanese Researcher Watanabe Shigeru Proves Art Is for the Birds', 'https://www.nippon.com/en/japan-topics/c12401/'),
  ('pigeons-monet-picasso', 'en', 2, 'Improbable Research: The Virtual Pigeon''s Progress', 'https://improbable.com/2012/06/29/the-virtual-pigeons-progress/');
