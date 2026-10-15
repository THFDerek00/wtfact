-- WTFact-Fakt „Den Wiesn-Anstich gibt es erst seit 1950“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('oktoberfest-tapping-1950', '2026-09-19T00:00:00+02:00', 'holiday', '🍺', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'oktoberfest-tapping-1950', 'de', 'wiesn-anstich-erst-seit-1950',
  'Den Wiesn-Anstich gibt es erst seit 1950',
  'Das Oktoberfest ist über 200 Jahre alt, sein berühmtestes Ritual aber nicht. Und beim ersten Mal ging es ordentlich daneben.',
  'Der Anstich durch den Münchner Oberbürgermeister samt „O’zapft is!“ wurde erst 1950 von Thomas Wimmer eingeführt, der dafür 17 oder sogar 19 Schläge brauchte.',
  'Heute um 12 Uhr ist es wieder so weit: Der Münchner Oberbürgermeister haut im Schottenhamel-Festzelt den Zapfhahn ins erste Fass und ruft „O’zapft is!“. Klingt nach uralter Tradition. **Tatsächlich gibt es das Ritual erst seit 1950.**

## Ein Bürgermeister mit wenig Übung

Laut der Stadt München wurde die Tradition am 16. September 1950 begründet, vom damaligen Oberbürgermeister Thomas Wimmer. Elegant war die Premiere nicht. Wie viele Schläge Wimmer brauchte, bis endlich Bier floss, ist nicht einmal ganz klar: Die Stadt und das offizielle Oktoberfest-Portal nennen 17 Schläge, die Münchner Abendzeitung schreibt von 19. Einig sind sich alle: Es waren ziemlich viele.

Auch warum ausgerechnet das Schottenhamel-Zelt zum Schauplatz wurde, ist laut Stadt „nicht zweifelsfrei geklärt“. Eine Erzählung geht so: Wimmer hatte kurz zuvor auf der Theresienhöhe eine Messe eröffnet, es regnete, die Zeit war knapp, und er nahm den kürzesten Weg ins nächste Zelt. Das Oktoberfest-Portal betont, dass nicht hinreichend belegt ist, ob es so war oder ob das eher eine Legende ist.

## Rekord: zwei Schläge

Seine Nachfolger wurden mit der Zeit geschickter. Die Bestmarke liegt bei zwei Schlägen, die sich die Alt-Oberbürgermeister Christian Ude und Dieter Reiter teilen. Ude brauchte laut Abendzeitung bei seiner Premiere 1993 allerdings noch sieben.

Seit 1980 bekommt außerdem traditionell der bayerische Ministerpräsident die erste frisch gezapfte Maß, überreicht vom Oberbürgermeister.

> Auch der Spruch ist nicht unfallsicher: Erich Kiesl vergaß den Ruf laut Abendzeitung bei seinem ersten Anstich ganz. Beim nächsten Mal rief er „Izapft os!“.

Wenn heute also ein Schlag danebengeht: Das gehört seit 1950 zur Tradition.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('oktoberfest-tapping-1950', 'de', 1, 'Steinkrug mit Zinndeckel, 1 Liter', 'Steinkrug Zinndeckel 1 Liter', 'Ein schwerer Keramikkrug mit Deckel, der das Bier kühl hält und ein Leben lang im Schrank stehen kann.'),
  ('oktoberfest-tapping-1950', 'de', 2, 'Zapfset mit Holzschlegel und Messinghahn', 'Zapfhahn Messing Holzfass Schlegel', 'Damit kannst du ein kleines Holzfass zuhause selbst anstechen, ganz wie im Festzelt.'),
  ('oktoberfest-tapping-1950', 'de', 3, 'Backbuch für bayerische Brezen', 'Backbuch Brezen bayerisch', 'Erklärt Schritt für Schritt, wie Laugenbrezen mit Biss und glänzender Kruste gelingen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('oktoberfest-tapping-1950', 'de', 1, 'muenchen.de: O''zapft is: Der Oktoberfest-Anstich', 'https://www.muenchen.de/veranstaltungen/oktoberfest/der-anstich'),
  ('oktoberfest-tapping-1950', 'de', 2, 'Oktoberfest.de: Ozapft is! Der Münchner Oberbürgermeister eröffnet die Wiesn', 'https://www.oktoberfest.de/informationen/termine/eroeffnung-und-anstich-des-oktoberfests'),
  ('oktoberfest-tapping-1950', 'de', 3, 'Abendzeitung München: „Izapft os“ oder „Ozapft is“?', 'https://www.abendzeitung-muenchen.de/inhalt.oktoberfest-izapft-os-oder-ozapft-is.62f87382-6392-4919-a542-ae61b78b133f.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'oktoberfest-tapping-1950', 'en', 'oktoberfest-tapping-only-since-1950',
  'The Oktoberfest keg tapping only started in 1950',
  'Oktoberfest is more than 200 years old, but its most famous ritual isn''t. And the very first one went pretty badly.',
  'The opening tap by Munich''s mayor with the cry "O''zapft is!" was only introduced in 1950 by Thomas Wimmer, who needed 17 or even 19 strokes to do it.',
  'Today at 12 noon, it happens again: in the Schottenhamel tent, Munich''s mayor hammers the tap into the first keg and shouts "O''zapft is!" ("It''s tapped!"). Sounds like an ancient tradition. **In fact, the ritual only goes back to 1950.**

## A mayor without much practice

According to the City of Munich, the tradition was started on September 16, 1950, by then-mayor Thomas Wimmer. The premiere wasn''t elegant. It isn''t even entirely clear how many strokes Wimmer needed before the beer finally flowed: the city and the official Oktoberfest website say 17 strokes, while the Munich newspaper Abendzeitung says 19. Everyone agrees it was a lot.

Why the Schottenhamel tent of all places became the stage is "not clarified beyond doubt", according to the city. One story goes like this: Wimmer had just opened a trade fair on the Theresienhöhe, it was raining, time was short, and he took the shortest route into the nearest tent. The Oktoberfest website stresses that it''s not well documented whether it really happened that way or is more of a legend.

## The record: two strokes

His successors got better at it. The record is two strokes, shared by former mayors Christian Ude and Dieter Reiter. At his premiere in 1993, though, Ude still needed seven, according to the Abendzeitung.

Since 1980, the Bavarian minister-president has also traditionally received the first freshly tapped liter of beer, handed over by the mayor.

> Even the catchphrase isn''t accident-proof: according to the Abendzeitung, mayor Erich Kiesl forgot the cry entirely at his first tapping. The next time, he shouted the scrambled "Izapft os!".

So if a stroke misses today: that has been part of the tradition since 1950.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('oktoberfest-tapping-1950', 'en', 1, 'Stoneware beer stein with pewter lid, 1 liter', 'stoneware beer stein pewter lid 1 liter', 'A heavy ceramic stein with a lid that keeps beer cool and can stay on the shelf for a lifetime.'),
  ('oktoberfest-tapping-1950', 'en', 2, 'Tapping set with wooden mallet and brass tap', 'brass beer tap wooden keg mallet', 'Lets you tap a small wooden keg at home, just like in the beer tent.'),
  ('oktoberfest-tapping-1950', 'en', 3, 'Baking book for Bavarian pretzels', 'Bavarian pretzel baking book', 'Explains step by step how to make lye pretzels with bite and a glossy crust.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('oktoberfest-tapping-1950', 'en', 1, 'muenchen.de: O''zapft is: Der Oktoberfest-Anstich', 'https://www.muenchen.de/veranstaltungen/oktoberfest/der-anstich'),
  ('oktoberfest-tapping-1950', 'en', 2, 'Oktoberfest.de: Ozapft is! Der Münchner Oberbürgermeister eröffnet die Wiesn', 'https://www.oktoberfest.de/informationen/termine/eroeffnung-und-anstich-des-oktoberfests'),
  ('oktoberfest-tapping-1950', 'en', 3, 'Abendzeitung München: „Izapft os“ oder „Ozapft is“?', 'https://www.abendzeitung-muenchen.de/inhalt.oktoberfest-izapft-os-oder-ozapft-is.62f87382-6392-4919-a542-ae61b78b133f.html');
