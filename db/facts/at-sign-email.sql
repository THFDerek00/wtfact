-- WTFact-Fakt „1971 verschickte Ray Tomlinson die erste E-Mail und machte das @ berühmt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('at-sign-email', '2026-09-26', 'tech', '📧', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'at-sign-email', 'de', 'ray-tomlinson-erste-email',
  '1971 verschickte Ray Tomlinson die erste E-Mail und machte das @ berühmt',
  'Zwei Computer, ein Büro, eine längst vergessene Testnachricht. Und ein Zeichen, das heute in jeder Adresse steckt.',
  'Ray Tomlinson schickte 1971 die erste E-Mail von einem Computer zu einem anderen und wählte dafür das @ als Trennzeichen.',
  'Du tippst es wahrscheinlich jeden Tag, ohne darüber nachzudenken: das @ in jeder E-Mail-Adresse. Dass es dort steht, verdanken wir einem Ingenieur namens Ray Tomlinson. **1971 schickte er die erste E-Mail von einem Computer zu einem anderen.**

## Nachrichten gab es schon, nur nicht übers Netz

Tomlinson arbeitete bei der Firma Bolt, Beranek and Newman, kurz BBN, in der Nähe von Boston. Deren Rechner hingen am ARPANET, dem Vorläufer des Internets. Nachrichten an andere Nutzer desselben Computers konnte man damals schon verschicken, zum Beispiel mit einem Programm namens SNDMSG.

Tomlinson hatte eine bessere Idee. Er kombinierte SNDMSG mit Code aus CPYNET, einem Programm zum Übertragen von Dateien. **So konnten Nachrichten zum ersten Mal zwischen verschiedenen Computern im Netzwerk reisen.**

Der erste Test war ziemlich unspektakulär. Die beiden Rechner vom Typ PDP-10 standen direkt nebeneinander in seinem Büro, laut NPR nur etwa drei Meter voneinander entfernt. Was in der allerersten Mail stand, weiß niemand mehr, nicht mal Tomlinson selbst. Vielleicht so etwas wie „QWERTYUIOP“. Er meinte später sinngemäß, die erste E-Mail sei völlig vergessenswert gewesen und deshalb vergessen.

## Warum ausgerechnet das @

Damit eine Nachricht ihr Ziel findet, braucht sie zwei Angaben: wer sie bekommt und auf welchem Rechner. Tomlinson brauchte ein Zeichen, das beides trennt. Das @ passte perfekt, weil es in Nutzernamen nicht vorkam und sonst kaum gebraucht wurde. Außerdem ergibt es auf Englisch Sinn: Nutzer **at** Rechner. Tomlinson nannte es „die einzige Präposition auf der Tastatur“.

> 2010 nahm das Museum of Modern Art in New York das @ in seine Sammlung für Architektur und Design auf.

Tomlinson starb 2016 mit 74 Jahren. Er kam in die Internet Hall of Fame und bezeichnete sich trotzdem als „Luddite“, also als Technikmuffel. Der Mann hinter der E-Mail war selbst kein Gadget-Fan. Das hat Stil.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('at-sign-email', 'de', 1, 'Mechanische Tastatur im Retro-Schreibmaschinen-Look', 'Retro Tastatur Schreibmaschine mechanisch', 'Runde Tasten, satter Klick. Bringt Siebzigerjahre-Feeling auf deinen Schreibtisch.'),
  ('at-sign-email', 'de', 2, 'Sachbuch über die Anfänge des Internets', 'Geschichte des Internets ARPANET Buch', 'Erzählt, wie aus einem Forschungsnetz das Internet wurde, das wir heute täglich nutzen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('at-sign-email', 'de', 1, 'Wikipedia: Ray Tomlinson', 'https://en.wikipedia.org/wiki/Ray_Tomlinson'),
  ('at-sign-email', 'de', 2, 'NPR: In Memoriam: Ray Tomlinson, Who Put The @ Sign In Your Email', 'https://www.npr.org/sections/alltechconsidered/2016/03/07/469492182/in-memoriam-ray-tomlinson-who-put-the-sign-in-your-email'),
  ('at-sign-email', 'de', 3, 'Al Jazeera: Ray Tomlinson, creator of modern email, dies', 'https://www.aljazeera.com/news/2016/3/8/ray-tomlinson-creator-of-modern-email-dies');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'at-sign-email', 'en', 'ray-tomlinson-first-email',
  'In 1971, Ray Tomlinson sent the first email and made the @ famous',
  'Two computers, one office, a long-forgotten test message. And a symbol that''s now in every address.',
  'In 1971, Ray Tomlinson sent the first email from one computer to another and picked the @ to separate user and machine.',
  'You probably type it every day without thinking: the @ in every email address. It''s there thanks to an engineer named Ray Tomlinson. **In 1971, he sent the first email from one computer to another.**

## Messages existed, just not across a network

Tomlinson worked at Bolt, Beranek and Newman, or BBN, in the Boston area. Its computers were hooked up to the ARPANET, the forerunner of the internet. Back then, you could already leave messages for other users on the same computer, for example with a program called SNDMSG.

Tomlinson had a better idea. He combined SNDMSG with code from CPYNET, a program for transferring files. **For the first time, messages could travel between different computers on a network.**

The first test was pretty unspectacular. The two PDP-10 computers sat side by side in his office, only about 10 feet apart according to NPR. Nobody remembers what the very first email said, not even Tomlinson. Maybe something like "QWERTYUIOP." He later put it this way: the first email was completely forgettable, and therefore forgotten.

## Why the @, of all things

For a message to find its target, it needs two pieces of info: who gets it and on which machine. Tomlinson needed a symbol to separate the two. The @ was perfect because it never showed up in usernames and barely had any other job. Plus, it just makes sense: user **at** host. Tomlinson called it "the only preposition on the keyboard."

> In 2010, the Museum of Modern Art in New York added the @ to its architecture and design collection.

Tomlinson died in 2016 at age 74. He was inducted into the Internet Hall of Fame and still called himself a "Luddite." The guy behind email wasn''t much of a gadget person. Respect.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('at-sign-email', 'en', 1, 'Retro typewriter-style mechanical keyboard', 'retro typewriter mechanical keyboard', 'Round keys and a satisfying click. Brings serious seventies energy to your desk.'),
  ('at-sign-email', 'en', 2, 'Where Wizards Stay Up Late by Katie Hafner and Matthew Lyon', 'Where Wizards Stay Up Late Hafner Lyon', 'The story of the people who built the ARPANET, the network that became the internet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('at-sign-email', 'en', 1, 'Wikipedia: Ray Tomlinson', 'https://en.wikipedia.org/wiki/Ray_Tomlinson'),
  ('at-sign-email', 'en', 2, 'NPR: In Memoriam: Ray Tomlinson, Who Put The @ Sign In Your Email', 'https://www.npr.org/sections/alltechconsidered/2016/03/07/469492182/in-memoriam-ray-tomlinson-who-put-the-sign-in-your-email'),
  ('at-sign-email', 'en', 3, 'Al Jazeera: Ray Tomlinson, creator of modern email, dies', 'https://www.aljazeera.com/news/2016/3/8/ray-tomlinson-creator-of-modern-email-dies');
