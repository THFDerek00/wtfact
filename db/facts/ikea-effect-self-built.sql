-- WTFact-Fakt „Menschen boten 63 Prozent mehr für eine IKEA-Box, nur weil sie sie selbst aufgebaut hatten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ikea-effect-self-built', '2026-10-19T08:00:00+02:00', 'mind', '🔧', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ikea-effect-self-built', 'de', 'ikea-effekt-selbst-gebaut',
  'Menschen boten 63 Prozent mehr für eine IKEA-Box, nur weil sie sie selbst aufgebaut hatten',
  'Psychologen haben getestet, warum dein wackeliges Selbstbau-Regal unbezahlbar wirkt, und die Zahlen sind ein bisschen peinlich.',
  'In einem Experiment von Norton, Mochon und Ariely boten Leute, die eine IKEA-Box selbst aufgebaut hatten, im Schnitt 78 Cent dafür, Leute ohne Bauarbeit nur 48 Cent für dieselbe Box: ein Aufschlag von 63 Prozent.',
  'Kennst du das leicht schiefe Regal, das du selbst zusammengeschraubt hast und gegen kein besseres tauschen würdest? Für dieses Gefühl gibt es in der Psychologie einen Namen: den IKEA-Effekt.

## Gleiche Box, zwei Preise

In einem Arbeitspapier von 2011 haben Michael Norton von der Harvard Business School, Daniel Mochon und Dan Ariely getestet, wie viel Menschen Dinge wert sind, die sie selbst zusammenbauen. Im ersten Experiment ging es bei 52 Teilnehmenden um eine einfache IKEA-Box. Ein Teil baute sie selbst auf, der andere Teil durfte sich nur eine fertige Box ansehen.

Danach konnten alle auf die Box bieten. Die Selbstbauer boten im Schnitt 78 Cent, die anderen 48 Cent. Das ist ein Aufschlag von 63 Prozent für exakt dasselbe Produkt. Die Selbstbauer mochten die Box auch mehr: Auf einer 7-Punkte-Skala gaben sie ihr im Schnitt 3,81, die anderen 2,50.

## Dein Origami ist kein Meisterwerk

Danach ging das Team zum Origami über. Laien, die selbst eine Figur gefaltet hatten, boten im Schnitt 23 Cent für ihr eigenes Werk. Andere Teilnehmende boten für genau dieselben Stücke nur 5 Cent. Die Macher schätzten ihre Arbeit also fast fünfmal so hoch ein wie alle anderen.

Es wird noch besser. Für Origami von einem Profi wollten die Unbeteiligten 27 Cent zahlen. Die Laien bewerteten ihre eigenen ungelenken Falten also ungefähr so hoch wie Profiarbeit. Laut der Studie erwarteten sie außerdem, dass andere das genauso sehen.

> Bonusfakt: Der Effekt braucht ein Happy End. In einem Lego-Experiment schätzten Leute, die ein Set gebaut hatten und es danach wieder zerlegen mussten, es nicht mehr deutlich höher ein als das Set von jemand anderem. Und in einem zweiten IKEA-Test boten Leute, die vor den letzten zwei Schritten gestoppt wurden, im Schnitt 59 Cent, wer fertig bauen durfte, dagegen 1,46 Dollar.

## Arbeit macht verliebt

Der Untertitel der Studie bringt es auf den Punkt: „When labor leads to love“, also etwa „Wenn Arbeit zu Liebe führt“. Der Effekt betraf auch nicht nur Heimwerker-Fans. Er zeigte sich ebenso bei Leuten, die nach eigener Aussage wenig für Do-it-yourself übrighaben.

