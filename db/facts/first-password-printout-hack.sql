-- WTFact-Fakt „Eines der ersten Passwortsysteme wurde mit einem simplen Druckauftrag geknackt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('first-password-printout-hack', '2026-10-25T12:00:00+01:00', 'tech', '🔑', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-password-printout-hack', 'de', 'erstes-passwort-per-ausdruck-geknackt',
  'Eines der ersten Passwortsysteme wurde mit einem simplen Druckauftrag geknackt',
  'Kein genialer Hack, kein Geheimcode: Ein MIT-Student bat den Computer einfach, alle Passwörter auszudrucken.',
  'Am MIT kam der Doktorand Allan Scherr in den 1960ern an alle Passwörter von CTSS, einem der ersten passwortgeschützten Computersysteme, indem er einfach einen Ausdruck der Passwortdatei bestellte.',
  'Passwörter wirken so alt wie Computer, aber irgendwer musste sie erst erfinden. Computerhistoriker verweisen meist auf das MIT und ein System namens CTSS, das Compatible Time-Sharing System unter der Leitung von Fernando Corbató. BRG datiert den ersten belegten Einsatz von Computerpasswörtern auf 1961.

## Warum ein Computer ein Schloss brauchte

Mit CTSS konnten mehrere Leute gleichzeitig an einem großen Rechner arbeiten, jeder mit eigenen privaten Dateien. Also gab Corbató jedem Nutzer ein Passwort. Für jeden Nutzer ein Passwort als Schloss, das sei ihm als „sehr naheliegende Lösung“ erschienen, sagte er später. Erster sein wollte er trotzdem nicht unbedingt: IBMs Buchungssystem Sabre von 1960 könnte schon früher Passwörter genutzt haben, aber IBM konnte das nicht bestätigen.

Die Passwörter lagen in einer Hauptdatei. Laut Today I Found Out waren sie im Klartext gespeichert.

## Der Hack, der eigentlich ein Druckauftrag war

Allan Scherr, ein Doktorand, hatte ein Problem: Ihm standen nur vier Stunden Rechenzeit pro Woche zu, und seine Simulationen brauchten viel mehr. Seine Lösung war fast schon peinlich einfach. Druckaufträge gab man per Lochkarte ab, also reichte er eine ein, die die Passwortdatei anforderte. Am nächsten Morgen holte er den Ausdruck ab.

Mit allen Passwörtern in der Hand konnte er sich als andere Nutzer anmelden und deren Rechenzeit verbrauchen. Er gab Passwörter auch weiter. Laut Gizmodo loggte sich J.C.R. Licklider mit einem davon in das Konto von Laborleiter Robert Fano ein und hinterließ dort spöttische Nachrichten. Jahrelang verdächtigte ihn niemand. Scherr gestand erst rund 25 Jahre später.

> Bonus-Fakt: 1966 verriet CTSS alle Passwörter noch einmal, diesmal ganz ohne Hilfe: Durch einen Softwarefehler wurde die Begrüßungsnachricht mit der Passwortdatei vertauscht, und jeder, der sich anmeldete, sah sämtliche Passwörter.

## Das Urteil des Erfinders

Corbató wurde mit seiner Erfindung nicht richtig warm. In einem Interview mit dem Wall Street Journal nannte er Passwörter 2014 „eine Art Albtraum“, weil sich niemand alle merken kann.

Das Passwort wurde also geknackt, bevor es überhaupt erwachsen war, und sein eigener Erfinder fand es am Ende auch nervig.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-password-printout-hack', 'de', 1, 'FIDO2-USB-Sicherheitsschlüssel', 'FIDO2 USB Sicherheitsschlüssel', 'Ein kleiner physischer Schlüssel zum Anmelden, der mit vielen Online-Konten funktioniert.'),
  ('first-password-printout-hack', 'de', 2, 'Buch zur Geschichte des Hackens', 'Geschichte der Hacker Buch', 'Geschichten über berühmte Hacks und die Leute dahinter, von den Anfängen bis heute.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-password-printout-hack', 'de', 1, 'Gizmodo: The World’s First Computer Password? It Was Useless Too', 'https://gizmodo.com/the-world-s-first-computer-password-it-was-useless-too-5879856'),
  ('first-password-printout-hack', 'de', 2, 'BRG ThinkSet: The Case of the Purloined Password', 'https://www.thinkbrg.com/thinkset/ts-case-of-purloined-password/'),
  ('first-password-printout-hack', 'de', 3, 'Today I Found Out: Who Invented Computer Passwords?', 'https://www.todayifoundout.com/index.php/2018/06/who-invented-computer-passwords/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-password-printout-hack', 'en', 'first-password-beaten-by-a-printout',
  'One of the first computer password systems was beaten by a simple printout request',
  'No genius hack, no secret code: an MIT student just asked the computer to print everyone''s passwords.',
  'At MIT in the 1960s, PhD student Allan Scherr got hold of every password on CTSS, one of the first password-protected computer systems, simply by requesting a printout of the password file.',
  'Passwords feel as old as computers, but someone had to come up with them. Computer historians mostly point to MIT and a system called CTSS, the Compatible Time-Sharing System, led by Fernando Corbató. BRG dates the first recorded use of computer passwords to 1961.

## Why a computer needed a lock

CTSS let several people use one big computer at the same time, each with their own private files. So Corbató gave every user a password. „Putting a password on for each individual user as a lock seemed like a very straightforward solution“, he later said. He never insisted on being first, though: IBM''s Sabre booking system from 1960 might have used passwords earlier, but IBM could not confirm it.

The passwords sat in a master file. According to Today I Found Out, they were stored in plain text.

## The hack that was really a print job

Allan Scherr, a PhD student, had a problem: he was allowed just four hours of computer time per week, and his simulations needed far more. His solution was almost embarrassingly simple. Printing jobs were requested with a punched card, so he submitted one asking for the password file. The next morning, he picked up the printout.

With everyone''s passwords in hand, he could log in as other users and use their time. He also handed passwords to others. According to Gizmodo, J.C.R. Licklider used one to log into the account of lab director Robert Fano and left taunting messages there. For years nobody suspected him. Scherr only confessed about 25 years later.

> Bonus fact: In 1966, CTSS leaked all its passwords again, this time without any help: a software mix-up swapped the welcome message with the password file, so everyone who logged in saw every password.

## The inventor''s verdict

Corbató did not grow fond of his creation. In a 2014 interview with the Wall Street Journal, he called passwords „kind of a nightmare“, because nobody can remember them all.

So the password was cracked before it was even grown up, and its own inventor ended up agreeing it was a pain.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-password-printout-hack', 'en', 1, 'FIDO2 USB security key', 'FIDO2 USB security key', 'A small physical key for logging in that works with many online accounts.'),
  ('first-password-printout-hack', 'en', 2, 'Book on the history of hacking', 'history of hacking book', 'Stories of famous hacks and the people behind them, from the early days to today.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-password-printout-hack', 'en', 1, 'Gizmodo: The World’s First Computer Password? It Was Useless Too', 'https://gizmodo.com/the-world-s-first-computer-password-it-was-useless-too-5879856'),
  ('first-password-printout-hack', 'en', 2, 'BRG ThinkSet: The Case of the Purloined Password', 'https://www.thinkbrg.com/thinkset/ts-case-of-purloined-password/'),
  ('first-password-printout-hack', 'en', 3, 'Today I Found Out: Who Invented Computer Passwords?', 'https://www.todayifoundout.com/index.php/2018/06/who-invented-computer-passwords/');
