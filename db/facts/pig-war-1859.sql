-- WTFact-Fakt „1859 standen sich die USA und Großbritannien wegen eines erschossenen Schweins gegenüber“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('pig-war-1859', '2026-10-16T12:00:00+02:00', 'history', '🐖', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pig-war-1859', 'de', 'schweinekrieg-san-juan-island',
  '1859 standen sich die USA und Großbritannien wegen eines erschossenen Schweins gegenüber',
  'Ein totes Schwein in einem Garten führte zu Kriegsschiffen, Kanonen und einem Patt, das 12 Jahre dauerte.',
  'Am 15. Juni 1859 erschoss ein amerikanischer Siedler auf San Juan Island ein Schwein aus britischem Besitz, und der Streit wuchs sich zu einer militärischen Konfrontation zwischen den USA und Großbritannien aus, bei der laut National Park Service das einzige Opfer das Schwein war.',
  'Manche Kriege beginnen mit einem Attentat. Dieser begann in einem Garten. Am 15. Juni 1859 fand der amerikanische Siedler Lyman Cutlar auf San Juan Island ein Schwein, das in seinem Garten wühlte, und erschoss es.

## Wem gehört die Insel?

Das Schwein gehörte der Hudson''s Bay Company, einer britischen Handelsgesellschaft, die auf der Insel eine Schaffarm betrieb. Das eigentliche Problem war älter als das Schwein. Ein Vertrag von 1846 hatte die Grenze zwischen den USA und britischem Gebiet auf den 49. Breitengrad gelegt und sie durch einen Kanal geführt. Nur gab es dort zwei Meeresstraßen, Haro und Rosario, und beide Länder beanspruchten die San-Juan-Inseln dazwischen.

Laut The Canadian Encyclopedia bot Cutlar 10 Dollar für das Schwein. Charles Griffin, ein britischer Angestellter der Gesellschaft, wollte mehr und meldete ihn. Die britischen Behörden drohten, Cutlar zu verhaften, und die Amerikaner baten ihre Armee um Schutz.

## Vom Schwein zu Kriegsschiffen

Dann ging es schnell. Captain George Pickett landete am 27. Juli 1859 mit 64 Soldaten. Die Briten schickten Kriegsschiffe. Am 31. August lagerten laut National Park Service 461 Amerikaner mit 14 Feldkanonen und zusätzlich acht Schiffsgeschützen auf der Insel. Die Briten hatten insgesamt 52 Geschütze.

Dann kamen die Erwachsenen. US-General Winfield Scott traf im Oktober 1859 ein und verhandelte mit dem britischen Gouverneur James Douglas. Beide Seiten zogen den Großteil ihrer Truppen ab und einigten sich darauf, die Insel zu teilen. Diese gemeinsame militärische Besetzung dauerte 12 Jahre.

1871 landete die Frage bei Kaiser Wilhelm I., der sie an eine dreiköpfige Kommission weitergab. Nach fast einem Jahr Sitzungen in Genf entschied sie am 21. Oktober 1872, dass die Inseln zu den USA gehören.

> Bonusfakt: Der britische Konteradmiral Lambert Baynes weigerte sich, die Lage anzuheizen. Er wolle nicht „zwei große Nationen wegen eines Streits um ein Schwein in einen Krieg verwickeln“.

In der ganzen Affäre starb kein Mensch. Das Schwein war das einzige Opfer und hat trotzdem einem Grenzstreit zweier Weltmächte seinen Namen gegeben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pig-war-1859', 'de', 1, 'Geschichtsbuch über den Schweinekrieg von 1859', 'Pig War 1859 San Juan Island Buch', 'Erzählt die ganze Geschichte der Konfrontation mit Karten und Details aus der Zeit.'),
  ('pig-war-1859', 'de', 2, 'Historischer Kartendruck der San-Juan-Inseln', 'San Juan Islands historische Karte Druck', 'Ein dekorativer Druck der Inseln, um die sich alles drehte.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pig-war-1859', 'de', 1, 'U.S. National Park Service: The Pig War - San Juan Island National Historical Park', 'https://www.nps.gov/sajh/learn/historyculture/the-pig-war.htm'),
  ('pig-war-1859', 'de', 2, 'The Canadian Encyclopedia: The Pig War', 'https://www.thecanadianencyclopedia.ca/en/article/pig-war');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pig-war-1859', 'en', 'pig-war-san-juan-island',
  'In 1859, the US and Britain faced off over a shot pig',
  'One dead pig in a garden led to warships, cannons and a standoff that lasted 12 years.',
  'On June 15, 1859, an American settler on San Juan Island shot a British-owned pig, and the dispute escalated into a military standoff between the US and Britain in which, according to the National Park Service, the only casualty was the pig.',
  'Some wars start with an assassination. This one started in a garden. On June 15, 1859, American settler Lyman Cutlar found a pig rooting in his garden on San Juan Island and shot it.

## Whose island is it anyway?

The pig belonged to the Hudson''s Bay Company, a British trading company that ran a sheep farm on the island. The real problem was older than the pig. An 1846 treaty had set the border between the US and British territory at the 49th parallel and ran it through a channel. But there were actually two straits, Haro and Rosario, and both countries claimed the San Juan Islands sitting between them.

According to The Canadian Encyclopedia, Cutlar offered 10 dollars for the pig. Charles Griffin, a British employee of the company, wanted more and reported him. British authorities threatened to arrest Cutlar, and the Americans asked their army for protection.

## From pig to warships

Things escalated fast. Captain George Pickett landed with 64 soldiers on July 27, 1859. The British sent warships. By August 31, according to the National Park Service, 461 Americans were camped on the island with 14 field cannons, plus eight naval guns. The British had 52 guns in total.

Then the grown-ups showed up. US General Winfield Scott arrived in October 1859 and negotiated with British Governor James Douglas. Both sides pulled back most of their troops and agreed to share the island. That joint military occupation lasted 12 years.

In 1871, the question went to German Kaiser Wilhelm I, who handed it to a three-man commission. After nearly a year of meetings in Geneva, it ruled on October 21, 1872 that the islands belonged to the United States.

> Bonus fact: British Rear Admiral Lambert Baynes refused to escalate. He said he would not "involve two great nations in a war over a squabble about a pig."

No human died in the whole affair. The pig was the only casualty, and it gave its name to a border dispute between two world powers.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pig-war-1859', 'en', 1, 'History book on the Pig War of 1859', 'Pig War 1859 San Juan Island book', 'Tells the full story of the standoff with maps and period details.'),
  ('pig-war-1859', 'en', 2, 'Vintage map print of the San Juan Islands', 'San Juan Islands vintage map print', 'A decorative print of the islands at the center of the dispute.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pig-war-1859', 'en', 1, 'U.S. National Park Service: The Pig War - San Juan Island National Historical Park', 'https://www.nps.gov/sajh/learn/historyculture/the-pig-war.htm'),
  ('pig-war-1859', 'en', 2, 'The Canadian Encyclopedia: The Pig War', 'https://www.thecanadianencyclopedia.ca/en/article/pig-war');
