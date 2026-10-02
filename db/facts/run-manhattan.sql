-- WTFact-Fakt „1667 tauschten die Engländer eine Muskatnuss-Insel gegen Manhattan“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('run-manhattan', '2026-09-16', 'food', '🏝️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'run-manhattan', 'de', 'muskatnuss-insel-gegen-manhattan',
  '1667 tauschten die Engländer eine Muskatnuss-Insel gegen Manhattan',
  'Im Frieden von Breda bekamen die Niederländer die winzige Insel Run. Die Engländer bekamen das heutige New York.',
  'Im Frieden von Breda 1667 behielt England Manhattan und überließ den Niederlanden dafür die Muskatnuss-Insel Run in Indonesien.',
  'Stell dir vor, du hast die Wahl: eine Insel, auf der heute Wolkenkratzer stehen und die Wall Street liegt, oder eine winzige Insel voller Muskatnussbäume. Klingt nach einer leichten Entscheidung? Im 17. Jahrhundert war das genau andersrum. **1667 überließ England den Niederlanden die Muskatnuss-Insel Run und behielt dafür Manhattan.**

## Gewürz, wertvoller als Gold

Run liegt in der Bandasee in Indonesien und gehört zu den Banda-Inseln. Lange wuchs Muskatnuss nur auf diesen paar Inseln, und das machte sie unfassbar begehrt. Laut National Geographic war das Gewürz einmal **so viel wert wie Gold** und trieb Europas Entdeckungsfahrten mit an. In Europa galt Muskat unter anderem als Mittel gegen die Pest, was die Nachfrage zusätzlich anheizte.

Wer die Muskatnuss kontrollierte, verdiente ein Vermögen. Die Niederländische Ostindien-Kompanie wollte das Monopol, und Run war dabei ein Problem: Die Bewohner hatten 1616 den englischen König als Herrscher anerkannt. So wurde aus einem Inselchen ein Streitfall zwischen zwei Weltmächten.

## Der Deal von Breda

Nach dem Zweiten Englisch-Niederländischen Krieg wurde 1667 der Frieden von Breda geschlossen. Für England hieß das: Manhattan, wo die Engländer aus Nieuw Amsterdam New York machten. Für die Niederlande hieß das: Run, und damit die volle Kontrolle über die Muskatnuss.

Laut Wikipedia fällten die Niederländer nach der Übernahme sogar alle Muskatbäume auf der Insel, damit England sie nicht zurückerobern konnte.

> Der Engländer Nathaniel Courthope verteidigte Run ab 1616 laut Wikipedia 1540 Tage lang gegen die Niederländer.

## Wer hat gewonnen?

Auf lange Sicht ging die Rechnung nicht auf. Die Briten pflanzten Muskatbäume später in anderen Kolonien an, und das Monopol zerbrach. Heute wächst Muskat laut Onmanorama zum Beispiel auch in Südindien. Run ist laut National Geographic eine ruhige Insel mit rund 1.000 Menschen, ohne Autos und ohne verlässlichen Strom.

New York dagegen wurde New York. Und die Muskatnuss liegt heute für ein paar Euro in deinem Gewürzregal.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('run-manhattan', 'de', 1, 'Muskatnuss mit Reibe', 'Muskatnuss ganz mit Muskatreibe', 'Ganze Nüsse, frisch gerieben: viel aromatischer als das Pulver aus dem Glas.'),
  ('run-manhattan', 'de', 2, 'Gewürzregal für die Küche', 'Gewürzregal mit Gläsern', 'Ordnung im Gewürzchaos, mit Gläsern zum Beschriften.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('run-manhattan', 'de', 1, 'Wikipedia: Run (island)', 'https://en.wikipedia.org/wiki/Run_(island)'),
  ('run-manhattan', 'de', 2, 'National Geographic: The Spice Trade''s Forgotten Island', 'https://www.nationalgeographic.com/photography/article/the-spice-trades-forgotten-island'),
  ('run-manhattan', 'de', 3, 'Onmanorama: The time nutmeg was worth more than New York', 'https://www.onmanorama.com/food/features/2025/06/23/nutmeg-spice-empire-history.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'run-manhattan', 'en', 'nutmeg-island-for-manhattan',
  'In 1667, England traded a nutmeg island for Manhattan',
  'Under the Treaty of Breda, the Dutch got the tiny island of Run. The English got what''s now New York.',
  'Under the 1667 Treaty of Breda, England kept Manhattan and handed the Dutch the nutmeg island of Run in Indonesia.',
  'Imagine you had to choose: an island that''s now packed with skyscrapers and home to Wall Street, or a tiny island full of nutmeg trees. Easy call? In the 17th century, it went the other way around. **In 1667, England handed the nutmeg island of Run to the Dutch and kept Manhattan instead.**

## A spice worth more than gold

Run sits in the Banda Sea in Indonesia and is one of the Banda Islands. For a long time, nutmeg grew only on these few islands, which made it insanely sought after. According to National Geographic, the spice was once **worth its weight in gold** and helped drive Europe''s Age of Exploration. In Europe, nutmeg was believed to protect against the plague, among other things, which pushed demand even higher.

Whoever controlled nutmeg made a fortune. The Dutch East India Company wanted a monopoly, and Run was a problem: in 1616, its inhabitants had accepted the English king as their sovereign. That turned a speck of an island into a dispute between two world powers.

## The Breda deal

After the Second Anglo-Dutch War, the Treaty of Breda was signed in 1667. For England, that meant Manhattan, where the English turned New Amsterdam into New York. For the Dutch, it meant Run, and with it full control of nutmeg.

According to Wikipedia, after taking over, the Dutch even cut down every nutmeg tree on the island to keep the English from retaking it.

> According to Wikipedia, Englishman Nathaniel Courthope defended Run against the Dutch for 1540 days starting in 1616.

## Who won?

In the long run, the plan didn''t work out. The British later planted nutmeg trees in other colonies, and the monopoly collapsed. According to Onmanorama, nutmeg now also grows in places like southern India. According to National Geographic, Run is a quiet island with about 1,000 residents, no cars and no reliable electricity.

New York, meanwhile, became New York. And nutmeg now sits in your spice rack for a few bucks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('run-manhattan', 'en', 1, 'Whole nutmeg with grater', 'whole nutmeg with nutmeg grater', 'Whole nuts, freshly grated: far more aromatic than the powder in a jar.'),
  ('run-manhattan', 'en', 2, 'Spice rack with jars', 'spice rack with jars and labels', 'Brings order to spice chaos, with jars you can label.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('run-manhattan', 'en', 1, 'Wikipedia: Run (island)', 'https://en.wikipedia.org/wiki/Run_(island)'),
  ('run-manhattan', 'en', 2, 'National Geographic: The Spice Trade''s Forgotten Island', 'https://www.nationalgeographic.com/photography/article/the-spice-trades-forgotten-island'),
  ('run-manhattan', 'en', 3, 'Onmanorama: The time nutmeg was worth more than New York', 'https://www.onmanorama.com/food/features/2025/06/23/nutmeg-spice-empire-history.html');
