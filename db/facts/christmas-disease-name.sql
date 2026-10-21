-- WTFact-Fakt „Eine Krankheit heißt „Christmas“, und zwar wegen eines kleinen Jungen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('christmas-disease-name', '2026-12-07T00:00:00+01:00', 'body', '🩸', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'christmas-disease-name', 'de', 'christmas-krankheit-name',
  'Eine Krankheit heißt „Christmas“, und zwar wegen eines kleinen Jungen',
  'Mit Weihnachten hat der Name nichts zu tun. Mit einem Patienten namens Stephen dafür umso mehr.',
  'Die Blutgerinnungsstörung Hämophilie B heißt im Englischen „Christmas disease“, weil der erste beschriebene Patient Stephen Christmas hieß.',
  'Wer im Medizinlexikon auf „Christmas disease“ stößt, denkt an zu viel Plätzchen oder Stress beim Geschenkekauf. Falsch gedacht. Die Krankheit heißt so, weil ein Junge so hieß.

## Ein Patient, der anders war

Anfang der 1950er Jahre untersuchten Forschende in Großbritannien einen kleinen Jungen mit Blutungen, die nicht aufhören wollten. Sein Name: Stephen Christmas. Die Diagnose schien klar, Hämophilie, die klassische Bluterkrankheit. Bei ihr fehlt dem Blut ein Eiweiß, das für die Gerinnung nötig ist, der Faktor VIII.

Doch bei Stephen fehlte etwas anderes. Laut CSL fanden die Forscherin Rosemary Biggs und ihr Kollege Robert Macfarlane heraus, dass sein Blut genug Faktor VIII hatte. Ihm fehlte ein anderer Gerinnungsfaktor, der heute Faktor IX heißt. Es war also eine eigene Krankheit, die bis dahin mit der bekannten Hämophilie verwechselt worden war.

## Ein Name zum Fest

1952 veröffentlichte das Team seine Entdeckung im British Medical Journal. Der Titel laut Scientific American: „Christmas disease: a condition previously mistaken for haemophilia“. Benannt nach dem Patienten, wie es damals üblich war. Heute spricht man meist von Hämophilie B, doch der alte Name ist bis heute in Gebrauch.

Der Name hat übrigens nichts mit dem Fest zu tun, betont CSL ausdrücklich. Der Junge hieß einfach so, und die Forschenden fanden es offenbar passend, ihn so zu ehren.

> Bonusfakt: Laut Scientific American war Stephen erst 2 Jahre alt, als 1949 bei ihm eine Bluterkrankheit festgestellt wurde. Dass es eine ganz eigene Form war, zeigte sich erst Jahre später.

Ein Nachname reicht manchmal, um für immer im Lehrbuch zu stehen, und dieser klingt dort jedes Jahr ein bisschen festlicher.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('christmas-disease-name', 'de', 1, 'Buch über Geschichte der Medizin', 'Buch Geschichte der Medizin Entdeckungen', 'Erzählt, wie wichtige medizinische Entdeckungen zustande kamen.'),
  ('christmas-disease-name', 'de', 2, 'Anatomie-Bildband für Einsteiger', 'Anatomie Bildband Einsteiger', 'Zeigt anschaulich, wie Blut und Körper funktionieren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('christmas-disease-name', 'de', 1, 'Scientific American: (Merry) Christmas Disease', 'https://www.scientificamerican.com/blog/disease-prone/merry-christmas-disease'),
  ('christmas-disease-name', 'de', 2, 'CSL Vita: Explainer: Why Is Hemophilia B Called Christmas Disease?', 'https://www.csl.com/we-are-csl/vita-original-stories/2022/explainer-why-is-hemophilia-b-called-christmas-disease'),
  ('christmas-disease-name', 'de', 3, 'Whonamedit?: Christmas disease', 'https://www.whonamedit.com/synd.cfm/2321.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'christmas-disease-name', 'en', 'christmas-disease-named-after-boy',
  'A disease is called ‘Christmas’ because of one small boy',
  'The name has nothing to do with the holiday. It has everything to do with a patient called Stephen.',
  'The bleeding disorder hemophilia B is also called "Christmas disease" because the first patient described with it was named Stephen Christmas.',
  'If you come across "Christmas disease" in a medical dictionary, you might think of too many cookies or gift-shopping stress. Wrong. The disease is called that because a boy was called that.

## A patient who was different

In the early 1950s, researchers in Britain examined a young boy whose bleeding wouldn''t stop. His name: Stephen Christmas. The diagnosis seemed obvious: hemophilia, the classic bleeding disorder, in which the blood lacks a protein needed for clotting called factor VIII.

But Stephen was missing something else. According to CSL, researcher Rosemary Biggs and her colleague Robert Macfarlane found that his blood had plenty of factor VIII. What he lacked was a different clotting factor, now known as factor IX. So this was a separate disease that had been mixed up with hemophilia until then.

## A name for the season

In 1952, the team published their discovery in the British Medical Journal. The title, according to Scientific American: "Christmas disease: a condition previously mistaken for haemophilia". Named after the patient, as was common at the time. Today it''s mostly called hemophilia B, but the old name is still in use.

The name has nothing to do with the holiday, CSL stresses. The boy simply had that surname, and the researchers apparently found it fitting to honor him that way.

> Bonus fact: According to Scientific American, Stephen was only 2 years old when he was diagnosed with a bleeding disorder in 1949. That it was a form of its own only became clear years later.

Sometimes a surname is all it takes to end up in textbooks forever, and this one sounds a little more festive there every December.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('christmas-disease-name', 'en', 1, 'History of medicine book', 'history of medicine discoveries book', 'Tells how major medical discoveries came about.'),
  ('christmas-disease-name', 'en', 2, 'Illustrated anatomy book for beginners', 'illustrated anatomy book beginners', 'Shows clearly how blood and the body work.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('christmas-disease-name', 'en', 1, 'Scientific American: (Merry) Christmas Disease', 'https://www.scientificamerican.com/blog/disease-prone/merry-christmas-disease'),
  ('christmas-disease-name', 'en', 2, 'CSL Vita: Explainer: Why Is Hemophilia B Called Christmas Disease?', 'https://www.csl.com/we-are-csl/vita-original-stories/2022/explainer-why-is-hemophilia-b-called-christmas-disease'),
  ('christmas-disease-name', 'en', 3, 'Whonamedit?: Christmas disease', 'https://www.whonamedit.com/synd.cfm/2321.html');
