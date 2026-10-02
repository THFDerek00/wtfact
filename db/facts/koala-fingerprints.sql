-- WTFact-Fakt „Koalas haben fast dieselben Fingerabdrücke wie du“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('koala-fingerprints', '2026-08-31', 'nature', '🐨', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'koala-fingerprints', 'de', 'koala-fingerabdruecke',
  'Koalas haben fast dieselben Fingerabdrücke wie du',
  'Schleifen, Wirbel, Bögen: Unter dem Mikroskop ist ein Koala-Finger kaum von deinem zu unterscheiden.',
  'Koala-Fingerabdrücke ähneln menschlichen so sehr, dass man sie selbst unter dem Elektronenmikroskop kaum auseinanderhält.',
  'Fingerabdrücke gelten als das menschlichste Merkmal überhaupt. Polizei, Smartphone, Grenzkontrolle: Alle verlassen sich darauf, dass deine Papillarleisten einzigartig sind. Umso schräger, dass ausgerechnet ein schläfriger Beuteltier-Kletterer aus Australien fast dieselben hat.

## Entdeckt im Wildpark

Mitte der 1990er-Jahre untersuchte der Anthropologe und Rechtsmediziner Maciej Henneberg von der University of Adelaide die Pfoten von Koalas in einem Wildpark bei Adelaide. Was er fand, überraschte ihn: **Koalas haben echte Fingerabdrücke mit Schleifen, Wirbeln und Bögen**, also genau den Grundmustern, die auch Kriminalisten bei Menschen unterscheiden.

Die Ähnlichkeit ist enorm. Laut Wikipedia ist es selbst mit einem Elektronenmikroskop ziemlich schwierig, die Abdrücke eines Koalas von denen eines Menschen zu unterscheiden.

## Gleiche Lösung, völlig andere Familie

Das Verblüffende: Koalas sind nicht eng mit uns verwandt. Unsere letzten gemeinsamen Vorfahren lebten nach Angaben von PBS NOVA vor mehr als 100 Millionen Jahren. Viele Primaten wie Schimpansen und Gorillas haben Fingerabdrücke. Außerhalb der Primaten sind solche Leisten dagegen selten, laut Wikipedia gehört neben dem Koala etwa der nordamerikanische Fischermarder dazu.

Fachleute sprechen von **konvergenter Evolution**: Zwei Arten entwickeln unabhängig voneinander dieselbe Lösung, weil sie vor ähnlichen Herausforderungen stehen. Henneberg vermutet, dass die Rillen den Koalas beim Fressen helfen. Sie müssen sich an Eukalyptusästen festhalten und gleichzeitig gezielt einzelne Blätter greifen und prüfen. **Die Leisten verbessern den Grip und das Tastgefühl.**

## Koalas am Tatort?

Henneberg merkte damals augenzwinkernd an, dass Koala-Abdrücke an einem Tatort zwar extrem unwahrscheinlich seien, die Polizei die Möglichkeit aber kennen sollte. Daraus wurde ein Internet-Mythos, nach dem Ermittler schon reihenweise Koalas verdächtigt hätten.

> Belegt ist kein einziger solcher Fall. Ein australischer Polizist sagte dem Faktencheck-Portal Snopes, er habe nie von einer Verwechslung gehört.

Am Ende ist es fast beruhigend: Dein Fingerabdruck ist einzigartig. Nur eben nicht ganz so exklusiv, wie du dachtest.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('koala-fingerprints', 'de', 1, 'Koala-Kuscheltier aus Plüsch', 'Koala Kuscheltier Plüsch', 'Weich, knuffig und zum Glück ohne Krallen. Passt auf jedes Sofa.'),
  ('koala-fingerprints', 'de', 2, 'Fingerabdruck-Baum als Gästebuch-Leinwand', 'Fingerabdruck Baum Gästebuch Leinwand', 'Alle Gäste setzen ihren Fingerabdruck als Blatt an den Baum. Ein schönes Erinnerungsstück für Partys.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('koala-fingerprints', 'de', 1, 'Wikipedia: Fingerprint', 'https://en.wikipedia.org/wiki/Fingerprint'),
  ('koala-fingerprints', 'de', 2, 'PBS NOVA: Koalas have fingerprints almost identical to ours', 'https://www.pbs.org/wgbh/nova/article/koala-fingerprints/'),
  ('koala-fingerprints', 'de', 3, 'Snopes: Are There Documented Cases of Koala Fingerprints Confusing Crime-Scene Investigators?', 'https://www.snopes.com/fact-check/koala-fingerprints-crime-scene/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'koala-fingerprints', 'en', 'koala-fingerprints',
  'Koalas have almost the same fingerprints as you',
  'Loops, whorls, arches: under a microscope, a koala''s fingertip is hard to tell from yours.',
  'Koala fingerprints look so much like human ones that they''re hard to tell apart even under an electron microscope.',
  'Fingerprints feel like the most human thing about you. Police, your phone, border control: they all rely on the ridges on your fingertips being one of a kind. So it''s pretty strange that a sleepy, tree-climbing marsupial from Australia has nearly the same ones.

## Discovered at a wildlife park

In the mid-1990s, Maciej Henneberg, an anthropologist and forensic scientist at the University of Adelaide, examined koala paws at a wildlife park near Adelaide. What he found surprised him: **koalas have real fingerprints with loops, whorls and arches**, the same basic patterns crime-scene experts use to tell humans apart.

The resemblance is huge. According to Wikipedia, even with an electron microscope it can be quite difficult to tell a koala''s prints from a human''s.

## Same solution, totally different family

Here''s the twist: koalas aren''t closely related to us. Our last common ancestor lived more than 100 million years ago, according to PBS NOVA. Plenty of primates, like chimps and gorillas, have fingerprints. Outside the primates, though, these ridges are rare. According to Wikipedia, one of the few other examples is the North American fisher.

Scientists call this **convergent evolution**: two species independently arrive at the same solution because they face similar challenges. Henneberg suspects the ridges help koalas eat. They have to hang on to eucalyptus branches while picking out and checking individual leaves. **The ridges improve both grip and sense of touch.**

## Koalas at the crime scene?

Back then, Henneberg noted that while it was extremely unlikely koala prints would turn up at a crime scene, police should at least be aware of the possibility. The internet turned that into a myth about detectives regularly mixing up koalas and suspects.

> There''s no documented case of it. An Australian police officer told the fact-checking site Snopes he had never heard of such a mix-up.

In the end, it''s almost comforting: your fingerprint really is unique. It''s just not quite as exclusive as you thought.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('koala-fingerprints', 'en', 1, 'Koala plush toy', 'koala plush stuffed animal', 'Soft, cuddly and luckily claw-free. Fits on any couch.'),
  ('koala-fingerprints', 'en', 2, 'Fingerprint tree guest book canvas', 'fingerprint tree guest book canvas', 'Every guest adds a thumbprint as a leaf. A sweet keepsake for parties.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('koala-fingerprints', 'en', 1, 'Wikipedia: Fingerprint', 'https://en.wikipedia.org/wiki/Fingerprint'),
  ('koala-fingerprints', 'en', 2, 'PBS NOVA: Koalas have fingerprints almost identical to ours', 'https://www.pbs.org/wgbh/nova/article/koala-fingerprints/'),
  ('koala-fingerprints', 'en', 3, 'Snopes: Are There Documented Cases of Koala Fingerprints Confusing Crime-Scene Investigators?', 'https://www.snopes.com/fact-check/koala-fingerprints-crime-scene/');
