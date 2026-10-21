-- WTFact-Fakt „Ein Flugzeugentführer sprang mit 200.000 Dollar ab und wurde nie gefunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('db-cooper-never-found', '2026-10-21T21:00:00+02:00', 'crime', '🪂', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'db-cooper-never-found', 'de', 'db-cooper-ungeloest',
  'Ein Flugzeugentführer sprang mit 200.000 Dollar ab und wurde nie gefunden',
  'Das FBI suchte 45 Jahre lang nach „D. B. Cooper“. Dann gab es auf.',
  '1971 erpresste ein Mann, der sich „Dan Cooper“ nannte, in einem Flugzeug 200.000 Dollar und sprang damit per Fallschirm ab. 2016 stellte das FBI die Suche nach ihm ein.',
  'Ein Mann im Anzug steigt in ein Flugzeug, erpresst ein Lösegeld und springt damit in die Nacht. Klingt nach Hollywood. Es ist der einzige ungelöste Fall einer Flugzeugentführung in den USA.

## Der Flug am Tag vor Thanksgiving

1971, am Tag vor Thanksgiving, kaperte ein Mann, der sich „Dan Cooper“ nannte, einen Flug der Northwest Orient aus Portland im US-Bundesstaat Oregon. Er forderte 200.000 Dollar in amerikanischen Scheinen und vier Fallschirme.

In Seattle bekam er beides. Im Austausch ließ er die Passagiere gehen. Dann ließ er die Boeing 727 wieder starten. Irgendwo über dem Nordwesten der USA sprang er mit dem Geld ab.

Danach: nichts. Kein Körper, kein Fallschirm, kein Cooper.

## Hunderte Verdächtige, kein Beweis

Das FBI sammelte über die Jahre Informationen über Hunderte Verdächtige. Keiner davon ließ sich zweifelsfrei mit der Entführung in Verbindung bringen.

1980 tauchte dann doch eine Spur auf: In der Nähe von Portland fand jemand mehrere Tausend Dollar aus dem Lösegeld. Ob Cooper den Sprung überlebt hat, verriet das Geld allerdings nicht.

2016 zog das FBI einen Schlussstrich. Es habe Mittel „umgelenkt“, hieß es, und konzentriere sich auf andere Ermittlungen. Die Suche nach dem Mann, der sich in Luft aufgelöst hatte, war damit nach 45 Jahren offiziell vorbei.

> Bonusfakt: Cooper nahm nicht die Tür. Laut „FlightGlobal“ sprang er über die hintere Treppe der Boeing 727 ab, die sich am Heck mitten im Flug ausklappen ließ.

Bis heute rätseln Hobbydetektive, wer er war und ob er gelandet ist. Antworten gibt es keine.

Ein Mann, ein Koffer voller Geld und ein offenes Heck. Mehr hat er nicht hinterlassen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('db-cooper-never-found', 'de', 1, 'Sachbuch über den Fall D. B. Cooper', 'D.B. Cooper Buch', 'Rollt die Entführung und die Jagd danach Schritt für Schritt auf.'),
  ('db-cooper-never-found', 'de', 2, 'Krimi-Rätselspiel für zu Hause', 'Krimi Rätselspiel Detektiv Fall lösen', 'Ein ungelöster Fall zum Selberlösen, mit Akten und Spuren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('db-cooper-never-found', 'de', 1, 'GBH: FBI Is Giving Up On Solving The Mystery Of D.B. Cooper', 'https://www.wgbh.org/news/2016-07-13/fbi-is-giving-up-on-solving-the-mystery-of-d-b-cooper'),
  ('db-cooper-never-found', 'de', 2, 'FlightGlobal: FBI calls off hunt for 727 hijacker ‘DB Cooper’', 'https://www.flightglobal.com/fbi-calls-off-hunt-for-727-hijacker-db-cooper/121183.article');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'db-cooper-never-found', 'en', 'db-cooper-never-found',
  'A hijacker jumped out of a plane with $200,000 and was never found',
  'The FBI searched for "D.B. Cooper" for 45 years. Then it gave up.',
  'In 1971, a man calling himself "Dan Cooper" extorted $200,000 on a plane and parachuted out with it. In 2016, the FBI stopped looking for him.',
  'A man in a suit boards a plane, demands a ransom and jumps into the night with it. Sounds like Hollywood. It’s the only unsolved airplane hijacking in US history.

## The flight before Thanksgiving

In 1971, on the day before Thanksgiving, a man calling himself "Dan Cooper" hijacked a Northwest Orient flight out of Portland, Oregon. He demanded $200,000 in American bills and four parachutes.

In Seattle, he got both. In exchange, he let the passengers go. Then he had the Boeing 727 take off again. Somewhere over the US Northwest, he jumped with the money.

After that: nothing. No body, no parachute, no Cooper.

## Hundreds of suspects, no proof

Over the years, the FBI gathered information on hundreds of suspects. None could be linked to the hijacking beyond a reasonable doubt.

In 1980, a trace did turn up: someone found several thousand dollars of the ransom near Portland. Whether Cooper survived the jump, the money didn’t say.

In 2016, the FBI drew a line under the case. It said it had "redirected resources" to other investigative priorities. After 45 years, the official hunt for the man who vanished into thin air was over.

> Bonus fact: Cooper didn’t use a door. According to FlightGlobal, he jumped from the Boeing 727’s rear air-stair, which could be lowered at the tail in mid-flight.

Amateur sleuths are still trying to figure out who he was and whether he made it to the ground. There are no answers.

A man, a bag full of money and an open tail. That’s all he left behind.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('db-cooper-never-found', 'en', 1, 'Nonfiction book about the D.B. Cooper case', 'D.B. Cooper book', 'Unpacks the hijacking and the manhunt step by step.'),
  ('db-cooper-never-found', 'en', 2, 'Detective mystery game for home', 'unsolved case detective game', 'An unsolved case to crack yourself, with files and clues.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('db-cooper-never-found', 'en', 1, 'GBH: FBI Is Giving Up On Solving The Mystery Of D.B. Cooper', 'https://www.wgbh.org/news/2016-07-13/fbi-is-giving-up-on-solving-the-mystery-of-d-b-cooper'),
  ('db-cooper-never-found', 'en', 2, 'FlightGlobal: FBI calls off hunt for 727 hijacker ‘DB Cooper’', 'https://www.flightglobal.com/fbi-calls-off-hunt-for-727-hijacker-db-cooper/121183.article');
