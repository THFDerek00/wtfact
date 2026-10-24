-- WTFact-Fakt „„Quarantäne“ heißt eigentlich „40 Tage“, obwohl die erste nur 30 dauerte“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('quarantine-forty-days', '2026-10-26T08:00:00+01:00', 'language', '⚓', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'quarantine-forty-days', 'de', 'quarantaene-heisst-vierzig-tage',
  '„Quarantäne“ heißt eigentlich „40 Tage“, obwohl die erste nur 30 dauerte',
  'Das Wort für Isolation ist eigentlich nur eine Zahl, und die erste Regel nutzte eine andere.',
  'Das Wort Quarantäne kommt vom italienischen „quaranta“ (vierzig), doch die erste Regel dieser Art, 1377 in Ragusa beschlossen, ließ Schiffe nur 30 Tage warten.',
  '„Quarantäne“ klingt nach Medizin. Eigentlich steckt darin aber nur eine Zahl. Das Wort geht auf das italienische „quaranta“ zurück, und das heißt vierzig. Das Schräge daran: Die erste Regel dieser Art dauerte gar keine vierzig Tage.

## Angefangen hat es mit 30 Tagen

1377 beschloss die Hafenstadt Ragusa, das heutige Dubrovnik in Kroatien, ein Gesetz gegen die Pest. Laut Universität Münster mussten Schiffe aus Pestgebieten einen Monat lang vor der Küste ankern. Snopes beruft sich auf einen Artikel von 2002 in der Fachzeitschrift Clinical Infectious Diseases und nennt diese Regel „trentino“, nach dem italienischen „trenta“, dreißig. Die allererste Quarantäne war also eigentlich eine „Dreißigtäne“.

Die Universität Münster schreibt, dass aus den 30 Tagen bald 40 wurden, und Marseille verhängte 1383 eine 40-tägige Quarantäne. Andere europäische Städte zogen nach, und die längere Frist setzte sich durch, berichtet Snopes. So wurde aus „trenta“ ein „quaranta“, und der Name blieb. Etymonline erzählt es anders: Dort gilt Venedig als Erfinder, mit 40 Tagen Wartezeit ab 1377. Die Universität Münster und Snopes lassen die Geschichte dagegen in Ragusa beginnen, mit 30 Tagen.

## Warum ausgerechnet 40?

Genau weiß das niemand. Snopes nennt mehrere Theorien. Vielleicht schienen 30 Tage einfach zu kurz. Vielleicht war es eine Anspielung auf die Fastenzeit, die im Christentum 40 Tage dauert, oder auf andere Vierzig-Tage-Geschichten aus der Bibel wie die Sintflut. Snopes nennt außerdem die altgriechische Lehre von den „kritischen Tagen“: Eine ansteckende Krankheit sollte sich innerhalb von 40 Tagen zeigen.

## Eine Wurzel, zwei Sprachen

Das deutsche „Quarantäne“ und das englische „quarantine“ haben dieselbe Wurzel. Laut Duden kam das deutsche Wort über das Französische zu uns und geht auf das lateinische „quadraginta“ zurück, vierzig, nach der früher üblichen 40-tägigen Sperre für Schiffe mit seuchenverdächtigen Menschen an Bord. Etymonline datiert das englische Substantiv auf die 1660er, zuerst für die Zeit, in der ein verdächtiges Schiff isoliert wurde.

> Bonusfakt: Bevor es Isolation bedeutete, hatte das englische „quarantine“ noch eine andere Vierzig-Tage-Bedeutung. Laut Etymonline waren es in den 1520ern die 40 Tage, die eine Witwe noch im Haus ihres verstorbenen Mannes bleiben durfte.

Wer also sagt, er hänge in Quarantäne fest, zählt streng genommen auf Italienisch bis vierzig, nachdem jemand von dreißig aufgerundet hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('quarantine-forty-days', 'de', 1, 'Buch über Wortherkunft', 'Buch Wortherkunft Etymologie', 'Voller überraschender Geschichten, die in ganz alltäglichen Wörtern stecken.'),
  ('quarantine-forty-days', 'de', 2, 'Historische Karte der Adria', 'historische Karte Adria Poster', 'Eine Seekarte im Vintage-Stil, die gerahmt an der Wand richtig gut aussieht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('quarantine-forty-days', 'de', 1, 'Snopes: Does ''Quarantine'' Originate from the Word ''Forty'' (Days) in Italian?', 'https://www.snopes.com/fact-check/quarantine-etymology/'),
  ('quarantine-forty-days', 'de', 2, 'Universität Münster: In a place far from the world: the protective measure of quarantine', 'https://www.uni-muenster.de/Religion-und-Politik/en/aktuelles/schwerpunkte/epidemien/01_Thema_Vorkehrungen_Regeln.html'),
  ('quarantine-forty-days', 'de', 3, 'Duden: Quarantäne ▶ Rechtschreibung, Bedeutung, Definition, Herkunft', 'https://www.duden.de/rechtschreibung/Quarantaene'),
  ('quarantine-forty-days', 'de', 4, 'Etymonline: Quarantine - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/quarantine');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'quarantine-forty-days', 'en', 'quarantine-means-forty-days',
  '"Quarantine" literally means "40 days", even though the first one lasted only 30',
  'The word for isolation is really just a number, and the original rule used a different one.',
  'The word quarantine comes from the Italian "quaranta" (forty), but the first such rule, passed in Ragusa in 1377, made ships wait only 30 days.',
  '"Quarantine" sounds like a medical term. Hidden inside it, though, is just a number. The word goes back to the Italian "quaranta", which means forty. The funny part: the first rule of its kind didn''t even last forty days.

## It started with 30 days

In 1377, the port city of Ragusa, today''s Dubrovnik in Croatia, passed a law against the plague. According to the University of Münster, ships from plague areas had to anchor offshore for a month. Snopes, citing a 2002 article in the journal Clinical Infectious Diseases, calls this rule a "trentino", from the Italian "trenta", thirty. So the very first quarantine was really a "thirtyntine".

The University of Münster writes that the 30 days were soon increased to 40, and that Marseille imposed a 40-day quarantine in 1383. Other European cities followed, and the longer period won, Snopes reports. That turned "trenta" into "quaranta", and the name stuck. Etymonline tells a different version: it credits Venice with a 40-day wait from 1377 onward. The University of Münster and Snopes, though, start the story in Ragusa, with 30 days.

## Why exactly 40?

Nobody knows for sure. Snopes lists several theories. Maybe 30 days simply seemed too short. Maybe it was a nod to Lent, the 40-day Christian fasting period, or to other forty-day stories in the Bible, like the great flood. Snopes also mentions the ancient Greek doctrine of "critical days": a contagious disease was thought to develop within 40 days.

## One root, two languages

German "Quarantäne" and English "quarantine" share this root. According to Duden, the German word came via French and goes back to Latin "quadraginta", forty, after the 40-day lockdown for ships with suspected disease on board. Etymonline dates the English noun to the 1660s, first for the period a ship suspected of carrying disease was kept isolated.

> Bonus fact: Before it meant isolation, English "quarantine" had another forty-day meaning. According to Etymonline, in the 1520s it was the 40 days a widow was allowed to stay in her late husband''s house.

So whenever someone says they''re stuck in quarantine, they''re technically counting to forty in Italian, after rounding up from thirty.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('quarantine-forty-days', 'en', 1, 'Etymology book for word lovers', 'etymology book word origins', 'Packed with the surprising stories hidden inside everyday words.'),
  ('quarantine-forty-days', 'en', 2, 'Vintage map of the Adriatic Sea', 'vintage Adriatic Sea map poster', 'An old-style sea chart that looks great framed on a wall.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('quarantine-forty-days', 'en', 1, 'Snopes: Does ''Quarantine'' Originate from the Word ''Forty'' (Days) in Italian?', 'https://www.snopes.com/fact-check/quarantine-etymology/'),
  ('quarantine-forty-days', 'en', 2, 'Universität Münster: In a place far from the world: the protective measure of quarantine', 'https://www.uni-muenster.de/Religion-und-Politik/en/aktuelles/schwerpunkte/epidemien/01_Thema_Vorkehrungen_Regeln.html'),
  ('quarantine-forty-days', 'en', 3, 'Duden: Quarantäne ▶ Rechtschreibung, Bedeutung, Definition, Herkunft', 'https://www.duden.de/rechtschreibung/Quarantaene'),
  ('quarantine-forty-days', 'en', 4, 'Etymonline: Quarantine - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/quarantine');
