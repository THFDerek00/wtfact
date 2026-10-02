-- WTFact-Fakt „Dieser Krebs boxt mit 83 km/h und hat bis zu 16 Farbkanäle“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('mantis-shrimp', '2026-08-19', 'nature', '🦐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mantis-shrimp', 'de', 'fangschreckenkrebs-schlag-augen',
  'Dieser Krebs boxt mit 83 km/h und hat bis zu 16 Farbkanäle',
  'Der Fangschreckenkrebs hat die härteste Faust im Riff und Augen wie ein Hightech-Labor. Nur beim Farbensehen versagt er überraschend.',
  'Fangschreckenkrebse schlagen so schnell zu, dass das Wasser Blasen wirft, und unterscheiden Farben trotz bis zu 16 Farbkanälen schlechter als du.',
  'Er sieht aus wie ein bunter Hummer aus einem Videospiel und hat vermutlich die gefährlichste Faust im Meer. Fangschreckenkrebse sind kleine Räuber aus warmen Meeren, und an ihnen ist so ziemlich alles extrem. Selbst ihr größtes Talent hat einen überraschenden Haken.

## Ein Schlag mit Nachbeben

Manche Arten haben keulenartige Fangbeine, mit denen sie Schnecken, Muscheln und Krebse knacken. Diese Hammerarme schnellen mit 23 Metern pro Sekunde nach vorn. Das sind **rund 83 km/h, unter Wasser und aus dem Stand**.

Weil das so schnell geht, entsteht hinter dem Arm ein Unterdruck. Das Wasser bildet winzige Dampfbläschen, die sofort wieder in sich zusammenfallen. Das nennt man Kavitation. Die implodierenden Bläschen setzen dabei jede Menge Energie frei. **Die Beute kassiert also quasi zwei Treffer: den Schlag selbst und die Blasen direkt danach.**

## Augen mit bis zu 16 Farbkanälen

Wir Menschen sehen Farben mit 3 Typen von Fotorezeptoren. Fangschreckenkrebse haben 12 oder mehr, manche Arten **bis zu 16 Farbkanäle**, einige davon im UV-Bereich. Dazu erkennen sie polarisiertes Licht, das für uns unsichtbar ist.

Klingt nach dem ultimativen Farbsehen. Ist es aber offenbar nicht.

## Viele Sensoren, wenig Feingefühl

2014 testeten Forschende der University of Queensland, wie gut die Tiere ähnliche Farbtöne auseinanderhalten. Ergebnis: **überraschend schlecht, sogar schlechter als wir Menschen**. Die Studie erschien im Fachjournal Science.

Die Erklärung der Forschenden: Unser Gehirn vergleicht die Signale weniger Rezeptoren und rechnet daraus feinste Farbabstufungen. Der Krebs macht das offenbar anders. Er scannt seine Umgebung mit Augenbewegungen und erkennt eine Farbe direkt daran, welche seiner vielen Rezeptoren anspringen. Ein bisschen wie ein Barcode-Scanner. Das ist weniger präzise, dafür aber schnell. Im Korallenriff, wo jede Sekunde über Fressen oder Gefressenwerden entscheidet, lohnt sich dieser Deal.

> Die Augen sitzen auf Stielen, bewegen sich unabhängig voneinander, und jedes einzelne Auge kann für sich allein räumlich sehen.

Mehr Hardware heißt also nicht automatisch bessere Bilder. Manchmal heißt es einfach: schneller entscheiden.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mantis-shrimp', 'de', 1, 'Die erstaunlichen Sinne der Tiere von Ed Yong', 'Ed Yong Die erstaunlichen Sinne der Tiere', 'Ein Wissenschaftsjournalist erklärt, wie Tiere die Welt wahrnehmen. Unterhaltsam geschrieben und voller Aha-Momente.'),
  ('mantis-shrimp', 'de', 2, 'Fangschreckenkrebs Kuscheltier', 'Fangschreckenkrebs Kuscheltier', 'Ein knallbunter Plüschkrebs fürs Regal oder Bett. Zum Glück ohne Schlagkraft.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mantis-shrimp', 'de', 1, 'Wikipedia: Fangschreckenkrebse', 'https://de.wikipedia.org/wiki/Fangschreckenkrebse'),
  ('mantis-shrimp', 'de', 2, 'Phys.org: Study finds mantis shrimp process vision differently than other organisms', 'https://phys.org/news/2014-01-mantis-shrimp-vision-differently-video.html'),
  ('mantis-shrimp', 'de', 3, 'UC Berkeley News: Mantis shrimp may have swiftest kick in the animal kingdom', 'https://newsarchive.berkeley.edu/news/media/releases/2004/04/21_shrimp.shtml');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mantis-shrimp', 'en', 'mantis-shrimp-punch-eyes',
  'This shrimp punches at 83 km/h and has up to 16 color channels',
  'The mantis shrimp has the hardest punch on the reef and eyes like a high-tech lab. But it''s surprisingly bad at telling colors apart.',
  'Mantis shrimp strike so fast the water forms bubbles, and despite up to 16 color channels, they''re worse at telling colors apart than you are.',
  'It looks like a rainbow lobster from a video game, and it probably has the most dangerous fist in the ocean. Mantis shrimp are small predators from warm seas, and pretty much everything about them is extreme. Even their greatest talent comes with a surprising catch.

## A punch with an aftershock

Some species have club-like limbs they use to smash snails, clams and crabs. These clubs shoot forward at 23 meters per second. That''s **about 83 km/h, or 51 mph, underwater and from a standing start**.

Because it happens so fast, the water behind the club can''t keep up. Tiny vapor bubbles form and instantly collapse. That''s called cavitation, and the collapsing bubbles pack a punch of their own. **So the prey basically gets hit twice: once by the club, once by the bubbles.**

## Eyes with up to 16 color channels

Humans see color with 3 types of photoreceptors. Mantis shrimp have 12 or more, and some species have **up to 16 types**, including some for ultraviolet light. They can also detect polarized light, which is invisible to us.

Sounds like the ultimate color vision. Apparently, it isn''t.

## Lots of sensors, little nuance

In 2014, researchers from the University of Queensland tested how well the animals could tell similar shades apart. The result: **surprisingly poorly, even worse than humans**. The study was published in the journal Science.

The researchers'' explanation: our brains compare signals from a few receptors and calculate super fine color differences. The shrimp seems to do it differently. It scans its surroundings with eye movements and recognizes a color by which of its many receptors fire. Kind of like a barcode scanner. It''s less precise but fast. On a coral reef, where every second decides between eating and being eaten, that''s a deal worth taking.

> Their eyes sit on stalks, move independently of each other, and each single eye can perceive depth on its own.

So more hardware doesn''t automatically mean better pictures. Sometimes it just means faster decisions.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mantis-shrimp', 'en', 1, 'An Immense World by Ed Yong', 'An Immense World Ed Yong', 'A science journalist explores how animals sense the world. Fun to read and packed with aha moments.'),
  ('mantis-shrimp', 'en', 2, 'Mantis shrimp plush toy', 'mantis shrimp plush', 'A rainbow-colored plush crustacean for your shelf or bed. Luckily without the punch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mantis-shrimp', 'en', 1, 'Wikipedia: Mantis shrimp', 'https://en.wikipedia.org/wiki/Mantis_shrimp'),
  ('mantis-shrimp', 'en', 2, 'Phys.org: Study finds mantis shrimp process vision differently than other organisms', 'https://phys.org/news/2014-01-mantis-shrimp-vision-differently-video.html'),
  ('mantis-shrimp', 'en', 3, 'UC Berkeley News: Mantis shrimp may have swiftest kick in the animal kingdom', 'https://newsarchive.berkeley.edu/news/media/releases/2004/04/21_shrimp.shtml');
