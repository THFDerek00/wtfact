-- WTFact-Fakt „Peter der Große ließ Russen für ihren Bart zahlen, mit Bartmarke als Quittung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('peter-great-beard-tax', '2026-10-26T16:00:00+01:00', 'history', '🧔', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'peter-great-beard-tax', 'de', 'peter-der-grosse-bartsteuer',
  'Peter der Große ließ Russen für ihren Bart zahlen, mit Bartmarke als Quittung',
  'Nach einer Reise durch Westeuropa machte der Zar aus Gesichtshaar etwas, für das man eine Marke brauchte.',
  'Ab 1698 verlangte Zar Peter der Große von russischen Männern eine Steuer fürs Barttragen, und wer zahlte, trug eine Bartmarke als Beweis bei sich.',
  'Stell dir vor, du bräuchtest eine Genehmigung für dein Gesicht. Im Russland von Peter dem Großen war das Realität: Wer seinen Bart behalten wollte, musste Steuern zahlen und eine Marke als Beweis dabeihaben.

## Ein Zar kommt von der Reise zurück

1697 und 1698 bereiste Peter I. mit der sogenannten Großen Gesandtschaft Westeuropa. Laut Smithsonian Magazine war er als „Sergeant Pjotr Michailow“ unterwegs, arbeitete vier Monate auf einer Werft der Niederländischen Ostindien-Kompanie und danach auf der Werft der Royal Navy in Deptford. Er kam mit großen Plänen zurück: Russland sollte modern werden. Bärte, die laut British Museum im übrigen Europa damals weitgehend aus der Mode waren, standen weit oben auf seiner Liste.

Bei einem Empfang nach seiner Rückkehr soll Peter ein Barbiermesser gezückt und seinen entsetzten Gästen eigenhändig die Bärte abrasiert haben. History Skills datiert die Ankündigung der Steuer auf September 1698. Viele Russen trugen Bart auch aus religiösen Gründen, und die orthodoxe Kirche hielt ein bartloses Gesicht für Gotteslästerung, schreibt Smithsonian.

## Zahlen oder rasieren

Wie viel du zahlen musstest, hing davon ab, wer du warst. Laut Smithsonian zahlten Adlige und Kaufleute bis zu 100 Rubel im Jahr, einfache Leute dagegen schon mal nur 1 Kopeke. Priester und Diakone waren ausgenommen, so das British Museum. Wachen an den Stadttoren kontrollierten Männer mit Bart, und wer keinen Zahlungsbeweis hatte, riskierte, dass ihm der Bart abrasiert wurde, berichtet History Skills.

Der Beweis war eine Bartmarke. Das British Museum besitzt eine aus Kupfer von 1705, mit Schnurrbart und Bart, laut Katalog außerdem mit Doppeladler. Ihre kyrillische Inschrift bedeutet übersetzt „Geld erhalten“. Laut Museum gab es die Marken erst ab 1705, als weitere Gesetze erschienen, obwohl die Idee schon auf den ersten Erlass zurückging.

> Bonusfakt: Eine Marke in der Eremitage in Sankt Petersburg bringt die offizielle Sicht auf den Punkt, schreibt History Skills: „Der Bart ist eine überflüssige Last.“

Nicht alle machten mit. Manche Männer trugen angeblich falsche Bärte oder rasierten sich in der Stadt und ließen den Bart draußen wieder wachsen. Nach Peters Tod 1725 verlor die Steuer an Bedeutung, offiziell abgeschafft hat sie Katharina die Große 1772. Auf dem Papier blieb ein russischer Bart also mehr als 70 Jahre lang steuerpflichtig.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('peter-great-beard-tax', 'de', 1, 'Biografie über Peter den Großen', 'Peter der Große Biografie Buch', 'Erzählt die ganze Geschichte des Zaren, der Russland von der Werft bis zur Rasur umgebaut hat.'),
  ('peter-great-beard-tax', 'de', 2, 'Bartpflege-Set', 'Bartpflege Set Öl Balsam Kamm', 'Öl, Balsam und Kamm, damit der Bart in Form bleibt, ganz ohne Steuer.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('peter-great-beard-tax', 'de', 1, 'Smithsonian Magazine: Why Peter the Great Established a Beard Tax', 'https://www.smithsonianmag.com/smart-news/why-tsar-peter-great-established-beard-tax-180964693/'),
  ('peter-great-beard-tax', 'de', 2, 'British Museum: Collections Online', 'https://www.britishmuseum.org/collection/object/C_C-3702'),
  ('peter-great-beard-tax', 'de', 3, 'History Skills: Why Tsar Peter the Great declared war on facial hair', 'https://historyskills.com/classroom/modern-history/peter-the-great-beard-tax'),
  ('peter-great-beard-tax', 'de', 4, 'Wikipedia: Beard tax', 'https://en.wikipedia.org/wiki/Beard_tax');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'peter-great-beard-tax', 'en', 'peter-the-great-beard-tax',
  'Peter the Great made Russian men pay to keep their beards, and handed out tokens as receipts',
  'After a trip to Western Europe, the tsar turned facial hair into something you needed a token for.',
  'From 1698, Tsar Peter the Great charged Russian men a tax for wearing a beard, and those who paid carried a beard token as proof.',
  'Imagine needing a permit for your face. In Russia under Peter the Great, that was real: men who wanted to keep their beards had to pay a tax and carry a token as proof.

## A tsar back from his trip

In 1697 and 1698, Peter I toured Western Europe with the so-called Grand Embassy. According to Smithsonian Magazine, he travelled as "Sergeant Pyotr Mikhaylov", spent four months at a Dutch East India Company shipyard and then worked at the Royal Navy''s dockyard in Deptford. He came home with big plans to modernise Russia. Beards, by then largely out of fashion elsewhere in Europe according to the British Museum, were high on his list.

At a reception after his return, Peter is said to have pulled out a barber''s razor and shaved his shocked guests himself. History Skills dates the announcement of the tax to September 1698. Many Russians wore beards partly for religious reasons, and the Orthodox Church considered going beardless blasphemous, Smithsonian writes.

## Pay or shave

How much you paid depended on who you were. According to Smithsonian, nobles and merchants could pay up to 100 rubles a year, while commoners got off with as little as 1 kopek. Priests and deacons were exempt, the British Museum notes. Guards at the city gates checked bearded men, and anyone without proof of payment risked having his beard shaved off, History Skills reports.

The proof was a beard token. The British Museum holds a copper one from 1705, showing a moustache and beard, and the museum''s catalogue also lists a double-headed eagle. Its Cyrillic inscription translates as "Money Taken". The museum explains that the tokens only appeared in 1705, when further laws were published, even though the idea went back to the first decree.

> Bonus fact: A token in the Hermitage Museum in St. Petersburg spells out the official view, History Skills writes: "The beard is a superfluous burden."

Not everyone played along. Some men reportedly wore fake beards or shaved in town and grew them back outside the city. The tax faded after Peter''s death in 1725, and Catherine the Great formally repealed it in 1772. On paper, then, a Russian beard stayed taxable for more than 70 years.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('peter-great-beard-tax', 'en', 1, 'Biography of Peter the Great', 'Peter the Great biography book', 'Tells the full story of the tsar who rebuilt Russia from shipyards to shaving.'),
  ('peter-great-beard-tax', 'en', 2, 'Beard care kit', 'beard care kit oil balm comb', 'Oil, balm and comb for keeping a beard in shape, no tax required.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('peter-great-beard-tax', 'en', 1, 'Smithsonian Magazine: Why Peter the Great Established a Beard Tax', 'https://www.smithsonianmag.com/smart-news/why-tsar-peter-great-established-beard-tax-180964693/'),
  ('peter-great-beard-tax', 'en', 2, 'British Museum: Collections Online', 'https://www.britishmuseum.org/collection/object/C_C-3702'),
  ('peter-great-beard-tax', 'en', 3, 'History Skills: Why Tsar Peter the Great declared war on facial hair', 'https://historyskills.com/classroom/modern-history/peter-the-great-beard-tax'),
  ('peter-great-beard-tax', 'en', 4, 'Wikipedia: Beard tax', 'https://en.wikipedia.org/wiki/Beard_tax');
