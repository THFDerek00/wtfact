-- WTFact-Fakt „Dom Pérignon hat die Bläschen im Champagner nicht erfunden. Er wollte sie loswerden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('dom-perignon-bubbles', '2026-10-15T12:00:00+02:00', 'food', '🍾', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dom-perignon-bubbles', 'de', 'dom-perignon-kaempfte-gegen-blasen',
  'Dom Pérignon hat die Bläschen im Champagner nicht erfunden. Er wollte sie loswerden',
  'Der Mönch, nach dem einer der bekanntesten Champagner heißt, hat eigentlich gegen das Sprudeln gekämpft.',
  'Der Benediktinermönch Dom Pérignon gilt oft als Erfinder des schäumenden Champagners, dabei galten Bläschen zu seiner Zeit als Fehler, und er versuchte mit viel Aufwand, sie loszuwerden.',
  'Frag mal, wer den Champagner erfunden hat, und du hörst wahrscheinlich einen Namen: Dom Pérignon. Ein Mönch, ein Keller, ein Glas voller Bläschen, fertig. Schöne Geschichte. Die echte läuft andersherum.

## Der Mönch, der das Sprudeln hasste

Dom Pierre Pérignon lebte von 1638 bis 1715 und wurde 1668 Prokurator, also Verwalter, der Benediktinerabtei Hautvillers oberhalb von Épernay in der Champagne. Damals waren Bläschen im Wein kein Feature. Sie waren ein Problem.

Wein, der in der Flasche noch einmal zu gären begann, baute Druck auf, und Flaschen platzten damals oft. France Today schreibt, dass der versehentlich sprudelnde Wein „vin du diable“ hieß, Teufelswein. Laut BBC History Revealed arbeitete Pérignon unermüdlich daran, die Bläschen aus dem Wein seiner Region zu verbannen.

Ein Spitzenwinzer war er trotzdem. Er setzte auf geringe Erträge, sortierte beschädigte Trauben aus und half, Weißwein aus dunklen Pinot-noir-Trauben zu perfektionieren. Nur das Prickeln stammt nicht von ihm.

## Die Bläschen kamen aus England

1662 beschrieb der englische Arzt Christopher Merret in einem Text für die Royal Society, wie englische Weinküfer „riesige Mengen Zucker und Melasse“ in Weine gaben. Der Zucker löste eine zweite Gärung aus und brachte den Wein zum Sprudeln. Das war sechs Jahre, bevor Pérignon nach Hautvillers kam.

Die Engländer hatten auch die passenden Flaschen. 1615 verbot König Jakob I. Holz als Brennstoff für Industrieöfen, also stiegen die Glasmacher auf Kohle um. Die brannte heißer und ergab stärkeres Glas, das einen Druck ähnlich wie in einem Autoreifen aushielt. Französisches Glas war dafür damals zu schwach.

> Bonusfakt: Laut France Today gibt es in einer Abtei bei Limoux in Südfrankreich Aufzeichnungen über sprudelnden Wein von 1531, hergestellt mit einer anderen Methode.

## Wie die Legende entstand

Die Heldengeschichte war Marketing. Bei der Weltausstellung 1889 in Paris, der mit dem neuen Eiffelturm, präsentierte die Champagner-Branche Pérignon als Erfinder des schäumenden Champagners. Sein berühmter Satz „Kommt schnell, ich trinke Sterne!“ ist laut BBC History Revealed ein Mythos aus dem 19. Jahrhundert.

Das Gesicht des Sprudels ist also ein Mann, der jahrelang versucht hat, ihn zu stoppen. Darauf ein Prost.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dom-perignon-bubbles', 'de', 1, 'Champagnerschalen', 'Champagnerschalen Set Vintage', 'Breite Gläser im Retro-Look, die zu jedem sprudelnden Getränk passen, auch ohne Alkohol.'),
  ('dom-perignon-bubbles', 'de', 2, 'Buch zur Geschichte des Champagners', 'Champagner Geschichte Buch', 'Erzählt von Mönchen, Händlern und dem langen Weg zur Flasche, die du heute kennst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dom-perignon-bubbles', 'de', 1, 'The Conversation: Champagne is deeply French – but the English invented the bubbles', 'https://theconversation.com/champagne-is-deeply-french-but-the-english-invented-the-bubbles-208569'),
  ('dom-perignon-bubbles', 'de', 2, 'BBC History Revealed: Who invented champagne?', 'https://historyrevealed.com/period/early-modern/who-invented-champagne'),
  ('dom-perignon-bubbles', 'de', 3, 'France Today: Dom Pérignon: A Look at a Legend', 'https://francetoday.com/food-drink/wine_and_spirits/dom_perignon_a_look_at_a_legend/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dom-perignon-bubbles', 'en', 'dom-perignon-fought-the-bubbles',
  'Dom Pérignon didn''t invent the bubbles in champagne. He tried to get rid of them',
  'The monk whose name is on one of the world''s best-known champagnes actually fought the fizz.',
  'The Benedictine monk Dom Pérignon is often called the inventor of sparkling champagne, but in his day bubbles were seen as a fault, and he worked hard to get rid of them.',
  'Ask who invented champagne and you''ll probably hear one name: Dom Pérignon. A monk, a cellar, a glass full of bubbles, done. Nice story. The real one runs the other way.

## The monk who hated fizz

Dom Pierre Pérignon lived from 1638 to 1715 and became procurator of the Benedictine Abbey of Hautvillers, above Épernay in the Champagne region, in 1668. Back then, bubbles in wine were not a feature. They were a problem.

Wine that started fermenting again in the bottle built up pressure, and bottles of that era often burst. France Today notes that this accidentally fizzy wine was nicknamed "vin du diable", devil''s wine. According to BBC History Revealed, Pérignon "worked tirelessly to eradicate bubbles" in the wine of his region.

He was still a top winemaker. He pushed for low yields and threw out damaged grapes, and he helped perfect white wine made from black pinot noir grapes. Just not the sparkle.

## The bubbles came from England

In 1662, the English physician Christopher Merret described in a paper for the Royal Society how English wine coopers added "vast quantities of sugar and molasses" to wines. That sugar kicked off a second fermentation and made the wine sparkle. That was six years before Pérignon arrived in Hautvillers.

The English also had the right bottles. In 1615, King James I banned wood as fuel for industrial furnaces, so glassmakers switched to coal. It burned hotter and made stronger glass that could hold pressure similar to a car tyre. French glass of the time was too weak for that.

> Bonus fact: According to France Today, an abbey near Limoux in the south of France has records of bubbly wine from 1531, made with a different method.

## How the legend was born

The hero story was marketing. At the 1889 world''s fair in Paris, the one that debuted the Eiffel Tower, the champagne trade promoted Pérignon as the inventor of sparkling champagne. His famous line "Come quickly, I am drinking the stars!" is, according to BBC History Revealed, a 19th-century myth.

So the face of fizz is a man who spent years trying to stop it. Cheers to that.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dom-perignon-bubbles', 'en', 1, 'Champagne coupe glasses', 'champagne coupe glasses set vintage', 'Old-school wide glasses that look great for any fizzy drink, alcohol-free ones included.'),
  ('dom-perignon-bubbles', 'en', 2, 'Book on the history of champagne', 'champagne history book', 'A deep dive into monks, merchants and the long road to the bottle you know today.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dom-perignon-bubbles', 'en', 1, 'The Conversation: Champagne is deeply French – but the English invented the bubbles', 'https://theconversation.com/champagne-is-deeply-french-but-the-english-invented-the-bubbles-208569'),
  ('dom-perignon-bubbles', 'en', 2, 'BBC History Revealed: Who invented champagne?', 'https://historyrevealed.com/period/early-modern/who-invented-champagne'),
  ('dom-perignon-bubbles', 'en', 3, 'France Today: Dom Pérignon: A Look at a Legend', 'https://francetoday.com/food-drink/wine_and_spirits/dom_perignon_a_look_at_a_legend/');
