-- WTFact-Fakt „Die große Totenparade in Mexiko-Stadt gibt es erst seit 2016, und angefangen hat James Bond“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('muertos-parade-spectre', '2026-11-02T00:00:00+01:00', 'holiday', '💀', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'muertos-parade-spectre', 'de', 'totenparade-mexiko-james-bond-2016',
  'Die große Totenparade in Mexiko-Stadt gibt es erst seit 2016, und angefangen hat James Bond',
  'Ein Agentenfilm erfand eine Parade, die es nicht gab. Ein Jahr später machte Mexiko-Stadt sie wahr.',
  'Mexiko-Stadt veranstaltete 2016 seine erste Parade zum Día de los Muertos, angeregt von der erfundenen Parade in der Eröffnungsszene des James-Bond-Films „Spectre“ von 2015.',
  'Riesige Skelette, Festwagen, Tausende bemalte Gesichter: Wenn du an den Día de los Muertos denkst, hast du vielleicht eine große Parade durch Mexiko-Stadt vor Augen. **Bis 2016 gab es diese Parade aber nur in einem James-Bond-Film.**

## Erst kam Bond

„Spectre“ (2015) beginnt damit, dass 007 einen Schurken mitten durch eine Totenparade in Mexiko-Stadt jagt, mit Festwagen und Riesenskeletten. Laut Gulf News gab es so einen Umzug in Wirklichkeit gar nicht. Das Filmteam hat trotzdem alles gegeben: Laut /Film, das sich auf ein Making-of-Video beruft, wurden 1.500 Statistinnen und Statisten in 75 Minuten kostümiert.

Dann kam der Film ins Kino. Lourdes Berho, Chefin der mexikanischen Tourismusbehörde, erklärte dem Boston Globe, was danach passierte:

> „Als dieser Film auf die große Leinwand kam und von Millionen und Abermillionen Menschen in 67 Ländern gesehen wurde, entstand die Erwartung, dass es bei uns so etwas gibt.“

## Dann machte Mexiko-Stadt sie wahr

Am 29. Oktober 2016 fand die erste Totenparade der Stadt statt. Geplant war die Strecke vom Unabhängigkeitsengel bis zum Zócalo, dem großen Platz im historischen Zentrum, und die Stadtregierung versprach, Requisiten und Kostüme aus dem Film „wieder aufzugreifen“. Laut PBS NewsHour machten mehr als 1.000 Tänzerinnen, Akrobaten und Schauspieler mit, Zehntausende schauten zu, viele davon selbst kostümiert. Das Ganze gehörte zu einer Kampagne der Regierung, die Touristen zum Feiertag nach Mexiko holen sollte.

Nicht alle jubelten. Johanna Angel, Professorin an der Universidad Iberoamericana in Mexiko, sagte dem Boston Globe: „Ich glaube, es hat einen Wandel gegeben, beeinflusst von Hollywood.“

## Das echte Fest ist leiser

Der traditionelle Día de los Muertos am 1. und 2. November dreht sich vor allem um die Familie. Man baut zu Hause Altäre auf, besucht die Gräber und streut in manchen Orten Blütenblätter von Studentenblumen, damit die Seelen den Weg nach Hause finden.

## Auch La Catrina hat eine Vorgeschichte

Die elegante Skelettdame mit dem riesigen Hut begann als Seitenhieb auf bestimmte Leute. Laut DailyArt Magazine zeichnete José Guadalupe Posada (1851 bis 1913) sie um 1912 als „La Calavera Garbancera“. „Garbancero“ war ein spöttisches Slangwort für Menschen mit indigenen Wurzeln, die so taten, als wären sie Europäer. Posada machte sich über sie lustig. Den Namen „La Catrina“ bekam die Figur erst von Diego Rivera, in seinem Wandbild „Traum eines Sonntagnachmittags im Alameda-Park“, gemalt zwischen 1946 und 1947.

Die meistfotografierte Show des Fests stammt also aus einem Agentenfilm, und sein berühmtestes Gesicht war mal eine Karikatur. Fertig sind Traditionen nie. Sie bekommen einfach neue Kapitel.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('muertos-parade-spectre', 'de', 1, 'Bildband zu den Drucken von José Guadalupe Posada', 'José Guadalupe Posada Bildband', 'Ein großformatiger Kunstband zeigt die Calavera-Drucke im Detail, auch die ursprüngliche Garbancera.'),
  ('muertos-parade-spectre', 'de', 2, 'Handbemalte Talavera-Vase aus Mexiko', 'Talavera Vase handbemalt Mexiko', 'Von Hand in kräftigen Farben glasiert, passt sie mit Studentenblumen auf einen Altar und macht sich das ganze Jahr gut.'),
  ('muertos-parade-spectre', 'de', 3, 'Handgefertigte Catrina-Keramikfigur aus Mexiko', 'Catrina Keramik Figur handgemacht Mexiko', 'Volkskunst aus mexikanischen Werkstätten, bei der jeder Hut und jedes Kleid einzeln bemalt ist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('muertos-parade-spectre', 'de', 1, 'The Boston Globe: In Mexico, Day of the Dead gets the Hollywood treatment', 'https://www.bostonglobe.com/news/world/2016/10/29/mexico-day-dead-gets-hollywood-treatment/4m1zObDVtdbMN0OaaXZIaJ/story.html'),
  ('muertos-parade-spectre', 'de', 2, 'PBS News Weekend: James Bond inspires Dia de los Muertos parade in Mexico City', 'https://www.pbs.org/newshour/show/james-bonds-spectre-inspires-dia-de-los-muertos-parade-mexico-city'),
  ('muertos-parade-spectre', 'de', 3, 'Gulf News: ‘Spectre’ scene inspires Mexico to hold Day of Dead parade', 'https://gulfnews.com/entertainment/spectre-scene-inspires-mexico-to-hold-day-of-dead-parade-1.1917065'),
  ('muertos-parade-spectre', 'de', 4, '/Film: New ''Spectre'' Featurette Goes Behind The Scenes Of The Day Of The Dead Opening Sequence', 'https://www.slashfilm.com/spectre-day-of-the-dead'),
  ('muertos-parade-spectre', 'de', 5, 'DailyArt Magazine: La Calavera Catrina. A Skeleton Lady', 'https://www.dailyartmagazine.com/la-calavera-catrina-a-skeleton-lady/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'muertos-parade-spectre', 'en', 'day-of-the-dead-parade-james-bond-2016',
  'Mexico City''s big Day of the Dead parade has only existed since 2016, and James Bond started it',
  'A spy movie invented a parade that didn''t exist. A year later, Mexico City made it real.',
  'Mexico City held its first Day of the Dead parade in 2016, inspired by the fictional parade in the opening scene of the 2015 James Bond film "Spectre".',
  'Giant skeletons, floats, thousands of painted faces: when you picture the Day of the Dead, you might picture a huge parade through Mexico City. **But until 2016, that parade only existed in a James Bond film.**

## Bond came first

"Spectre" (2015) opens with 007 chasing a villain through a Day of the Dead parade in Mexico City, complete with floats and giant skeletons. According to Gulf News, no such procession existed in real life. The film crew went all in anyway: /Film reports, based on a behind-the-scenes featurette, that the team costumed 1,500 extras in 75 minutes.

Then the film hit cinemas. Lourdes Berho, head of the Mexico Tourism Board, explained to the Boston Globe what happened next:

> "When this movie hit the big screen and was seen by millions and millions of people in 67 countries, that started to create expectations that we would have something."

## Then Mexico City made it real

On October 29, 2016, the city held its first Day of the Dead parade. The planned route ran from the Angel of Independence monument to the Zócalo, the big square in the historic center, and the city government promised to "revisit the props and the wardrobe" of the film. According to PBS NewsHour, more than 1,000 dancers, acrobats and actors took part, and tens of thousands of people watched, many of them in costume. It was all part of a government campaign to bring tourists to Mexico for the holiday.

Not everyone cheered. Johanna Angel, a professor at Mexico''s IberoAmerican University, told the Boston Globe: "I think there has been a change, influenced by Hollywood."

## The real holiday is quieter

The traditional Día de los Muertos on November 1 and 2 is mostly about family. People set up altars at home, visit graves and, in some towns, lay marigold petals to guide the spirits home.

## La Catrina has a backstory too

The elegant skeleton lady in the giant hat started out as a dig at certain people. According to DailyArt Magazine, José Guadalupe Posada (1851 to 1913) drew her around 1912 as "La Calavera Garbancera". "Garbancero" was a mocking slang word for people with Indigenous roots who pretended to be European. Posada was poking fun at them. The name "La Catrina" only came from Diego Rivera, in his mural "Dream of a Sunday Afternoon in Alameda Central Park", painted between 1946 and 1947.

So the holiday''s most photographed show comes from a spy movie, and its most famous face started out as a satirical cartoon. Traditions aren''t finished. They keep getting new chapters.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('muertos-parade-spectre', 'en', 1, 'Illustrated book on José Guadalupe Posada''s prints', 'José Guadalupe Posada prints book', 'A large-format art book shows the calavera prints in detail, including the original Garbancera.'),
  ('muertos-parade-spectre', 'en', 2, 'Hand-painted Talavera vase from Mexico', 'Talavera vase hand painted Mexico', 'Glazed by hand in bright colors, it suits marigolds on an ofrenda and looks good all year.'),
  ('muertos-parade-spectre', 'en', 3, 'Handmade ceramic Catrina figurine from Mexico', 'Catrina ceramic figurine handmade Mexico', 'A folk-art piece from Mexican workshops, with every hat and dress painted individually.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('muertos-parade-spectre', 'en', 1, 'The Boston Globe: In Mexico, Day of the Dead gets the Hollywood treatment', 'https://www.bostonglobe.com/news/world/2016/10/29/mexico-day-dead-gets-hollywood-treatment/4m1zObDVtdbMN0OaaXZIaJ/story.html'),
  ('muertos-parade-spectre', 'en', 2, 'PBS News Weekend: James Bond inspires Dia de los Muertos parade in Mexico City', 'https://www.pbs.org/newshour/show/james-bonds-spectre-inspires-dia-de-los-muertos-parade-mexico-city'),
  ('muertos-parade-spectre', 'en', 3, 'Gulf News: ‘Spectre’ scene inspires Mexico to hold Day of Dead parade', 'https://gulfnews.com/entertainment/spectre-scene-inspires-mexico-to-hold-day-of-dead-parade-1.1917065'),
  ('muertos-parade-spectre', 'en', 4, '/Film: New ''Spectre'' Featurette Goes Behind The Scenes Of The Day Of The Dead Opening Sequence', 'https://www.slashfilm.com/spectre-day-of-the-dead'),
  ('muertos-parade-spectre', 'en', 5, 'DailyArt Magazine: La Calavera Catrina. A Skeleton Lady', 'https://www.dailyartmagazine.com/la-calavera-catrina-a-skeleton-lady/');
