-- WTFact-Fakt „Einstein ist nie in Mathe durchgefallen, er konnte vor 15 schon Infinitesimalrechnung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('einstein-didnt-fail-math', '2026-10-24T10:00:00+02:00', 'myths', '🧮', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'einstein-didnt-fail-math', 'de', 'einstein-mathe-nicht-durchgefallen',
  'Einstein ist nie in Mathe durchgefallen, er konnte vor 15 schon Infinitesimalrechnung',
  'Der Trost für alle mit einer Fünf in Mathe ist leider erfunden. Einstein selbst hat darüber gelacht.',
  'Albert Einstein war in Mathe immer sehr gut. Als ihm 1935 eine Zeitungsmeldung über sein angebliches Versagen gezeigt wurde, lachte er und sagte, er habe Differential- und Integralrechnung vor seinem 15. Lebensjahr beherrscht.',
  '„Selbst Einstein ist in Mathe durchgefallen.“ Der Satz hat schon vielen Schülern Mut gemacht. Schade nur, dass er nicht stimmt.

## Die Zeitungsmeldung von 1935

Laut dem Einstein-Biografen Walter Isaacson tauchte die Behauptung sogar in einer Kolumne der Reihe „Ripley’s Believe It or Not!“ auf. Die Überschrift lautete sinngemäß: „Größter lebender Mathematiker ist in Mathematik durchgefallen.“

1935 zeigte ein Rabbi in Princeton Einstein den Zeitungsausschnitt. Einstein lachte. Er sei nie in Mathe durchgefallen, sagte er, und habe Differential- und Integralrechnung schon vor seinem 15. Lebensjahr beherrscht.

## Ein Sommer voller Geometrie

Die Schulzeugnisse geben ihm recht. In der Grundschule war er Klassenbester und weit über dem, was im Fach Mathe verlangt wurde. Mit zwölf Jahren brachte er sich in den Sommerferien Geometrie und Algebra selbst bei, mit Lehrbüchern, die seine Eltern schon vorab gekauft hatten. Er rechnete die Beweise durch und dachte sich einen eigenen Beweis für den Satz des Pythagoras aus.

Ganz ohne Stolperstein lief es trotzdem nicht. Als er sich an der Polytechnischen Schule in Zürich bewarb, war er zwei Jahre jünger als die anderen Bewerber. In Mathe und Physik schnitt er gut ab, in den anderen Fächern nicht. Deshalb wurde er zunächst nicht aufgenommen und machte erst noch die Schule im Kanton Aargau fertig.

> Bonusfakt: 1896 drehte der Aargau seine Notenskala um, sodass die 1 plötzlich die schlechteste Note war. Laut „Ripley’s“ könnte das dazu beigetragen haben, dass später jemand gute Noten für schlechte hielt.

Der Mythos lebt trotzdem weiter. Laut Isaacson lieferte eine Google-Suche danach schon 2007 über 500.000 Treffer.

Wer also eine schlechte Mathenote hat, braucht eine andere Ausrede. Einstein ist dafür leider nicht zu haben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('einstein-didnt-fail-math', 'de', 1, 'Einstein-Biografie von Walter Isaacson', 'Walter Isaacson Einstein Biografie', 'Die große Lebensgeschichte, auf die sich dieser Fakt stützt.'),
  ('einstein-didnt-fail-math', 'de', 2, 'Knobelbuch mit Mathe-Rätseln', 'Mathe Rätselbuch Knobelaufgaben', 'Kniffelige Rätsel, bei denen Mathe plötzlich Spaß macht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('einstein-didnt-fail-math', 'de', 1, 'TIME: 20 Things You Need to Know About Einstein', 'https://content.time.com/time/specials/packages/article/0,28804,1936731_1936743_1936758,00.html'),
  ('einstein-didnt-fail-math', 'de', 2, 'Ripley’s Believe It or Not!: Did Einstein Really Fail Math?', 'https://ripleys.com/stories/einstein-fail-math');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'einstein-didnt-fail-math', 'en', 'einstein-didnt-fail-math',
  'Einstein never failed math, he had mastered calculus before he was 15',
  'The comfort for everyone with a bad math grade is sadly made up. Einstein himself laughed at it.',
  'Albert Einstein was always excellent at math. When he was shown a 1935 newspaper item about his supposed failure, he laughed and said he had mastered differential and integral calculus before he was 15.',
  '"Even Einstein failed math." That line has cheered up a lot of students. Too bad it isn’t true.

## The newspaper item from 1935

According to Einstein biographer Walter Isaacson, the claim even made it into a Ripley’s Believe It or Not! column. The headline: "Greatest living mathematician failed in mathematics."

In 1935, a rabbi in Princeton showed Einstein the clipping. Einstein laughed. He had never failed in math, he said, and had mastered differential and integral calculus before he was 15.

## A summer full of geometry

His school records back him up. In primary school, he was top of his class and well above the math requirements. At the age of 12, he taught himself geometry and algebra over the summer holidays, using textbooks his parents had bought in advance. He worked through the proofs and came up with his own proof of the Pythagorean theorem.

It wasn’t completely smooth sailing, though. When he applied to the Polytechnic School in Zurich, he was two years younger than the other applicants. He did well in math and physics but poorly in the other subjects. So he wasn’t admitted at first and finished school in the Swiss canton of Aargau.

> Bonus fact: In 1896, Aargau flipped its grading scale so that a 1 suddenly became the worst grade. According to Ripley’s, that may have helped people later mistake good grades for bad ones.

The myth lives on anyway. According to Isaacson, a Google search for it already returned over 500,000 results back in 2007.

So if you’ve got a bad math grade, you’ll need a different excuse. Einstein isn’t available for that one.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('einstein-didnt-fail-math', 'en', 1, 'Einstein biography by Walter Isaacson', 'Walter Isaacson Einstein His Life and Universe', 'The big life story this fact is built on.'),
  ('einstein-didnt-fail-math', 'en', 2, 'Math puzzle book', 'math puzzle book brain teasers', 'Tricky puzzles that make math surprisingly fun.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('einstein-didnt-fail-math', 'en', 1, 'TIME: 20 Things You Need to Know About Einstein', 'https://content.time.com/time/specials/packages/article/0,28804,1936731_1936743_1936758,00.html'),
  ('einstein-didnt-fail-math', 'en', 2, 'Ripley’s Believe It or Not!: Did Einstein Really Fail Math?', 'https://ripleys.com/stories/einstein-fail-math');
