-- WTFact-Fakt „Du atmest gerade vor allem durch ein Nasenloch, und etwa alle 2 Stunden ist das andere dran“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('nasal-cycle-nostril-shifts', '2026-10-27T08:00:00+01:00', 'body', '👃', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nasal-cycle-nostril-shifts', 'de', 'nasenzyklus-ein-nasenloch-nach-dem-anderen',
  'Du atmest gerade vor allem durch ein Nasenloch, und etwa alle 2 Stunden ist das andere dran',
  'Deine Nase ist kein einzelnes Rohr. Sie arbeitet im Schichtdienst, und den Plan hast du nie abgesegnet.',
  'Fast immer strömt der Großteil deines Atems durch nur ein Nasenloch, und in einer Studie von 2016 wechselte die Führung im Wachzustand etwa alle 2 Stunden die Seite.',
  'Achte mal kurz auf deinen Atem. Wahrscheinlich macht gerade ein Nasenloch den Großteil der Arbeit. Das ist keine Erkältung und keine schiefe Nase. Das Ganze heißt Nasenzyklus, und er läuft rund um die Uhr.

## Deine Nase arbeitet im Schichtdienst

In deiner Nase sitzt Schwellgewebe, das sich mit Blut füllen und wieder abschwellen kann. Schwillt es auf einer Seite an, wird dieser Gang enger, und der Löwenanteil der Luft nimmt den anderen Weg. Alle paar Stunden stellt dein vegetatives Nervensystem, derselbe Autopilot, der zum Beispiel deinen Herzschlag regelt, das Ganze um. Die enge Seite geht auf, die offene wird enger.

Du entscheidest davon nichts. Es passiert einfach, Tag und Nacht, während laut Ynetnews jeden Tag mindestens 12.000 Liter Luft durch deine Nase strömen.

## 33 Leute, 24 Stunden, zwei Nasenlöcher

2016 beschrieben Forschende in PLOS ONE, wie sie für etwa 500 Dollar einen Messrekorder für den Luftstrom in der Nase gebaut hatten. Er misst die Luft in jedem Nasenloch einzeln, und 33 gesunde, rechtshändige Erwachsene trugen ihn 24 Stunden lang. Bei allen lief der Zyklus.

Im Wachzustand blieb ein Nasenloch im Schnitt etwa 2 Stunden (2,02 Stunden) vorn, bevor das andere übernahm. Im Schlaf wurden diese Abschnitte auf etwa 4,5 Stunden länger. Insgesamt verbrachten die Teilnehmenden etwas mehr Zeit im Links-Modus, im Schnitt 2,63 Stunden, als im Rechts-Modus mit 2,17 Stunden. Wer langsamer atmete, hatte einen stärker ausgeprägten Nasenzyklus.

Auch deine Schlafposition mischt mit. In der Studie hing das Liegen auf einer Seite mit mehr Luftstrom im gegenüberliegenden Nasenloch zusammen: Liegst du links, übernimmt eher das rechte, und umgekehrt.

> Bonusfakt: Damit bist du in guter Gesellschaft. Laut der Studie zeigte sich der Nasenzyklus bei allen Säugetierarten, bei denen man danach gesucht hat.

Deine Nase ist also kein einzelner Atemweg, sondern zwei, die sich still abwechseln. Einer davon hat gerade Pause.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nasal-cycle-nostril-shifts', 'de', 1, 'Anatomisches Kopfmodell mit Nasenhöhle', 'Anatomie Modell Kopf Nasenhöhle', 'Zeigt das Innere von Nase und Nebenhöhlen so, wie es kein Bild schafft.'),
  ('nasal-cycle-nostril-shifts', 'de', 2, 'Populärwissenschaftliches Buch über den menschlichen Körper', 'Sachbuch menschlicher Körper populärwissenschaftlich', 'Unterhaltsame Lektüre voller schräger Fakten darüber, wie dein Körper funktioniert.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nasal-cycle-nostril-shifts', 'de', 1, 'PLOS ONE: Measuring and Characterizing the Human Nasal Cycle', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0162918'),
  ('nasal-cycle-nostril-shifts', 'de', 2, 'Mental Floss: Why Does Your Nose Get Stuffy One Nostril at a Time?', 'https://www.mentalfloss.com/article/30363/why-does-your-nose-get-stuffy-one-nostril-time'),
  ('nasal-cycle-nostril-shifts', 'de', 3, 'Ynetnews: Why one nostril always feels blocked — and what it may do to your brain', 'https://www.ynetnews.com/health_science/article/rjzl0uhefl');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nasal-cycle-nostril-shifts', 'en', 'nasal-cycle-one-nostril-at-a-time',
  'You''re mostly breathing through one nostril right now, and about every 2 hours the other one takes over',
  'Your nose doesn''t work as one pipe. It works in shifts, and you never signed up for the schedule.',
  'At almost any moment, most of your breath goes through just one nostril, and in a 2016 study the lead switched sides about every 2 hours while people were awake.',
  'Pay attention to your breathing for a second. Chances are one nostril is doing most of the work. That''s not a cold and not a crooked nose. It''s called the nasal cycle, and it runs around the clock.

## Your nose works in shifts

Inside your nose sits erectile tissue that can fill up with blood and shrink again. When it swells on one side, that passage narrows, and the lion''s share of the air takes the other route. Every few hours, your autonomic nervous system, the same autopilot that runs things like your heart rate, flips the setup. The narrow side opens up, the open side narrows.

You don''t decide any of this. It just happens, all day and all night, while at least 12,000 liters of air pass through your nose every day, according to Ynetnews.

## 33 people, 24 hours, two nostrils

In 2016, researchers described in PLOS ONE how they built a nasal airflow logger for about 500 dollars. It measures the air in each nostril separately, and 33 healthy, right-handed adults wore it for 24 hours. Every single one of them cycled.

While they were awake, one nostril stayed in the lead for about 2 hours on average (2.02 hours) before the other took over. During sleep, these stretches grew to about 4.5 hours. Overall, the participants spent slightly longer in left-nostril mode, 2.63 hours on average, than in right-nostril mode, at 2.17 hours. Slower breathing came with a stronger nasal cycle.

Your sleeping position plays along too. In the study, lying on one side was linked to more airflow through the opposite nostril: lie on your left, and the right one tends to take over, and the other way round.

> Bonus fact: You''re in good company. According to the study, the nasal cycle showed up in every mammal species where it was investigated.

So your nose isn''t one airway, it''s two, quietly taking turns. Right now, one of them is on a break.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nasal-cycle-nostril-shifts', 'en', 1, 'Anatomical model of the human head with nasal cavity', 'anatomical model human head nasal cavity', 'Shows the inside of the nose and sinuses in a way pictures can''t.'),
  ('nasal-cycle-nostril-shifts', 'en', 2, 'Popular science book about the human body', 'popular science book human body', 'An entertaining read full of odd facts about how your body works.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nasal-cycle-nostril-shifts', 'en', 1, 'PLOS ONE: Measuring and Characterizing the Human Nasal Cycle', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0162918'),
  ('nasal-cycle-nostril-shifts', 'en', 2, 'Mental Floss: Why Does Your Nose Get Stuffy One Nostril at a Time?', 'https://www.mentalfloss.com/article/30363/why-does-your-nose-get-stuffy-one-nostril-time'),
  ('nasal-cycle-nostril-shifts', 'en', 3, 'Ynetnews: Why one nostril always feels blocked — and what it may do to your brain', 'https://www.ynetnews.com/health_science/article/rjzl0uhefl');
