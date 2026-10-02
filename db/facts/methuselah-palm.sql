-- WTFact-Fakt „Aus einem 2000 Jahre alten Kern wuchs eine Palme“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('methuselah-palm', '2026-09-10', 'survival', '🌴', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'methuselah-palm', 'de', 'dattelpalme-2000-jahre-alter-kern',
  'Aus einem 2000 Jahre alten Kern wuchs eine Palme',
  'Ein Dattelkern lag seit der Antike in einer Wüstenfestung. Dann hat ihn jemand in die Erde gesteckt.',
  'Aus einem rund 2000 Jahre alten Dattelkern aus der Festung Masada wuchs 2005 eine lebende Palme namens Methusalem.',
  'Stell dir vor, du findest im Keller ein Glas Marmelade aus der Römerzeit, und es ist noch gut. So ähnlich lief es in Israel mit einem Dattelkern. Nur dass daraus kein Frühstück wurde, sondern ein Baum.

## Ein Kern aus der Festung

In den 1960er-Jahren gruben Archäologen in Masada, einer antiken Festung über dem Toten Meer, Dattelkerne aus dem Schutt. Die Radiokarbondatierung ergab: **Die Kerne sind rund 2000 Jahre alt.** Sie stammen ungefähr aus der Zeit des Jüdischen Krieges im 1. Jahrhundert. Danach lagen sie über 40 Jahre lang im Lager.

Die Ärztin Sarah Sallon wollte wissen, ob noch Leben in ihnen steckt. Die Pflanzenexpertin Elaine Solowey vom Arava-Institut im Kibbuz Ketura versuchte es. Im März 2005 passierte, womit kaum jemand gerechnet hatte: **Einer der Kerne keimte.**

## Methusalem wird erwachsen

Den Keimling tauften sie Methusalem, nach der biblischen Figur, die für ihr extrem langes Leben bekannt ist. Nach 26 Monaten war die junge Palme schon rund 1,2 Meter hoch. 2011 zog sie aus dem Gewächshaus ins Freiland, und Jahre später maß sie **über drei Meter**.

Methusalem gehört zur Judäischen Dattel, einer Sorte, die in der Antike berühmt war und vor Jahrhunderten verschwand. Plötzlich stand ein lebendes Stück davon wieder in der Erde. Das Fachmagazin Science berichtete 2008 darüber, und die Palme landete sogar im Guinness-Buch der Rekorde.

## Ein Date mit Hannah

Kleiner Haken: Methusalem ist männlich, Datteln trägt er also nicht. Seine Pollen funktionieren aber. Solowey versuchte es deshalb mit weiteren uralten Kernen. Von 32 ausgewählten trieben 6 aus, darunter eine weibliche Palme namens Hannah.

Bestäubt von Methusalem und zwei weiteren Uralt-Palmen namens Adam und Jonah, trug Hannah 2021 **fast 700 Datteln**, nach 111 bei der allerersten Ernte. Laut den Forschenden schmecken sie halbtrocken mit einer Note von Honig und Karamell.

> Ganz vorne in der Rangliste der Uralt-Pflanzen liegt Methusalem trotzdem nicht: 2012 zogen russische Forschende eine arktische Pflanze aus rund 32.000 Jahre altem Material.

Eine Frucht, die seit der Antike niemand gegessen hatte, liegt also wieder auf dem Teller. Geduld ist manchmal einfach die beste Überlebensstrategie.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('methuselah-palm', 'de', 1, 'Anzuchtset für Palmen aus Samen', 'Palmen Anzuchtset Samen', 'Samen, Erde und Töpfchen in einer Box. Du siehst live, wie aus einem harten Kern ein Keimling wird.'),
  ('methuselah-palm', 'de', 2, 'Das geheime Leben der Bäume von Peter Wohlleben', 'Das geheime Leben der Bäume Wohlleben', 'Der Förster erzählt, wie Bäume kommunizieren und Krisen überstehen. Liest sich fast wie ein Roman.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('methuselah-palm', 'de', 1, 'Arava Institute for Environmental Studies: Ancient Date Palm', 'https://arava.org/arava-research-centers/arava-center-for-sustainable-agriculture/methuselah/'),
  ('methuselah-palm', 'de', 2, 'Arava Institute for Environmental Studies: Six new ancient date trees', 'https://arava.org/arava-research-centers/arava-center-for-sustainable-agriculture/methuselah/6-new-ancient-date-trees/'),
  ('methuselah-palm', 'de', 3, 'NBC News: Palm resurrected from 2,000-year-old seed', 'https://www.nbcnews.com/id/wbna25123015'),
  ('methuselah-palm', 'de', 4, 'Smithsonian Magazine: Tree Grown From 2,000-Year-Old Seed Has Reproduced', 'https://www.smithsonianmag.com/smart-news/tree-grown-2000-year-old-seed-has-reproduced-180954746/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'methuselah-palm', 'en', 'methuselah-2000-year-old-seed',
  'A 2000-year-old seed grew into a living palm tree',
  'A date seed sat in a desert fortress since ancient times. Then someone planted it.',
  'In 2005, a roughly 2000-year-old date seed from the fortress of Masada sprouted into a living palm named Methuselah.',
  'Imagine finding a jar of jam from Roman times in your basement, and it''s still good. That''s roughly what happened in Israel with a date seed. Except it didn''t become breakfast. It became a tree.

## A seed from a fortress

In the 1960s, archaeologists digging at Masada, an ancient fortress above the Dead Sea, pulled date seeds out of the rubble. Radiocarbon dating showed **the seeds were about 2000 years old**, from roughly the time of the Jewish revolt against Rome in the 1st century. Then they sat in storage for more than 40 years.

Physician Sarah Sallon wanted to know if any life was left in them. Plant expert Elaine Solowey of the Arava Institute at Kibbutz Ketura gave it a shot. In March 2005, the unlikely happened: **one of the seeds sprouted.**

## Methuselah grows up

They named the seedling Methuselah, after the biblical figure famous for living an absurdly long time. After 26 months it was already about 1.2 meters (4 feet) tall. In 2011 it moved from the greenhouse into the ground, and years later it stood **more than three meters tall**.

Methuselah belongs to the Judean date, a variety that was famous in ancient times and vanished centuries ago. Suddenly a living piece of it was back. The journal Science covered the story in 2008, and the palm even made it into Guinness World Records.

## A date with Hannah

One catch: Methuselah is male, so he doesn''t grow dates. His pollen works fine, though. So Solowey tried more ancient seeds. Out of 32 chosen, 6 sprouted, including a female palm named Hannah.

Pollinated by Methuselah and two other ancient palms named Adam and Jonah, Hannah produced **almost 700 dates** in 2021, up from 111 in her very first harvest. According to the researchers, they''re semi-dry with hints of honey and caramel.

> Methuselah still isn''t the record holder for ancient plants: in 2012, Russian scientists grew an Arctic plant from material about 32,000 years old.

So a fruit nobody had tasted since antiquity is back on the table. Sometimes patience really is the best survival strategy.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('methuselah-palm', 'en', 1, 'Palm tree seed starter kit', 'palm tree seed grow kit', 'Seeds, soil and little pots in one box. You get to watch a hard seed turn into a sprout.'),
  ('methuselah-palm', 'en', 2, 'The Hidden Life of Trees by Peter Wohlleben', 'The Hidden Life of Trees Peter Wohlleben', 'A forester explains how trees communicate and ride out hard times. Reads almost like a novel.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('methuselah-palm', 'en', 1, 'Arava Institute for Environmental Studies: Ancient Date Palm', 'https://arava.org/arava-research-centers/arava-center-for-sustainable-agriculture/methuselah/'),
  ('methuselah-palm', 'en', 2, 'Arava Institute for Environmental Studies: Six new ancient date trees', 'https://arava.org/arava-research-centers/arava-center-for-sustainable-agriculture/methuselah/6-new-ancient-date-trees/'),
  ('methuselah-palm', 'en', 3, 'NBC News: Palm resurrected from 2,000-year-old seed', 'https://www.nbcnews.com/id/wbna25123015'),
  ('methuselah-palm', 'en', 4, 'Smithsonian Magazine: Tree Grown From 2,000-Year-Old Seed Has Reproduced', 'https://www.smithsonianmag.com/smart-news/tree-grown-2000-year-old-seed-has-reproduced-180954746/');
