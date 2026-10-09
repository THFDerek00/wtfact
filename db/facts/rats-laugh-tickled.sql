-- WTFact-Fakt „Ratten lachen, wenn man sie kitzelt, nur hörst du es nicht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('rats-laugh-tickled', '2026-10-11T22:00:00+02:00', 'animals', '🐀', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rats-laugh-tickled', 'de', 'ratten-lachen-beim-kitzeln',
  'Ratten lachen, wenn man sie kitzelt, nur hörst du es nicht',
  'In einem Berliner Labor wurden Ratten gekitzelt, und zwar für die Wissenschaft. Die Tiere quietschten vor Freude und machten Luftsprünge.',
  'Ratten geben beim Kitzeln Laute im Ultraschallbereich von sich, die als eine Art Lachen gelten, und Berliner Forschende fanden 2016 die passenden Nervenzellen im Gehirn.',
  'Kitzeln ist eigentlich ein seltsames Gefühl. Es ist eine Berührung, die eher unangenehm sein müsste, und trotzdem lachen wir. Wie sich herausstellt, sind wir damit nicht allein. Ratten machen das auch.

## Ein Lachen über deiner Hörgrenze

Laut NPR geben Ratten, wenn ihnen das Kitzeln gefällt, hohe Quietschlaute von sich, die Menschen normalerweise nicht hören können, weil sie im Ultraschallbereich liegen. Die Idee, dass das eine Art Lachen ist, geht auf den Hirnforscher Jaak Panksepp zurück. Laut National Geographic haben er und sein Kollege Jeffrey Burgdorf schon vor Jahren dazu geforscht. Panksepp vermutet, dass Kitzeligkeit entstanden ist, um Spiel zu fördern.

2016 gingen Shimpei Ishiyama und Michael Brecht von der Humboldt-Universität zu Berlin einen Schritt weiter. Sie kitzelten Ratten und maßen dabei die Aktivität im Gehirn. Die Studie erschien im Fachjournal Science.

## Freudensprünge im Labor

Die Ratten reagierten wie kleine Kinder. Sie quietschten, und laut National Geographic machten sie nach dem Kitzeln sogar „Freudensprünge“. Die Forschenden haben dafür das deutsche Wort übernommen, und auch englischsprachige Medien schreiben es so. Laut NPR suchten die Tiere die Hand sogar aktiv wieder auf, statt vor ihr wegzulaufen.

Im Gehirn fanden Ishiyama und Brecht die verantwortliche Region im somatosensorischen Kortex, also dem Bereich, der Berührungen verarbeitet. Genauer gesagt in dem Teil, der für den Rumpf zuständig ist.

> Bonusfakt: Laut National Geographic war es mit der Kitzeligkeit vorbei, wenn die Ratten gestresst waren, zum Beispiel unter grellem Licht oder auf einer erhöhten Plattform.

## Warum das wichtig ist

Vielleicht kennst du das: Wenn du schlecht drauf bist, findest du Kitzeln eher nervig als lustig. Ishiyama nennt das Kitzeln laut NPR „sehr mysteriös“. Die Studie zeigt aber, dass es eng mit Spiel und Stimmung verbunden ist und kein rein menschliches Phänomen ist.

Panksepp brachte es gegenüber NPR auf den Punkt: „Kinder lieben es, gekitzelt zu werden.“ Ratten offenbar auch.

Irgendwo in einem Labor in Berlin kichert gerade eine Ratte, und niemand hört es.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rats-laugh-tickled', 'de', 1, 'Ratten-Kuscheltier', 'Ratte Kuscheltier Plüsch', 'Lange Schnurrhaare, rosa Ohren und deutlich niedlicher als ihr Ruf.'),
  ('rats-laugh-tickled', 'de', 2, 'Sachbuch über Gefühle bei Tieren', 'Buch Gefühle Tiere Emotionen', 'Geht der Frage nach, ob Tiere Freude, Angst und Trauer empfinden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rats-laugh-tickled', 'de', 1, 'NPR: Rats, Too, Giggle When Tickled. Who Knew?', 'https://www.npr.org/sections/health-shots/2016/11/10/501447965/brain-scientists-trace-rat-ticklishness-to-play-behavior'),
  ('rats-laugh-tickled', 'de', 2, 'National Geographic: Watch What Happens When Scientists Tickle a Rat', 'https://www.nationalgeographic.com/news/2016/11/rats-tickling-brains-moods/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rats-laugh-tickled', 'en', 'rats-laugh-when-tickled',
  'Rats laugh when you tickle them, you just can''t hear it',
  'In a Berlin lab, rats were tickled in the name of science. They squeaked with joy and jumped around.',
  'Rats make ultrasonic calls when tickled that are seen as a kind of laughter, and in 2016 researchers in Berlin found the brain cells behind it.',
  'Tickling is actually a strange feeling. It''s a touch that should be unpleasant, and yet we laugh. It turns out we''re not the only ones. Rats do it too.

## A laugh above your hearing range

According to NPR, when rats enjoy being tickled, they make high-pitched squeaks that humans normally can''t hear because they are ultrasonic. The idea that this is a kind of laughter goes back to brain researcher Jaak Panksepp. According to National Geographic, he and his colleague Jeffrey Burgdorf studied it years earlier. Panksepp thinks ticklishness may have evolved to encourage play.

In 2016, Shimpei Ishiyama and Michael Brecht of Humboldt University in Berlin went a step further. They tickled rats while measuring activity in their brains. The study was published in the journal Science.

## Joy jumps in the lab

The rats reacted like little kids. They squeaked, and according to National Geographic, they even did "Freudensprünge" after being tickled, German for joy jumps. The researchers borrowed the German word, and English-language media use it too. According to NPR, the animals even sought out the hand again instead of running away from it.

In the brain, Ishiyama and Brecht found the area responsible in the somatosensory cortex, the region that processes touch, specifically in the part that handles the trunk of the body.

> Bonus fact: According to National Geographic, the ticklishness disappeared when the rats were stressed, for example under bright light or on a raised platform.

## Why it matters

Maybe you know the feeling: when you''re in a bad mood, tickling is more annoying than funny. According to NPR, Ishiyama calls tickling "very mysterious". But the study shows it is closely tied to play and mood, and that it isn''t just a human thing.

Panksepp summed it up for NPR: "Children love to be tickled." Rats apparently do too.

Somewhere in a lab in Berlin, a rat is giggling right now, and nobody can hear it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rats-laugh-tickled', 'en', 1, 'Rat plush toy', 'rat plush stuffed animal', 'Long whiskers, pink ears and much cuter than its reputation.'),
  ('rats-laugh-tickled', 'en', 2, 'Book about animal emotions', 'animal emotions book', 'Explores whether animals feel joy, fear and grief.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rats-laugh-tickled', 'en', 1, 'NPR: Rats, Too, Giggle When Tickled. Who Knew?', 'https://www.npr.org/sections/health-shots/2016/11/10/501447965/brain-scientists-trace-rat-ticklishness-to-play-behavior'),
  ('rats-laugh-tickled', 'en', 2, 'National Geographic: Watch What Happens When Scientists Tickle a Rat', 'https://www.nationalgeographic.com/news/2016/11/rats-tickling-brains-moods/');
