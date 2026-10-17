-- WTFact-Fakt „Kleenex kam 1924 als Abschminktuch auf den Markt, nicht als Taschentuch für die Nase“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('kleenex-cold-cream-remover', '2026-10-19T16:00:00+02:00', 'brands', '🤧', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kleenex-cold-cream-remover', 'de', 'kleenex-war-erst-ein-abschminktuch',
  'Kleenex kam 1924 als Abschminktuch auf den Markt, nicht als Taschentuch für die Nase',
  'Das Tuch, zu dem alle bei Schnupfen greifen, begann vor dem Badezimmerspiegel, und sein Material war für Gasmasken gedacht.',
  'Als Kleenex am 12. Juni 1924 auf den Markt kam, wurde es zum Entfernen von Cold Cream beworben, und erst als Kundinnen und Kunden schrieben, dass sie es bei Schnupfen nutzen, wurde daraus das Taschentuch zum Wegwerfen.',
  'Heute ist Kleenex im Englischen quasi ein anderes Wort für Taschentuch, so wie Tempo bei uns. Dabei war Naseputzen überhaupt nicht der Plan.

## Reste aus dem Krieg

Die Geschichte beginnt mit einem Material namens Cellucotton. 1914 stellten Forscher gekreppte Zellstoffwatte her, ein weiches, tuchartiges Material, aus dem Kimberly-Clark Produkte machte. Im Ersten Weltkrieg, als chirurgische Watte knapp war, wurde Cellucotton zum Versorgen von Wunden genutzt. Laut der Marke Kleenex entwickelte Kimberly-Clark im Krieg außerdem ein Kreppapier, das als Filter in Gasmasken diente.

Nach dem Krieg suchte die Firma nach neuen Verwendungen. Feldkrankenschwestern hatten gemerkt, dass sich das Material gut als Einwegbinde eignet, also brachte Kimberly-Clark 1920 Kotex auf den Markt, eine Monatsbinde. Vier Jahre später kam die nächste Idee.

## Ein Tuch für die Gesichtscreme

Kleenex feiert den 12. Juni 1924 als Geburtstag. Laut der Marke selbst wurde es zuerst als „wunderbare neue Art, Cold Cream zu entfernen“ beworben. Es sollte die Handtücher ersetzen, mit denen man sich Cold Cream aus dem Gesicht wischte. Sogar die Markenanmeldung von 1924 beschrieb die Ware als „saugfähige Tücher zum Entfernen von Cold Cream“. Das „Kleen“ im Namen ist eine verspielte Schreibweise von „clean“ (sauber), das „ex“ verbindet es mit Kotex.

Aber die Kundschaft hatte eigene Ideen. 1927 brachte Kimberly-Clark die Idee „saugfähiger Taschentücher“ ins Spiel. Eine Umfrage zeigte dann, dass die Leute Kleenex lieber als Wegwerf-Taschentuch nutzten, und in den 1930er-Jahren trafen massenhaft Briefe von Kundinnen und Kunden ein, die es bei Schnupfen empfahlen. Die Firma schwenkte um und warb mit „Die Taschentücher, die man wegwerfen kann“. Landesweite Anzeigen für die neue Verwendung starteten 1930, und der Umsatz verdoppelte sich innerhalb eines Jahres.

> Bonusfakt: Die Abschmink-Wurzeln sind nie ganz verschwunden. Laut Kleenex sollen Bühnenschauspielerinnen und -schauspieler in den 1950er-Jahren die Tücher immer noch jeden Abend benutzt haben, um Cold Cream und Make-up zu entfernen.

Die Marke hat also nicht geändert, was sie verkauft. Die Kundschaft hat einfach geändert, wofür es da ist.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kleenex-cold-cream-remover', 'de', 1, 'Dekorative Taschentuchbox', 'Kosmetiktücher Box Holz dekorativ', 'Macht aus der schlichten Tücherbox ein hübsches Deko-Stück für Schreibtisch oder Nachttisch.'),
  ('kleenex-cold-cream-remover', 'de', 2, 'Buch über die Geschichte von Alltagserfindungen', 'Buch Geschichte Alltagserfindungen', 'Sammelt die Entstehungsgeschichten ganz gewöhnlicher Dinge, die du jeden Tag benutzt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kleenex-cold-cream-remover', 'de', 1, 'Kleenex: History | Kleenex® US', 'https://www.kleenex.com/en-us/about-us/our-history'),
  ('kleenex-cold-cream-remover', 'de', 2, 'Funding Universe: Kimberly-Clark Corporation History', 'https://www.fundinguniverse.com/company-histories/kimberly-clark-corporation-history/'),
  ('kleenex-cold-cream-remover', 'de', 3, 'Wikipedia: Kleenex', 'https://en.wikipedia.org/wiki/Kleenex');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kleenex-cold-cream-remover', 'en', 'kleenex-started-as-cold-cream-remover',
  'Kleenex launched in 1924 as a makeup remover, not as a tissue for your nose',
  'The tissue everybody grabs for a cold started out in the bathroom mirror routine, and its material was meant for gas masks.',
  'When Kleenex launched on June 12, 1924, it was advertised as a way to remove cold cream, and only after customers wrote in about using it for colds did it become the handkerchief you can throw away.',
  'Today Kleenex is basically a synonym for tissue. But blowing your nose wasn''t the plan at all.

## Leftovers from the war

The story starts with a material called Cellucotton. In 1914, researchers produced creped cellulose wadding, a soft tissue-like material that Kimberly-Clark turned into products. During World War I, when surgical cotton was scarce, Cellucotton was used to treat wounds. According to the Kleenex brand, Kimberly-Clark also developed a crepe paper during the war that served as a filter in gas masks.

After the war, the company went looking for new uses. Field nurses had found that the material worked well as a disposable pad, so in 1920 Kimberly-Clark launched Kotex, a menstrual pad. Four years later came the next idea.

## A tissue for your face cream

Kleenex celebrates June 12, 1924, as its birthday. Its first advertised use, according to the brand itself, was as a "marvelous new way to remove cold cream." It was meant to replace the face towels people used to wipe off cold cream. Even the 1924 trademark application described the goods as "absorbent pads or sheets for removing cold cream." The "Kleen" in the name is a playful spelling of "clean," and the "ex" links it to Kotex.

But customers had their own ideas. In 1927, Kimberly-Clark floated the idea of "absorbent kerchiefs." A survey then showed that people preferred to use Kleenex as a disposable handkerchief, and in the 1930s letters flooded in from customers who recommended it for colds. The company switched gears and adopted the line "The handkerchiefs you can throw away." Nationwide ads for the new use started in 1930, and sales doubled within a year.

> Bonus fact: The makeup roots never fully disappeared. According to Kleenex, stage actors and actresses in the 1950s reportedly still used the tissues every night to take off cold cream and cosmetics.

So the brand didn''t change what it sold. Its customers simply changed what it was for.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kleenex-cold-cream-remover', 'en', 1, 'Decorative tissue box cover', 'decorative tissue box cover', 'Turns the plain tissue box into a nice piece of decor for desk or nightstand.'),
  ('kleenex-cold-cream-remover', 'en', 2, 'Book on the history of everyday inventions', 'history of everyday inventions book', 'Collects origin stories of ordinary objects you use every day.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kleenex-cold-cream-remover', 'en', 1, 'Kleenex: History | Kleenex® US', 'https://www.kleenex.com/en-us/about-us/our-history'),
  ('kleenex-cold-cream-remover', 'en', 2, 'Funding Universe: Kimberly-Clark Corporation History', 'https://www.fundinguniverse.com/company-histories/kimberly-clark-corporation-history/'),
  ('kleenex-cold-cream-remover', 'en', 3, 'Wikipedia: Kleenex', 'https://en.wikipedia.org/wiki/Kleenex');
