-- WTFact-Fakt „Die erste elektrische Lichterkette hatte 80 Birnen und einen drehenden Baum“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('first-electric-tree-lights', '2026-12-15T00:00:00+01:00', 'tech', '💡', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-electric-tree-lights', 'de', 'erste-elektrische-lichterkette-1882',
  'Die erste elektrische Lichterkette hatte 80 Birnen und einen drehenden Baum',
  'Edisons Geschäftspartner hatte 1882 eine Idee, für die damals ein Elektriker anrücken musste.',
  'Edward Johnson, ein Partner von Thomas Edison, schmückte 1882 seinen Baum in New York mit 80 handverdrahteten roten, weißen und blauen Glühbirnen, der Baum drehte sich dabei.',
  'Heute kaufst du eine Lichterkette für ein paar Euro und steckst sie einfach ein. Die allererste war Handarbeit, eine Sensation und ziemlich teuer.

## Ein Baum, der leuchtet und sich dreht

Edward Hibberd Johnson war Erfinder und ein enger Geschäftspartner von Thomas Edison. 1882, nur wenige Jahre nach der Glühbirne, hatte er eine Idee: Statt echter Kerzen sollte elektrisches Licht seinen Weihnachtsbaum in Manhattan schmücken.

Laut History.com verdrahtete er 80 Glühbirnen in Rot, Weiß und Blau von Hand. Jede war etwa so groß wie eine Walnuss. Dazu hingen 28 weitere Birnen an Drähten unter der Decke. Und damit nicht genug: Der Baum stand auf einer kleinen Kiste und drehte sich etwa sechsmal pro Minute.

## Ein Reporter staunt

Den Strom bekam die Anlage laut History.com direkt aus Edisons Firmenzentrale, laut Edison Electric Institute trieb ein Generator Lichter und Drehteller an. Ein Reporter der Zeitung Post and Tribune besuchte Johnson und beschrieb das Spektakel ausführlich. So wurde der Baum berühmt.

Nachmachen konnte das aber kaum jemand. Laut Edison Electric Institute kostete es vor 1903 rund 300 Dollar, einen Baum elektrisch zu beleuchten, nach heutigem Wert etwa 2000 Dollar. Dazu musste ein Elektriker kommen. Erst 1903 verkaufte General Electric fertige Sets, laut History.com für 12 Dollar.

> Bonusfakt: 1894 bekam auch der Weihnachtsbaum im Weißen Haus elektrisches Licht. Laut History.com waren die Töchter von Präsident Grover Cleveland begeistert.

Jede blinkende Lichterkette auf dem Balkon ist also ein später Nachfahre eines Baums, der sich vor über 140 Jahren in New York im Kreis gedreht hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-electric-tree-lights', 'de', 1, 'LED-Lichterkette in Warmweiß', 'LED Lichterkette Weihnachtsbaum warmweiß', 'Hell, sparsam und ohne Elektriker anzubringen.'),
  ('first-electric-tree-lights', 'de', 2, 'Drehender Christbaumständer', 'Christbaumständer drehend', 'Lässt den Baum langsam kreisen, wie beim Original von 1882.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-electric-tree-lights', 'de', 1, 'History.com: Who Invented Electric Christmas Tree Lights?', 'https://www.history.com/articles/electric-christmas-tree-lights'),
  ('first-electric-tree-lights', 'de', 2, 'Edison Electric Institute: Who Invented Electric Christmas Lights?', 'https://www.eei.org/delivering-the-future/Articles/who-invented-electric-christmas-lights');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-electric-tree-lights', 'en', 'first-electric-christmas-lights-1882',
  'The first electric Christmas lights had 80 bulbs and a spinning tree',
  'In 1882, Edison''s business partner had an idea that back then required calling an electrician.',
  'In 1882, Edward Johnson, a partner of Thomas Edison, decorated his New York tree with 80 hand-wired red, white and blue bulbs, and the tree spun around.',
  'Today you buy a string of lights for a few euros and just plug it in. The very first set was handmade, a sensation and pretty expensive.

## A tree that glows and spins

Edward Hibberd Johnson was an inventor and a close business partner of Thomas Edison. In 1882, just a few years after the light bulb, he had an idea: instead of real candles, electric light should decorate his Christmas tree in Manhattan.

According to History.com, he hand-wired 80 bulbs in red, white and blue. Each was about the size of a walnut. Another 28 bulbs hung on wires from the ceiling. And that wasn''t all: the tree stood on a small box and turned about six times a minute.

## A reporter is amazed

According to History.com, the power came straight from Edison''s company headquarters, and the Edison Electric Institute says a generator ran both the lights and the turntable. A reporter from the Post and Tribune newspaper visited Johnson and described the spectacle in detail. That''s how the tree became famous.

Hardly anyone could copy it, though. According to the Edison Electric Institute, lighting a tree electrically before 1903 cost about 300 dollars, roughly 2000 dollars today, and you needed an electrician. Only in 1903 did General Electric sell ready-made sets, for 12 dollars according to History.com.

> Bonus fact: In 1894, the White House Christmas tree got electric lights too. According to History.com, President Grover Cleveland''s daughters were delighted.

Every blinking string of lights on a balcony is a late descendant of a tree that spun in circles in New York more than 140 years ago.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-electric-tree-lights', 'en', 1, 'Warm white LED string lights', 'LED christmas tree lights warm white', 'Bright, efficient and no electrician required.'),
  ('first-electric-tree-lights', 'en', 2, 'Rotating Christmas tree stand', 'rotating christmas tree stand', 'Turns the tree slowly, like the 1882 original.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-electric-tree-lights', 'en', 1, 'History.com: Who Invented Electric Christmas Tree Lights?', 'https://www.history.com/articles/electric-christmas-tree-lights'),
  ('first-electric-tree-lights', 'en', 2, 'Edison Electric Institute: Who Invented Electric Christmas Lights?', 'https://www.eei.org/delivering-the-future/Articles/who-invented-electric-christmas-lights');
