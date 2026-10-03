-- WTFact-Fakt „Die alte innerdeutsche Grenze ist heute ein 1.400 Kilometer langes Naturband“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('green-belt-border', '2026-10-03T11:51:32+02:00', 'nature', '🌿', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'green-belt-border', 'de', 'gruenes-band-ehemalige-grenze',
  'Die alte innerdeutsche Grenze ist heute ein 1.400 Kilometer langes Naturband',
  'Wo früher kaum ein Mensch hindurfte, leben heute Schwarzstorch, Luchs und Fischotter.',
  'Entlang der ehemaligen innerdeutschen Grenze zieht sich heute das „Grüne Band“, rund 1.400 Kilometer Natur mit über 5.000 Tier- und Pflanzenarten, mehr als 1.200 davon auf der Roten Liste.',
  'Fast 40 Jahre lang durfte kaum ein Mensch den Grenzstreifen zwischen Ost- und Westdeutschland betreten. Für Tiere und Pflanzen war genau das ein Glücksfall. **Heute ist aus der alten Grenze das „Grüne Band“ geworden, rund 1.400 Kilometer Natur quer durch Deutschland.**

## Ein Streifen von der Ostsee bis Bayern

Laut BUND Naturschutz zieht sich das Grüne Band von Travemünde an der Ostsee bis zum Dreiländereck bei Hof. Unterwegs durchquert es 17 Naturräume und neun Bundesländer. Das Bundesamt für Naturschutz hat den Streifen kartiert und kommt auf 1.393 Kilometer.

Breit ist er dabei nicht: meist nur 50 bis 200 Meter. Zusammen ergibt das rund 177 Quadratkilometer. Fast zwei Drittel der Fläche stehen heute unter dem europäischen Schutz von Natura 2000.

## 5.000 Arten auf einem schmalen Band

Die Zahlen des BUND Naturschutz sind beeindruckend: 146 verschiedene Biotoptypen, über 5.000 Tier- und Pflanzenarten, und mehr als 1.200 davon stehen auf der Roten Liste. Zu den Bewohnern gehören Braunkehlchen, Raubwürger, Schwarzstorch, Fischotter, Luchs und Wildkatze. Dazu kommen Pflanzen wie Arnika und Trollblume.

Den Wert dieses Streifens hat Kai Frobel früh erkannt. Der spätere Artenschutzreferent des BUND Naturschutz sah schon in den 1970er-Jahren, wie wertvoll die Natur am Grenzstreifen ist. Kurz nach der Grenzöffnung trafen sich rund 400 Naturschützer aus Ost und West und forderten einstimmig, die Grenznatur zu schützen. Der BUND nennt das den Grundstein für das erste gesamtdeutsche Naturschutzprojekt.

> Im November 2018 wurde der thüringische Teil des Grünen Bandes zum Nationalen Naturmonument erklärt.

## Und es geht noch weiter

Das deutsche Grüne Band ist nur ein Stück eines viel größeren Projekts. Das „Grüne Band Europa“ folgt dem ganzen ehemaligen Eisernen Vorhang quer über den Kontinent und soll Lebensräume über Landesgrenzen hinweg verbinden.

Eine Grenze, die Menschen trennen sollte, verbindet heute also Fischotter, Luchse und Trollblumen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('green-belt-border', 'de', 1, 'Vogelbestimmungsbuch für Mitteleuropa', 'Vogelbestimmungsbuch Mitteleuropa', 'Hilft, Braunkehlchen und Raubwürger beim nächsten Spaziergang auseinanderzuhalten.'),
  ('green-belt-border', 'de', 2, 'Kompaktes Fernglas für Naturbeobachtung', 'Fernglas kompakt Vogelbeobachtung', 'Leicht genug für lange Wanderungen und stark genug für Vögel in der Ferne.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('green-belt-border', 'de', 1, 'BUND Naturschutz: Grünes Band: Arche Noah für Tiere und Pflanzen', 'https://www.bund-naturschutz.de/natur-und-landschaft/gruenes-band'),
  ('green-belt-border', 'de', 2, 'BfN: Bestandsaufnahme Grünes Band', 'https://www.bfn.de/projektsteckbriefe/bestandsaufnahme-gruenes-band');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'green-belt-border', 'en', 'green-belt-former-german-border',
  'The old inner-German border is now a 1,400 kilometer strip of nature',
  'Where hardly anyone was allowed to go, black storks, lynx and otters live today.',
  'Along the former border between East and West Germany runs the "Green Belt", about 1,400 kilometers of nature with over 5,000 animal and plant species, more than 1,200 of them on the Red List.',
  'For almost 40 years, hardly anyone was allowed to set foot on the strip of land between East and West Germany. For plants and animals, that turned out to be a stroke of luck. **Today the old border has become the "Green Belt", about 1,400 kilometers of nature running right across Germany.**

## A strip from the Baltic Sea to Bavaria

According to the conservation group BUND Naturschutz, the Green Belt runs from Travemünde on the Baltic Sea to the point near Hof where Germany meets the Czech Republic. Along the way it crosses 17 natural regions and nine German states. Germany''s Federal Agency for Nature Conservation mapped the strip and measured 1,393 kilometers.

It isn''t wide, though: usually just 50 to 200 meters. Added up, that makes about 177 square kilometers. Today almost two thirds of that area are protected under the EU''s Natura 2000 network.

## 5,000 species on a narrow strip

The figures from BUND Naturschutz are impressive: 146 different habitat types, over 5,000 animal and plant species, and more than 1,200 of them are on the Red List of threatened species. Residents include whinchats, great grey shrikes, black storks, otters, lynx and wildcats, plus plants like arnica and globeflower.

Kai Frobel saw the value of this strip early on. Back in the 1970s, the man who later became a species protection officer at BUND Naturschutz already realized how valuable the nature along the border was. Shortly after the border opened, around 400 conservationists from East and West met and unanimously called for the border''s nature to be protected. BUND calls this the foundation of the first all-German conservation project.

> In November 2018, the part of the Green Belt in Thuringia was declared a National Natural Monument.

## And it goes even further

The German Green Belt is just one piece of a much bigger project. The "European Green Belt" follows the entire former Iron Curtain across the continent and aims to link habitats across national borders.

A border that was built to keep people apart now connects otters, lynx and globeflowers.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('green-belt-border', 'en', 1, 'Field guide to European birds', 'field guide birds of Europe', 'Helps you tell a whinchat from a shrike on your next walk.'),
  ('green-belt-border', 'en', 2, 'Compact binoculars for birdwatching', 'compact binoculars birdwatching', 'Light enough for long hikes and strong enough for distant birds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('green-belt-border', 'en', 1, 'BUND Naturschutz: Grünes Band: Arche Noah für Tiere und Pflanzen', 'https://www.bund-naturschutz.de/natur-und-landschaft/gruenes-band'),
  ('green-belt-border', 'en', 2, 'BfN: Bestandsaufnahme Grünes Band', 'https://www.bfn.de/projektsteckbriefe/bestandsaufnahme-gruenes-band');
