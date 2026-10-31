-- WTFact-Fakt „Waldspitzmäuse schrumpfen jeden Winter ihren Schädel um rund 20 Prozent, und ihr Gehirn gleich mit“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('shrew-winter-brain-shrink', '2026-11-01T08:00:00+01:00', 'animals', '🐭', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'shrew-winter-brain-shrink', 'de', 'spitzmaeuse-schrumpfen-ihr-gehirn-im-winter',
  'Waldspitzmäuse schrumpfen jeden Winter ihren Schädel um rund 20 Prozent, und ihr Gehirn gleich mit',
  'Statt Winterschlaf zu halten, macht dieses winzige Säugetier seinen Kopf für die kalten Monate kleiner und baut ihn im Frühling wieder auf.',
  'Jeden Winter schrumpft der Schädel der Waldspitzmaus um rund 20 Prozent, auch ihr Gehirn verliert an Masse, und im Frühling wächst beides wieder.',
  'Die meisten Tiere haben zwei Strategien für den Winter: verschlafen oder durchziehen. Die Waldspitzmaus hat eine dritte gewählt. Sie schrumpft ihren eigenen Kopf.

## Kleinerer Schädel, kleineres Gehirn

Laut Cosmos fing ein Team um Javier Lázaro vom Max-Planck-Institut für Ornithologie 12 frei lebende Waldspitzmäuse, röntgte ihre Schädel und setzte ihnen Mikrochips ein. Danach wurden dieselben Tiere ein ganzes Jahr lang immer wieder eingefangen und erneut geröntgt.

Das Ergebnis: Der Schädel schrumpfte im Winter um rund 20 Prozent und wuchs im Frühling wieder. Die Gehirnmasse sank um bis zu 30 Prozent, und auch mehrere große Organe und sogar die Wirbelsäule wurden kleiner. Das Entscheidende: Jede einzelne Spitzmaus machte das. Es überleben also nicht einfach nur die Tiere mit kleinem Kopf die Kälte. Jedes Tier verändert seine Größe.

Der Effekt hat einen Namen: Dehnel-Phänomen, nach dem polnischen Forscher August Dehnel, der ihn 1949 als Erster beschrieb.

## Warum macht man so was?

Spitzmäuse halten keinen Winterschlaf und haben einen sehr hohen Stoffwechsel. Sie brauchen also ständig Futter, und das ist im Winter knapp. Ein Gehirn ist teuer im Betrieb. Forschende der Stony Brook University beschreiben das Schrumpfen als Weg, den Energiebedarf zu senken und den hyperaktiven Stoffwechsel trotzdem beizubehalten.

Aber wie schrumpft ein Gehirn, ohne kaputtzugehen? Eine Studie mit Forschenden des Max-Planck-Instituts für Verhaltensbiologie untersuchte 2025 frei lebende Spitzmäuse in Deutschland im Sommer und erneut im Winter per MRT. In dieser Studie sank das Gehirnvolumen um etwa neun Prozent, vor allem weil Wasser aus den Gehirnzellen verschwand. Die Zellen starben dabei nicht ab.

> Bonusfakt: Spitzmäuse sind nicht die Einzigen. Laut Max-Planck-Gesellschaft kennt man das Dehnel-Phänomen auch bei Europäischen Maulwürfen, Hermelinen, Mauswieseln und einigen anderen Spitzmausarten.

Die nächste große Frage für die Forschenden: Wie bauen die Spitzmäuse ihr Gehirn wieder auf? Bis dahin bleibt die Waldspitzmaus das Tier, das zum Futtersparen einfach den eigenen Kopf verkleinert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('shrew-winter-brain-shrink', 'de', 1, 'Spitzmaus-Kuscheltier', 'Spitzmaus Kuscheltier Plüsch', 'Ein weiches, handliches Plüschtier für ein unterschätztes Mini-Säugetier.'),
  ('shrew-winter-brain-shrink', 'de', 2, 'Bestimmungsbuch Säugetiere Europas', 'Säugetiere Europas Bestimmungsbuch', 'Hilft dir draußen, Spitzmäuse, Maulwürfe, Wiesel und andere kleine Säuger zu erkennen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('shrew-winter-brain-shrink', 'de', 1, 'Cosmos: The shrinking of the shrew', 'https://cosmosmagazine.com/biology/the-shrinking-of-the-shrew'),
  ('shrew-winter-brain-shrink', 'de', 2, 'Max-Planck-Gesellschaft: Rare seasonal brain shrinkage in shrews is driven by water loss', 'https://www.mpg.de/25258209/rare-seasonal-brain-shrinkage-in-shrews-is-driven-by-water-loss'),
  ('shrew-winter-brain-shrink', 'de', 3, 'Stony Brook Medicine: SBU Study Uncovers How Common Shrew Changes Its Body Size and Brain', 'https://news.stonybrookmedicine.edu/news/sbu-study-uncovers-how-common-shrew-changes-its-body-size-and-brain/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'shrew-winter-brain-shrink', 'en', 'shrews-shrink-their-brains-in-winter',
  'Common shrews shrink their skull by about 20 percent every winter, and their brain too',
  'Instead of hibernating, this tiny mammal makes its own head smaller for the cold months and regrows it in spring.',
  'Every winter, the common shrew shrinks its skull by about 20 percent and its brain loses mass as well, then both grow back as spring arrives.',
  'Most animals have two winter strategies: sleep through it or tough it out. The common shrew picked a third one. It shrinks its own head.

## Smaller skull, smaller brain

According to Cosmos, a team led by Javier Lázaro of the Max Planck Institute for Ornithology caught 12 free-living common shrews, X-rayed their skulls and gave them microchips. Then they recaptured and re-X-rayed the same animals again and again over a whole year.

The result: the skull shrank by about 20 percent in winter and grew back through spring. Brain mass dropped by up to 30 percent, and several major organs and even the spine got smaller too. Crucially, every single shrew did it. So it isn''t just that small-headed shrews happen to survive the cold. Each animal changes size.

The effect has a name: Dehnel''s phenomenon, after the Polish scientist August Dehnel, who first described it in 1949.

## Why would anyone do that?

Shrews don''t hibernate and have a very high metabolism, so they constantly need food, and food is scarce in winter. A brain is expensive to run. Researchers at Stony Brook University describe the shrinking as a way to reduce energy demand while keeping that hyperactive metabolism going.

So how does a brain shrink without breaking? A 2025 study with researchers from the Max Planck Institute of Animal Behavior scanned free-living shrews in Germany with MRI in summer and again in winter. In that study, brain volume dropped by about nine percent, and the main reason was water leaving the brain cells. The cells did not die.

> Bonus fact: The shrews aren''t the only ones. According to the Max Planck Society, Dehnel''s phenomenon is also known in European moles, stoats, weasels and some other shrew species.

The next big question for the researchers is how the shrews grow their brains back. Until then, the common shrew keeps its title as the animal that downsizes its own head to save on snacks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('shrew-winter-brain-shrink', 'en', 1, 'Shrew plush toy', 'shrew plush toy', 'A soft, palm-sized stuffed animal of an underrated tiny mammal.'),
  ('shrew-winter-brain-shrink', 'en', 2, 'Field guide to European mammals', 'field guide mammals of Europe', 'Helps you identify shrews, moles, weasels and other small mammals outdoors.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('shrew-winter-brain-shrink', 'en', 1, 'Cosmos: The shrinking of the shrew', 'https://cosmosmagazine.com/biology/the-shrinking-of-the-shrew'),
  ('shrew-winter-brain-shrink', 'en', 2, 'Max-Planck-Gesellschaft: Rare seasonal brain shrinkage in shrews is driven by water loss', 'https://www.mpg.de/25258209/rare-seasonal-brain-shrinkage-in-shrews-is-driven-by-water-loss'),
  ('shrew-winter-brain-shrink', 'en', 3, 'Stony Brook Medicine: SBU Study Uncovers How Common Shrew Changes Its Body Size and Brain', 'https://news.stonybrookmedicine.edu/news/sbu-study-uncovers-how-common-shrew-changes-its-body-size-and-brain/');
