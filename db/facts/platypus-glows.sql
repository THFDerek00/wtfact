-- WTFact-Fakt „Schnabeltiere leuchten unter UV-Licht blaugrün“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('platypus-glows', '2026-10-11T20:00:00+02:00', 'animals', '🔦', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'platypus-glows', 'de', 'schnabeltier-leuchtet-unter-uv-licht',
  'Schnabeltiere leuchten unter UV-Licht blaugrün',
  'Entenschnabel, Giftsporn, Eier legen: Das Schnabeltier war schon schräg genug. Dann hielt jemand eine UV-Lampe auf sein Fell.',
  'Forschende entdeckten 2020 an Museumsexemplaren, dass das Fell von Schnabeltieren unter ultraviolettem Licht blaugrün leuchtet.',
  'Das Schnabeltier sieht aus, als hätte jemand aus Resten mehrerer Tiere ein neues gebaut. Es hat einen Schnabel wie eine Ente, legt als Säugetier Eier, und die Männchen haben einen Giftsporn. 2020 kam noch etwas dazu: Es leuchtet.

## Ein Zufallsfund im Museum

Die Geschichte beginnt mit Flughörnchen. Ein Team um Paula Anich vom Northland College in den USA hatte 2019 gezeigt, dass deren Bauchfell unter UV-Licht pink schimmert. Als die Forschenden im Field Museum in Chicago Flughörnchen-Felle untersuchten, hielten sie aus reiner Neugier die UV-Lampe auch auf ein Schnabeltier. Laut National Geographic war das Ergebnis eindeutig: Das Fell leuchtete blaugrün.

Das Team prüfte daraufhin drei Museumsexemplare, zwei aus Chicago und eines aus dem Naturkundemuseum der University of Nebraska. Alle drei leuchteten. Die Studie erschien 2020 in der Fachzeitschrift Mammalia.

## Was hier eigentlich passiert

Das Phänomen heißt Biofluoreszenz. Das Fell schluckt Licht einer Farbe und gibt Licht einer anderen Farbe wieder ab. Laut Smithsonian Magazine nahm das Schnabeltierfell UV-Licht mit Wellenlängen zwischen 200 und 400 Nanometern auf und strahlte Licht zwischen 500 und 600 Nanometern ab. Das liegt im sichtbaren Bereich, deshalb sehen wir das Leuchten.

Wozu das gut ist, weiß noch niemand. Weil Männchen und Weibchen gleich stark leuchteten, halten die Forschenden eine Rolle bei der Partnerwahl für unwahrscheinlich. Vielleicht hilft es den nachtaktiven Tieren, einander zu sehen, oder es tarnt sie vor Fressfeinden. Das Team selbst schreibt, dass man das nur mit Beobachtungen in freier Wildbahn klären kann.

> Bonusfakt: Vor dieser Entdeckung waren laut Smithsonian Magazine nur amerikanische Opossums als fluoreszierende Säugetiere bekannt, dazu kamen dann die Flughörnchen.

## Was wir alles übersehen

Die spannendste Frage ist eigentlich eine andere. Menschen sind tagsüber wach, viele Tiere dagegen nachts und in der Dämmerung. Die Studie legt nahe, dass uns ganze Kommunikationswege der Tierwelt entgehen könnten, einfach weil wir nicht im richtigen Licht hinschauen.

Das seltsamste Säugetier der Welt hatte also die ganze Zeit noch ein Ass im Fell.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('platypus-glows', 'de', 1, 'Schnabeltier-Kuscheltier', 'Schnabeltier Kuscheltier Plüsch', 'Weich, ein bisschen absurd und garantiert das ungewöhnlichste Plüschtier im Regal.'),
  ('platypus-glows', 'de', 2, 'UV-Taschenlampe (Schwarzlicht)', 'UV Taschenlampe Schwarzlicht 365nm', 'Bringt Mineralien, Geldscheine und fluoreszierende Farben zum Leuchten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('platypus-glows', 'de', 1, 'National Geographic: We knew platypuses were incredible. Now we know they glow, too', 'https://www.nationalgeographic.com/animals/article/glowing-platypus'),
  ('platypus-glows', 'de', 2, 'Smithsonian Magazine: Platypuses Glow Green Under Ultraviolet Light', 'https://www.smithsonianmag.com/smart-news/platypuses-glow-green-under-ultraviolet-light-180976196/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'platypus-glows', 'en', 'platypus-glows-under-uv-light',
  'Platypuses glow blue-green under UV light',
  'Duck bill, venom spur, egg-laying: the platypus was already strange enough. Then someone pointed a UV lamp at its fur.',
  'In 2020, researchers found that the fur of museum platypuses glows blue-green under ultraviolet light.',
  'The platypus looks like someone built a new animal out of spare parts. It has a bill like a duck, lays eggs even though it''s a mammal, and the males have a venomous spur. In 2020, one more item joined the list: it glows.

## A lucky find in a museum

The story starts with flying squirrels. In 2019, a team led by Paula Anich of Northland College in the US had shown that their belly fur shines pink under UV light. While examining flying squirrel pelts at the Field Museum in Chicago, the researchers pointed the UV lamp at a platypus out of pure curiosity. According to National Geographic, the result was clear: the fur glowed blue-green.

The team then checked three museum specimens, two in Chicago and one at the University of Nebraska State Museum. All three glowed. The study was published in 2020 in the journal Mammalia.

## What''s actually going on

The effect is called biofluorescence. The fur absorbs light of one color and gives off light of another. According to Smithsonian Magazine, platypus fur absorbed UV light with wavelengths between 200 and 400 nanometers and emitted light between 500 and 600 nanometers. That is visible light, which is why we can see the glow.

Nobody knows yet what it''s for. Because males and females glowed equally, the researchers doubt it plays a role in mating. Maybe it helps these nocturnal animals see each other, or hides them from predators. The team itself says only field observations can settle it.

> Bonus fact: According to Smithsonian Magazine, before this discovery the only mammals known to fluoresce were American opossums, followed by the flying squirrels.

## What we might be missing

The most exciting question is a different one. Humans are awake during the day, while many animals are active at night and at dusk. The study suggests we may be missing entire channels of animal communication, simply because we aren''t looking in the right light.

So the strangest mammal on Earth was hiding one more card in its fur.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('platypus-glows', 'en', 1, 'Platypus plush toy', 'platypus plush stuffed animal', 'Soft, slightly absurd and guaranteed to be the most unusual plush on the shelf.'),
  ('platypus-glows', 'en', 2, 'UV flashlight (black light)', 'UV flashlight black light 365nm', 'Makes minerals, banknotes and fluorescent paints light up.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('platypus-glows', 'en', 1, 'National Geographic: We knew platypuses were incredible. Now we know they glow, too', 'https://www.nationalgeographic.com/animals/article/glowing-platypus'),
  ('platypus-glows', 'en', 2, 'Smithsonian Magazine: Platypuses Glow Green Under Ultraviolet Light', 'https://www.smithsonianmag.com/smart-news/platypuses-glow-green-under-ultraviolet-light-180976196/');
