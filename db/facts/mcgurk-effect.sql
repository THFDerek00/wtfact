-- WTFact-Fakt „Deine Augen verändern, was du hörst: der McGurk-Effekt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('mcgurk-effect', NULL, 'mind', '👄', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mcgurk-effect', 'de', 'mcgurk-effekt-augen-veraendern-hoeren',
  'Deine Augen verändern, was du hörst: der McGurk-Effekt',
  'Gleiche Tonspur, anderes Ergebnis: Sobald du auf die Lippen schaust, hörst du eine Silbe, die gar nicht gesprochen wird.',
  'Beim McGurk-Effekt hörst du „da“, wenn der Ton „ba“ sagt, die Lippen im Video aber „ga“ formen, und zwar selbst dann, wenn du den Trick kennst.',
  'Mach die Augen zu, und du hörst eine Stimme „ba ba“ sagen. Mach sie auf, schau auf die Lippen, und plötzlich hörst du „da da“. Gleiche Tondatei, anderes Ergebnis. Willkommen beim McGurk-Effekt.

## Ein Zufallsfund im Labor

Die Psychologen Harry McGurk und John MacDonald beschrieben den Effekt 1976 in der Fachzeitschrift Nature, in einem Artikel mit dem schönen Titel „Hearing lips and seeing voices“, also „Lippen hören und Stimmen sehen“. Laut Wikipedia stießen sie zufällig darauf, als sie untersuchten, wie Babys Sprache wahrnehmen. Ein Techniker sollte ein Video mit einer anderen Silbe nachvertonen. Beim Abspielen hörten beide einen dritten Laut, der weder auf der Tonspur noch auf den Lippen war.

Die klassische Version beschreiben der Illusions Index und Scientific American so: Im Video formt ein Mund „ga“, der Ton sagt „ba“, und typischerweise hörst du „da“. Dein Gehirn bekommt zwei Hinweise, die nicht zusammenpassen, und einigt sich still und leise auf einen Kompromiss.

## Wissen hilft nicht

Jetzt kommt der unheimliche Teil. Scientific American betont, dass es nichts bringt, den Trick zu kennen. Du kannst genau wissen, was passiert, und hörst trotzdem „da“. Augen zu, und das echte „ba“ ist zurück. Augen auf, und es ist wieder weg.

Das verrät einiges darüber, wie Hören funktioniert. Sprache verarbeiten nicht nur deine Ohren. Dein Gehirn verrechnet den Ton mit dem, was es im Gesicht der sprechenden Person sieht, und wenn beides sich widerspricht, können die Augen gewinnen.

Ganz gleich stark wirkt der Effekt allerdings nicht bei allen. Laut dem Wikipedia-Überblick über die Forschung unterscheiden sich Menschen darin, wie stark sie Ton und Bild zusammenführen. Studien fanden etwa bei japanischen und chinesischen Hörern einen schwächeren Effekt als bei englischsprachigen.

> Bonusfakt: Richtig verschwindet der Effekt erst, wenn dein Blick mindestens 60 Grad vom Mund der sprechenden Person abweicht.

Zuhören tun deine Ohren. Mitreden, was du hörst, dürfen aber auch deine Augen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mcgurk-effect', 'de', 1, 'Buch über Wahrnehmung und Sinnestäuschungen', 'Buch Wahrnehmung Sinnestäuschungen', 'Erklärt anschaulich, wie Sehen, Hören und Fühlen im Kopf zusammenkommen.'),
  ('mcgurk-effect', 'de', 2, 'Over-Ear-Kopfhörer', 'Over Ear Kopfhörer', 'Bequem für lange Hörsessions, egal ob Musik, Podcasts oder Hörtests im Netz.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mcgurk-effect', 'de', 1, 'The Illusions Index: McGurk Effect', 'https://www.illusionsindex.org/i/mcgurk-effect'),
  ('mcgurk-effect', 'de', 2, 'Scientific American: You Say "Ga," I say "Ba," but Everyone Hears "Da"', 'https://www.scientificamerican.com/podcast/episode/ddd9f1c2-9cdb-8c68-07eec88298e0f5ce/'),
  ('mcgurk-effect', 'de', 3, 'Wikipedia: McGurk effect', 'https://en.wikipedia.org/wiki/McGurk_effect');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mcgurk-effect', 'en', 'mcgurk-effect-eyes-change-hearing',
  'Your eyes can change what you hear: the McGurk effect',
  'Same audio, different result: the moment you watch the lips, you hear a syllable nobody is saying.',
  'With the McGurk effect, you hear “da” when the audio says “ba” but the lips in the video form “ga”, even if you know exactly how the trick works.',
  'Close your eyes and you hear a voice saying "ba ba". Open them, watch the lips, and suddenly you hear "da da". Same audio file, different result. Welcome to the McGurk effect.

## A lucky accident in the lab

Psychologists Harry McGurk and John MacDonald described the effect in 1976 in the journal Nature, in a paper with the lovely title "Hearing lips and seeing voices". According to Wikipedia, they stumbled on it by accident while studying how babies perceive language. A technician was asked to dub a video with a different syllable. When they played it back, both of them heard a third sound that was neither on the audio track nor on the lips.

The Illusions Index and Scientific American describe the classic version like this: in the video, a mouth forms "ga", the audio says "ba", and typically you hear "da". Your brain gets two clues that don''t match and quietly settles on a compromise.

## Knowing doesn''t help

Here comes the creepy part. Scientific American points out that knowing the trick changes nothing. You can understand exactly what is going on and still hear "da". Close your eyes and the real "ba" is back. Open them and it is gone again.

That reveals a lot about how hearing works. Speech isn''t processed by your ears alone. Your brain combines the sound with what it sees on the speaker''s face, and when the two disagree, the eyes can win.

The effect isn''t equally strong for everyone, though. According to Wikipedia''s overview of the research, people differ in how strongly they merge sound and sight. Studies have found, for example, a weaker effect in Japanese and Chinese listeners than in English-speaking ones.

> Bonus fact: The effect only really disappears once your gaze is at least 60 degrees away from the speaker''s mouth.

Your ears do the listening. Your eyes still get a vote on what you hear.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mcgurk-effect', 'en', 1, 'Book about perception and sensory illusions', 'book perception sensory illusions', 'Shows clearly how seeing, hearing and touch come together in your head.'),
  ('mcgurk-effect', 'en', 2, 'Over-ear headphones', 'over ear headphones', 'Comfortable for long listening sessions, whether it is music, podcasts or online hearing demos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mcgurk-effect', 'en', 1, 'The Illusions Index: McGurk Effect', 'https://www.illusionsindex.org/i/mcgurk-effect'),
  ('mcgurk-effect', 'en', 2, 'Scientific American: You Say "Ga," I say "Ba," but Everyone Hears "Da"', 'https://www.scientificamerican.com/podcast/episode/ddd9f1c2-9cdb-8c68-07eec88298e0f5ce/'),
  ('mcgurk-effect', 'en', 3, 'Wikipedia: McGurk effect', 'https://en.wikipedia.org/wiki/McGurk_effect');
