-- WTFact-Fakt „Diese winzigen Tiere lagen 24.000 Jahre gefroren in Sibirien und klonten sich danach einfach weiter“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('rotifers-24000-years-frozen', '2026-10-22T12:00:00+02:00', 'survival', '🧊', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rotifers-24000-years-frozen', 'de', 'raedertierchen-24000-jahre-eingefroren',
  'Diese winzigen Tiere lagen 24.000 Jahre gefroren in Sibirien und klonten sich danach einfach weiter',
  'Ein mikroskopisch kleines Rädertierchen landete zur Zeit der Wollhaarmammuts im Permafrost und erwachte in einer Petrischale wieder zum Leben.',
  'Forschende haben ein etwa 24.000 Jahre altes bdelloides Rädertierchen aus sibirischem Permafrost wiederbelebt, und nach dem Auftauen hat es sich selbstständig vermehrt.',
  'Als dieses Tier eingefroren wurde, liefen noch Wollhaarmammuts herum. Rund 24.000 Jahre später taute es auf und fing an, Kopien von sich selbst zu machen.

## Ein Bohrkern aus Sibirien

Das Wesen ist ein bdelloides Rädertierchen aus der Gattung Adineta: ein mikroskopisch kleines, vielzelliges Tier, das normalerweise in Süßwasser oder feuchtem Boden lebt. Forschende bohrten nahe dem Fluss Alazeya in Sibirien Permafrost-Kerne aus 11,5 Fuß (etwa 3,5 Meter) Tiefe. Eine Radiokarbondatierung des umgebenden Bodens ergab ein Alter von etwa 24.000 Jahren.

Die Wiederbelebung klingt fast zu einfach. Laut Smithsonian Magazine erklärte Mitautor Stas Malavin vom Labor für Bodenkryologie in Russland das so: ein Stück Permafrost mit einem passenden Nährmedium in eine Petrischale legen und warten, bis ruhende Organismen sich erholen, sich bewegen und vermehren. „Wir haben Tiere wiederbelebt, die Wollhaarmammuts gesehen haben, und das ist ziemlich beeindruckend“, sagte er.

## Per Klon in die Gegenwart

Nach dem Auftauen vermehrte sich das Rädertierchen durch Parthenogenese, also eine Jungfernzeugung ohne Partner, die Klone hervorbringt. Das berichtet die US-amerikanische National Science Foundation, die die Arbeit finanziert hat. Die Studie erschien 2021 im Fachjournal Current Biology.

Bis dahin hatten gefrorene Rädertierchen eine deutlich kürzere Bilanz: Frühere Berichte sprachen von 6 bis 10 Jahren bei Temperaturen zwischen minus 20 und 0 Grad Celsius. Im Labor fror das Team Dutzende Rädertierchen ein und taute sie wieder auf. Ergebnis: Sie überstanden die Bildung von Eiskristallen beim langsamen Einfrieren. Die Forschenden vermuten einen Mechanismus, der Zellen und Organe bei sehr tiefen Temperaturen schützt.

> Bonusfakt: Rädertierchen sind nicht die einzigen Eiszeit-Rückkehrer. Laut Smithsonian Magazine wurde schon früher ein Fadenwurm wiederbelebt, der schätzungsweise 32.000 bis 42.000 Jahre in Sibirien gefroren war.

Malavin nannte den Fund den bisher härtesten Beweis dafür, dass diese Tiere Zehntausende Jahre in einem Ruhezustand überstehen können. Er räumt aber auch ein, dass noch unklar ist, was es überhaupt braucht, um auch nur ein paar Jahre im Eis zu überleben. Großes Rätsel, winziges Tier.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rotifers-24000-years-frozen', 'de', 1, 'Mikroskop-Set für Kinder', 'Mikroskop Set Kinder 1200x', 'Damit kannst du selbst nach Rädertierchen und anderem Teich-Mini-Leben suchen.'),
  ('rotifers-24000-years-frozen', 'de', 2, 'Wollhaarmammut-Plüschtier', 'Mammut Plüschtier', 'Eine kuschelige Erinnerung an die Eiszeit, mit flauschigem Fell.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rotifers-24000-years-frozen', 'de', 1, 'Smithsonian Magazine: Scientists Revive Tiny Animals That Spent 24,000 Years on Ice', 'https://www.smithsonianmag.com/smart-news/scientists-revive-tiny-animals-spent-24000-years-ice-180977928/'),
  ('rotifers-24000-years-frozen', 'de', 2, 'NSF Stories: Arctic rotifers still alive after 24,000 years in a frozen state', 'https://www.nsf.gov/news/arctic-rotifers-still-alive-after-24000-years'),
  ('rotifers-24000-years-frozen', 'de', 3, 'Sci.News: Frozen Microscopic Animals Brought Back to Life after 24,000 Years', 'https://www.sci.news/biology/frozen-bdelloid-rotifers-siberian-permafrost-09745.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rotifers-24000-years-frozen', 'en', 'rotifers-frozen-24000-years',
  'These tiny animals spent 24,000 years frozen in Siberia, then started cloning themselves',
  'A microscopic rotifer went into the permafrost in the age of woolly mammoths and came back to life in a Petri dish.',
  'Researchers revived a bdelloid rotifer from Siberian permafrost that was about 24,000 years old, and after thawing it reproduced on its own.',
  'Woolly mammoths were still around when this animal went into the deep freeze. About 24,000 years later, it thawed out and started making copies of itself.

## A core sample from Siberia

The creature is a bdelloid rotifer from the genus Adineta: a microscopic multicellular animal that usually lives in freshwater or moist soil. Researchers drilled permafrost cores 11.5 feet (about 3.5 meters) deep near the Alazeya River in Siberia. Radiocarbon dating of the surrounding soil put the find at about 24,000 years old.

Bringing it back sounds almost too simple. According to Smithsonian Magazine, co-author Stas Malavin from the Soil Cryology Laboratory in Russia explained it like this: put a piece of permafrost in a Petri dish with a suitable medium, then wait for dormant organisms to recover, start moving and multiply. "We revived animals that saw woolly mammoths, which is quite impressive," he said.

## Cloning itself into the present

Once thawed, the rotifer reproduced through parthenogenesis, a clonal process that needs no partner, reports the U.S. National Science Foundation, which funded the work. The study appeared in the journal Current Biology in 2021.

Before this, frozen rotifers had a much shorter track record: earlier reports had them surviving 6 to 10 years at temperatures between minus 20 and 0 degrees Celsius. In the lab, the team froze and thawed dozens of rotifers and found that they could withstand the formation of ice crystals during slow freezing. The researchers suspect some mechanism that shields their cells and organs at very low temperatures.

> Bonus fact: Rotifers aren''t the only ones with an ice age comeback. Smithsonian Magazine reports that a nematode worm was previously revived after an estimated 32,000 to 42,000 years frozen in Siberia.

Malavin called the find "the hardest proof as of today" that these animals can survive tens of thousands of years in a dormant state. He also admits it''s not yet clear what it takes to survive on ice for even a few years. Big mystery, tiny animal.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rotifers-24000-years-frozen', 'en', 1, 'Kids'' microscope set', 'microscope kit for kids 1200x', 'Lets you hunt for rotifers and other tiny pond life yourself.'),
  ('rotifers-24000-years-frozen', 'en', 2, 'Woolly mammoth plush toy', 'woolly mammoth plush toy', 'A cuddly reminder of the ice age, fluffy coat included.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rotifers-24000-years-frozen', 'en', 1, 'Smithsonian Magazine: Scientists Revive Tiny Animals That Spent 24,000 Years on Ice', 'https://www.smithsonianmag.com/smart-news/scientists-revive-tiny-animals-spent-24000-years-ice-180977928/'),
  ('rotifers-24000-years-frozen', 'en', 2, 'NSF Stories: Arctic rotifers still alive after 24,000 years in a frozen state', 'https://www.nsf.gov/news/arctic-rotifers-still-alive-after-24000-years'),
  ('rotifers-24000-years-frozen', 'en', 3, 'Sci.News: Frozen Microscopic Animals Brought Back to Life after 24,000 Years', 'https://www.sci.news/biology/frozen-bdelloid-rotifers-siberian-permafrost-09745.html');
