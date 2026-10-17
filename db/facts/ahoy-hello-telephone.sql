-- WTFact-Fakt „Der Erfinder des Telefons wollte, dass du mit „Ahoy“ abnimmst“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ahoy-hello-telephone', '2026-10-21T08:00:00+02:00', 'language', '☎️', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ahoy-hello-telephone', 'de', 'bell-wollte-ahoy-statt-hallo',
  'Der Erfinder des Telefons wollte, dass du mit „Ahoy“ abnimmst',
  'Alexander Graham Bell hatte einen Seemannsgruß im Kopf. Thomas Edison hatte eine lautere Idee.',
  'Alexander Graham Bell wollte, dass man das Telefon mit „Ahoy“ annimmt, durchgesetzt hat sich aber Thomas Edisons Vorschlag „Hello“.',
  'Stell dir vor, du nimmst ab und rufst „Ahoy!“ wie ein Kapitän auf Deck. Genau so ungefähr hatte sich Alexander Graham Bell das vorgestellt. Der Mann, dem das Telefon zugeschrieben wird, wollte „Ahoy“ (oder sogar „Ahoy, ahoy“) als Standardgruß am Hörer.

## Edisons lautere Idee

Im August 1877 schrieb Thomas Edison an T. B. A. David, den Präsidenten einer Telegrafengesellschaft in Pittsburgh. Sein Punkt: Eine Klingel braucht man vielleicht gar nicht. „Ich glaube nicht, dass wir eine Rufklingel brauchen, denn ‚Hello!‘ hört man 10 bis 20 Fuß weit“, schrieb er. Das sind etwa 3 bis 6 Meter reines Rufen.

Für die Zeit war das logisch. Die frühen Leitungen sollten dauerhaft offen bleiben, also sollte der Anrufer statt zu klingeln einfach ein Wort in die Leitung rufen. Edisons Wort blieb hängen. Laut Haggard Hawks holte Western Union Edison, um ein Konkurrenzsystem zu Bells Telefon zu bauen, und deren Handbuch für die Vermittlung erlaubte „Hello“ als Antwort. Spätere Handbücher empfahlen es ebenfalls, und Bells „Ahoy“ setzte sich nie durch.

## Erfunden hat Edison das Wort nicht

Das Wort ist älter als Edisons Brief. Die Schreibweise taucht 1826 zum ersten Mal gedruckt auf, im Norwich Courier in Connecticut. Damals war es noch gar kein freundlicher Gruß. Man rief es, um jemanden auf sich aufmerksam zu machen oder um Überraschung zu zeigen. Seine Verwandten (hallo, hollo, hullo) gehen wohl auf „holla“ zurück, einen Ruf aus dem 16. Jahrhundert, entlehnt aus dem französischen holà. Im Deutschen, Niederländischen, Dänischen und Norwegischen lebt dieselbe Wortfamilie als „Hallo“ weiter, und genau das sagen viele bis heute, wenn sie abnehmen.

Und „Ahoy“? Ist sogar älter. Haggard Hawks führt seine Wurzel „hoy“ auf das frühe 14. Jahrhundert zurück. Bell setzte auf den Klassiker und verlor gegen den Neuling.

> Bonusfakt: Das allererste Telefonbuch, 1878 in New Haven in Connecticut gedruckt, nahm keins der beiden Wörter. Es empfahl ein „festes und fröhliches ‚hulloa‘“ und als Abschluss des Gesprächs: „That is all.“

