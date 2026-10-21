-- WTFact-Fakt „Christbaumkugeln waren zuerst gläserne Äpfel und Nüsse“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('lauscha-glass-fruit', '2026-12-03T00:00:00+01:00', 'brands', '🎄', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lauscha-glass-fruit', 'de', 'christbaumkugeln-waren-glasaepfel',
  'Christbaumkugeln waren zuerst gläserne Äpfel und Nüsse',
  'Die Glaskugel am Baum hat eine Vorgängerin aus Obst. Und ein kleines Dorf in Thüringen hat sie erfunden.',
  'Die ersten gläsernen Christbaumanhänger entstanden 1847 in Lauscha in Thüringen und hatten die Form von Früchten und Nüssen.',
  'Bevor Glas an die Zweige kam, hingen echte Äpfel und Nüsse am Weihnachtsbaum. Die Glaskugel ist im Grunde eine Kopie davon, und sie stammt aus einem Dorf im Thüringer Wald.

## Ein Dorf voller Glasbläser

Lauscha war schon lange vor Weihnachtskugeln eine Glasstadt. Laut German Way gründeten Christoph Müller und Hans Greiner dort 1597 die erste Glashütte. Jahrhundertelang bliesen die Lauschaer Gläser, Flaschen und Perlen.

1847 begann ein Nachfahre namens Hans Greiner, gläsernen Baumschmuck herzustellen, so berichtet es Homes & Antiques. Er formte Früchte und Nüsse aus Glas, mundgeblasen und teils in Formen gepresst. Innen wurden sie verspiegelt, damit sie glänzten. Erzählt wird gern, dass die Familien sich echtes Obst für den Baum nicht leisten konnten. Belegt ist das nicht, gut erfunden aber schon.

## Quecksilber und ein amerikanischer Händler

Die Verspiegelung hatte es in sich: Laut German Way benutzte man anfangs Quecksilber oder Blei. Später kam eine Mischung aus Silbernitrat und Zuckerwasser.

Groß wurde Lauscha durch zwei Kunden. 1846 druckte eine Londoner Zeitung den Weihnachtsbaum von Queen Victoria, geschmückt mit deutschem Glas, und plötzlich wollten alle so einen. Dann entdeckte der Amerikaner F. W. Woolworth die Anhänger. Laut Homes & Antiques exportierte er sie ab 1879 in die USA und baute bis 1890 einen großen Handel damit auf.

> Bonusfakt: Nach der Wende wurden die meisten der DDR-Glasbetriebe wieder private Firmen. Heute arbeiten in Lauscha noch rund 20 kleine Glasbläsereien.

Die runde Kugel, die heute jeder kennt, ist also eine vereinfachte Glasfrucht aus einem Dorf, das schon Glas blies, als es noch gar keine Christbäume gab.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lauscha-glass-fruit', 'de', 1, 'Mundgeblasene Christbaumkugeln aus Lauscha', 'Lauscha mundgeblasen Christbaumschmuck', 'Handgemachter Glasschmuck aus dem Ort, der ihn erfunden hat.'),
  ('lauscha-glass-fruit', 'de', 2, 'Gläserne Obst-Anhänger im Set', 'Christbaumschmuck Glas Obst Apfel Birne', 'Äpfel und Birnen aus Glas, wie die allerersten Anhänger.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lauscha-glass-fruit', 'de', 1, 'Homes & Antiques: Discover Lauscha, the birthplace of glass baubles', 'https://homesandantiques.com/antiques/collecting-guides-antiques/discover-the-town-that-invented-baubles'),
  ('lauscha-glass-fruit', 'de', 2, 'German Way & More: Glass Ornaments and Tinsel', 'https://german-way.com/history-and-culture/holidays-and-celebrations/christmas/glass-christmas-ornaments');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lauscha-glass-fruit', 'en', 'first-baubles-were-glass-fruit',
  'Christmas baubles started out as glass apples and nuts',
  'The glass ball on your tree has a fruity ancestor. And one small village in Germany invented it.',
  'The first glass Christmas tree ornaments were made in 1847 in Lauscha, Germany, and were shaped like fruit and nuts.',
  'Before glass hit the branches, people hung real apples and nuts on their Christmas trees. The glass bauble is basically a copy of those, and it comes from a village in the Thuringian Forest.

## A village of glassblowers

Lauscha was a glass town long before Christmas baubles existed. According to German Way, Christoph Müller and Hans Greiner set up the first glassworks there in 1597. For centuries, Lauscha blew glasses, bottles and beads.

In 1847, a descendant also named Hans Greiner started making glass tree decorations, Homes & Antiques reports. He shaped fruits and nuts out of glass, hand-blown and partly pressed into molds. They were silvered on the inside to make them shine. A popular story says families couldn''t afford real fruit for the tree. There''s no proof, but it''s a good story.

## Mercury and an American retailer

That silvering was nasty stuff: according to German Way, makers first used mercury or lead. Later came a mix of silver nitrate and sugar water.

Two customers made Lauscha famous. In 1846, a London newspaper printed Queen Victoria''s Christmas tree decorated with German glass, and suddenly everyone wanted one. Then American retailer F. W. Woolworth discovered the ornaments. According to Homes & Antiques, he began exporting them to the US in 1879 and had built a big trade by 1890.

> Bonus fact: After German reunification, most of Lauscha''s state-owned glassworks became private companies again. About 20 small glass-blowing firms are still working there today.

The round bauble everyone knows is really a simplified glass fruit from a village that was blowing glass before Christmas trees were even a thing.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lauscha-glass-fruit', 'en', 1, 'Mouth-blown glass ornaments from Lauscha', 'Lauscha hand blown glass christmas ornaments', 'Handmade glass decorations from the town that invented them.'),
  ('lauscha-glass-fruit', 'en', 2, 'Glass fruit ornament set', 'glass fruit christmas ornaments apple pear', 'Glass apples and pears like the very first ornaments.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lauscha-glass-fruit', 'en', 1, 'Homes & Antiques: Discover Lauscha, the birthplace of glass baubles', 'https://homesandantiques.com/antiques/collecting-guides-antiques/discover-the-town-that-invented-baubles'),
  ('lauscha-glass-fruit', 'en', 2, 'German Way & More: Glass Ornaments and Tinsel', 'https://german-way.com/history-and-culture/holidays-and-celebrations/christmas/glass-christmas-ornaments');
