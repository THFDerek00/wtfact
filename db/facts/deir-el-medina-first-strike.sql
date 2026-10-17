-- WTFact-Fakt „Den ersten dokumentierten Streik der Geschichte machten die Grabbauer des Pharaos“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('deir-el-medina-first-strike', '2026-10-21T16:00:00+02:00', 'history', '🪧', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'deir-el-medina-first-strike', 'de', 'erster-dokumentierter-streik-altes-aegypten',
  'Den ersten dokumentierten Streik der Geschichte machten die Grabbauer des Pharaos',
  'Vor über 3.000 Jahren legten die Arbeiter, die Königsgräber bauten, ihr Werkzeug nieder und riefen: „Wir haben Hunger!“',
  'Im 29. Regierungsjahr von Ramses III. legten die Grabbauer von Deir el-Medina wegen fehlender Getreiderationen die Arbeit nieder, und ein Schreiber hielt fest, was das Museo Egizio in Turin den ersten dokumentierten Arbeiterstreik der Geschichte nennt.',
  'Streiks wirken wie etwas Modernes: Gewerkschaften, Streikposten, Protestschilder. Doch einer der ältesten bekannten Streiks fand im alten Ägypten statt, und die Beteiligten bauten nicht irgendwas. Sie bauten die Gräber des Pharaos.

## Kein Getreide, keine Arbeit

Die Arbeiter lebten mit ihren Familien in Deir el-Medina, einem Dorf nahe dem Tal der Könige in West-Theben. Ihr Job: die Königsgräber ausheben und ausschmücken. Ein großer Teil ihres Lohns kam als Getreideration.

Im 29. Regierungsjahr von Ramses III., im 12. Jahrhundert v. Chr., blieben diese Rationen aus. Laut Egypt Museum warteten die Arbeiter 18 Tage über ihren Zahltag hinaus und hatten dann genug vom Warten. Sie legten die Arbeit nieder und versammelten sich hinter dem Totentempel von Thutmosis III. Als sie am Kontrollposten vorbeikamen, riefen sie: „Wir haben Hunger!“

Beamte versuchten, sie zurück an die Arbeit zu bringen. Vergeblich. Der Protest dauerte mehrere Tage und zog weiter zum Tempel von Ramses II. Schließlich wurde das geschuldete Getreide gezahlt, doch ein paar Tage später legte die Truppe erneut die Arbeit nieder. Diesmal erklärten sie, sie wollten ihre Beschwerden direkt dem Pharao vortragen. „Wir sind hier wegen des Hungers und des Durstes“, sagten sie.

## Ein Streik mit Protokoll

Das alles wissen wir, weil ein Schreiber namens Amennacht es aufschrieb. Sein Bericht, heute Streikpapyrus genannt, liegt im Museo Egizio in Turin, und das Museum bezeichnet ihn als ersten dokumentierten Arbeiterstreik der Geschichte.

Der Papyrus nennt sogar Namen. Laut Papyrus Stories weigerten sich zwei Arbeiter namens Kenena und Hay rundheraus zurückzukehren: „Wir kehren nicht zurück, sagt das euren Vorgesetzten!“ Gelöst war das Problem damit nicht. Als wieder Getreide kam, schickte der Wesir einmal nur die Hälfte, weil die Kornspeicher fast leer waren.

> Bonusfakt: Mit Ramses III. hörten die Arbeitsniederlegungen nicht auf. Laut Papyrus Stories gab es sie während der gesamten restlichen 20. Dynastie, unter Ramses IX. bis XI. sogar immer häufiger.

Die Pyramiden bekommen die ganze Aufmerksamkeit, doch die Erbauer der Königsgräber haben etwas Selteneres hinterlassen: den Beweis, dass sie wussten, was ihre Arbeit wert war.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('deir-el-medina-first-strike', 'de', 1, 'Illustriertes Buch über das alte Ägypten', 'Altes Ägypten Buch illustriert', 'Eine Bilderreise durch Pharaonen, Tempel und den Alltag am Nil.'),
  ('deir-el-medina-first-strike', 'de', 2, 'Hieroglyphen-Stempelset', 'Hieroglyphen Stempel Set', 'Damit druckst du eigene Botschaften in ägyptischen Zeichen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('deir-el-medina-first-strike', 'de', 1, 'Museo Egizio: Highlights: Turin Strike Papyrus', 'https://collezionepapiri.museoegizio.it/en-GB/section/Papyrus-Collection/History-and-content/Highlights-Turin-Strike-Papyrus/'),
  ('deir-el-medina-first-strike', 'de', 2, 'Museo Egizio: Strike Papyrus', 'https://collezioni.museoegizio.it/en-GB/material/Cat_1880'),
  ('deir-el-medina-first-strike', 'de', 3, 'Papyrus Stories: The First Recorded Strike in History', 'https://papyrus-stories.com/2022/03/15/the-first-recorded-strike-in-history/'),
  ('deir-el-medina-first-strike', 'de', 4, 'Egypt Museum: Workers strike at Deir el-Medina', 'https://egypt-museum.com/workers-strike-at-deir-el-medina/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'deir-el-medina-first-strike', 'en', 'first-documented-strike-ancient-egypt',
  'The first documented strike in history was staged by pharaoh''s tomb builders',
  'Over 3,000 years ago, the workers who built royal tombs put down their tools and shouted: ‘We are hungry!’',
  'In the 29th year of Ramesses III''s reign, the tomb builders of Deir el-Medina stopped work over missing grain rations, and a scribe recorded it on what Turin''s Museo Egizio calls the first documented labour strike in history.',
  'Strikes feel like a modern thing: unions, picket lines, protest signs. But one of the oldest known strikes happened in ancient Egypt, and the workers involved weren''t building just anything. They were building the pharaoh''s tombs.

## No grain, no work

The workers lived with their families in Deir el-Medina, a village near the Valley of the Kings in West Thebes. Their job was to dig and decorate the royal tombs, and a big part of their pay came as grain rations.

In the 29th year of Ramesses III''s reign, in the 12th century BC, those rations didn''t arrive. According to Egypt Museum, the workers waited 18 days past their payday and then decided they were done waiting. They stopped work and gathered behind the funerary temple of Thutmose III. As they passed the control post, they shouted: ‘We are hungry!’

Officials tried to talk them back to work. It didn''t work. The protest lasted several days and moved on to the temple of Ramesses II. Eventually the grain they were owed was paid, but a few days later the crew walked out again. This time they told the authorities they wanted to take their complaints straight to the pharaoh. ‘We are here because of the hunger and thirst,’ they said.

## A strike with paperwork

We know all this because a scribe named Amennakht wrote it down. His report, now called the Strike Papyrus, sits in the Museo Egizio in Turin, which describes it as the first documented labour strike in history.

The papyrus even names names. According to Papyrus Stories, two workmen called Kenena and Hay flatly refused to return: ‘We will not return, tell your superiors!’ And the problem wasn''t really solved. When grain did come, the vizier at one point sent only half, because the granaries were nearly empty.

> Bonus fact: The walkouts didn''t stop with Ramesses III. According to Papyrus Stories, work stoppages kept happening for the rest of the 20th Dynasty and became more frequent under Ramesses IX to XI.

The pyramids get all the attention, but the workers who built royal tombs also left behind something rarer: proof that they knew their worth.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('deir-el-medina-first-strike', 'en', 1, 'Illustrated history of ancient Egypt', 'ancient Egypt illustrated history book', 'A visual tour through pharaohs, temples and everyday life on the Nile.'),
  ('deir-el-medina-first-strike', 'en', 2, 'Hieroglyphics stamp set', 'hieroglyphics stamp set', 'Lets you print your own messages in Egyptian symbols.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('deir-el-medina-first-strike', 'en', 1, 'Museo Egizio: Highlights: Turin Strike Papyrus', 'https://collezionepapiri.museoegizio.it/en-GB/section/Papyrus-Collection/History-and-content/Highlights-Turin-Strike-Papyrus/'),
  ('deir-el-medina-first-strike', 'en', 2, 'Museo Egizio: Strike Papyrus', 'https://collezioni.museoegizio.it/en-GB/material/Cat_1880'),
  ('deir-el-medina-first-strike', 'en', 3, 'Papyrus Stories: The First Recorded Strike in History', 'https://papyrus-stories.com/2022/03/15/the-first-recorded-strike-in-history/'),
  ('deir-el-medina-first-strike', 'en', 4, 'Egypt Museum: Workers strike at Deir el-Medina', 'https://egypt-museum.com/workers-strike-at-deir-el-medina/');