Dein schiefes Regal ist für niemanden sonst mehr wert. Für dich schon, weil dein Schweiß drinsteckt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ikea-effect-self-built', 'de', 1, '3D-Holzpuzzle-Bausatz', '3D Holzpuzzle Bausatz Erwachsene', 'Ein befriedigendes Bauprojekt, das am Ende als Deko im Regal stehen kann.'),
  ('ikea-effect-self-built', 'de', 2, 'Origami-Papier-Set', 'Origami Papier Set mit Anleitung', 'Bunte Bögen und Faltanleitungen für deine eigenen kleinen Meisterwerke.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ikea-effect-self-built', 'de', 1, 'Harvard DASH: The IKEA Effect: When Labor Leads to Love', 'https://dash.harvard.edu/bitstream/handle/1/12136084/norton%20mochon%20ariely%20third%20round%5B1%5D.pdf'),
  ('ikea-effect-self-built', 'de', 2, 'SSRN: The ''IKEA Effect'': When Labor Leads to Love', 'https://papers.ssrn.com/abstract=1777100'),
  ('ikea-effect-self-built', 'de', 3, 'Smithsonian Magazine: Ikea Makes Us All Feel Like Master Carpenters', 'https://www.smithsonianmag.com/smart-news/ikea-makes-us-all-feel-like-master-carpenters-13685200/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ikea-effect-self-built', 'en', 'ikea-effect-self-built-box',
  'People bid 63 percent more for an IKEA box just because they had built it themselves',
  'Psychologists tested why your wobbly self-assembled shelf feels priceless, and the numbers are a little embarrassing.',
  'In an experiment by Norton, Mochon and Ariely, people who had assembled an IKEA box themselves bid on average 78 cents for it, while people who hadn''t bid 48 cents for the same box: a 63 percent premium.',
  'You know that slightly crooked shelf you put together yourself and would never swap for a better one? Psychologists have a name for that feeling: the IKEA effect.

## Same box, two prices

In a 2011 working paper, Michael Norton of Harvard Business School, Daniel Mochon and Dan Ariely tested how much people value things they assemble themselves. In the first experiment, 52 participants dealt with a simple IKEA box. Some assembled it themselves, others only got to inspect one that was already assembled.

Then everyone could bid on the box. The builders offered on average 78 cents, the non-builders 48 cents. That''s a premium of 63 percent for the exact same product. The builders also liked it more: on a 7-point scale, they rated it 3.81 on average, the others 2.50.

## Your origami is not a masterpiece

The team pushed it further with origami. Amateurs who had folded a figure themselves bid on average 23 cents for their own creation. Other participants bid just 5 cents for those very same pieces. The makers valued their work almost five times higher than everyone else did.

And it gets better. The non-builders were willing to pay 27 cents for origami folded by an expert. So the amateurs priced their own clumsy folds about as high as a pro''s work. According to the paper, they also expected other people to share their opinion.

> Bonus fact: The effect needs a happy ending. In a Lego experiment, people who built a set and then had to take it apart again no longer valued it significantly more than someone else''s set. And in a second IKEA test, people who were stopped before the last two steps bid on average 59 cents, while those who finished bid 1.46 dollars.

## Labor leads to love

The paper''s subtitle says it all: "When labor leads to love." The effect wasn''t limited to DIY fans either. It also showed up in people who said they had little interest in do-it-yourself projects.

Your crooked shelf isn''t worth more to anyone else. It''s worth more to you because your sweat is in it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ikea-effect-self-built', 'en', 1, 'Wooden 3D puzzle model kit', 'wooden 3D puzzle model kit adults', 'A satisfying build that ends with something you''ll want to keep on the shelf.'),
  ('ikea-effect-self-built', 'en', 2, 'Origami paper set', 'origami paper set with instructions', 'Colorful sheets and folding guides to make your own little masterpieces.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ikea-effect-self-built', 'en', 1, 'Harvard DASH: The IKEA Effect: When Labor Leads to Love', 'https://dash.harvard.edu/bitstream/handle/1/12136084/norton%20mochon%20ariely%20third%20round%5B1%5D.pdf'),
  ('ikea-effect-self-built', 'en', 2, 'SSRN: The ''IKEA Effect'': When Labor Leads to Love', 'https://papers.ssrn.com/abstract=1777100'),
  ('ikea-effect-self-built', 'en', 3, 'Smithsonian Magazine: Ikea Makes Us All Feel Like Master Carpenters', 'https://www.smithsonianmag.com/smart-news/ikea-makes-us-all-feel-like-master-carpenters-13685200/');