Jedes „Hallo“, das du je ins Telefon gesagt hast, ist also im Grunde Edisons Tech-Demo, die immer noch läuft.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ahoy-hello-telephone', 'de', 1, 'Retro-Wählscheibentelefon', 'Retro Wählscheibentelefon', 'Ein funktionierendes Telefon im alten Stil, das auf jedem Schreibtisch gut aussieht.'),
  ('ahoy-hello-telephone', 'de', 2, 'Buch über Wortherkunft', 'Buch Wortherkunft Etymologie deutsche Wörter', 'Voller kurzer Geschichten darüber, woher Alltagswörter kommen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ahoy-hello-telephone', 'de', 1, 'Mental Floss: Why Do We Answer the Phone With ‘Hello’?', 'https://www.mentalfloss.com/posts/origins-of-hello'),
  ('ahoy-hello-telephone', 'de', 2, 'Hagley: On this date in 1877, inventor Thomas Edison suggested "Hello" to the president ...', 'https://www.hagley.org/research/news/hagley-vault/date-1877-inventor-thomas-edison-suggested-hello-president'),
  ('ahoy-hello-telephone', 'de', 3, 'Haggard Hawks: Hello', 'https://www.haggardhawks.com/post/hello'),
  ('ahoy-hello-telephone', 'de', 4, 'Wikipedia: Hello', 'https://en.wikipedia.org/wiki/Hello');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ahoy-hello-telephone', 'en', 'bell-wanted-ahoy-not-hello',
  'The inventor of the telephone wanted you to answer with ‘ahoy’',
  'Alexander Graham Bell had a nautical greeting in mind. Thomas Edison had a louder idea.',
  'Alexander Graham Bell wanted people to answer the phone with ‘ahoy’, but Thomas Edison''s suggestion ‘hello’ won instead.',
  'Picture picking up your phone and shouting ‘Ahoy!’ like a ship''s captain. That''s roughly what Alexander Graham Bell had in mind. The man credited with the telephone wanted ‘ahoy’ (or even ‘ahoy, ahoy’) to be the standard way to answer a call.

## Edison''s louder idea

In August 1877, Thomas Edison wrote to T. B. A. David, president of a telegraph company in Pittsburgh. His point: you might not even need a bell. ‘I don''t think we shall need a call bell as Hello! can be heard 10 to 20 feet away,’ he wrote. That''s about 3 to 6 meters of pure shouting.

The idea made sense for the time. Early lines were meant to stay open, so instead of a ring, the caller would simply yell a word down the line. Edison''s word stuck. According to Haggard Hawks, Western Union hired Edison to build a rival telephone system to Bell''s, and its operators'' manual allowed ‘hello’ as an answer. Manuals that followed recommended it too, and Bell''s ‘ahoy’ never caught on.

## Edison didn''t invent the word

The word is older than Edison''s letter. The spelling first shows up in print in 1826, in the Norwich Courier in Connecticut. Back then it wasn''t a friendly greeting at all. People used it to get someone''s attention or to sound surprised. Its relatives (hallo, hollo, hullo) likely go back to ‘holla’, a 16th-century cry borrowed from French holà. In German, Dutch, Danish and Norwegian, the same family survived as ‘hallo’, which is still what many people say when they pick up.

And ‘ahoy’? It''s actually older. Haggard Hawks traces its root ‘hoy’ to the early 1300s. Bell picked the vintage option and lost to the newcomer.

> Bonus fact: The very first phone book, printed in New Haven, Connecticut, in 1878, didn''t go with either word. It suggested ‘a firm and cheery hulloa’ and recommended ending the call with ‘That is all.’

So every ‘hello’ you''ve ever said into a phone is basically Edison''s tech demo, still running.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ahoy-hello-telephone', 'en', 1, 'Retro rotary dial telephone', 'retro rotary dial telephone', 'A working old-school phone that looks great on a desk.'),
  ('ahoy-hello-telephone', 'en', 2, 'Etymology book about English words', 'etymology book origins of English words', 'Full of short stories about where everyday words come from.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ahoy-hello-telephone', 'en', 1, 'Mental Floss: Why Do We Answer the Phone With ‘Hello’?', 'https://www.mentalfloss.com/posts/origins-of-hello'),
  ('ahoy-hello-telephone', 'en', 2, 'Hagley: On this date in 1877, inventor Thomas Edison suggested "Hello" to the president ...', 'https://www.hagley.org/research/news/hagley-vault/date-1877-inventor-thomas-edison-suggested-hello-president'),
  ('ahoy-hello-telephone', 'en', 3, 'Haggard Hawks: Hello', 'https://www.haggardhawks.com/post/hello'),
  ('ahoy-hello-telephone', 'en', 4, 'Wikipedia: Hello', 'https://en.wikipedia.org/wiki/Hello');
