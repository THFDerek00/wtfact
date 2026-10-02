-- WTFact-Fakt „Gleiche DNA, andere Finger: Eineiige Zwillinge haben verschiedene Fingerabdrücke“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('twin-fingerprints', '2026-09-04', 'body', '👆', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'twin-fingerprints', 'de', 'zwillinge-fingerabdruecke',
  'Gleiche DNA, andere Finger: Eineiige Zwillinge haben verschiedene Fingerabdrücke',
  'Eineiige Zwillinge teilen ihr Erbgut. Ihre Fingerabdrücke aber nicht. Schuld ist die Zeit im Bauch.',
  'Selbst eineiige Zwillinge mit identischer DNA haben unterschiedliche Fingerabdrücke, weil die Rillen im Mutterleib mitgeprägt werden.',
  'Eineiige Zwillinge sind so etwas wie eine natürliche Kopie. Sie entstehen aus derselben befruchteten Eizelle und haben deshalb praktisch dieselbe DNA. Manche sehen sich so ähnlich, dass selbst Freunde sie verwechseln. Aber ein Fingerabdruck-Scanner würde das nie tun.

## Die DNA liefert nur den Bauplan

**Selbst eineiige Zwillinge haben unterschiedliche Fingerabdrücke.** Das liegt daran, dass die Gene beim Fingerabdruck nicht alles festlegen. Sie geben eher das grobe Muster vor. Deshalb sind sich die Abdrücke von Zwillingen laut BBC Science Focus meist ähnlicher als die von zwei Fremden. Fachleute und Erkennungssoftware können sie trotzdem auseinanderhalten.

Die feinen Details, also wo eine Linie endet, sich gabelt oder eine kleine Insel bildet, entstehen auf einem anderen Weg.

## Geprägt im Mutterleib

Die Rillen auf deinen Fingerkuppen, Fachleute nennen sie Papillarleisten, bilden sich laut BBC Science Focus **zwischen der 13. und der 19. Woche der Schwangerschaft**. In dieser Zeit wirken viele Einflüsse auf die wachsenden Finger ein:

- die genaue Lage im Mutterleib
- die Länge der Nabelschnur
- der Blutdruck
- die Ernährung
- wie schnell die Finger wachsen

Zwei Zwillinge teilen sich zwar die Gebärmutter, liegen aber nie exakt gleich. Jeder Finger wächst also unter leicht anderen Bedingungen. **Diese winzigen Unterschiede reichen, um ein einzigartiges Muster zu erzeugen.** Einmal angelegt, bleibt es dann ein Leben lang.

## Zufall mit System

Man kann sich das vorstellen wie zwei Bäcker mit demselben Rezept. Der Kuchen wird bei beiden ähnlich, aber nie bis auf die letzte Krümelstruktur identisch. Die DNA ist das Rezept, der Mutterleib die Küche, in der jeder Ofen ein bisschen anders heizt.

> Die Wahrscheinlichkeit, dass zwei nicht verwandte Menschen identische Fingerabdrücke haben, liegt laut BBC Science Focus bei weniger als 1 zu 64 Milliarden.

Zwillinge teilen also vieles: Geburtstag, Gene, oft sogar Klamotten. Aber am Handy-Sensor kommt jeder nur mit seinem eigenen Finger rein.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('twin-fingerprints', 'de', 1, 'Detektiv-Set mit Fingerabdruck-Pulver', 'Detektiv Set Fingerabdrücke Kinder', 'Mit Pinsel, Pulver und Klebefolie Fingerabdrücke sichern wie im Krimi. Macht auch Erwachsenen Spaß.'),
  ('twin-fingerprints', 'de', 2, 'Lupe mit LED-Licht', 'Lupe mit LED Licht', 'Damit siehst du die Linien auf deinen Fingerkuppen gestochen scharf. Praktisch auch für Kleingedrucktes.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('twin-fingerprints', 'de', 1, 'Wikipedia: Fingerabdruck', 'https://de.wikipedia.org/wiki/Fingerabdruck'),
  ('twin-fingerprints', 'de', 2, 'BBC Science Focus: Why do identical twins have different fingerprints?', 'https://www.sciencefocus.com/the-human-body/why-do-identical-twins-have-different-fingerprints-2'),
  ('twin-fingerprints', 'de', 3, 'ABC Science: Fingerprints Of Twins', 'https://www.abc.net.au/science/articles/2004/11/04/1234875.htm');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'twin-fingerprints', 'en', 'twins-fingerprints',
  'Same DNA, different fingers: identical twins don''t share fingerprints',
  'Identical twins share their genes. Their fingerprints, not so much. Blame their time in the womb.',
  'Even identical twins with the same DNA have different fingerprints, because the ridges are shaped in the womb.',
  'Identical twins are basically nature''s copy-paste. They come from the same fertilized egg, so they have practically the same DNA. Some look so alike that even their friends mix them up. A fingerprint scanner never would, though.

## DNA is only the blueprint

**Even identical twins have different fingerprints.** That''s because genes don''t decide everything about your prints. They set the rough pattern. That''s why, according to BBC Science Focus, twins'' fingerprints usually look more alike than two strangers''. Experts and recognition software can still tell them apart.

The fine details, like where a line ends, splits or forms a little island, come from somewhere else.

## Shaped in the womb

The ridges on your fingertips form, according to BBC Science Focus, **between weeks 13 and 19 of pregnancy**. During that time, lots of things affect the growing fingers:

- the exact position in the womb
- the length of the umbilical cord
- blood pressure
- nutrition
- how fast the fingers grow

Twins share a womb, but they never lie in exactly the same spot. So every finger grows under slightly different conditions. **Those tiny differences are enough to create a unique pattern.** Once it''s formed, it stays with you for life.

## Randomness with a system

Think of it like two bakers with the same recipe. Both cakes turn out similar, but never identical down to the last crumb. DNA is the recipe, the womb is the kitchen, and every oven runs a little differently.

> According to BBC Science Focus, the chance of two unrelated people having identical fingerprints is less than 1 in 64 billion.

So twins share a lot: a birthday, their genes, often even clothes. But each one only gets into their phone with their own finger.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('twin-fingerprints', 'en', 1, 'Kids'' detective fingerprint kit', 'detective fingerprint kit for kids', 'Dust, brush and lift prints like on a crime show. Fun for adults too, honestly.'),
  ('twin-fingerprints', 'en', 2, 'LED magnifying glass', 'magnifying glass with LED light', 'Lets you see the lines on your fingertips in sharp detail. Handy for tiny print too.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('twin-fingerprints', 'en', 1, 'Wikipedia: Fingerprint', 'https://en.wikipedia.org/wiki/Fingerprint'),
  ('twin-fingerprints', 'en', 2, 'BBC Science Focus: Why do identical twins have different fingerprints?', 'https://www.sciencefocus.com/the-human-body/why-do-identical-twins-have-different-fingerprints-2'),
  ('twin-fingerprints', 'en', 3, 'ABC Science: Fingerprints Of Twins', 'https://www.abc.net.au/science/articles/2004/11/04/1234875.htm');
