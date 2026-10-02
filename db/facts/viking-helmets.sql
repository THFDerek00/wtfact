-- WTFact-Fakt „Wikinger mit Hörnerhelm? Den hat ein Opern-Kostümbildner erfunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('viking-helmets', '2026-09-08', 'history', '⚔️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'viking-helmets', 'de', 'wikinger-hoernerhelme',
  'Wikinger mit Hörnerhelm? Den hat ein Opern-Kostümbildner erfunden',
  'Das berühmteste Wikinger-Accessoire stammt nicht aus Skandinavien, sondern aus dem Theater des 19. Jahrhunderts.',
  'Wikinger trugen keine Hörnerhelme. Das Bild stammt aus Kostümen für Wagners „Ring des Nibelungen“ von 1876.',
  'Fasching, Fußballstadion, Comic: Ein Wikinger ohne Hörner am Helm ist für die meisten kaum vorstellbar. Das Problem: **Es gibt keinen einzigen Beleg, dass echte Wikinger so etwas getragen haben.** Das Bild ist eine Erfindung der Neuzeit.

## Was Archäologen tatsächlich gefunden haben

Aus der Wikingerzeit ist nur ein einziger halbwegs vollständiger Helm bekannt. Er wurde 1943 auf dem Hof Gjermundbu in Norwegen entdeckt und stammt aus dem 10. Jahrhundert. Er besteht aus einer runden Eisenkappe mit einem Schutz für Augen und Nase. Hörner? Fehlanzeige.

Auch die Texte aus jener Zeit erwähnen Helme ständig, aber **nie welche mit Hörnern**. Das ergibt auch Sinn: Im Kampf wären Hörner eher hinderlich gewesen. Sie könnten sich in Ästen verfangen oder in einem Schild steckenbleiben.

## Schuld ist die Oper

Woher kommt das Klischee dann? Vor allem aus dem 19. Jahrhundert. Richard Wagner brachte 1876 in Bayreuth seinen Opernzyklus „Der Ring des Nibelungen“ auf die Bühne, und der Kostümbildner Carl Emil Doepler setzte den nordischen Figuren **Hörnerhelme** auf. Seine Entwürfe gelten bis heute als Startpunkt des Mythos. Von dort wanderte das Bild in Gemälde, Werbung, Filme und schließlich in jeden Kostümladen.

Ganz aus der Luft gegriffen war die Idee allerdings nicht. Im 19. Jahrhundert wurden in Skandinavien tatsächlich Hörnerhelme ausgegraben. Nur stammten die aus einer ganz anderen Epoche.

## Hörner gab es, nur viel früher

Die bekanntesten Beispiele sind die beiden Helme von Veksø in Dänemark. Sie sind rund 3.000 Jahre alt, aus der Bronzezeit, und datieren auf etwa 1100 bis 900 vor Christus. Damit sind sie viele Jahrhunderte älter als die ersten Wikingerfahrten. Solche Helme wurden vermutlich bei Zeremonien getragen, nicht im Kampf.

> Laut HISTORY waren gehörnte Helme in Nordeuropa schon mindestens ein Jahrhundert vor dem Auftauchen der Wikinger aus der Mode gekommen.

Der Wikinger mit Hörnerhelm ist also eine Theaterfigur, die einfach nie wieder von der Bühne gegangen ist. Die echten trugen schlichtes Eisen und sahen damit deutlich weniger nach Halloween aus.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('viking-helmets', 'de', 1, 'Sachbuch über die Wikinger und ihren Alltag', 'Wikinger Sachbuch Geschichte Alltag', 'Räumt mit Klischees auf und zeigt, wie Handel, Schiffbau und Alltag im Norden wirklich aussahen.'),
  ('viking-helmets', 'de', 2, 'Bausatz Wikingerschiff aus Holz', 'Wikingerschiff Bausatz Holz Modell', 'Ein Drachenboot zum Selberbauen. Sieht im Regal deutlich besser aus als jeder Plastikhelm.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('viking-helmets', 'de', 1, 'Wikipedia: Horned helmet', 'https://en.wikipedia.org/wiki/Horned_helmet'),
  ('viking-helmets', 'de', 2, 'Wikipedia: Carl Emil Doepler', 'https://en.wikipedia.org/wiki/Carl_Emil_Doepler'),
  ('viking-helmets', 'de', 3, 'HISTORY: Did Vikings really wear horned helmets?', 'https://www.history.com/news/did-vikings-really-wear-horned-helmets'),
  ('viking-helmets', 'de', 4, 'World-Tree Project (University College Cork): The horned helmet', 'https://www.worldtreeproject.org/exhibits/show/miscon/hornvikes');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'viking-helmets', 'en', 'vikings-horned-helmets',
  'Vikings in horned helmets? An opera costume designer made that up',
  'The most famous Viking accessory didn''t come from Scandinavia. It came from a 19th-century stage.',
  'Vikings didn''t wear horned helmets. The look comes from costumes for Wagner''s Ring cycle in 1876.',
  'Halloween costumes, football mascots, cartoons: picture a Viking and you probably picture horns. Here''s the catch: **there''s zero evidence that real Vikings ever wore them.** The whole image is a modern invention.

## What archaeologists actually found

Only one reasonably complete helmet from the Viking Age is known. It was dug up in 1943 at Gjermundbu farm in Norway and dates to the 10th century. It''s a rounded iron cap with a guard for the eyes and nose. Horns? None.

Texts from the period mention helmets all the time, but **never horned ones**. That makes sense, too. In a fight, horns would have been a liability. They could get caught in a tree branch or stuck in a shield.

## Blame the opera

So where did the cliché come from? Mostly the 19th century. In 1876, Richard Wagner staged his opera cycle "Der Ring des Nibelungen" in Bayreuth, and costume designer Carl Emil Doepler put **horned helmets** on the Norse characters. His designs are widely credited with starting the myth. From there, the look spread to paintings, ads, movies and eventually every costume shop on the planet.

The idea didn''t come out of nowhere, though. Horned helmets really were being dug up in Scandinavia in the 1800s. They just came from a completely different era.

## Horns existed, just way earlier

The best-known examples are the two Veksø helmets from Denmark. They''re Bronze Age pieces, dated to around 1100 to 900 BC, which makes them roughly 3,000 years old and many centuries older than the first Viking raids. Helmets like these were most likely worn for ceremonies, not combat.

> According to HISTORY, horned helmets in northern Europe had gone out of fashion at least a century before the Vikings showed up.

So the horned Viking is basically a stage character who never left the theater. The real ones wore plain iron and looked a lot less like a Halloween party.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('viking-helmets', 'en', 1, 'Nonfiction book on Viking history and daily life', 'Viking history book daily life', 'Cuts through the clichés and shows how trade, shipbuilding and everyday life really worked up north.'),
  ('viking-helmets', 'en', 2, 'Wooden Viking ship model kit', 'Viking ship wooden model kit', 'A longship you build yourself. Looks way better on a shelf than any plastic helmet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('viking-helmets', 'en', 1, 'Wikipedia: Horned helmet', 'https://en.wikipedia.org/wiki/Horned_helmet'),
  ('viking-helmets', 'en', 2, 'Wikipedia: Carl Emil Doepler', 'https://en.wikipedia.org/wiki/Carl_Emil_Doepler'),
  ('viking-helmets', 'en', 3, 'HISTORY: Did Vikings really wear horned helmets?', 'https://www.history.com/news/did-vikings-really-wear-horned-helmets'),
  ('viking-helmets', 'en', 4, 'World-Tree Project (University College Cork): The horned helmet', 'https://www.worldtreeproject.org/exhibits/show/miscon/hornvikes');
