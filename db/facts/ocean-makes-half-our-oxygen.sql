-- WTFact-Fakt „Etwa jeder zweite Atemzug kommt aus dem Meer“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ocean-makes-half-our-oxygen', '2026-10-24T10:00:00+02:00', 'ocean', '🫧', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ocean-makes-half-our-oxygen', 'de', 'ozean-macht-halben-sauerstoff',
  'Etwa jeder zweite Atemzug kommt aus dem Meer',
  'Nicht der Regenwald ist die größte Sauerstofffabrik. Sondern winzige Wesen im Ozean.',
  'Laut der US-Behörde NOAA stammt rund die Hälfte des Sauerstoffs auf der Erde aus dem Meer. Erzeugt wird er von winzigem Plankton, das wie Pflanzen Photosynthese betreibt.',
  'Wenn es um Sauerstoff geht, denken die meisten an Wälder. Bäume sind wichtig, keine Frage. Doch ein großer Teil der Luft, die wir atmen, kommt aus einer ganz anderen Richtung: aus dem Ozean.

## Winzige Sauerstofffabriken

Laut der US-Behörde NOAA wird etwa die Hälfte des Sauerstoffs auf der Erde im Meer produziert. Verantwortlich dafür sind keine großen Pflanzen, sondern vor allem Phytoplankton. Das sind winzige Lebewesen, die im Wasser treiben und mit Sonnenlicht Photosynthese betreiben, genau wie Pflanzen an Land.

Die Website EarthSky nennt sogar eine Spanne von 50 bis 80 Prozent. Die genaue Zahl ist schwer zu bestimmen, weil sich Plankton je nach Jahreszeit, Wasser und Nährstoffen stark verändert.

## Ein Bakterium mit großer Wirkung

Ein besonderer Star ist laut NOAA ein winziges Bakterium namens Prochlorococcus. Laut NOAA ist es der kleinste Organismus der Erde, der Photosynthese betreibt. Trotzdem produziert es laut NOAA bis zu 20 Prozent des Sauerstoffs in der gesamten Biosphäre.

Allerdings gibt es einen Haken. Laut NOAA verbraucht das Leben im Meer selbst ungefähr so viel Sauerstoff, wie dort produziert wird. Fische, Tiere und Bakterien, die abgestorbenes Plankton zersetzen, brauchen ihn ebenfalls.

> Bonusfakt: Wenn große Algenblüten absterben, kann ihre Zersetzung laut NOAA mehr Sauerstoff verbrauchen, als nachkommt. So entstehen sauerstoffarme „Todeszonen“, in denen die meisten Meerestiere nicht überleben können.

Das zeigt, wie eng Meer und Atmosphäre zusammenhängen. Was mit dem Plankton passiert, etwa durch wärmeres Wasser, hat Folgen für die ganze Erde.

Wer also am Strand tief durchatmet, darf sich ruhig bei ein paar Milliarden winziger Meeresbewohner bedanken. Sie arbeiten rund um die Uhr, und kein einziges davon ist größer als ein Staubkorn.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ocean-makes-half-our-oxygen', 'de', 1, 'Mikroskop für Kinder', 'Mikroskop Kinder', 'Damit lässt sich Plankton aus einem Wassertropfen selbst entdecken.'),
  ('ocean-makes-half-our-oxygen', 'de', 2, 'Buch über das Leben im Meer', 'Buch Leben im Meer Plankton', 'Zeigt, wie viel winziges Leben im Ozean steckt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ocean-makes-half-our-oxygen', 'de', 1, 'NOAA Ocean Service: How much oxygen comes from the ocean?', 'https://oceanservice.noaa.gov/facts/ocean-oxygen.html'),
  ('ocean-makes-half-our-oxygen', 'de', 2, 'EarthSky: How much oxygen comes from the ocean?', 'https://earthsky.org/earth/how-much-oxygen-comes-from-ocean/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ocean-makes-half-our-oxygen', 'en', 'ocean-makes-half-our-oxygen',
  'Roughly every second breath you take comes from the ocean',
  'The rainforest isn’t the biggest oxygen factory. Tiny creatures in the ocean are.',
  'According to the US agency NOAA, about half of the oxygen on Earth comes from the ocean. It’s made by tiny plankton that photosynthesize, just like plants.',
  'When it comes to oxygen, most people think of forests. Trees matter, no question. But a big share of the air we breathe comes from somewhere else entirely: the ocean.

## Tiny oxygen factories

According to the US agency NOAA, about half of the oxygen on Earth is produced in the ocean. The ones responsible aren’t big plants, but mostly phytoplankton. These are tiny organisms that drift in the water and use sunlight to photosynthesize, just like plants on land.

The website EarthSky even gives a range of 50 to 80 percent. The exact figure is hard to pin down because plankton changes a lot depending on the season, the water and nutrients.

## A bacterium with a big impact

According to NOAA, one special star is a tiny bacterium called Prochlorococcus. According to NOAA, it’s the smallest photosynthetic organism on Earth. Still, according to NOAA, it produces up to 20 percent of the oxygen in the entire biosphere.

There’s a catch, though. According to NOAA, marine life itself uses up roughly as much oxygen as is produced there. Fish, animals and bacteria that break down dead plankton need it too.

> Bonus fact: When large algal blooms die, their decomposition can use up oxygen faster than it’s replaced, according to NOAA. That creates low-oxygen "dead zones" where most marine life can’t survive.

That shows how closely the ocean and the atmosphere are linked. Whatever happens to plankton, for example because of warmer water, affects the whole planet.

So when you take a deep breath at the beach, you can thank a few billion tiny sea creatures. They work around the clock, and not one of them is bigger than a speck of dust.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ocean-makes-half-our-oxygen', 'en', 1, 'Microscope for kids', 'microscope for kids', 'Lets you discover plankton from a drop of water yourself.'),
  ('ocean-makes-half-our-oxygen', 'en', 2, 'Book about life in the ocean', 'book ocean life plankton', 'Shows how much tiny life the ocean holds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ocean-makes-half-our-oxygen', 'en', 1, 'NOAA Ocean Service: How much oxygen comes from the ocean?', 'https://oceanservice.noaa.gov/facts/ocean-oxygen.html'),
  ('ocean-makes-half-our-oxygen', 'en', 2, 'EarthSky: How much oxygen comes from the ocean?', 'https://earthsky.org/earth/how-much-oxygen-comes-from-ocean/');
