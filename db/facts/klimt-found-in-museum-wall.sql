-- WTFact-Fakt „Ein gestohlener Klimt tauchte nach 22 Jahren in der Mauer des eigenen Museums auf“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('klimt-found-in-museum-wall', '2026-11-07T12:00:00+01:00', 'art', '🖼️', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'klimt-found-in-museum-wall', 'de', 'gestohlener-klimt-in-museumsmauer',
  'Ein gestohlener Klimt tauchte nach 22 Jahren in der Mauer des eigenen Museums auf',
  'Mehr als zwei Jahrzehnte lang wurde das Gemälde gesucht. Am Ende fand es ein Gärtner beim Efeuschneiden.',
  'Gustav Klimts „Bildnis einer Dame“ verschwand 1997 aus der Galerie Ricci Oddi in Piacenza, und im Dezember 2019 fand ein Gärtner es in einer Tüte, versteckt in einem Hohlraum in der Außenmauer der Galerie.',
  'Am 22. Februar 1997 verschwand Gustav Klimts „Bildnis einer Dame“ aus der Galleria d''Arte Moderna Ricci Oddi in Piacenza in Norditalien. Das Museum bereitete damals gerade eine Sonderausstellung vor. Den Rahmen fand man später auf dem Dach der Galerie, und Berichten zufolge sollen die Diebe die Leinwand mit einer Angelschnur herausgefischt haben.

In den folgenden 22 Jahren galt es als eines der meistgesuchten gestohlenen Gemälde der Welt. Sein Wert wurde auf 66 Millionen Dollar geschätzt.

## Die kleine Tür hinter dem Efeu

Im Dezember 2019 entfernte ein Gärtner Efeu von einer Außenmauer der Galerie und bemerkte eine kleine Klappe. Dahinter lag ein Hohlraum, und darin eine Plastiktüte. In der Tüte: der Klimt.

Zu früh jubeln wollte niemand, also untersuchten Fachleute die Leinwand mit Infrarotlicht und anderen zerstörungsfreien Methoden. Im Januar 2020 verkündete die Staatsanwältin von Piacenza, Ornella Chicca, dass das Werk echt ist. Es war erstaunlich gut erhalten, bis auf einen Kratzer am Rand, der von einem ungeschickten Versuch stammen könnte, es aus dem Rahmen zu lösen.

## Ein Bild unter dem Bild

Schon vor dem Diebstahl hatte das Porträt ein Geheimnis. 1996 entdeckte die Kunststudentin Claudia Maga, dass Klimt es über ein anderes eigenes Werk gemalt hatte, das „Bildnis einer jungen Dame“, das seit 1912 niemand mehr gesehen hatte. Röntgenaufnahmen bestätigten das. Die Diebe haben also eigentlich zwei Klimts auf einmal mitgenommen.

Als die Echtheit feststand, waren die großen Fragen noch offen: wer es gestohlen hat und ob es das Museumsgelände überhaupt je verlassen hat. Die Polizei untersuchte organische Spuren auf der Leinwand.

> Bonusfakt: Laut Reuters war das Porträt bis zu seinem Fund das wertvollste verschwundene Kunstwerk Italiens nach einem Caravaggio, der 1969 aus einer Kirche auf Sizilien gestohlen wurde.

22 Jahre lang wurde gesucht. Dabei lag die Lösung hinter ein bisschen Efeu an der Mauer des Museums selbst.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('klimt-found-in-museum-wall', 'de', 1, 'Gustav-Klimt-Bildband', 'Gustav Klimt Bildband Gemälde', 'Großformatige Abbildungen von Klimts Porträts und Werken der Goldenen Phase.'),
  ('klimt-found-in-museum-wall', 'de', 2, 'Klimt-Kunstdruck', 'Gustav Klimt Kunstdruck Poster', 'Bringt Wiener Jugendstil an deine Wand.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('klimt-found-in-museum-wall', 'de', 1, 'The Art Newspaper: Stolen ''Klimt'' found hidden in a wall will take a month to authenticate, officials say', 'https://www.theartnewspaper.com/2019/12/12/stolen-klimt-found-hidden-in-a-wall-will-take-a-month-to-authenticate-officials-say'),
  ('klimt-found-in-museum-wall', 'de', 2, 'PBS NewsHour: Portrait found in Italian gallery''s walls verified as stolen work by Klimt', 'https://www.pbs.org/newshour/amp/arts/portrait-found-in-italian-gallerys-walls-verified-as-stolen-work-by-klimt'),
  ('klimt-found-in-museum-wall', 'de', 3, 'ArtDependence: Stolen Klimt''s Portrait of a Lady Found by Gardener in Italy', 'https://artdependence.com/articles/stolen-klimts-portrait-of-a-lady-found-by-gardener-in-italy/'),
  ('klimt-found-in-museum-wall', 'de', 4, 'CBS News: Painting found in Italian gallery''s wall confirmed to be long-lost Klimt', 'https://www.cbsnews.com/news/portrait-of-a-lady-painting-found-hidden-italian-gallery-confirmed-gustav-klimt/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'klimt-found-in-museum-wall', 'en', 'stolen-klimt-found-in-museum-wall',
  'A stolen Klimt turned up 22 years later inside the museum''s own wall',
  'Police searched for the painting for more than two decades. In the end, a gardener found it while pulling ivy.',
  'Gustav Klimt''s "Portrait of a Lady" disappeared from the Ricci Oddi gallery in Piacenza in 1997, and in December 2019 a gardener found it in a bag hidden in a cavity in the gallery''s outer wall.',
  'On 22 February 1997, Gustav Klimt''s "Portrait of a Lady" vanished from the Ricci Oddi Modern Art Gallery in Piacenza, northern Italy. The museum was preparing a special exhibition at the time. The frame later turned up on the gallery roof, and reports speculated that the thieves had hooked the canvas with a fishing line.

For the next 22 years, it counted as one of the most sought-after stolen paintings in the world. Its value has been put at 66 million dollars.

## The little door behind the ivy

In December 2019, a gardener was clearing ivy from an outside wall of the gallery and noticed a small panel. Behind it was a cavity, and in the cavity was a plastic bag. Inside the bag: the Klimt.

Nobody wanted to celebrate too early, so experts examined the canvas with infrared light and other non-invasive methods. In January 2020, Piacenza prosecutor Ornella Chicca announced that the work was authentic. It was in remarkably good shape, apart from one scratch near the edge that may have come from a clumsy attempt to pull it out of its frame.

## A painting under the painting

The portrait had a secret even before the theft. In 1996, an art student, Claudia Maga, discovered that Klimt had painted it over another of his works, "Portrait of a Young Lady", which had not been seen since 1912. X-rays confirmed it. So the thieves actually walked off with two Klimts in one.

When the painting was confirmed as authentic, the big questions were still open: who took it and whether it ever left the museum grounds at all. Police were studying organic traces found on the canvas.

> Bonus fact: According to Reuters, until it turned up the portrait was the most valuable missing artwork in Italy after a Caravaggio stolen from a Sicilian church in 1969.

Investigators spent 22 years searching. The answer was hidden behind some ivy on the museum''s own wall.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('klimt-found-in-museum-wall', 'en', 1, 'Gustav Klimt art book', 'Gustav Klimt art book paintings', 'Large prints of Klimt''s portraits and gold-period works.'),
  ('klimt-found-in-museum-wall', 'en', 2, 'Klimt art print poster', 'Gustav Klimt art print poster', 'Brings a classic Viennese Art Nouveau look to your wall.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('klimt-found-in-museum-wall', 'en', 1, 'The Art Newspaper: Stolen ''Klimt'' found hidden in a wall will take a month to authenticate, officials say', 'https://www.theartnewspaper.com/2019/12/12/stolen-klimt-found-hidden-in-a-wall-will-take-a-month-to-authenticate-officials-say'),
  ('klimt-found-in-museum-wall', 'en', 2, 'PBS NewsHour: Portrait found in Italian gallery''s walls verified as stolen work by Klimt', 'https://www.pbs.org/newshour/amp/arts/portrait-found-in-italian-gallerys-walls-verified-as-stolen-work-by-klimt'),
  ('klimt-found-in-museum-wall', 'en', 3, 'ArtDependence: Stolen Klimt''s Portrait of a Lady Found by Gardener in Italy', 'https://artdependence.com/articles/stolen-klimts-portrait-of-a-lady-found-by-gardener-in-italy/'),
  ('klimt-found-in-museum-wall', 'en', 4, 'CBS News: Painting found in Italian gallery''s wall confirmed to be long-lost Klimt', 'https://www.cbsnews.com/news/portrait-of-a-lady-painting-found-hidden-italian-gallery-confirmed-gustav-klimt/');
