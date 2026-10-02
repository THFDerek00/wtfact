-- WTFact-Fakt „Der Saatgut-Tresor im ewigen Eis musste zum ersten Mal Samen herausgeben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('seed-vault', '2026-09-06', 'survival', '🌱', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'seed-vault', 'de', 'saatgut-tresor-spitzbergen-aleppo',
  'Der Saatgut-Tresor im ewigen Eis musste zum ersten Mal Samen herausgeben',
  'Gebaut für den Notfall, tief in einem arktischen Berg. 2015 kam der Notfall tatsächlich, und er kam aus Syrien.',
  'Der Saatgut-Tresor auf Spitzbergen gab 2015 zum ersten Mal Samen heraus: Eine Saatgutbank aus Aleppo holte ihre Sicherheitskopien zurück und baute ihre Sammlung neu auf.',
  'Auf Spitzbergen, weit nördlich des norwegischen Festlands, führt ein schmaler Betonkeil in einen Berg. Dahinter liegt eine der ungewöhnlichsten Sicherheitskopien der Welt: Samen von Nutzpflanzen aus aller Welt. Der Tresor wurde am 26. Februar 2008 eröffnet und ist für den Fall gedacht, dass irgendwo eine Saatgutbank verloren geht.

## Ein Backup im Fels

Die eigentlichen Lagerräume liegen **mehr als 100 Meter tief im Berg**, unter einer Felsschicht von 40 bis 60 Metern. Saatgutbanken schicken Duplikate ihrer Sammlungen hierher, oft rund 500 Samen pro Sorte. Platz ist für bis zu 4,5 Millionen Sorten.

Lange galt das als reine Vorsorge. Dann wurde es ernst.

## Der erste Notfall

Das internationale Agrarforschungszentrum ICARDA hatte seine große Saatgutbank in Aleppo. Zwischen 2008 und 2014 schickte es **116.484 Saatgutproben** als Kopie nach Spitzbergen, vor allem Weizen, Gerste, Linsen und Futterpflanzen aus trockenen Regionen. Als der Krieg in Syrien eskalierte, konnte die Genbank in Aleppo ab 2015 nicht mehr arbeiten.

Also passierte, wofür der Tresor gebaut wurde: Im September 2015 bat ICARDA um die erste Entnahme in der Geschichte des Tresors. **38.073 Proben** gingen nach Libanon und Marokko.

> Die Kisten im Tresor gehören weiterhin den Saatgutbanken, die sie eingelagert haben.

## Vom Eis zurück aufs Feld

In Terbol im Libanon und in Rabat in Marokko wurden die Samen ausgesät und vermehrt. Die neue Ernte von 2016 diente dann doppelt: als Grundstock für die wieder aufgebaute Sammlung und als frische Kopie für Spitzbergen. Ab 2017 kamen die ersten Proben zurück in den Berg, bis 2019 insgesamt **42.729**. Weitere Entnahmen folgten 2017 und 2019.

Der Tresor hat damit gezeigt, dass er mehr ist als ein Symbol. Eine Sammlung, die in einem Kriegsgebiet verloren schien, lebt weiter, weil irgendwo im arktischen Fels eine Kopie lag.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('seed-vault', 'de', 1, 'Bildband Spitzbergen', 'Bildband Spitzbergen Arktis', 'Gletscher, Eisbären und Polarlicht: so sieht die Gegend rund um den Tresor aus.'),
  ('seed-vault', 'de', 2, 'Sachbuch über Saatgut', 'Sachbuch Saatgut Geschichte Pflanzen', 'Erzählt, warum ein kleines Samenkorn so viel Geschichte und Zukunft in sich trägt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('seed-vault', 'de', 1, 'Svalbard Global Seed Vault: About', 'https://www.seedvault.no/about/'),
  ('seed-vault', 'de', 2, 'Svalbard Global Seed Vault: ICARDA seeds safe back in Lebanon and Morocco', 'https://www.seedvault.no/2017/10/27/icarda-seeds-safe-back-in-lebanon-and-morocco/'),
  ('seed-vault', 'de', 3, 'Svalbard Global Seed Vault: Withdrawal of ICARDA Aleppo seeds accomplished', 'https://www.seedvault.no/2019/09/11/withdrawal-of-icarda-aleppo-seeds-accomplished/'),
  ('seed-vault', 'de', 4, 'Crop Trust: Syrian War Causes The Global Doomsday Seed Vault''s First Withdrawal', 'https://www.croptrust.org/news-events/in-the-media/article/syrian-war-causes-the-global-doomsday-seed-vaults-first-withdrawal/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'seed-vault', 'en', 'seed-vault-first-withdrawal-aleppo',
  'The seed vault in the Arctic had to hand back seeds for the first time',
  'Built for emergencies, deep inside an Arctic mountain. In 2015 the emergency actually came, and it came from Syria.',
  'The Svalbard Global Seed Vault made its first ever withdrawal in 2015, when a seed bank from Aleppo took back its backup copies to rebuild its collection.',
  'On Svalbard, far north of mainland Norway, a narrow concrete wedge sticks out of a mountain. Behind it sits one of the strangest backups on the planet: seeds of crops from all over the world. The vault opened on 26 February 2008, and it exists for the day a seed bank somewhere gets lost.

## A backup in the rock

The storage rooms sit **more than 100 metres inside the mountain**, under 40 to 60 metres of rock. Seed banks send duplicates of their collections here, often around 500 seeds per variety. There is room for up to 4.5 million varieties.

For years that sounded like pure insurance. Then it got real.

## The first emergency

The international agricultural research centre ICARDA ran a large seed bank in Aleppo. Between 2008 and 2014 it sent **116,484 seed samples** to Svalbard as copies, mostly wheat, barley, lentils and forage plants from dry regions. When the war in Syria escalated, the gene bank in Aleppo could no longer operate from 2015 on.

So the vault did what it was built for. In September 2015 ICARDA requested the first withdrawal in the vault''s history, and **38,073 samples** went to Lebanon and Morocco.

> The boxes in the vault still belong to the seed banks that put them there.

## From the ice back to the field

In Terbol, Lebanon, and Rabat, Morocco, the seeds were planted and multiplied. The new harvest from 2016 did double duty: it rebuilt the collection and became a fresh copy for Svalbard. From 2017 on, samples started going back into the mountain, **42,729** of them by 2019. Further withdrawals followed in 2017 and 2019.

That proved the vault is more than a symbol. A collection that looked lost in a war zone lives on, because a copy was waiting in Arctic rock.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('seed-vault', 'en', 1, 'Svalbard photo book', 'Svalbard photo book Arctic', 'Glaciers, polar bears and northern lights: this is what the area around the vault looks like.'),
  ('seed-vault', 'en', 2, 'Book about the history of seeds', 'The Triumph of Seeds Thor Hanson', 'A biologist tells how tiny seeds shaped plants, animals and human history.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('seed-vault', 'en', 1, 'Svalbard Global Seed Vault: About', 'https://www.seedvault.no/about/'),
  ('seed-vault', 'en', 2, 'Svalbard Global Seed Vault: ICARDA seeds safe back in Lebanon and Morocco', 'https://www.seedvault.no/2017/10/27/icarda-seeds-safe-back-in-lebanon-and-morocco/'),
  ('seed-vault', 'en', 3, 'Svalbard Global Seed Vault: Withdrawal of ICARDA Aleppo seeds accomplished', 'https://www.seedvault.no/2019/09/11/withdrawal-of-icarda-aleppo-seeds-accomplished/'),
  ('seed-vault', 'en', 4, 'Crop Trust: Syrian War Causes The Global Doomsday Seed Vault''s First Withdrawal', 'https://www.croptrust.org/news-events/in-the-media/article/syrian-war-causes-the-global-doomsday-seed-vaults-first-withdrawal/');
