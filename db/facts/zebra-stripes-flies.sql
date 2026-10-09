-- WTFact-Fakt „Forschende steckten Pferde in Zebrakostüme, um das Rätsel der Streifen zu lösen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('zebra-stripes-flies', NULL, 'animals', '🦓', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zebra-stripes-flies', 'de', 'pferde-im-zebrakostuem-streifen-gegen-bremsen',
  'Forschende steckten Pferde in Zebrakostüme, um das Rätsel der Streifen zu lösen',
  'Warum Zebras gestreift sind, war lange umstritten. Ein Experiment mit verkleideten Pferden lieferte eine überraschend einfache Antwort.',
  'In einer Studie von 2019 landeten Bremsen auf Zebras weniger als ein Viertel so oft wie auf Pferden, und Pferde in gestreiften Decken bekamen ebenfalls weniger Besuch.',
  'Warum hat ein Zebra Streifen? Tarnung, Kühlung, Erkennungszeichen für die Herde: Über die Jahre gab es viele Ideen. Ein Team aus Großbritannien und den USA hat eine davon ziemlich direkt getestet, mit Pferden im Zebra-Outfit.

## Ein Pferdehof als Labor

Die Studie erschien 2019 im Fachjournal PLOS ONE. Laut der University of Bristol beobachteten Tim Caro von der University of California, Davis, und Martin How von der University of Bristol auf einem Pferdehof in North Somerset in England Zebras und Hauspferde. Sie filmten, wie sich Bremsen den Tieren näherten.

Laut ScienceDaily umkreisten und berührten die Fliegen Zebras und Pferde ähnlich oft. Gelandet sind sie auf Zebras aber weniger als ein Viertel so oft. Der Grund: Vor einer Landung auf einem Pferd bremsten die Fliegen ab. Bei Zebras taten sie das nicht. Sie flogen stattdessen oft einfach gegen das Tier und wieder weg.

## Der Kostüm-Test

Nun könnte man einwenden, Zebras riechen anders oder verhalten sich anders als Pferde. Deshalb kam der zweite Teil des Experiments. Dieselben Pferde trugen nacheinander schwarze, weiße und zebragestreifte Decken. Laut der University of Bristol landeten auf den gestreiften Decken weniger Bremsen als auf den einfarbigen.

Ein Detail macht das Ergebnis besonders überzeugend. Laut ScienceDaily wurde der unbedeckte Kopf der Pferde genauso oft angeflogen wie sonst. Es lag also wirklich am Muster und nicht am Pferd.

> Bonusfakt: Laut der University of Bristol blieben die Fliegen, die es doch auf ein Zebra schafften, kürzer sitzen, und nur wenige versuchten überhaupt, Blut zu saugen.

## Streifen als Fliegenschutz

Die Forschenden sehen darin einen starken Hinweis, dass Zebrastreifen vor allem gegen blutsaugende Bremsen entstanden sind. Ihre Vermutung: Die Streifen bringen die Fliegen aus nächster Nähe durcheinander, sodass sie nicht sauber landen können. Laut der University of Bristol könnten gestreifte Fliegendecken deshalb auch für Pferde nützlich sein.

Das berühmteste Muster der Savanne ist also kein Modestatement, sondern ein Fliegengitter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zebra-stripes-flies', 'de', 1, 'Zebra-Kuscheltier', 'Zebra Kuscheltier Plüsch', 'Schwarz-weiß gestreift und garantiert fliegenfrei im Bett.'),
  ('zebra-stripes-flies', 'de', 2, 'Bildband über die Tiere der Serengeti', 'Bildband Serengeti Tiere', 'Zebras, Gnus und Löwen in großformatigen Fotos aus der Savanne.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zebra-stripes-flies', 'de', 1, 'University of Bristol: Research reveals why the zebra got its stripes', 'https://bristol.ac.uk/news/2019/february/zebra-stripes.html'),
  ('zebra-stripes-flies', 'de', 2, 'ScienceDaily: Zebra stripes are not good landing strips', 'https://www.sciencedaily.com/releases/2019/02/190220145032.htm');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zebra-stripes-flies', 'en', 'horses-in-zebra-coats-stripes-vs-flies',
  'Researchers dressed horses in zebra coats to solve the mystery of the stripes',
  'Why zebras have stripes was debated for a long time. An experiment with horses in costume gave a surprisingly simple answer.',
  'In a 2019 study, horse flies landed on zebras less than a quarter as often as on horses, and horses wearing striped coats got fewer visits too.',
  'Why does a zebra have stripes? Camouflage, cooling, a signal for the herd: over the years there have been plenty of ideas. A team from the UK and the US tested one of them very directly, with horses in zebra outfits.

## A horse farm as a lab

The study was published in 2019 in the journal PLOS ONE. According to the University of Bristol, Tim Caro of the University of California, Davis, and Martin How of the University of Bristol watched zebras and domestic horses at a livery in North Somerset, England. They filmed horse flies as they approached the animals.

According to ScienceDaily, the flies circled and touched zebras and horses about equally often. But they landed on zebras less than a quarter as often. The reason: before landing on a horse, the flies slowed down. With zebras they didn''t, and often simply bumped into the animal and flew off again.

## The costume test

You could argue that zebras smell or behave differently from horses. That''s where the second part of the experiment came in. The same horses wore black, white and zebra-striped coats in turn. According to the University of Bristol, fewer horse flies landed on the striped coats than on the plain ones.

One detail makes the result especially convincing. According to ScienceDaily, the horses'' uncovered heads were landed on just as often as usual. So it really was the pattern, not the horse.

> Bonus fact: According to the University of Bristol, the flies that did make it onto a zebra stayed for less time, and few even tried to suck blood.

## Stripes as fly protection

The researchers see this as strong evidence that zebra stripes evolved mainly to fend off blood-sucking horse flies. Their guess: the stripes confuse the flies at close range so they can''t land cleanly. According to the University of Bristol, striped fly rugs could therefore help horses too.

So the most famous pattern on the savanna isn''t a fashion statement. It''s a fly screen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zebra-stripes-flies', 'en', 1, 'Zebra plush toy', 'zebra plush stuffed animal', 'Black and white stripes and guaranteed fly-free in bed.'),
  ('zebra-stripes-flies', 'en', 2, 'Photo book on Serengeti wildlife', 'Serengeti wildlife photo book', 'Zebras, wildebeest and lions in large-format photos from the savanna.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zebra-stripes-flies', 'en', 1, 'University of Bristol: Research reveals why the zebra got its stripes', 'https://bristol.ac.uk/news/2019/february/zebra-stripes.html'),
  ('zebra-stripes-flies', 'en', 2, 'ScienceDaily: Zebra stripes are not good landing strips', 'https://www.sciencedaily.com/releases/2019/02/190220145032.htm');
