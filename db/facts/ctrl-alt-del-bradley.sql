-- WTFact-Fakt „Strg+Alt+Entf war ein Shortcut, den ein IBM-Programmierer für sich und sein Team gebaut hat“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ctrl-alt-del-bradley', '2026-10-15T08:00:00+02:00', 'tech', '⌨️', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ctrl-alt-del-bradley', 'de', 'strg-alt-entf-fuer-einen-programmierer',
  'Strg+Alt+Entf war ein Shortcut, den ein IBM-Programmierer für sich und sein Team gebaut hat',
  'Die berühmteste Tastenkombination der Welt war nie für dich gedacht.',
  'IBM-Ingenieur David Bradley hat Strg+Alt+Entf (im Englischen Ctrl+Alt+Del) bei der Entwicklung des ersten IBM-PCs erfunden, damit er und seine Kollegen einen eingefrorenen Rechner schneller neu starten konnten, nicht als Funktion für Kundinnen und Kunden.',
  'Drei Finger, einmal drücken, und der eingefrorene Rechner bekommt eine zweite Chance. Strg+Alt+Entf (auf Englisch Ctrl+Alt+Del) wirkt, als hätte es das schon immer gegeben. Angefangen hat es aber als Zeitsparer für ein kleines Team bei IBM.

## Ein Neustart, der ewig dauerte

Um 1980 und 1981 baute IBM seinen ersten Personal Computer. David Bradley war einer der 12 Ingenieure im ursprünglichen Team. Während der Entwicklung hängten sich die Prototypen ständig auf, und der einzige Ausweg war: ausschalten, wieder einschalten.

Das dauerte mindestens eine Minute, weil jeder Kaltstart einen kompletten Selbsttest namens POST durchlief. „Manche Tage hast du alle fünf Minuten neu gestartet, während du nach dem Problem gesucht hast“, erzählte Bradley Mental Floss. Also schrieb er einen Shortcut, der den Rechner ohne diese Tests neu startete.

Warum genau diese drei Tasten? Wegen ihrer Lage. Entf lag auf der anderen Seite der Tastatur als Strg und Alt, also würde niemand alle drei aus Versehen gleichzeitig drücken. Bradley nannte die Arbeit später „fünf Minuten, 10 Minuten Aufwand“. Gedacht war der Shortcut für ihn und seine Entwickler-Kollegen, nicht für die Kundschaft.

## Wie ein Entwicklertrick um die Welt ging

Der IBM-PC wurde im August 1981 vorgestellt, und die Kombination sprach sich langsam herum. Softwarefirmen verrieten sie ihren Nutzern, und als Windows Anfang der 1990er durchstartete, wurde sie zum Notausgang bei Abstürzen und Bluescreens.

Zum 20. Geburtstag des PCs im Jahr 2001 saß Bradley mit Bill Gates auf einem Podium und witzelte: „Ich habe es vielleicht erfunden, aber ich glaube, Bill hat es berühmt gemacht.“ Laut Computerworld antwortete Gates mit einem bösen Blick.

Jahre später sagte Gates in einem Interview in Harvard, die Kombination sei „ein Fehler“ gewesen. Microsoft hätte auch eine einzige Taste haben können, „aber der Typ, der die IBM-Tastatur entworfen hat, wollte uns unsere eine Taste nicht geben“.

> Bonusfakt: 2002 tauchte Bradley sogar in einer Final-Jeopardy-Frage auf, die ihn als „Vater dieser Mehrtasten-Kombination“ bezeichnete.

