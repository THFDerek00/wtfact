-- WTFact-Fakt „Babys haben rund 300 Knochen, du nur noch 206“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('baby-bones', '2026-08-23', 'body', '🦴', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'baby-bones', 'de', 'babys-mehr-knochen',
  'Babys haben rund 300 Knochen, du nur noch 206',
  'Irgendwo zwischen Wiege und Erwachsensein verschwinden fast 100 Knochen. Keine Sorge, sie gehen nicht verloren.',
  'Neugeborene haben rund 300 Knochen, Erwachsene nur 206, weil viele davon im Laufe der Kindheit zusammenwachsen.',
  'Hier eine Rechenaufgabe, die dein Biologiebuch vermutlich ausgelassen hat: Ein Neugeborenes hat **rund 300 Knochen**. Ein erwachsener Mensch hat **206**. Wo bleibt der Rest?

## Nichts geht verloren, es wächst zusammen

Die Antwort ist unspektakulärer als gedacht, aber trotzdem ziemlich clever. Viele Knochen eines Babys bestehen bei der Geburt noch ganz oder teilweise aus **Knorpel**. Das ist festes, aber biegsames Bindegewebe.

Im Lauf der Kindheit wird dieser Knorpel nach und nach durch echtes Knochengewebe ersetzt. Dabei **verschmelzen viele kleine Knochen zu größeren**. Die Gesamtzahl sinkt, obwohl kein einziger Knochen tatsächlich verschwindet. Bis ins frühe Erwachsenenalter ist dieser Prozess dann weitgehend abgeschlossen.

Übrigens: Wie viele Knochen ein Erwachsener genau hat, hängt ein wenig davon ab, wie man zählt. Manche Menschen haben zusätzliche kleine Knochen. Die Standardzahl ist aber 206.

## Warum Babys so gebaut sind

Ein weiches, flexibles Skelett hat für Babys einen klaren Vorteil. Es passt besser in die enge Gebärmutter und macht die Geburt leichter.

Am deutlichsten sieht man das am Kopf. Zwischen den Schädelknochen eines Babys gibt es weiche Stellen, die **Fontanellen**. Dort sind die Knochen noch nicht zusammengewachsen. Mit der Zeit schließen sich diese Lücken, weil die Schädelknochen zusammenwachsen.

Die Knochenbildung selbst, Fachleute sagen **Ossifikation**, beginnt übrigens schon früh in der Schwangerschaft, etwa ab der 8. Woche der Embryonalentwicklung.

## Ein Skelett im Dauerumbau

Knochen sind also kein starres Gerüst, sondern lebendiges Gewebe, das sich über Jahre umbaut.

> Der Körperteil mit den meisten Knochen ist die Hand: Sie besteht aus 27 einzelnen Knochen.

Du hattest also mal fast 100 Knochen mehr als heute. Weg sind sie aber nicht. Sie haben sich nur zusammengetan.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('baby-bones', 'de', 1, 'Anatomie-Skelettmodell für den Schreibtisch', 'Skelett Modell Mensch Anatomie klein', 'Ein kleines Menschen-Skelett zum Hinstellen. Zum Lernen, als Deko oder als stiller Mitbewohner.'),
  ('baby-bones', 'de', 2, 'Anatomie-Malbuch', 'Anatomie Malbuch', 'Knochen, Muskeln und Organe zum Ausmalen. Entspannend und man lernt nebenbei richtig was.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('baby-bones', 'de', 1, 'Wikipedia: Skelett des Menschen', 'https://de.wikipedia.org/wiki/Skelett_des_Menschen'),
  ('baby-bones', 'de', 2, 'Healthline: How Many Bones Are Babies Born With and Why Do They Have More Than Adults?', 'https://www.healthline.com/health/how-many-bones-does-a-baby-have'),
  ('baby-bones', 'de', 3, 'Cleveland Clinic: Here''s How Many Bones Babies Have', 'https://health.clevelandclinic.org/how-many-bones-does-a-baby-have');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'baby-bones', 'en', 'babies-more-bones',
  'Babies have about 300 bones, you only have 206',
  'Somewhere between the crib and adulthood, almost 100 bones disappear. Don''t worry, they don''t get lost.',
  'Newborns have about 300 bones, adults only 206, because many of them fuse together during childhood.',
  'Here''s some math your biology book probably skipped: a newborn has **about 300 bones**. An adult has **206**. So where did the rest go?

## Nothing gets lost, it fuses

The answer is less dramatic than you''d think, but still pretty clever. At birth, many of a baby''s bones are still made entirely or partly of **cartilage**, a tough but flexible connective tissue.

Over the course of childhood, that cartilage is gradually replaced by real bone tissue. Along the way, **many small bones fuse into bigger ones**. The total count drops, even though not a single bone actually disappears. By early adulthood, the process is mostly done.

By the way, the exact number of bones in an adult depends a bit on how you count. Some people have extra small bones, so totals can vary slightly. The standard adult number is 206.

## Why babies are built this way

A soft, flexible skeleton has a clear advantage for babies. It fits better in the tight space of the womb and makes birth easier.

You can see it most clearly on the head. Between a baby''s skull bones there are soft spots called **fontanelles**. That''s where the bones haven''t joined yet. Over time, these gaps close as the skull bones grow together.

Bone formation itself, called **ossification**, starts surprisingly early in pregnancy, around the 8th week of embryonic development.

## A skeleton under constant renovation

So bones aren''t a rigid frame. They''re living tissue that keeps remodeling itself for years.

> The body part with the most bones is the hand: it''s made up of 27 individual bones.

You once had almost 100 more bones than you do now. They''re not gone, though. They just teamed up.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('baby-bones', 'en', 1, 'Desktop human skeleton model', 'small human skeleton anatomy model', 'A mini human skeleton to put on your desk. Great for studying, as decor, or as a very quiet roommate.'),
  ('baby-bones', 'en', 2, 'Anatomy coloring book', 'anatomy coloring book', 'Bones, muscles and organs to color in. Relaxing, and you actually learn something along the way.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('baby-bones', 'en', 1, 'Wikipedia: Human skeleton', 'https://en.wikipedia.org/wiki/Human_skeleton'),
  ('baby-bones', 'en', 2, 'Healthline: How Many Bones Are Babies Born With and Why Do They Have More Than Adults?', 'https://www.healthline.com/health/how-many-bones-does-a-baby-have'),
  ('baby-bones', 'en', 3, 'Cleveland Clinic: Here''s How Many Bones Babies Have', 'https://health.clevelandclinic.org/how-many-bones-does-a-baby-have');
