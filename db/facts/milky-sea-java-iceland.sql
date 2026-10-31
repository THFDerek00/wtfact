-- WTFact-Fakt „2019 leuchtete vor Java mindestens 45 Nächte lang ein Stück Meer so groß wie Island“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('milky-sea-java-iceland', '2026-11-06T16:00:00+01:00', 'ocean', '🌊', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'milky-sea-java-iceland', 'de', 'milchmeer-so-gross-wie-island',
  '2019 leuchtete vor Java mindestens 45 Nächte lang ein Stück Meer so groß wie Island',
  'Seeleute erzählten jahrhundertelang von leuchtenden „Milchmeeren“. Dann erwischten ein Satellit und eine Segelcrew eines.',
  '2019 leuchtete südlich von Java eine Meeresfläche ungefähr so groß wie Island mindestens 45 Nächte lang, und Satelliten verfolgten das aus dem All.',
  'Stell dir vor, du segelst nachts und das Meer um dich herum leuchtet. Nicht in kurzen Blitzen hinter dem Boot, sondern gleichmäßig, so weit du schauen kannst. Seit Jahrhunderten erzählen Seeleute von solchen „Milchmeeren“. Scientific American beschreibt sie als flüchtige Flächen von gleichmäßig leuchtendem Ozean. Was lange fehlte, war ein Foto.

## Entdeckt aus dem All

Steven Miller, Atmosphärenforscher an der Colorado State University, suchte von oben. Laut Scientific American wertete er Daten aus fast zehn Jahren von einem Restlichtsensor auf Satelliten aus, die mehr als 500 Meilen (etwa 800 Kilometer) hoch fliegen, und fand rund ein Dutzend mögliche Ereignisse. Eines davon, südlich von Java im Jahr 2019, schien 45 Nächte zu dauern. Smithsonian Magazine schreibt: mindestens 45 Nächte.

Und es war riesig. Miller schätzte dieses Milchmeer auf ungefähr die Größe Islands, das größte bisher bekannte. Guinness World Records führt es als größtes Milchmeer-Ereignis mit 100.000 Quadratkilometern bei Java. Smithsonian Magazine nennt 38.000 Quadratmeilen, was ungefähr aufs Gleiche hinausläuft.

## Eine Crew segelte mittendurch

Der Clou: Es waren tatsächlich Menschen vor Ort. Im Sommer 2019 war das Segelschiff Ganesha in der Nähe von Java unterwegs. Nach Sonnenuntergang am 2. August bemerkte die Crew, dass das Wasser leuchtete. Naomi McKinnon aus der Crew sagte Scientific American: „Das Wasser hatte die Farbe von Leuchtsternen, die im Dunkeln glühen.“

Die Crew machte Fotos mit einem Smartphone und einer GoPro, und Miller veröffentlichte sie in der Fachzeitschrift PNAS. Laut Scientific American hatten Forschende bis zu dieser Sichtung vergeblich nach einem Fotobeweis gesucht. Für die Crew schien das Leuchten aus etwa 10 Metern (32 Fuß) Tiefe zu kommen, berichtet Smithsonian Magazine. Die Hinweise von der Ganesha deuten auf ein leuchtendes Bakterium namens Vibrio harveyi.

> Bonusfakt: Milchmeere sind selten. Smithsonian Magazine zitiert Miller nach dem Guardian: Es gebe vielleicht ein bis zwei pro Jahr weltweit, und nur eine Handvoll heute lebender Menschen habe je eines gesehen.

Ein leuchtendes Stück Meer so groß wie ein ganzes Land, und fast niemand hat zugeschaut.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('milky-sea-java-iceland', 'de', 1, 'Buch über Biolumineszenz in der Tiefsee', 'Biolumineszenz Tiefsee Buch', 'Erklärt, wie und warum so viele Meerestiere ihr eigenes Licht machen.'),
  ('milky-sea-java-iceland', 'de', 2, 'Leuchtplankton-Set mit Dinoflagellaten', 'Dinoflagellaten Leuchtplankton Set', 'Lebendes Plankton, das blau leuchtet, wenn du das Wasser schwenkst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('milky-sea-java-iceland', 'de', 1, 'Scientific American: Eerie Photo Proves the Existence of Milky Seas—A First', 'https://www.scientificamerican.com/article/eerie-photo-proves-the-existence-of-milky-seas-a-first/'),
  ('milky-sea-java-iceland', 'de', 2, 'Smithsonian Magazine: First Images of Mysterious ‘Milky Seas’ Captured', 'https://www.smithsonianmag.com/smart-news/first-images-of-mysterious-milky-seas-help-scientists-search-for-an-explanation-180980438/'),
  ('milky-sea-java-iceland', 'de', 3, 'Guinness World Records: Largest milky sea event', 'https://www.guinnessworldrecords.com/world-records/690683-largest-milky-sea-event');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'milky-sea-java-iceland', 'en', 'milky-sea-size-of-iceland',
  'In 2019, a patch of sea the size of Iceland glowed off Java for at least 45 nights',
  'Sailors told stories about glowing “milky seas” for centuries. Then a satellite and a sailing crew caught one.',
  'In 2019, an area of ocean south of Java roughly the size of Iceland glowed for at least 45 nights, and satellites tracked it from space.',
  'Picture sailing at night while the sea around you glows. Not in short flashes behind the boat, but steadily, as far as you can see. For centuries, sailors have described these "milky seas". Scientific American calls them ephemeral patches of steadily glowing ocean. What was missing for a long time was a photo.

## Spotted from space

Steven Miller, an atmospheric scientist at Colorado State University, went looking from above. According to Scientific American, he analyzed nearly a decade of data from a low-light sensor on satellites more than 500 miles (about 800 kilometres) up and found about a dozen possible events. One of them, south of Java in 2019, appeared to last 45 nights. Smithsonian Magazine says at least 45 nights.

And it was huge. Miller estimated that this milky sea was about the size of Iceland, the largest on record. Guinness World Records lists it as the largest milky sea event, at 100,000 square kilometres near Java. Smithsonian Magazine gives 38,000 square miles, which comes out at roughly the same.

## A crew sailed right into it

The twist: people were actually out there. In summer 2019, the sailing ship Ganesha was near Java. After sunset on 2 August, the crew noticed that the water was glowing. Naomi McKinnon, one of the crew, told Scientific American: "The water was the color of glow-in-the-dark stars."

The crew took pictures with a smartphone and a GoPro, and Miller published them in the journal PNAS. According to Scientific American, scientists had been searching for photographic proof without success until this sighting. To the crew, the glow seemed to come from about 10 metres (32 feet) below the surface, reports Smithsonian Magazine. The evidence from the Ganesha points to a bioluminescent bacterium called Vibrio harveyi.

> Bonus fact: Milky seas are rare. Smithsonian Magazine quotes Miller, via The Guardian, saying there may be up to one or two per year worldwide and that "only a handful of people currently alive" have seen one.

A glowing patch of sea the size of a country, and almost nobody was there to watch it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('milky-sea-java-iceland', 'en', 1, 'Book about bioluminescence in the deep sea', 'bioluminescence deep sea book', 'Explains how and why so many sea creatures make their own light.'),
  ('milky-sea-java-iceland', 'en', 2, 'Bioluminescent dinoflagellate kit', 'bioluminescent dinoflagellates kit', 'Living plankton that glows blue when you swirl the water.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('milky-sea-java-iceland', 'en', 1, 'Scientific American: Eerie Photo Proves the Existence of Milky Seas—A First', 'https://www.scientificamerican.com/article/eerie-photo-proves-the-existence-of-milky-seas-a-first/'),
  ('milky-sea-java-iceland', 'en', 2, 'Smithsonian Magazine: First Images of Mysterious ‘Milky Seas’ Captured', 'https://www.smithsonianmag.com/smart-news/first-images-of-mysterious-milky-seas-help-scientists-search-for-an-explanation-180980438/'),
  ('milky-sea-java-iceland', 'en', 3, 'Guinness World Records: Largest milky sea event', 'https://www.guinnessworldrecords.com/world-records/690683-largest-milky-sea-event');
