-- WTFact-Fakt „Forscher haben 2015 den Weihnachtsgeist im Gehirn gesucht, und gefunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('christmas-spirit-brain', '2026-12-20T00:00:00+01:00', 'body', '🧠', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'christmas-spirit-brain', 'de', 'weihnachtsgeist-im-gehirn',
  'Forscher haben 2015 den Weihnachtsgeist im Gehirn gesucht, und gefunden',
  'Ein dänisches Team zeigte Testpersonen Weihnachtsbilder im Hirnscanner. Bei manchen leuchtete es auf.',
  'In einer Studie von 2015 reagierten bei Menschen, die Weihnachten feiern, mehrere Hirnregionen auf Weihnachtsbilder, bei Menschen ohne Weihnachtstradition nicht.',
  'Gibt es den Weihnachtsgeist wirklich, oder ist das nur ein schönes Wort für Plätzchenduft und Lichterketten? Ein Team aus Kopenhagen hat 2015 nachgesehen, und zwar ganz wissenschaftlich mit einem Hirnscanner.

## Weihnachtsbilder im Scanner

Die Forschenden um den Neurologen Anders Hougaard luden laut The Local 20 Menschen ein. Etwa die Hälfte hatte noch nie Weihnachten gefeiert. In Gesprächen wurden die Teilnehmenden in zwei Gruppen sortiert: eine Weihnachtsgruppe mit positiven Erinnerungen an das Fest und eine Gruppe, der Weihnachten egal war.

Dann lagen alle im Kernspintomografen. Laut AuntMinnie sahen sie über eine Videobrille 84 Bilder, abwechselnd weihnachtliche Szenen und ganz alltägliche Fotos. Der Scanner zeichnete auf, welche Hirnregionen dabei aktiver wurden.

## Wo der Weihnachtsgeist wohnt

Das Ergebnis: Bei der Weihnachtsgruppe wurden bei den Festbildern mehrere Hirnregionen deutlich aktiver als bei der anderen Gruppe. Laut The Local waren es fünf Bereiche, darunter solche, die mit Spiritualität, Sinneswahrnehmung und dem Erkennen von Gefühlen in Gesichtern zu tun haben. Laut AuntMinnie gehörten motorische Areale und Teile des Scheitellappens dazu.

Ganz ernst gemeint war das nicht. Die Studie erschien in der Weihnachtsausgabe des British Medical Journal, die jedes Jahr augenzwinkernde, aber echte Forschung druckt. Die Forschenden sprachen laut The Local selbst von fröhlichen und faszinierenden Ergebnissen. Und sie betonten, dass sich der Weihnachtsgeist nicht allein durch Hirnaktivität erklären lässt.

> Bonusfakt: Laut The Local rahmte das Team die Arbeit mit einem erfundenen „Bah-Humbug-Syndrom“, benannt nach dem Ausruf des Weihnachtsmuffels Ebenezer Scrooge.

Wer sich also beim Anblick einer Lichterkette warm ums Herz fühlt, hat dafür jetzt sogar ein Gehirnbild.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('christmas-spirit-brain', 'de', 1, 'Populärwissenschaftliches Buch über das Gehirn', 'Buch Gehirn populärwissenschaftlich Bestseller', 'Erklärt verständlich, was in unserem Kopf passiert.'),
  ('christmas-spirit-brain', 'de', 2, 'Eine Christmas Carol, illustrierte Ausgabe', 'Eine Weihnachtsgeschichte Dickens illustriert', 'Die Geschichte von Scrooge, dem berühmtesten Weihnachtsmuffel.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('christmas-spirit-brain', 'de', 1, 'The Local Denmark: Danish brain study locates ''Christmas Spirit''', 'https://www.thelocal.dk/20151217/danish-isolates-christmas-spirit-in-human-brain'),
  ('christmas-spirit-brain', 'de', 2, 'AuntMinnie: fMRI finds the Christmas spirit alive and well', 'https://www.auntminnie.com/clinical-news/mri/article/15614014/fmri-finds-the-christmas-spirit-alive-and-well');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'christmas-spirit-brain', 'en', 'christmas-spirit-in-the-brain',
  'In 2015, researchers looked for the Christmas spirit in the brain, and found it',
  'A Danish team showed people Christmas pictures in a brain scanner. In some, the brain lit up.',
  'In a 2015 study, several brain regions responded to Christmas images in people who celebrate Christmas, but not in people without Christmas traditions.',
  'Does the Christmas spirit really exist? A team in Copenhagen checked in 2015, using a brain scanner.

## Christmas pictures in the scanner

According to The Local, the researchers led by neurologist Anders Hougaard recruited 20 people. About half had never celebrated Christmas. Interviews sorted the participants into two groups: a Christmas group with happy memories of the holiday and a group that didn''t care about it.

Then everyone lay in an MRI scanner. According to AuntMinnie, they watched 84 images through video goggles, alternating between Christmas scenes and ordinary everyday photos. The scanner recorded which brain regions became more active.

## Where the Christmas spirit lives

The result: when the Christmas group saw the festive pictures, several brain regions became clearly more active than in the other group. According to The Local, five areas lit up, including ones linked to spirituality, the physical senses and recognizing emotions in faces. AuntMinnie lists motor areas and parts of the parietal lobe among them.

It wasn''t entirely serious. The study ran in the Christmas issue of the British Medical Journal, which publishes tongue-in-cheek but real research every year. The researchers themselves called their findings merry and intriguing, according to The Local. And they stressed that the Christmas spirit can''t be explained by brain activity alone.

> Bonus fact: According to The Local, the team framed the work around a made-up "bah humbug syndrome", named after the famous grumble of Christmas grump Ebenezer Scrooge.

So if a string of lights makes you feel warm inside, there''s now even a brain scan to back you up.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('christmas-spirit-brain', 'en', 1, 'Popular science book about the brain', 'popular science brain book bestseller', 'Explains clearly what goes on inside our heads.'),
  ('christmas-spirit-brain', 'en', 2, 'A Christmas Carol, illustrated edition', 'A Christmas Carol Dickens illustrated edition', 'The story of Scrooge, the most famous Christmas grump.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('christmas-spirit-brain', 'en', 1, 'The Local Denmark: Danish brain study locates ''Christmas Spirit''', 'https://www.thelocal.dk/20151217/danish-isolates-christmas-spirit-in-human-brain'),
  ('christmas-spirit-brain', 'en', 2, 'AuntMinnie: fMRI finds the Christmas spirit alive and well', 'https://www.auntminnie.com/clinical-news/mri/article/15614014/fmri-finds-the-christmas-spirit-alive-and-well');
