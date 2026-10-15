-- WTFact-Fakt „Warum fast menschliche Roboter gruselig wirken: das Uncanny Valley von 1970“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('uncanny-valley', '2026-10-15T22:06:08+02:00', 'horror', '🤖', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'uncanny-valley', 'de', 'uncanny-valley-roboter',
  'Warum fast menschliche Roboter gruselig wirken: das Uncanny Valley von 1970',
  'Ein Robotiker hat schon vor über 50 Jahren erklärt, warum Puppen, Wachsfiguren und Androiden dir Gänsehaut machen. Sogar Affen kennen das Gefühl.',
  'Der japanische Robotiker Masahiro Mori beschrieb 1970, dass Roboter umso sympathischer wirken, je menschlicher sie sind, bis sie fast menschlich aussehen und plötzlich unheimlich werden.',
  'Ein Industrieroboter lässt dich kalt. Ein knuffiger Spielzeugroboter ist süß. Aber ein Roboter, der fast genau wie ein Mensch aussieht? Da läuft es vielen kalt den Rücken runter. **Dieses Gefühl hat einen Namen: das Uncanny Valley, das „unheimliche Tal“.**

## Ein Aufsatz, den kaum jemand las

Erfunden hat den Begriff der japanische Robotik-Professor Masahiro Mori. 1970 veröffentlichte er einen kurzen Aufsatz in einer wenig bekannten japanischen Zeitschrift namens „Energy“. Seine Idee: Je menschenähnlicher ein Roboter wird, desto sympathischer finden wir ihn. Aber kurz bevor er wirklich menschlich wirkt, stürzt die Sympathie ab, in ein tiefes Tal des Unbehagens.

Mori nannte Beispiele, die bis heute gruselig klingen: eine täuschend echte Handprothese, die sich beim Händeschütteln kalt und schlaff anfühlt. Oder Schaufensterpuppen, die sich in einer dunklen Werkstatt plötzlich bewegen. **Bewegung macht das Tal laut Mori noch tiefer.** Bei einem Roboter auf der Weltausstellung in Osaka 1970 reichte es schon, sein Lächeln auf halbe Geschwindigkeit zu drosseln, und schon wirkte es unheimlich statt fröhlich.

Jahrzehntelang beachtete kaum jemand den Aufsatz. Eine offizielle englische Übersetzung erschien erst 2012.

## Auch Affen fallen ins Tal

Inzwischen haben Forschende das Tal tatsächlich nachgewiesen. In einer Studie der Princeton University bekamen Makaken echte Affengesichter und computergenerierte Gesichter zu sehen. Die fast echten Kunstgesichter schauten die Affen kürzer an und wandten schnell den Blick ab.

Eine Studie im Fachjournal Cognition testete 80 echte Robotergesichter. Das Ergebnis passte zu Moris Kurve: Je menschlicher, desto beliebter, bis die Roboter fast menschlich wirkten. Dann sank die Sympathie. Auch das Vertrauen in einem Geldspiel litt.

> Mori hatte einen klaren Rat an Designer: lieber nicht versuchen, perfekte Menschen zu bauen, sondern auf mäßige Menschenähnlichkeit setzen. Die wirkt sympathisch, ohne ins Tal zu rutschen.

Dein Gehirn merkt offenbar sofort, wenn etwas fast stimmt, aber eben nur fast.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('uncanny-valley', 'de', 1, 'Gruselige Porzellanpuppe als Halloween-Deko', 'Porzellanpuppe Halloween Deko gruselig', 'Der Klassiker für Gänsehaut im Regal, perfekt für Halloween.'),
  ('uncanny-valley', 'de', 2, 'Detroit: Become Human für PlayStation', 'Detroit Become Human PS4', 'Ein Story-Spiel über Androiden, die menschlicher werden, als ihren Besitzern lieb ist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('uncanny-valley', 'de', 1, 'IEEE Spectrum: The Uncanny Valley: The Original Essay by Masahiro Mori', 'https://spectrum.ieee.org/the-uncanny-valley'),
  ('uncanny-valley', 'de', 2, 'Princeton University: Like humans, monkeys fall into the ''uncanny valley''', 'https://www.princeton.edu/news/2009/10/13/humans-monkeys-fall-uncanny-valley'),
  ('uncanny-valley', 'de', 3, 'Atlas of Science: New study of robot faces helps resolve debate over "Uncanny Valley"', 'https://atlasofscience.org/new-study-of-robot-faces-helps-resolve-debate-over-uncanny-valley/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'uncanny-valley', 'en', 'uncanny-valley-robots',
  'Why almost-human robots creep you out: the uncanny valley from 1970',
  'A roboticist explained more than 50 years ago why dolls, wax figures and androids give you goosebumps. Even monkeys know the feeling.',
  'In 1970, Japanese roboticist Masahiro Mori described how robots seem more likable the more human they look, until they become almost human and suddenly turn eerie.',
  'An industrial robot leaves you cold. A cute toy robot is adorable. But a robot that looks almost exactly like a person? That sends a shiver down a lot of spines. **This feeling has a name: the uncanny valley.**

## An essay hardly anyone read

The idea comes from Japanese robotics professor Masahiro Mori. In 1970, he published a short essay in an obscure Japanese journal called "Energy." His idea: the more human-like a robot becomes, the more we like it. But just before it looks truly human, our affinity crashes into a deep valley of unease.

Mori gave examples that still sound creepy today: a realistic prosthetic hand that feels cold and limp when you shake it. Or mannequins that suddenly start moving in a dark workshop. **According to Mori, movement makes the valley even deeper.** With one robot at the 1970 World Expo in Osaka, simply slowing its smile to half speed was enough to make it look creepy instead of happy.

For decades, hardly anyone paid attention to the essay. An authorized English translation didn''t appear until 2012.

## Monkeys fall into the valley too

Since then, researchers have actually found the valley in experiments. In a Princeton University study, scientists showed macaques real monkey faces and computer-generated ones. The monkeys looked at the almost-real fake faces for less time and quickly looked away.

A study in the journal Cognition tested 80 real robot faces. The result matched Mori''s curve: the more human, the more likable, until the robots looked almost human. Then likability dropped. Trust in a money game suffered too.

> Mori had clear advice for designers: don''t try to build perfect humans, aim for moderate human likeness instead. It feels friendly without sliding into the valley.

Your brain apparently notices right away when something is almost right, but only almost.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('uncanny-valley', 'en', 1, 'Creepy porcelain doll Halloween decoration', 'creepy porcelain doll Halloween decoration', 'The classic for goosebumps on your shelf, perfect for Halloween.'),
  ('uncanny-valley', 'en', 2, 'Detroit: Become Human for PlayStation', 'Detroit Become Human PS4', 'A story-driven game about androids becoming more human than their owners would like.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('uncanny-valley', 'en', 1, 'IEEE Spectrum: The Uncanny Valley: The Original Essay by Masahiro Mori', 'https://spectrum.ieee.org/the-uncanny-valley'),
  ('uncanny-valley', 'en', 2, 'Princeton University: Like humans, monkeys fall into the ''uncanny valley''', 'https://www.princeton.edu/news/2009/10/13/humans-monkeys-fall-uncanny-valley'),
  ('uncanny-valley', 'en', 3, 'Atlas of Science: New study of robot faces helps resolve debate over "Uncanny Valley"', 'https://atlasofscience.org/new-study-of-robot-faces-helps-resolve-debate-over-uncanny-valley/');
