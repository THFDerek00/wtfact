-- WTFact-Fakt „Die erste SMS der Welt kam von einem PC und lautete „Merry Christmas““
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('first-sms', '2026-09-09', 'tech', '💬', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-sms', 'de', 'erste-sms-merry-christmas',
  'Die erste SMS der Welt kam von einem PC und lautete „Merry Christmas“',
  '1992 verschickte ein 22-jähriger Ingenieur die allererste SMS. Antworten konnte der Empfänger nicht.',
  'Die erste SMS wurde am 3. Dezember 1992 von einem Computer an ein Handy geschickt und lautete „Merry Christmas“.',
  'Kein „hdl“, kein „bin gleich da“, kein Emoji. Die allererste SMS der Geschichte bestand aus zwei Wörtern: **„Merry Christmas“**. Und sie wurde nicht einmal von einem Handy getippt.

## Ein Weihnachtsgruß vom Schreibtisch

Am 3. Dezember 1992 saß Neil Papworth, ein 22-jähriger Testingenieur, an einem ganz normalen Computer. Er arbeitete für die Firma Sema Group an einer Kurznachrichtenzentrale für den britischen Mobilfunkanbieter Vodafone. Für einen Test schickte er die Nachricht **vom PC aus** über das GSM-Netz von Vodafone.

Empfänger war Richard Jarvis, ein Vodafone-Direktor, der gerade auf der Weihnachtsfeier seiner Firma war. Auf seinem Orbitel 901 leuchtete der Gruß auf. Das Gerät wog laut NPR über 4,5 Pfund, also mehr als 2 Kilogramm. Ein Smartphone wiegt heute nur einen Bruchteil davon.

## Zurückschreiben? Ging nicht

Das Kuriose: **Jarvis konnte gar nicht antworten.** Handys hatten damals schlicht keine Funktion, um Textnachrichten zu verfassen. Die erste SMS war also eine Einbahnstraße.

Papworth selbst fand den Moment übrigens unspektakulär. Laut Wikipedia sagte er später, es habe sich überhaupt nicht nach etwas Historischem angefühlt. Und er betonte gegenüber NPR, dass er „Merry Christmas“ voll ausgeschrieben habe, nicht als „X-mas“.

## Warum eine SMS 160 Zeichen hat

Die Länge einer SMS hat sich übrigens jemand genau überlegt. Friedhelm Hillebrand, einer der Entwickler des Dienstes, hat ausgewertet, wie lang typische Postkarten und Telex-Nachrichten waren. Sein Ergebnis: **160 Zeichen** reichen für die meisten Mitteilungen.

> Die Idee für die Begrenzung kam also aus der analogen Welt: Hillebrand nahm Postkarten und Telex-Nachrichten als Maßstab.

Aus einem einzigen Testgruß wurde etwas, das heute zum Alltag gehört wie Zähneputzen. Ziemlich viel Wirkung für zwei Wörter, die eigentlich nur eine Weihnachtsfeier verschönern sollten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-sms', 'de', 1, 'Retro-Klapphandy mit großen Tasten', 'Klapphandy Tasten ohne Internet', 'Telefonieren und SMS, sonst nichts. Ein Akku, der tagelang hält, und null Ablenkung durch Apps.'),
  ('first-sms', 'de', 2, 'Sachbuch zur Geschichte des Handys', 'Geschichte des Handys Buch Mobiltelefon', 'Vom Knochen bis zum Smartphone: erzählt, wie das Telefon in die Hosentasche gewandert ist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-sms', 'de', 1, 'Wikipedia: SMS', 'https://en.wikipedia.org/wiki/SMS'),
  ('first-sms', 'de', 2, 'Wikipedia: Neil Papworth', 'https://en.wikipedia.org/wiki/Neil_Papworth'),
  ('first-sms', 'de', 3, 'NPR: The First Text Message Celebrates 25 Years', 'https://www.npr.org/2017/12/04/568393428/the-first-text-messages-celebrates-25-years'),
  ('first-sms', 'de', 4, 'Fox News: On this day in history, December 3, 1992, the first text message is sent', 'https://www.foxnews.com/lifestyle/day-history-dec-3-1992-first-text-message-sent');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-sms', 'en', 'first-text-message-merry-christmas',
  'The world''s first text message was sent from a PC and said Merry Christmas',
  'In 1992, a 22-year-old engineer sent the very first SMS. The guy who got it couldn''t text back.',
  'The first SMS was sent from a computer to a phone on December 3, 1992, and it said Merry Christmas.',
  'No "omw," no "lol," no emoji. The very first text message in history was two words long: **"Merry Christmas."** And it wasn''t even typed on a phone.

## Holiday greetings from a desk

On December 3, 1992, Neil Papworth, a 22-year-old test engineer, was sitting at a regular computer. He worked for Sema Group, building a short message service center for the British carrier Vodafone. As a test, he sent the message **from the PC** over Vodafone''s GSM network.

The recipient was Richard Jarvis, a Vodafone director who was at his office Christmas party at the time. The greeting popped up on his Orbitel 901. According to NPR, that phone weighed over 4.5 pounds. Your smartphone weighs a tiny fraction of that.

## Texting back? Not an option

Here''s the funny part: **Jarvis couldn''t reply.** Phones back then simply had no way to write text messages. So the first SMS was a one-way street.

Papworth himself didn''t think it was a big deal. According to Wikipedia, he later said it didn''t feel momentous at all. And he told NPR he spelled out "Merry Christmas" in full, not "X-mas."

## Why a text has 160 characters

Someone actually thought hard about how long a text should be. Friedhelm Hillebrand, one of the people who developed SMS, looked at how long typical postcards and telex messages were. His conclusion: **160 characters** is enough for most messages.

> The limit came straight from the analog world: Hillebrand used postcards and telex messages as his benchmark.

One single test greeting turned into something as everyday as brushing your teeth. Not bad for two words that were just meant to brighten up an office party.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-sms', 'en', 1, 'Basic flip phone with big buttons', 'basic flip phone big buttons unlocked', 'Calls and texts, nothing else. A battery that lasts for days and zero app distractions.'),
  ('first-sms', 'en', 2, 'Book on the history of the cell phone', 'history of the mobile phone book', 'From brick phones to smartphones: tells the story of how the phone ended up in your pocket.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-sms', 'en', 1, 'Wikipedia: SMS', 'https://en.wikipedia.org/wiki/SMS'),
  ('first-sms', 'en', 2, 'Wikipedia: Neil Papworth', 'https://en.wikipedia.org/wiki/Neil_Papworth'),
  ('first-sms', 'en', 3, 'NPR: The First Text Message Celebrates 25 Years', 'https://www.npr.org/2017/12/04/568393428/the-first-text-messages-celebrates-25-years'),
  ('first-sms', 'en', 4, 'Fox News: On this day in history, December 3, 1992, the first text message is sent', 'https://www.foxnews.com/lifestyle/day-history-dec-3-1992-first-text-message-sent');
