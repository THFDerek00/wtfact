-- WTFact-Fakt „Grönlandhaie können rund 400 Jahre alt werden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('greenland-shark', '2026-09-27', 'nature', '🦈', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'greenland-shark', 'de', 'groenlandhai-400-jahre',
  'Grönlandhaie können rund 400 Jahre alt werden',
  'Kein anderes bekanntes Wirbeltier lebt so lange. Verraten hat das ausgerechnet ein Blick ins Auge.',
  'Grönlandhaie gelten als die langlebigsten bekannten Wirbeltiere: Ein Weibchen wurde auf rund 400 Jahre geschätzt.',
  'Schildkröten, Wale, Papageien: Wenn es um die Methusalems im Tierreich geht, denkst du vermutlich nicht zuerst an einen Hai. Dabei hält **der Grönlandhai den Rekord als langlebigstes bekanntes Wirbeltier.** Rund 400 Jahre können diese Tiere wohl alt werden.

## Altersbestimmung per Augenlinse

Bei vielen Haien liest man das Alter an Wachstumsringen in den verkalkten Wirbeln ab. Der Grönlandhai ist aber ein „weicher“ Hai, dem solche Wirbel fehlen. Ein Team um den Meeresbiologen Julius Nielsen fand einen anderen Weg und veröffentlichte ihn 2016 im Fachjournal Science.

Die Forschenden untersuchten die Augenlinsen von 28 Haien und datierten sie mit der Radiokarbonmethode. Bei Fischen hatte das vorher noch niemand versucht. Geholfen haben sogar Spuren der Atombombentests aus den 1950er- und 1960er-Jahren: Sie tauchten nur bei 3 der 28 Tiere auf und dienten als zeitliche Markierung.

Das Ergebnis: Ein großes Weibchen war **etwa 392 Jahre alt, mit einer Unsicherheit von plus/minus 120 Jahren.** Die Spanne reicht also von 272 bis 512 Jahren. Selbst am unteren Ende übertrumpft der Hai den bisherigen Rekordhalter, einen Grönlandwal mit geschätzten 211 Jahren.

## Leben im Zeitlupentempo

Das hohe Alter passt zum gemächlichen Lebensstil. Grönlandhaie wachsen weniger als 1 Zentimeter pro Jahr und schwimmen mit gerade mal 0,34 Metern pro Sekunde. Bezogen auf ihre Körpergröße sind sie damit die langsamsten Fische überhaupt. Geschlechtsreif werden sie erst mit rund 150 Jahren.

Sie leben im kalten Wasser der Arktis und des Nordatlantiks, meist in 100 bis 1200 Metern Tiefe. Ausgewachsen messen sie oft 4 bis 5 Meter.

> Nicht alle Fachleute sind restlos überzeugt. Steven Campana von der Universität Island wartet laut Science News noch auf weitere Forschung, bevor er die 400 Jahre bestätigt.

Wer so langsam lebt, hat offenbar auch beim Altern keine Eile.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('greenland-shark', 'de', 1, 'Bildband über Haie', 'Haie Bildband', 'Große Fotos und spannende Infos über Haiarten aus allen Weltmeeren. Macht sich gut auf dem Couchtisch.'),
  ('greenland-shark', 'de', 2, 'Hai-Kuscheltier', 'Hai Kuscheltier groß', 'Ein weicher, großer Hai zum Knuddeln. Deutlich entspannter als das Original.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('greenland-shark', 'de', 1, 'Wikipedia: Greenland shark', 'https://en.wikipedia.org/wiki/Greenland_shark'),
  ('greenland-shark', 'de', 2, 'Science News: Study ranks Greenland shark as longest-lived vertebrate', 'https://www.sciencenews.org/article/study-ranks-greenland-shark-longest-lived-vertebrate'),
  ('greenland-shark', 'de', 3, 'University of Copenhagen Research Portal: Eye lens radiocarbon reveals centuries of longevity in the Greenland shark (Somniosus microcephalus)', 'https://researchprofiles.ku.dk/en/publications/eye-lens-radiocarbon-reveals-centuries-of-longevity-in-the-greenl/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'greenland-shark', 'en', 'greenland-shark-400-years',
  'Greenland sharks can live for around 400 years',
  'No other known vertebrate lives this long. And scientists figured it out by looking into their eyes.',
  'Greenland sharks are the longest-lived known vertebrates: one female was estimated to be around 400 years old.',
  'Tortoises, whales, parrots: when you think of the senior citizens of the animal kingdom, a shark probably isn''t the first thing that comes to mind. But **the Greenland shark holds the record as the longest-lived known vertebrate.** These animals can apparently live for around 400 years.

## Reading age in the eye

For many sharks, you can count growth rings in their calcified vertebrae to figure out their age. But the Greenland shark is a "soft" shark without those vertebrae. A team led by marine biologist Julius Nielsen found another way and published it in the journal Science in 2016.

The researchers studied the eye lenses of 28 sharks and dated them using radiocarbon. Nobody had ever tried that on fish before. Traces of nuclear bomb tests from the 1950s and 1960s even helped: they showed up in only 3 of the 28 sharks and served as a time marker.

The result: one large female was **about 392 years old, give or take 120 years.** That puts the range between 272 and 512 years. Even at the low end, the shark beats the previous record holder, a bowhead whale estimated at 211 years.

## Life in slow motion

The extreme age fits the laid-back lifestyle. Greenland sharks grow less than 1 centimeter per year and cruise at just 0.34 meters per second. Relative to their body size, that makes them the slowest fish on record. They don''t reach sexual maturity until they''re around 150 years old.

They live in the cold waters of the Arctic and North Atlantic, usually 100 to 1,200 meters deep. Adults are often 4 to 5 meters long.

> Not every expert is fully convinced. According to Science News, Steven Campana of the University of Iceland is waiting for more research before he signs off on the 400 years.

When you live this slowly, there''s clearly no rush to get old.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('greenland-shark', 'en', 1, 'Illustrated shark encyclopedia', 'shark encyclopedia book', 'Big photos and fascinating facts about shark species from every ocean. Great coffee table material.'),
  ('greenland-shark', 'en', 2, 'Giant shark plush toy', 'giant shark plush', 'A big, soft shark to hug. Way more chill than the real thing.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('greenland-shark', 'en', 1, 'Wikipedia: Greenland shark', 'https://en.wikipedia.org/wiki/Greenland_shark'),
  ('greenland-shark', 'en', 2, 'Science News: Study ranks Greenland shark as longest-lived vertebrate', 'https://www.sciencenews.org/article/study-ranks-greenland-shark-longest-lived-vertebrate'),
  ('greenland-shark', 'en', 3, 'University of Copenhagen Research Portal: Eye lens radiocarbon reveals centuries of longevity in the Greenland shark (Somniosus microcephalus)', 'https://researchprofiles.ku.dk/en/publications/eye-lens-radiocarbon-reveals-centuries-of-longevity-in-the-greenl/');
