-- WTFact-Fakt „Play-Doh war ursprünglich ein Tapetenreiniger“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('play-doh', '2026-09-05', 'weird', '🧽', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'play-doh', 'de', 'play-doh-tapetenreiniger',
  'Play-Doh war ursprünglich ein Tapetenreiniger',
  'Die bunte Knete aus deiner Kindheit sollte eigentlich Ruß von Wänden rubbeln. Dann rettete eine Erzieherin die Firma.',
  'Play-Doh wurde als Reinigungsknete für rußige Tapeten erfunden und erst 1956 als Spielzeug verkauft.',
  'Die kleinen Dosen, der typische Geruch, die Klumpen, die irgendwann alle braun-grau werden: Play-Doh kennt fast jeder aus dem Kindergarten. Aber die Knete hatte ein Vorleben. **Sie war ein Putzmittel für Tapeten.**

## Ruß an den Wänden

In den 1930er-Jahren heizten viele Haushalte in den USA mit Kohle. Das Problem: Die Öfen hinterließen schwarzen Ruß an den Tapeten, und die ließen sich nicht einfach abwaschen. Bei der Firma Kutol Products in Cincinnati entwickelte Noah McVicker deshalb laut Wikipedia eine weiche, knetbare Masse. Man rollte sie über die Tapete, und der Dreck blieb daran kleben.

Das funktionierte gut, bis sich die Welt änderte. Nach dem Zweiten Weltkrieg setzte sich das Heizen mit Erdgas durch. **Weniger Ruß bedeutete: kaum noch Bedarf an Tapetenreiniger.** Kutol steckte in Schwierigkeiten.

## Eine Erzieherin hat die Idee

Die Rettung kam aus der Familie. Kay Zufall, Erzieherin in einem Kindergarten und Schwägerin von Joe McVicker, las, dass man Tapetenreiniger zum Basteln benutzen kann. Sie probierte es mit den Kindern in ihrer Gruppe aus, und die waren begeistert.

Zufall und ihr Mann Robert schlugen vor, die Masse als Spielzeug zu verkaufen. Sie erfanden auch gleich den Namen **„Play-Doh“**. Die McVickers hätten das Produkt laut Wikipedia lieber „Rainbow Modeling Compound“ genannt. Gut, dass sie sich nicht durchgesetzt haben.

## Vom Putzmittel zum Kultspielzeug

1956 kam Play-Doh als Spielzeug auf den Markt. Laut Smithsonian Magazine wurden seitdem **mehr als 3 Milliarden Dosen** verkauft. 1998 wurde die Knete in die National Toy Hall of Fame in den USA aufgenommen. Heute gehört die Marke zum Spielzeugkonzern Hasbro, und die Hauptzutaten sind immer noch schlicht: Wasser, Salz und Mehl.

> 2018 ließ Hasbro sogar den Geruch von Play-Doh als Marke schützen. Beschrieben wird er als süßlich, leicht moschusartig und vanilleähnlich, mit einem Hauch Kirsche.

Ein Produkt, das eigentlich überflüssig geworden war, hat so ganze Generationen beschäftigt. Und die Tapeten bleiben trotzdem nicht sauber.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('play-doh', 'de', 1, 'Play-Doh Knete im Set mit mehreren Dosen', 'Play-Doh Knete Set Dosen', 'Der Klassiker in vielen Farben. Riecht genau so, wie du es in Erinnerung hast.'),
  ('play-doh', 'de', 2, 'Knetwerkzeug-Set mit Ausstechern und Rollen', 'Knetwerkzeug Set Ausstecher Kinder', 'Formen, Rollen und Messer für Knete. Damit werden aus Klumpen kleine Kunstwerke.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('play-doh', 'de', 1, 'Wikipedia: Play-Doh', 'https://en.wikipedia.org/wiki/Play-Doh'),
  ('play-doh', 'de', 2, 'Smithsonian Magazine: The Accidental Invention of Play-Doh', 'https://www.smithsonianmag.com/innovation/accidental-invention-play-doh-180973527/'),
  ('play-doh', 'de', 3, 'The Strong National Museum of Play: The History of Play-Doh: Good, Clean Fun!', 'https://www.museumofplay.org/blog/the-history-of-play-doh-good-clean-fun/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'play-doh', 'en', 'play-doh-wallpaper-cleaner',
  'Play-Doh started out as a wallpaper cleaner',
  'The colorful dough from your childhood was meant to scrub soot off walls. Then a teacher saved the company.',
  'Play-Doh was invented as a putty for cleaning sooty wallpaper and only sold as a toy starting in 1956.',
  'The little cans, that signature smell, the blobs that all eventually turn brownish gray: almost everyone knows Play-Doh from preschool. But the dough had a past life. **It was a cleaning product for wallpaper.**

## Soot on the walls

In the 1930s, lots of American homes were heated with coal. The problem: the stoves left black soot on the wallpaper, and you couldn''t just wash it off. So at Kutol Products in Cincinnati, Noah McVicker developed a soft, putty-like substance, according to Wikipedia. You rolled it over the wallpaper, and the grime stuck to it.

That worked great, until the world changed. After World War II, natural gas heating took over. **Less soot meant almost no need for wallpaper cleaner.** Kutol was in trouble.

## A teacher has an idea

The rescue came from within the family. Kay Zufall, a nursery school teacher and Joe McVicker''s sister-in-law, read that wallpaper cleaner could be used for crafts. She tried it with the kids in her class, and they loved it.

Zufall and her husband Robert suggested selling the stuff as a toy. They came up with the name, too: **"Play-Doh."** According to Wikipedia, the McVickers would rather have called it "Rainbow Modeling Compound." Good thing they lost that one.

## From cleaner to cult toy

Play-Doh hit the market as a toy in 1956. According to Smithsonian Magazine, **more than 3 billion cans** have been sold since then. In 1998, it was inducted into the National Toy Hall of Fame. Today the brand belongs to toy giant Hasbro, and the main ingredients are still simple: water, salt and flour.

> In 2018, Hasbro even trademarked the smell of Play-Doh. It''s described as a sweet, slightly musky, vanilla-like fragrance with slight overtones of cherry.

A product that had basically become useless ended up keeping whole generations busy. The wallpaper still doesn''t stay clean, though.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('play-doh', 'en', 1, 'Play-Doh multi-pack of cans', 'Play-Doh multi pack cans', 'The classic in lots of colors. Smells exactly the way you remember.'),
  ('play-doh', 'en', 2, 'Play dough tool set with cutters and rollers', 'play dough tools set cutters rollers', 'Molds, rollers and knives for dough. Turns random blobs into tiny works of art.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('play-doh', 'en', 1, 'Wikipedia: Play-Doh', 'https://en.wikipedia.org/wiki/Play-Doh'),
  ('play-doh', 'en', 2, 'Smithsonian Magazine: The Accidental Invention of Play-Doh', 'https://www.smithsonianmag.com/innovation/accidental-invention-play-doh-180973527/'),
  ('play-doh', 'en', 3, 'The Strong National Museum of Play: The History of Play-Doh: Good, Clean Fun!', 'https://www.museumofplay.org/blog/the-history-of-play-doh-good-clean-fun/');
