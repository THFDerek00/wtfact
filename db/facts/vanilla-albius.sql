-- WTFact-Fakt „Ein 12-Jähriger hat 1841 herausgefunden, wie Vanille auch außerhalb Mexikos wächst“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('vanilla-albius', '2026-09-23', 'food', '🌼', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vanilla-albius', 'de', 'vanille-zwoelfjaehriger',
  'Ein 12-Jähriger hat 1841 herausgefunden, wie Vanille auch außerhalb Mexikos wächst',
  'Ohne einen Handgriff, den sich ein Junge auf der Insel Réunion ausgedacht hat, wäre Vanille bis heute ein Luxus aus einem einzigen Land.',
  'Der 12-jährige Edmond Albius erfand 1841 die Handbestäubung der Vanilleblüte, die bis heute weltweit genutzt wird.',
  'Vanille steckt in Eis, Pudding, Keksen, Parfum. Die Schoten wachsen an einer Orchidee, und die macht es einem nicht leicht. Dass Vanille heute auf der ganzen Welt angebaut wird, verdanken wir einem Kind. **Der 12-jährige Edmond Albius entdeckte 1841, wie man Vanilleblüten von Hand bestäubt.**

## Eine Blüte mit eingebauter Sperre

Die Gewürzvanille (*Vanilla planifolia*) stammt aus dem Südosten Mexikos. Laut Smithsonian Gardens öffnet sich jede Blüte für weniger als einen Tag: vor Sonnenaufgang auf, mittags zu, danach welkt sie. Selbst bestäuben kann sie sich nicht, denn ein Häutchen, das Rostellum, trennt die männlichen von den weiblichen Teilen.

In Mexiko übernehmen das bestimmte Bienen. Europäische Kolonialmächte nahmen die Pflanze zwar mit in andere tropische Regionen, aber ohne die passenden Bestäuber gab es dort kaum Schoten. Laut Nautilus blieb Mexiko dadurch lange praktisch der einzige Lieferant.

## Der Handgriff, der alles änderte

Edmond lebte versklavt auf Réunion, einer Insel im Indischen Ozean. Mit 12 Jahren fand er heraus, wie es geht: Mit einem dünnen Stöckchen hebt man das Häutchen an und drückt die männlichen und weiblichen Teile der Blüte aneinander. **Das dauert nur Sekunden und wird bis heute weltweit genauso gemacht.**

Laut Nautilus verteidigte sein Besitzer Ferréol Bellier-Beaumont die Entdeckung öffentlich gegen Botaniker, die sie sich selbst zuschreiben wollten. Bezahlt wurde Edmond dafür laut Smithsonian Gardens nie. Frei wurde er erst 1848, als Frankreich die Sklaverei abschaffte, und erst dann bekam er auch einen Nachnamen. Heute erinnern in einer der ältesten Städte Réunions eine Straße, eine Schule und eine Bronzestatue an ihn.

> Laut Smithsonian Gardens stammen heute rund 80 Prozent der natürlichen Vanille weltweit aus Madagaskar, dem Nachbarland von Réunion.

## Warum Vanille so teuer ist

Jede Blüte muss von Hand bestäubt werden, und danach brauchen die Schoten sechs bis neun Monate, bis sie geerntet werden können. Kein Wunder, dass Vanille zu den teuersten Gewürzen der Welt gehört.

Hinter dem Geschmack, den die meisten für „langweilig“ halten, steckt also die Idee eines Kindes, die bis heute keiner verbessert hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vanilla-albius', 'de', 1, 'Vanilleschoten', 'Vanilleschoten Bourbon Madagaskar', 'Echte Schoten für Desserts, Pudding und selbstgemachten Vanillezucker.'),
  ('vanilla-albius', 'de', 2, 'Orchidee im Topf', 'Orchidee Zimmerpflanze im Topf', 'Pflegeleichte Zimmer-Orchidee, die monatelang blüht. Vanille ist schließlich auch eine.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vanilla-albius', 'de', 1, 'Nautilus: The Boy Who Was King of Vanilla', 'https://nautil.us/the-boy-who-was-king-of-vanilla-522772'),
  ('vanilla-albius', 'de', 2, 'Smithsonian Gardens: Section 4: Orchid Innovation: The Vanilla Orchid', 'https://gardens.si.edu/exhibitions/connective-power-of-orchids/section-4-orchid-innovation-the-vanilla-orchid/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vanilla-albius', 'en', 'vanilla-12-year-old',
  'In 1841, a 12-year-old figured out how to grow vanilla outside Mexico',
  'Without a trick invented by a boy on the island of Réunion, vanilla might still be a luxury from a single country.',
  'In 1841, 12-year-old Edmond Albius invented the hand pollination of vanilla flowers that is still used worldwide today.',
  'Vanilla is in ice cream, custard, cookies, perfume. The pods grow on an orchid, and that orchid doesn''t make things easy. The fact that vanilla is grown all over the world today is thanks to a kid. **In 1841, 12-year-old Edmond Albius figured out how to pollinate vanilla flowers by hand.**

## A flower with a built-in lock

The vanilla orchid (*Vanilla planifolia*) comes from southeastern Mexico. According to Smithsonian Gardens, each flower stays open for less than a day: it opens before sunrise, closes by noon, then withers. It can''t pollinate itself, because a flap called the rostellum separates the male and female parts.

In Mexico, certain bees take care of that. European colonial powers did take the plant to other tropical regions, but without the right pollinators it barely produced pods there. According to Nautilus, that left Mexico as practically the only supplier for a long time.

## The trick that changed everything

Edmond was enslaved on Réunion, an island in the Indian Ocean. At 12 years old, he worked it out: use a thin stick to lift the flap, then press the male and female parts of the flower together. **It takes just seconds and is still done exactly this way around the world.**

According to Nautilus, his enslaver Ferréol Bellier-Beaumont publicly defended the discovery against botanists who tried to claim it. According to Smithsonian Gardens, Edmond was never paid for it. He only gained his freedom in 1848, when France abolished slavery, and only then did he get a surname. Today, a street, a school and a bronze statue in one of Réunion''s oldest towns honor him.

> According to Smithsonian Gardens, about 80 percent of the world''s natural vanilla now comes from Madagascar, Réunion''s neighbor.

## Why vanilla is so expensive

Every single flower has to be pollinated by hand, and then the pods need six to nine months before they can be harvested. No wonder vanilla is one of the most expensive spices in the world.

The flavor most people call "plain" rests on a kid''s idea that nobody has improved on since.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vanilla-albius', 'en', 1, 'Vanilla beans', 'Madagascar bourbon vanilla beans', 'Real pods for desserts, custard and homemade vanilla sugar.'),
  ('vanilla-albius', 'en', 2, 'Potted orchid', 'potted orchid houseplant', 'An easy-care indoor orchid that blooms for months. Vanilla is one too, after all.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vanilla-albius', 'en', 1, 'Nautilus: The Boy Who Was King of Vanilla', 'https://nautil.us/the-boy-who-was-king-of-vanilla-522772'),
  ('vanilla-albius', 'en', 2, 'Smithsonian Gardens: Section 4: Orchid Innovation: The Vanilla Orchid', 'https://gardens.si.edu/exhibitions/connective-power-of-orchids/section-4-orchid-innovation-the-vanilla-orchid/');
