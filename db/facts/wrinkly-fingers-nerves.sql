-- WTFact-Fakt „Schrumpelfinger in der Badewanne sind keine aufgeweichte Haut. Dein Nervensystem macht sie“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('wrinkly-fingers-nerves', '2026-10-16T16:00:00+02:00', 'body', '🖐️', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wrinkly-fingers-nerves', 'de', 'schrumpelfinger-sind-nerven',
  'Schrumpelfinger in der Badewanne sind keine aufgeweichte Haut. Dein Nervensystem macht sie',
  'Die Falten nach einem langen Bad sind eine aktive Reaktion deines Körpers, und sie scheinen dir besseren Halt zu geben.',
  'Die Falten an den Fingern im Wasser entstehen, weil sich Blutgefäße unter der Haut verengen, gesteuert vom vegetativen Nervensystem, deshalb bleiben sie aus, wenn die Nerven eines Fingers geschädigt sind.',
  'Bleib lange genug in der Badewanne, und deine Fingerkuppen sehen aus wie Rosinen. Die naheliegende Erklärung: Deine Haut saugt sich mit Wasser voll und quillt auf. Nur ist das nicht die ganze Geschichte.

## Deine Nerven haben das Kommando

Laut der Newcastle University entstehen die Falten, weil sich Blutgefäße unter der Haut verengen. Diese Verengung steuert das vegetative Nervensystem, also dasselbe System, das zum Beispiel deine Atmung und deinen Herzschlag regelt, ohne dass du darüber nachdenkst.

Der stärkste Hinweis ist schon ziemlich alt. Nature News, veröffentlicht bei BioEd Online, berichtet, dass man seit den 1930ern weiß: Sind die Nerven in einem Finger geschädigt, bleibt die Schrumpelhaut aus. Würde die Haut einfach nur Wasser aufsaugen, wären die Nerven egal. Das Smithsonian Magazine nennt es beim Namen: ein aktiver Vorgang, nicht einfach aufgeweichte Haut.

## Eingebautes Reifenprofil?

Warum sollte sich dein Körper die Mühe machen? Das Smithsonian Magazine beschreibt eine Studie von 2011, nach der die Falten gleichbleibenden Mustern folgen, über die Wasser abfließen kann, ein bisschen wie das Profil eines Autoreifens.

2013 hat ein Team der Newcastle University die Idee getestet. Laut Smithsonian Magazine hielten 20 Freiwillige ihre Hände 30 Minuten in warmes Wasser und legten dann nasse Glasmurmeln und Angelgewichte von einem Behälter in einen anderen. Mit schrumpeligen Fingern waren sie bei den nassen Murmeln 12 Prozent schneller. Bei trockenen Murmeln machten die Falten keinen Unterschied. Die Studie erschien in der Fachzeitschrift Biology Letters.

> Bonusfakt: Es geht nicht nur um die Finger. Die Pressemitteilung aus Newcastle heißt „why we get wrinkly fingers and toes“, und die Forschenden vermuten, dass schrumpelige Zehen unseren Vorfahren bei Regen besseren Halt gegeben haben könnten.

Deine Rosinenfinger sind also kein Konstruktionsfehler. Dein Körper schaltet einfach von selbst in den Nassgriff-Modus.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wrinkly-fingers-nerves', 'de', 1, 'Illustriertes Anatomiebuch über den menschlichen Körper', 'Anatomie menschlicher Körper Buch illustriert', 'Zeigt in klaren Zeichnungen, wie Haut, Nerven und Blutgefäße zusammenarbeiten.'),
  ('wrinkly-fingers-nerves', 'de', 2, 'Glasmurmeln-Set', 'Glasmurmeln Set', 'Ein klassisches Set bunter Murmeln zum Spielen oder Dekorieren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wrinkly-fingers-nerves', 'de', 1, 'Newcastle University Press Office: Get a grip - why we get wrinkly fingers and toes', 'https://www.ncl.ac.uk/press/articles/archive/2013/01/getagrip-whywegetwrinklyfingersandtoes.html'),
  ('wrinkly-fingers-nerves', 'de', 2, 'Smithsonian Magazine: Proven: Pruney Fingers Give You a Better Grip', 'https://www.smithsonianmag.com/science-nature/proven-pruney-fingers-give-you-a-better-grip-598524/'),
  ('wrinkly-fingers-nerves', 'de', 3, 'BioEd Online: Science gets a grip on wrinkly fingers', 'https://www.bioedonline.org/news/nature-news-archive/science-gets-grip-wrinkly-fingers/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wrinkly-fingers-nerves', 'en', 'wrinkly-fingers-are-nerves',
  'Pruney bath fingers aren''t soggy skin. Your nervous system makes them',
  'Those wrinkles after a long bath are an active body reaction, and they seem to give you a better grip.',
  'Finger wrinkles in water form because blood vessels under the skin constrict, a process controlled by the autonomic nervous system, which is why the wrinkles don''t appear when the nerves in a finger are damaged.',
  'Stay in the bath long enough and your fingertips look like raisins. The obvious explanation: your skin soaks up water and swells. Except that''s not the whole story.

## Your nerves are in charge

According to Newcastle University, the wrinkles form because blood vessels beneath the skin constrict. That constriction is controlled by the autonomic nervous system, the same system that runs things like your breathing and heart rate without you thinking about it.

The strongest clue has been around for decades. Nature News, republished by BioEd Online, reports that it has been known since the 1930s that the wrinkling doesn''t happen when the nerves in a finger are damaged. If it were just skin soaking up water, the nerves wouldn''t matter. Smithsonian Magazine calls it what it is: an active process, not your skin passively getting soggy.

## Built-in tire tread?

So why would your body bother? Smithsonian Magazine describes a 2011 paper which found that the wrinkles follow consistent patterns that let water drain away, a bit like the tread on a tire.

In 2013, a team at Newcastle University put that idea to the test. According to Smithsonian Magazine, 20 volunteers soaked their hands in warm water for 30 minutes and then moved wet glass marbles and fishing weights from one container to another. With wrinkled fingers, they moved the wet marbles 12 percent faster. With dry marbles, the wrinkles made no difference. The study appeared in the journal Biology Letters.

> Bonus fact: It''s not just your fingers. The Newcastle press release is titled "why we get wrinkly fingers and toes", and the researchers suggest wrinkled toes may have helped our ancestors get a better footing in the rain.

So your pruney fingertips aren''t a design flaw. They''re your body switching into wet-grip mode, all on its own.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wrinkly-fingers-nerves', 'en', 1, 'Illustrated anatomy book on the human body', 'illustrated human body anatomy book', 'Shows how skin, nerves and blood vessels work together, in clear drawings.'),
  ('wrinkly-fingers-nerves', 'en', 2, 'Glass marbles set', 'glass marbles set', 'A classic set of colorful marbles for games or decoration.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wrinkly-fingers-nerves', 'en', 1, 'Newcastle University Press Office: Get a grip - why we get wrinkly fingers and toes', 'https://www.ncl.ac.uk/press/articles/archive/2013/01/getagrip-whywegetwrinklyfingersandtoes.html'),
  ('wrinkly-fingers-nerves', 'en', 2, 'Smithsonian Magazine: Proven: Pruney Fingers Give You a Better Grip', 'https://www.smithsonianmag.com/science-nature/proven-pruney-fingers-give-you-a-better-grip-598524/'),
  ('wrinkly-fingers-nerves', 'en', 3, 'BioEd Online: Science gets a grip on wrinkly fingers', 'https://www.bioedonline.org/news/nature-news-archive/science-gets-grip-wrinkly-fingers/');
