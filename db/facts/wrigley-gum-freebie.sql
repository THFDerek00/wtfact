-- WTFact-Fakt „Wrigley-Kaugummi war anfangs nur eine Gratisbeigabe zu Backpulver“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('wrigley-gum-freebie', '2026-10-10T00:26:39+02:00', 'brands', '🧼', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wrigley-gum-freebie', 'de', 'wrigley-kaugummi-gratis-zu-backpulver',
  'Wrigley-Kaugummi war anfangs nur eine Gratisbeigabe zu Backpulver',
  'William Wrigley Jr. wollte eigentlich Seife verkaufen. Dann wurden seine Werbegeschenke beliebter als seine Ware, und zwar zweimal.',
  'William Wrigley Jr. verkaufte erst Seife mit Backpulver als Zugabe, dann Backpulver mit Kaugummi als Zugabe, und beide Male war das Geschenk gefragter als das eigentliche Produkt.',
  'Juicy Fruit, Spearmint, Wrigley: Die Marke steht seit über hundert Jahren für Kaugummi. Dabei wollte der Gründer ursprünglich etwas ganz anderes verkaufen.

## Seife, die keiner wollte

Laut Encyclopedia.com zog William Wrigley Jr. 1891 mit 29 Jahren nach Chicago, um dort für die Seifenfirma seines Vaters zu verkaufen. Laut EBSCO hatte er bei der Ankunft angeblich nur 32 Dollar in der Tasche. Das Problem: Die Händler hatten wenig Lust auf die Scheuerseife, an der sie kaum etwas verdienten.

Also setzte Wrigley auf Zugaben. Laut Encyclopedia.com kaufte er 65.000 billige rote Regenschirme und verschenkte sie zur Seife. Die Farbe lief im Regen aus, verkauft hat sich die Seife trotzdem. Sein Fazit soll gelautet haben: „Everybody likes something extra, for nothing.“ Also: Jeder mag etwas extra, umsonst.

## Das Geschenk gewinnt, zweimal

Als Nächstes legte er Backpulver als Gratisbeigabe dazu. Laut EBSCO merkte er schnell, dass das Backpulver beliebter war als die Seife. 1892 ließ er die Seife fallen und verkaufte nur noch Backpulver.

Dann wiederholte sich die Geschichte. Als neue Zugabe gab es Kaugummi, laut EBSCO zwei Päckchen pro Einkauf. Und wieder war das Geschenk gefragter als das Produkt. Wrigley zog die Konsequenz und stieg ganz auf Kaugummi um.

## Vom Werbegeschenk zur Marke

Seine ersten Kaugummis hießen laut EBSCO Lotta und Vassar. 1893 kam Juicy Fruit auf den Markt, kurz darauf Spearmint. Hergestellt wurden sie anfangs von einer Zulieferfirma, die Wrigley 1909 kaufte und mit seiner eigenen zusammenlegte.

> Bonusfakt: Laut Encyclopedia.com stiegen Wrigleys Umsätze bis 1910 von 170.000 Dollar auf mehr als 3 Millionen Dollar.

Eine der bekanntesten Kaugummimarken der Welt war also zuerst die Zugabe zur Zugabe.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wrigley-gum-freebie', 'de', 1, 'Kaugummiautomat für zu Hause', 'Kaugummiautomat Retro', 'Ein Retro-Automat für Kaugummikugeln, der auf dem Schreibtisch richtig nach Kiosk aussieht.'),
  ('wrigley-gum-freebie', 'de', 2, 'Buch über Werbegeschichte', 'Buch Geschichte der Werbung', 'Zeigt, wie sich Reklame von alten Plakaten bis heute verändert hat.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wrigley-gum-freebie', 'de', 1, 'EBSCO: William Wrigley, Jr.', 'https://www.ebsco.com/research-starters/history/william-wrigley-jr'),
  ('wrigley-gum-freebie', 'de', 2, 'Encyclopedia.com: Wm. Wrigley Jr. Company', 'https://www.encyclopedia.com/books/politics-and-business-magazines/wm-wrigley-jr-company');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wrigley-gum-freebie', 'en', 'wrigley-gum-baking-powder-freebie',
  'Wrigley''s chewing gum started out as a free gift with baking powder',
  'William Wrigley Jr. actually wanted to sell soap. Then his giveaways became more popular than his products, twice.',
  'William Wrigley Jr. first sold soap with baking powder as a free gift, then baking powder with chewing gum as a free gift, and both times the gift was more popular than the product.',
  'Juicy Fruit, Spearmint, Wrigley''s: the brand has meant chewing gum for more than a hundred years. But its founder originally wanted to sell something completely different.

## Soap nobody wanted

According to Encyclopedia.com, William Wrigley Jr. moved to Chicago in 1891, at 29, to sell soap for his father''s company. According to EBSCO, he reportedly had only 32 dollars in his pocket when he arrived. The problem: shopkeepers weren''t keen on the scouring soap, which barely earned them anything.

So Wrigley turned to giveaways. According to Encyclopedia.com, he bought 65,000 cheap red umbrellas and handed them out with the soap. The dye ran in the rain, but the soap sold anyway. His takeaway is said to have been: "Everybody likes something extra, for nothing."

## The gift wins, twice

Next, he offered baking powder as a free gift. According to EBSCO, he quickly found that the baking powder was more popular than the soap. In 1892, he dropped the soap and sold only baking powder.

Then history repeated itself. The new freebie was chewing gum, two packs per purchase according to EBSCO. And again, the gift was more popular than the product. Wrigley drew the obvious conclusion and switched entirely to gum.

## From freebie to brand

According to EBSCO, his first gums were called Lotta and Vassar. Juicy Fruit came out in 1893, with Spearmint soon after. At first they were made by a supplier, which Wrigley bought in 1909 and merged with his own company.

> Bonus fact: According to Encyclopedia.com, Wrigley''s sales rose from 170,000 dollars to more than 3 million dollars by 1910.

So one of the best-known gum brands in the world started out as the freebie that came with the freebie.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wrigley-gum-freebie', 'en', 1, 'Retro gumball machine', 'retro gumball machine', 'A vintage-style gumball dispenser that gives your desk a real corner-store look.'),
  ('wrigley-gum-freebie', 'en', 2, 'Book on the history of advertising', 'history of advertising book', 'Shows how ads changed from old posters to the present day.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wrigley-gum-freebie', 'en', 1, 'EBSCO: William Wrigley, Jr.', 'https://www.ebsco.com/research-starters/history/william-wrigley-jr'),
  ('wrigley-gum-freebie', 'en', 2, 'Encyclopedia.com: Wm. Wrigley Jr. Company', 'https://www.encyclopedia.com/books/politics-and-business-magazines/wm-wrigley-jr-company');
