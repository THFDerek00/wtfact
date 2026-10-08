-- WTFact-Fakt „Die erste Festplatte wog über eine Tonne und speicherte 5 Millionen Zeichen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('first-hard-drive-ton', '2026-10-10T08:00:00+02:00', 'tech', '💾', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-hard-drive-ton', 'de', 'erste-festplatte-wog-eine-tonne',
  'Die erste Festplatte wog über eine Tonne und speicherte 5 Millionen Zeichen',
  'Dein Handy würde sie auslachen: IBMs erste Festplatte brauchte einen eigenen Luftkompressor und wurde monatlich gemietet.',
  'IBMs erste kommerzielle Festplatte von 1956 wog mehr als eine Tonne, war etwa so groß wie zwei Kühlschränke und speicherte gerade mal 5 Millionen Zeichen.',
  'Im Juni 1956 lieferte IBM etwas an eine Papierfirma in San Francisco, das die Computerwelt für immer verändert hat: die Model 350 Disk Storage Unit, die erste kommerzielle Festplatte. Sie gehörte zum System IBM 305 RAMAC, und sie war ein Monster.

## Ein Speichermonster in Kühlschrankgröße

Laut IBM war das ganze Gerät etwa so groß wie zwei Küchenkühlschränke und wog mehr als eine Tonne. Das Computer History Museum nennt für die Laufwerkseinheit rund 1,5 Meter Höhe (5 Fuß) und 1,8 Meter Breite (6 Fuß). In der Tonne steckt auch ein separater Luftkompressor, ohne den das Laufwerk nicht lief.

Drinnen drehte sich ein Stapel großer, magnetisierter Aluminiumscheiben mit 1.200 Umdrehungen pro Minute. Ein Schreib-Lese-Arm schwebte auf einem Luftpolster darüber. Manche IBM-Manager glaubten nicht an das Design und tauften es „Wurstschneidemaschine“ (im Original „baloney slicer“).

Und die ganze Hardware speicherte 5 Millionen Zeichen. Das Computer History Museum rechnet das in etwa 3,75 Megabyte um, IBMs eigene Geschichtsseite spricht von 5 bis 10 Megabyte. So oder so: weniger als viele einzelne Songs, die du nebenbei streamst.

## Warum das trotzdem eine Revolution war

Vor RAMAC hieß Nachschlagen oft: einen Stapel Lochkarten durch eine Maschine laufen lassen. Mit der Festplatte konnte ein Computer direkt zu jedem Datensatz springen. Laut IBM schaffte das Team eine Zugriffszeit von rund 800 Millisekunden, und die Firma bewarb das Ganze als „miracle memory“, also Wunderspeicher.

Das Laufwerk wurde für 750 Dollar im Monat gemietet. Zu den frühen Kunden zählten 3M, Pfizer und United Airlines, die eine Tonne Technik für ein paar Megabyte mieteten.

> Bonus-Fakt: Bei den Olympischen Winterspielen 1960 in Squaw Valley, Kalifornien, betrieben IBM-Leute ein Rechenzentrum, das bei der Auswertung der Ergebnisse half, und RAMAC war Teil dieser Geschichte.

## Von einer Tonne in deine Hosentasche

IBM zitiert auf seiner Geschichtsseite die Computerworld mit einem brutalen Vergleich: 1 Terabyte Speicher hätte in den 1950ern rund 1 Billion Dollar gekostet. Heute kostet dieselbe Menge weniger als 50 Dollar.

Die Meldung „Speicher voll“ auf deinem Handy wirkt plötzlich ziemlich harmlos. Sein Urahn wog eine Tonne, brauchte einen Kompressor und kostete Miete für ein paar Megabyte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-hard-drive-ton', 'de', 1, 'Externe SSD', 'externe SSD 1TB tragbar', 'Ein Terabyte, passt in die Hosentasche und wiegt nur ein paar Dutzend Gramm.'),
  ('first-hard-drive-ton', 'de', 2, 'Buch zur Computergeschichte', 'Geschichte des Computers Buch illustriert', 'Eine bebilderte Reise von raumfüllenden Rechnern bis zum Laptop auf deinem Schreibtisch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-hard-drive-ton', 'de', 1, 'Computer History Museum: 1956: First commercial hard disk drive shipped', 'https://www.computerhistory.org/storageengine/first-commercial-hard-disk-drive-shipped/'),
  ('first-hard-drive-ton', 'de', 2, 'IBM: RAMAC', 'https://www.ibm.com/history/ramac');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-hard-drive-ton', 'en', 'first-hard-drive-weighed-a-ton',
  'The first hard drive weighed over a ton and held 5 million characters',
  'Your phone would laugh at it: IBM''s first hard drive needed its own air compressor and a monthly lease.',
  'IBM''s first commercial hard drive, shipped in 1956, weighed more than a ton, was about the size of two kitchen refrigerators and stored just 5 million characters.',
  'In June 1956, IBM shipped something to a paper company in San Francisco that changed computing forever: the Model 350 disk storage unit, the first commercial hard disk drive. It was part of the IBM 305 RAMAC system, and it was a beast.

## A fridge-sized storage monster

According to IBM, the whole apparatus was about the size of two kitchen refrigerators and weighed more than a ton. The Computer History Museum puts the drive unit at 5 feet high and 6 feet wide, and its one-ton-plus weight includes a separate air compressor the drive needed to run.

Inside, a stack of big magnetized aluminum disks spun at 1,200 rpm. A read/write arm floated over them on a cushion of air. Some IBM executives didn''t believe in the design and nicknamed it the „baloney slicer“.

And all that hardware stored 5 million characters. The Computer History Museum calculates that as about 3.75 megabytes, while IBM''s own history page says 5 to 10 megabytes. Either way, that''s less than many single songs you stream without thinking about it.

## Why it was still a revolution

Before RAMAC, looking something up often meant running a stack of punched cards through a machine. The disk drive let a computer jump straight to any record. IBM says the team reached an access time of around 800 milliseconds, and the company marketed the whole idea as „miracle memory“.

The drive was leased for 750 dollars a month. Early customers included 3M, Pfizer and United Airlines, renting a one-ton box for a few megabytes.

> Bonus fact: During the 1960 Winter Olympics in Squaw Valley, California, IBM staff ran a data center that helped process the scoring, and RAMAC was part of that story.

## From one ton to your pocket

IBM''s history page cites Computerworld with a brutal comparison: storing 1 terabyte in the 1950s would have cost around 1 trillion dollars. Today, the same amount costs less than 50 dollars.

Your phone''s "storage full" warning suddenly feels a lot less dramatic. Its great-grandparent weighed a ton, needed a compressor and paid rent for a few megabytes.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-hard-drive-ton', 'en', 1, 'Portable external SSD', 'portable external SSD 1TB', 'Holds a terabyte, fits in your pocket and weighs a few dozen grams.'),
  ('first-hard-drive-ton', 'en', 2, 'Computer history book', 'history of computers book illustrated', 'A visual tour from room-sized machines to the laptop on your desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-hard-drive-ton', 'en', 1, 'Computer History Museum: 1956: First commercial hard disk drive shipped', 'https://www.computerhistory.org/storageengine/first-commercial-hard-disk-drive-shipped/'),
  ('first-hard-drive-ton', 'en', 2, 'IBM: RAMAC', 'https://www.ibm.com/history/ramac');
