-- WTFact-Fakt „Mit 21 gab Michelangelo eine Statue als antik aus, und das brachte ihm seinen ersten Gönner in Rom“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('michelangelo-forged-cupid', '2026-10-30T16:00:00+01:00', 'art', '🗿', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'michelangelo-forged-cupid', 'de', 'michelangelo-faelschte-antike-statue',
  'Mit 21 gab Michelangelo eine Statue als antik aus, und das brachte ihm seinen ersten Gönner in Rom',
  'Lange bevor ihn alle kannten, gelang dem jungen Bildhauer der Durchbruch mit einer Fälschung.',
  '1496 schuf der 21-jährige Michelangelo einen schlafenden Amor, der künstlich gealtert und einem Kardinal als antike Skulptur verkauft wurde, und genau dieser Kardinal wurde sein erster Gönner in Rom.',
  'Bei „Genie“ denkst du vermutlich an Michelangelo. Doch seine Karriere bekam ihren Schub durch etwas, das heute als Kunstbetrug gelten würde.

## Eine brandneue Antike

1496 war Michelangelo 21. Wie Atlas Obscura schreibt, hatte er das Talent, aber nicht den Namen, um seine Werke gut zu verkaufen. Viele Sammler interessierten sich dagegen viel mehr für klassische Skulpturen aus der Antike. Also meißelte er einen schlafenden Amor aus Marmor und ließ ihn alt aussehen.

Wie genau, wird unterschiedlich erzählt. Laut The Art Newspaper schrieb der Biograf Paolo Giovio, Michelangelo habe die Statue eine Zeit lang in der Erde vergraben und sie dann wieder ausgegraben, mit Flecken und absichtlichen Beschädigungen. Laut Atlas Obscura erzählt Giorgio Vasari es anders: Bei ihm vergrub der Händler die Statue in seinem Weinberg. So oder so: Der „antike“ Amor ging für viel Geld an Kardinal Raffaele Riario, einen Sammler römischer Altertümer.

## Erwischt, und dann angeheuert

Irgendwann erfuhr der Kardinal, dass seine Antike brandneu war. Laut Atlas Obscura richtete sich sein Zorn vor allem gegen den Händler Baldassare del Milanese, der seinen Teil des Geldes zurückgeben musste. Michelangelo durfte seinen Anteil behalten.

Und dann die Wendung: Statt den Fälscher zu bestrafen, lud Riario ihn nach Rom ein. Laut The Art Newspaper wurde der Kardinal dort Michelangelos erster Gönner und gab weitere Werke in Auftrag, darunter die Bacchus-Statue, die heute im Bargello in Florenz steht. Das Museum of Hoaxes fasst es so zusammen: Der Kardinal war von seinem Talent beeindruckt und verzichtete auf eine Anzeige.

> Bonusfakt: Die Fälschung hatte ein glamouröses Nachleben. Sie landete bei Isabella d''Este in Mantua, wurde von König Karl I. gekauft und 1631 nach England gebracht und verbrannte höchstwahrscheinlich 1698 beim Feuer im Whitehall-Palast.

Einer der berühmtesten Künstler der Geschichte schaffte den Durchbruch also, weil er zu gut im Fälschen war.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('michelangelo-forged-cupid', 'de', 1, 'Michelangelo-Biografie', 'Michelangelo Biografie Buch', 'Erzählt das ganze Leben des Bildhauers, von Florenz bis zur Sixtinischen Kapelle.'),
  ('michelangelo-forged-cupid', 'de', 2, 'Gipsbüste des David', 'Michelangelo David Büste Deko', 'Eine klassische Skulptur-Nachbildung, die etwas Renaissance ins Regal bringt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('michelangelo-forged-cupid', 'de', 1, 'Atlas Obscura: How a Forged Sculpture Boosted Michelangelo''s Early Career', 'https://www.atlasobscura.com/articles/how-a-forged-sculpture-boosted-michelangelos-early-career'),
  ('michelangelo-forged-cupid', 'de', 2, 'The Art Newspaper: Lost Art: Michelangelo''s Sleeping Eros', 'https://www.theartnewspaper.com/2015/06/26/lost-art-michelangelos-sleeping-eros'),
  ('michelangelo-forged-cupid', 'de', 3, 'The Museum of Hoaxes: Michelangelo''s Cupid (1495)', 'https://hoaxes.org/archive/permalink/michelangelos_cupid');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'michelangelo-forged-cupid', 'en', 'michelangelo-forged-an-antique',
  'At 21, Michelangelo passed off a statue as an antique, and it landed him his first patron in Rome',
  'Long before he was a household name, the young sculptor got his big break with a fake.',
  'In 1496, a 21-year-old Michelangelo carved a sleeping Cupid that was artificially aged and sold to a cardinal as an ancient sculpture, and that cardinal became his first patron in Rome.',
  'Michelangelo is the name you think of when you hear "genius". But his career got a push from something that today would count as art fraud.

## A brand-new antique

In 1496, Michelangelo was 21. As Atlas Obscura puts it, he had the talent but not the name to sell his work at a good price. Many collectors, on the other hand, were far more interested in owning classical sculptures from antiquity. So he carved a marble statue of a sleeping Cupid and made it look old.

How exactly is told in different ways. According to The Art Newspaper, the biographer Paolo Giovio wrote that Michelangelo kept the statue buried in the earth for a while and then dug it up, with stains and deliberate damage. According to Atlas Obscura, Giorgio Vasari tells it differently: in his version, it was the dealer who buried the statue in his vineyard. Either way, the "ancient" Cupid was sold for a high price to Cardinal Raffaele Riario, a collector of Roman antiquities.

## Caught, and then hired

The cardinal eventually learned that his antique was brand new. According to Atlas Obscura, his anger was aimed mainly at the dealer, Baldassare del Milanese, who had to give his part of the money back. Michelangelo kept his cut.

And then came the twist: instead of punishing the forger, Riario invited him to Rome. According to The Art Newspaper, the cardinal became Michelangelo''s first patron there and commissioned further works, including the statue of Bacchus that now stands in the Bargello in Florence. The Museum of Hoaxes sums it up: the cardinal was impressed by his talent and didn''t press charges.

> Bonus fact: The fake had a glamorous afterlife. It ended up with Isabella d''Este in Mantua, was bought by King Charles I and taken to England in 1631, and was most likely destroyed in a fire at Whitehall Palace in 1698.

So one of the most famous artists in history got his big break by being too good at faking.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('michelangelo-forged-cupid', 'en', 1, 'Michelangelo biography', 'Michelangelo biography book', 'Tells the whole life story of the sculptor, from Florence to the Sistine Chapel.'),
  ('michelangelo-forged-cupid', 'en', 2, 'Plaster bust of David', 'Michelangelo David bust statue decoration', 'A classic sculpture replica that brings a bit of Renaissance to your shelf.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('michelangelo-forged-cupid', 'en', 1, 'Atlas Obscura: How a Forged Sculpture Boosted Michelangelo''s Early Career', 'https://www.atlasobscura.com/articles/how-a-forged-sculpture-boosted-michelangelos-early-career'),
  ('michelangelo-forged-cupid', 'en', 2, 'The Art Newspaper: Lost Art: Michelangelo''s Sleeping Eros', 'https://www.theartnewspaper.com/2015/06/26/lost-art-michelangelos-sleeping-eros'),
  ('michelangelo-forged-cupid', 'en', 3, 'The Museum of Hoaxes: Michelangelo''s Cupid (1495)', 'https://hoaxes.org/archive/permalink/michelangelos_cupid');