Bradley selbst fand den Ruhm eher amüsant: „In einer 30-jährigen Karriere erinnern sich die Leute an diese fünf Minuten?“ Offenbar ja. Mehr als vier Jahrzehnte später immer noch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ctrl-alt-del-bradley', 'de', 1, 'Mechanische Tastatur', 'mechanische Tastatur taktile Switches', 'Gibt jedem Tastendruck, auch dem Drei-Finger-Griff, ein befriedigendes Klicken.'),
  ('ctrl-alt-del-bradley', 'de', 2, 'Buch zur Geschichte des Personal Computers', 'Geschichte des Personal Computers Buch', 'Erzählt, wie der PC vom Prototyp auf jeden Schreibtisch kam.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ctrl-alt-del-bradley', 'de', 1, 'Mental Floss: The History of CTRL + ALT + DELETE', 'https://www.mentalfloss.com/article/51674/history-ctrl-alt-delete'),
  ('ctrl-alt-del-bradley', 'de', 2, 'Computerworld: Unsung innovators: David Bradley, inventor of the "three-finger salute"', 'https://www.computerworld.com/article/2540049/unsung-innovators--david-bradley--inventor-of-the--three-finger-salute-.html'),
  ('ctrl-alt-del-bradley', 'de', 3, 'Scientific American: Bill Gates: Control-Alt-Delete ''was a mistake''', 'https://www.scientificamerican.com/article/bill-gates-control-alt-delete-was-a-mistake');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ctrl-alt-del-bradley', 'en', 'ctrl-alt-del-built-for-one-programmer',
  'Ctrl+Alt+Del was a shortcut an IBM programmer built for himself and his team',
  'The most famous key combo on the planet was never meant for you.',
  'IBM engineer David Bradley created Ctrl+Alt+Del while building the first IBM PC so that he and his fellow developers could restart a frozen machine faster, not as a feature for customers.',
  'Three fingers, one press, and a frozen computer gets a second chance. Ctrl+Alt+Del feels like it has always been part of computing. It actually started as a time-saver for one small team at IBM.

## A reboot that took forever

Around 1980 and 1981, IBM was building its first personal computer. David Bradley was one of the 12 engineers on the original team. During development, the prototype machines hung all the time, and the only way out was to switch them off and on again.

That took at least a minute, because every cold start ran a full self-test called POST. "Some days, you''d be rebooting every five minutes as you searched for the problem," Bradley told Mental Floss. So he wrote a shortcut that restarted the machine without running those tests.

Why those three keys? He picked them for their position. Delete sat across the keyboard from Ctrl and Alt, so nobody would hit all three at the same moment by accident. Bradley later called the work "five minutes, 10 minutes of activity". The shortcut was meant for him and his fellow developers, not for customers.

## How a dev trick went global

The IBM PC was unveiled in August 1981, and the combination slowly escaped. Software makers told users about it, and when Windows took off in the early 1990s, it became the go-to escape from crashes and the blue screen of death.

At the PC''s 20th anniversary in 2001, Bradley sat on a panel with Bill Gates and joked: "I may have invented it, but I think Bill made it famous." According to Computerworld, Gates answered with a glare.

Years later, Gates said in an interview at Harvard that the combo "was a mistake". Microsoft could have had a single button, he said, "but the guy who did the IBM keyboard design didn''t want to give us our single button."

> Bonus fact: In 2002, Bradley turned up in a Final Jeopardy clue that named him "the father of this multikey combination".

Bradley himself found the fame a little funny: "In a 30-year career, people remember those five minutes?" Apparently, yes. More than four decades later, they still do.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ctrl-alt-del-bradley', 'en', 1, 'Mechanical keyboard', 'mechanical keyboard tactile switches', 'Gives every key press, including the three-finger salute, a satisfying click.'),
  ('ctrl-alt-del-bradley', 'en', 2, 'Book on the history of personal computers', 'history of the personal computer book', 'Tells the story of how home and office PCs went from prototypes to every desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ctrl-alt-del-bradley', 'en', 1, 'Mental Floss: The History of CTRL + ALT + DELETE', 'https://www.mentalfloss.com/article/51674/history-ctrl-alt-delete'),
  ('ctrl-alt-del-bradley', 'en', 2, 'Computerworld: Unsung innovators: David Bradley, inventor of the "three-finger salute"', 'https://www.computerworld.com/article/2540049/unsung-innovators--david-bradley--inventor-of-the--three-finger-salute-.html'),
  ('ctrl-alt-del-bradley', 'en', 3, 'Scientific American: Bill Gates: Control-Alt-Delete ''was a mistake''', 'https://www.scientificamerican.com/article/bill-gates-control-alt-delete-was-a-mistake');
