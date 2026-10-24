-- WTFact-Fakt „Ein abgebrochener Schalter hätte Apollo 11 fast auf dem Mond festgehalten, Buzz Aldrin half mit einem Filzstift“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('aldrin-felt-tip-pen-breaker', '2026-10-31T16:00:00+01:00', 'space', '🖊️', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'aldrin-felt-tip-pen-breaker', 'de', 'aldrin-filzstift-rettete-apollo-11',
  'Ein abgebrochener Schalter hätte Apollo 11 fast auf dem Mond festgehalten, Buzz Aldrin half mit einem Filzstift',
  'Apollo 11 hatte auf dem Mond ein winziges Problem. Die Lösung steckte in einer Schultertasche.',
  'Nach dem ersten Mondspaziergang 1969 entdeckte Buzz Aldrin, dass der Schutzschalter zum Scharfschalten des Aufstiegstriebwerks abgebrochen war, und drückte einen Filzstift in die Öffnung, um den Stromkreis zu schließen.',
  '20. Juli 1969: Die Apollo-11-Astronauten Neil Armstrong und Buzz Aldrin waren gerade auf dem Mond herumgelaufen. Jetzt mussten sie nur noch wieder weg. Dann entdeckte Aldrin etwas auf dem Kabinenboden, das eigentlich am Instrumentenbrett hätte sein sollen.

## Kleiner Schalter, riesiges Problem

In seinem Buch „Magnificent Desolation“, aus dem HISTORY zitiert, beschreibt Aldrin, wie er einen Schutzschalter im Staub auf dem Boden fand. Er war abgebrochen. Und es war nicht irgendein Schalter: Das war der Schalter „Engine Arm“, der eine entscheidende Schalter, über den der Strom zum Aufstiegstriebwerk lief. Genau das Triebwerk, das die beiden vom Mond bringen sollte.

Wie konnte das passieren? In der engen Mondlandefähre trugen die Astronauten klobige Rucksäcke. Aldrin schrieb, er oder Armstrong müssten den Schalter versehentlich angestoßen haben. Laut ABC Action News stieß Aldrin beim Wiedereinsteigen mit seinem Lebenserhaltungsrucksack dagegen.

## Ingenieurskunst aus der Schultertasche

Die Bodenkontrolle wurde informiert, hatte laut HISTORY aber bis zum nächsten Morgen keine Lösung. Aldrin hatte selbst eine Idee. Seinen Finger oder etwas aus Metall wollte er nicht in einen elektrischen Schlitz stecken, aber in der Schultertasche seines Anzugs steckte ein Filzstift. Die Crew zog den Countdown um ein paar Stunden vor, und Aldrin drückte den Stift in die Öffnung.

Es klappte. „Houston sagt: ‚Oh, wir haben einen guten, geschlossenen Stromkreis‘“, erinnerte sich Aldrin später, zitiert von ABC Action News. Armstrong nannte den Notbehelf eine „Versicherung“. Die beiden hoben ab und kehrten zu Michael Collins in der Mondumlaufbahn zurück. collectSPACE nannte es später das Problem, das Armstrong und Aldrin fast auf der Mondoberfläche festsitzen ließ.

> Bonusfakt: NASA-Chefhistoriker William Barry sagte HISTORY, dass spätere Mondlandefähren eine Schutzabdeckung über diesen Schaltern bekamen, damit so etwas nicht noch einmal passiert.

Aldrin hob den abgebrochenen Schalter und den Stift jahrzehntelang auf. Im Juli 2026 wurden beide laut collectSPACE bei Sotheby''s für 857.600 Dollar versteigert. Wahrscheinlich der teuerste Kritzelstift der Geschichte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('aldrin-felt-tip-pen-breaker', 'de', 1, 'LEGO Apollo 11 Mondlandefähre', 'LEGO Apollo 11 Mondlandefähre', 'Ein detailliertes Modell der Mondlandefähre zum Bauen und Ausstellen.'),
  ('aldrin-felt-tip-pen-breaker', 'de', 2, 'Magnificent Desolation von Buzz Aldrin', 'Magnificent Desolation Buzz Aldrin Buch', 'Aldrins eigene Geschichte der Mondlandung und der Jahre danach.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('aldrin-felt-tip-pen-breaker', 'de', 1, 'HISTORY: When Buzz Aldrin and Neil Armstrong Were Nearly Stranded on the Moon', 'https://www.history.com/news/buzz-aldrin-moon-landing-accident'),
  ('aldrin-felt-tip-pen-breaker', 'de', 2, 'ABC Action News: 50 Years Later: The pen that saved Apollo 11', 'https://www.tampabay28.com/news/apollo/50-years-later-the-pen-that-saved-apollo-11'),
  ('aldrin-felt-tip-pen-breaker', 'de', 3, 'collectSPACE: Apollo 11''s broken switch and mission-saving pen sell for $860K at auction', 'https://www.collectspace.com/news/news-071526a-buzz-aldrin-apollo-11-pen-switch-sothebys-auction.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'aldrin-felt-tip-pen-breaker', 'en', 'aldrin-pen-saved-apollo-11',
  'A broken switch nearly kept Apollo 11 on the Moon, and Buzz Aldrin fixed it with a felt-tip pen',
  'Apollo 11 had a tiny problem on the Moon. The fix came out of a shoulder pocket.',
  'After the first Moonwalk in 1969, Buzz Aldrin found that the circuit breaker needed to arm the ascent engine had broken off, so he pushed a felt-tip pen into the slot to close it.',
  'July 20, 1969: The Apollo 11 astronauts Neil Armstrong and Buzz Aldrin had just walked on the Moon. Now they only had to leave again. Then Aldrin spotted something on the cabin floor that should have been on the instrument panel.

## A tiny switch, a giant problem

In his book Magnificent Desolation, quoted by HISTORY, Aldrin describes finding a circuit breaker switch lying in the dust on the floor. It had broken off. And not just any switch: this was the engine arm breaker, the one vital breaker needed to send power to the ascent engine that would lift them off the Moon.

How did it happen? Inside the cramped lunar module, the astronauts wore bulky backpacks. Aldrin wrote that he or Armstrong must have bumped the switch by accident. According to ABC Action News, Aldrin struck it with his life support backpack while climbing back in.

## Engineering, shoulder-pocket style

Mission Control was informed but, according to HISTORY, still had no solution by the next morning. Aldrin had an idea of his own. He didn''t want to stick his finger or anything metal into an electrical slot, but he had a felt-tipped pen in the shoulder pocket of his suit. The crew moved their countdown up by a couple of hours, and Aldrin pushed the pen into the opening.

It worked. "Houston says, ''Oh we''ve got a good complete circuit,''" Aldrin later recalled, as quoted by ABC Action News. Armstrong called the backup "insurance." The two men lifted off and made it back to Michael Collins in lunar orbit. collectSPACE later called it the problem that almost stranded Armstrong and Aldrin on the lunar surface.

> Bonus fact: NASA Chief Historian William Barry told HISTORY that later lunar modules got a guard over those circuit breakers to prevent a similar problem.

Aldrin kept the broken switch and the pen for decades. In July 2026, according to collectSPACE, both sold at a Sotheby''s auction for $857,600. Probably the most expensive doodling tool in history.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('aldrin-felt-tip-pen-breaker', 'en', 1, 'LEGO Apollo 11 lunar lander', 'LEGO Apollo 11 lunar lander', 'A detailed model of the lunar module to build and put on a shelf.'),
  ('aldrin-felt-tip-pen-breaker', 'en', 2, 'Magnificent Desolation by Buzz Aldrin', 'Magnificent Desolation Buzz Aldrin book', 'Aldrin''s own story of the Moon landing and the years that followed.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('aldrin-felt-tip-pen-breaker', 'en', 1, 'HISTORY: When Buzz Aldrin and Neil Armstrong Were Nearly Stranded on the Moon', 'https://www.history.com/news/buzz-aldrin-moon-landing-accident'),
  ('aldrin-felt-tip-pen-breaker', 'en', 2, 'ABC Action News: 50 Years Later: The pen that saved Apollo 11', 'https://www.tampabay28.com/news/apollo/50-years-later-the-pen-that-saved-apollo-11'),
  ('aldrin-felt-tip-pen-breaker', 'en', 3, 'collectSPACE: Apollo 11''s broken switch and mission-saving pen sell for $860K at auction', 'https://www.collectspace.com/news/news-071526a-buzz-aldrin-apollo-11-pen-switch-sothebys-auction.html');
