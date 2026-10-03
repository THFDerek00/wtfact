-- WTFact-Fakt „Selbst kitzeln geht nicht – außer mit Roboter und 200 Millisekunden Verzögerung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('cant-tickle-yourself', '2026-10-03T04:08:12+02:00', 'body', '🪶', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cant-tickle-yourself', 'de', 'warum-du-dich-nicht-selbst-kitzeln-kannst',
  'Selbst kitzeln geht nicht – außer mit Roboter und 200 Millisekunden Verzögerung',
  'Dein Gehirn kennt deine eigenen Bewegungen so gut, dass es dir jede Kitzel-Attacke auf dich selbst vorab spoilert.',
  'Dein Kleinhirn sagt voraus, wie sich deine eigene Berührung anfühlen wird, und dämpft das Kitzeln.',
  'Probier es ruhig aus: Fahr dir mit den Fingern über die Fußsohle oder unter die Achsel. Passiert nichts? Dann bist du völlig normal. Lässt du dagegen jemand anderen ran, quiekst du wahrscheinlich sofort los. **Gleiche Berührung, komplett anderes Gefühl.**

## Dein Kleinhirn spielt Spoiler

Die Neurowissenschaftlerin Sarah-Jayne Blakemore vom University College London hat das genauer untersucht. Laut ihr steckt die Antwort ganz hinten im Kopf, im **Kleinhirn** (Cerebellum), das deine Bewegungen überwacht. Wenn du eine Bewegung planst, bekommt das Kleinhirn eine Art interne Kopie des Befehls, in der Fachsprache „Efferenzkopie“. Damit kann es ziemlich genau vorhersagen, was gleich passiert.

Versuchst du, dich selbst zu kitzeln, sagt das Kleinhirn die Empfindung voraus. Diese Vorhersage wird genutzt, um die Reaktion anderer Hirnareale auf das Kitzeln **herunterzuregeln**. Bei einer fremden Hand klappt das nicht, denn deren Bewegungen kann dein Gehirn nicht vorhersehen. Darum wirkt das Kitzeln bei fremden Händen voll, bei deinen eigenen kaum.

## Der Trick mit dem Roboter

Im Jahr 2000 erschien dazu eine Studie von Blakemore, Daniel Wolpert und Chris Frith im Fachjournal NeuroReport. Die 16 Versuchspersonen bewegten mit der linken Hand einen Roboterarm, der ihnen mit etwas Weichem über die rechte Handfläche strich. Der Clou: Die Forschenden konnten eine Verzögerung zwischen Bewegung und Berührung einbauen, nämlich 100, 200 oder 300 Millisekunden. Oder sie lenkten die Bewegung um 30, 60 oder 90 Grad ab.

Das Ergebnis: Je größer die Verzögerung zwischen 0 und 200 Millisekunden, desto kitzliger fühlte sich die eigene Berührung an. Gleiches galt, je stärker die Richtung zwischen 0 und 90 Grad verdreht war. Sobald Vorhersage und Realität nicht mehr zusammenpassen, behandelt dein Gehirn dich wie einen Fremden. Blakemore schreibt dazu sinngemäß, Selbstkitzeln sei vielleicht doch möglich, wenn du bereit bist, in ein paar Roboter zu investieren.

> Heute gibt es sogar einen eigenen Kitzelroboter: „Hektor“ besteht aus drei Elektromotoren, fährt mit Sonden über Fußsohlen, und die Leute bewerten jeden Strich auf einer Skala von 1 bis 10.

Dein Gehirn ist also so gut darin, dich selbst zu kennen, dass es dir den Spaß verdirbt. Gegen dich selbst hast du beim Kitzeln schlicht keine Chance.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cant-tickle-yourself', 'de', 1, 'Sachbuch über das Gehirn und Neurowissenschaften', 'Gehirn Sachbuch Neurowissenschaft populärwissenschaftlich', 'Erklärt verständlich, wie dein Kopf Wahrnehmung, Bewegung und Überraschungen verarbeitet. Gut zum Schmökern.'),
  ('cant-tickle-yourself', 'de', 2, 'Kopfmassage-Spinne aus Metall', 'Kopfkrauler Kopfmassage Spinne Metall', 'Ein simples Drahtgerät mit vielen Federarmen, das beim Kopfkraulen angenehm kribbelt. Witzig als Geschenk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cant-tickle-yourself', 'de', 1, 'Scientific American: Why can''t a person tickle himself?', 'https://www.scientificamerican.com/article/why-cant-a-person-tickle/'),
  ('cant-tickle-yourself', 'de', 2, 'NeuroReport: Why can''t you tickle yourself?', 'https://stanford.edu/~knutson/ans/blakemore02.pdf'),
  ('cant-tickle-yourself', 'de', 3, 'Yale Scientific Magazine: Why Can''t You Tickle Yourself?', 'https://www.yalescientific.org/2015/05/why-cant-you-tickle-yourself/'),
  ('cant-tickle-yourself', 'de', 4, 'Scientific American: The surprising science of tickling', 'https://www.scientificamerican.com/article/scientists-built-a-tickle-robot-to-solve-one-of-biologys-strangest-mysteries/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cant-tickle-yourself', 'en', 'why-you-cant-tickle-yourself',
  'You can''t tickle yourself – unless you add a robot and a 200 millisecond delay',
  'Your brain knows your own moves so well that it spoils every tickle attack you try on yourself.',
  'Your cerebellum predicts how your own touch will feel and turns down the tickle.',
  'Go ahead and try it: run your fingers over the sole of your foot or under your armpit. Nothing? Then you''re perfectly normal. Let someone else do it and you''ll probably be squealing right away. **Same touch, completely different feeling.**

## Your cerebellum is a spoiler

Neuroscientist Sarah-Jayne Blakemore of University College London looked into this. According to her, the answer sits at the back of your head, in the **cerebellum**, which monitors your movements. When you plan a movement, the cerebellum gets an internal copy of the command, known as an efference copy. That lets it predict pretty precisely what''s about to happen.

When you try to tickle yourself, the cerebellum predicts the sensation, and that prediction is used to **turn down** the response of other brain areas to the tickle. With someone else''s hand, that doesn''t work, because your brain can''t predict their movements. So a stranger gets the full tickle, and you get almost nothing.

## The robot trick

In 2000, Blakemore, Daniel Wolpert and Chris Frith published a study on this in the journal NeuroReport. The 16 participants used their left hand to move a robot arm that stroked something soft across their right palm. The catch: the researchers could add a delay between movement and touch, of 100, 200 or 300 milliseconds. Or they could rotate the movement by 30, 60 or 90 degrees.

The result: as the delay grew from 0 to 200 milliseconds, the self-made touch felt more and more tickly. Same with rotating the direction from 0 to 90 degrees. Once prediction and reality stop matching, your brain treats you like a stranger. As Blakemore put it, it might be possible to tickle yourself if you''re willing to invest in a couple of robots.

> There''s now even a dedicated tickle robot: Hektor is made of three electric motors, slides probes along people''s soles, and they rate each stroke on a scale of 1 to 10.

So your brain knows you so well that it ruins the fun. When it comes to tickling, you simply can''t beat yourself.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cant-tickle-yourself', 'en', 1, 'Popular science book about the brain', 'popular science book brain neuroscience', 'Explains in plain language how your head handles perception, movement and surprises. Great for curling up with.'),
  ('cant-tickle-yourself', 'en', 2, 'Metal wire head massager', 'wire scalp head massager tingler', 'A simple wire gadget with lots of springy arms that gives a pleasant tingle on your scalp. A fun little gift.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cant-tickle-yourself', 'en', 1, 'Scientific American: Why can''t a person tickle himself?', 'https://www.scientificamerican.com/article/why-cant-a-person-tickle/'),
  ('cant-tickle-yourself', 'en', 2, 'NeuroReport: Why can''t you tickle yourself?', 'https://stanford.edu/~knutson/ans/blakemore02.pdf'),
  ('cant-tickle-yourself', 'en', 3, 'Yale Scientific Magazine: Why Can''t You Tickle Yourself?', 'https://www.yalescientific.org/2015/05/why-cant-you-tickle-yourself/'),
  ('cant-tickle-yourself', 'en', 4, 'Scientific American: The surprising science of tickling', 'https://www.scientificamerican.com/article/scientists-built-a-tickle-robot-to-solve-one-of-biologys-strangest-mysteries/');
