-- WTFact-Fakt „Flusspferde schwitzen kein Blut, sondern ihre eigene rote Sonnencreme“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('hippo-red-sweat', '2026-10-11T12:00:00+02:00', 'animals', '🦛', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hippo-red-sweat', 'de', 'flusspferde-rote-sonnencreme',
  'Flusspferde schwitzen kein Blut, sondern ihre eigene rote Sonnencreme',
  'Die rötliche Schicht auf der Haut von Flusspferden sieht gruselig aus. Dahinter steckt aber eine ziemlich clevere Chemie.',
  'Flusspferde sondern eine Flüssigkeit ab, die sich rot und orange färbt, UV-Licht schluckt und im Labor das Wachstum von Bakterien bremst.',
  'Wer Flusspferde aus der Nähe sieht, bemerkt manchmal einen rötlichen Film auf ihrer Haut. Früher hieß es, sie würden Blut schwitzen. Die Wahrheit ist besser.

## Weder Blut noch richtiger Schweiß

Laut Nature ist die Absonderung „weder Blut noch genau genommen Schweiß“. Der Hippo-Experte Keith Eltringham aus Cambridge erklärte gegenüber Science News, dass Flusspferden die Drüsen fehlen, die echten Schweiß bilden. Was da aus der Haut kommt, ist eine eigene Mischung.

Spannend ist, wie sie sich verändert. Laut Science News ist die Flüssigkeit zuerst farblos. Innerhalb von Minuten färbt sie sich rot-orange und wird später langsam braun.

## Zwei Farbstoffe, zwei Jobs

2004 nahm sich ein Team um Kimiko Hashimoto von der Pharmazeutischen Universität Kyoto die Sache genauer vor. Die Proben stammten von zwei Flusspferden im Ueno-Zoo in Tokio, Satsuki und Jiro. Die Pfleger wischten ihnen dafür mit Mullbinden über die Haut.

Im Labor fanden die Forschenden zwei Farbstoffe: einen roten, die Hipposudorinsäure, und einen orangefarbenen, die Norhipposudorinsäure. Beide schlucken Licht am stärksten im ultravioletten Bereich. Das wirkt wie ein eingebauter Sonnenschutz. Der Photobiologe Gavin Greenoak sagte zu Science News: „Es gibt keinen Zweifel, dass das Flusspferd seinen Sonnenschutz bekommt.“

Der rote Farbstoff kann sogar noch mehr. Laut Nature bremste er im Labor das Wachstum von zwei krankheitserregenden Bakterien. Die Mischung könnte also auch als natürliches Antibiotikum wirken. Science News bringt das damit in Verbindung, dass sich Wunden von Flusspferden trotz heftiger Kämpfe selten entzünden.

> Bonusfakt: Laut Nature können erwachsene Flusspferde länger als fünf Minuten unter Wasser bleiben.

## Eine Idee für Menschen?

Hashimoto hielt es für möglich, dass stabilere Varianten der Farbstoffe einmal pharmazeutisch interessant werden. Das Problem: Isoliert sind die Stoffe nicht stabil. In der kompletten Absonderung halten sie ihre Farbe immerhin einige Stunden, vermutlich weil Schleim sie schützt.

Das gefährlich aussehende Flusspferd trägt also ständig Sonnencreme mit Wundschutz, und zwar selbst gemacht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hippo-red-sweat', 'de', 1, 'Flusspferd-Kuscheltier', 'Nilpferd Kuscheltier Plüsch', 'Rund, gemütlich und deutlich entspannter als das Original.'),
  ('hippo-red-sweat', 'de', 2, 'Bildband über Afrikas Tierwelt', 'Bildband Afrika Tiere Safari', 'Große Fotos von Savanne, Flüssen und ihren Bewohnern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hippo-red-sweat', 'de', 1, 'Nature: Hippos beat the burn', 'https://www.nature.com/news/2004/040524/full/news040524-7.html'),
  ('hippo-red-sweat', 'de', 2, 'Science News: Red Sweat: Hippo skin oozes antibiotic sunscreen', 'https://www.sciencenews.org/article/red-sweat-hippo-skin-oozes-antibiotic-sunscreen');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hippo-red-sweat', 'en', 'hippos-make-red-sunscreen',
  'Hippos don''t sweat blood, they ooze their own red sunscreen',
  'The reddish film on a hippo''s skin looks creepy. Behind it is some seriously clever chemistry.',
  'Hippos secrete a fluid that turns red and orange, absorbs UV light and slowed the growth of bacteria in the lab.',
  'If you see a hippo up close, you might notice a reddish film on its skin. People used to say hippos sweat blood. The truth is better.

## Neither blood nor real sweat

According to Nature, the secretion is "neither blood nor precisely sweat". Hippo biologist Keith Eltringham of Cambridge told Science News that hippos lack the glands that produce true sweat. What comes out of their skin is a mixture all of its own.

The fun part is how it changes. According to Science News, the fluid starts out colorless. Within minutes it turns red-orange, and later it slowly goes brown.

## Two pigments, two jobs

In 2004, a team led by Kimiko Hashimoto of Kyoto Pharmaceutical University took a closer look. The samples came from two hippos at Ueno Zoo in Tokyo, Satsuki and Jiro. Their keepers wiped the animals'' skin with gauze to collect them.

In the lab, the researchers found two pigments: a red one called hipposudoric acid and an orange one called norhipposudoric acid. Both absorb light most strongly in the ultraviolet range, which works like built-in sun protection. Photobiologist Gavin Greenoak told Science News: "There''s no question that the hippo is getting its sunscreen."

The red pigment can do even more. According to Nature, it slowed the growth of two disease-causing bacteria in the lab, so the mixture may also work as a natural antibiotic. Science News links this to the fact that hippo wounds rarely get infected, despite their fierce fights.

> Bonus fact: According to Nature, adult hippos can stay underwater for more than five minutes.

## An idea for humans?

Hashimoto thought more stable versions of the pigments could one day become interesting for medicine. The catch: on their own, the compounds aren''t stable. In the complete secretion they keep their color for several hours, probably because mucus protects them.

So the dangerous-looking hippo walks around in sunscreen with wound protection built in, and it makes the stuff itself.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hippo-red-sweat', 'en', 1, 'Hippo plush toy', 'hippo plush stuffed animal', 'Round, cozy and a lot more relaxed than the original.'),
  ('hippo-red-sweat', 'en', 2, 'Photo book on African wildlife', 'African wildlife photo book safari', 'Big photos of savannas, rivers and the animals that live there.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hippo-red-sweat', 'en', 1, 'Nature: Hippos beat the burn', 'https://www.nature.com/news/2004/040524/full/news040524-7.html'),
  ('hippo-red-sweat', 'en', 2, 'Science News: Red Sweat: Hippo skin oozes antibiotic sunscreen', 'https://www.sciencenews.org/article/red-sweat-hippo-skin-oozes-antibiotic-sunscreen');
