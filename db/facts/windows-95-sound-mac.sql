-- WTFact-Fakt „Brian Eno komponierte den Startsound von Windows 95 auf einem Mac“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('windows-95-sound-mac', NULL, 'popculture', '💻', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'windows-95-sound-mac', 'de', 'windows-95-startsound-auf-mac',
  'Brian Eno komponierte den Startsound von Windows 95 auf einem Mac',
  'Der bekannteste PC-Sound der Neunziger entstand auf einem Rechner der Konkurrenz, und er war doppelt so lang wie bestellt.',
  'Microsoft bat den Ambient-Musiker Brian Eno um einen 3,25 Sekunden langen Startsound für Windows 95, und Eno komponierte ihn auf einem Mac.',
  'Kaum ein Geräusch klingt so sehr nach Neunziger-Computer wie dieses: das sanfte, schimmernde Klangstück, das beim Hochfahren von Windows 95 lief. Es kam von einem ziemlich unerwarteten Ort.

## Ein Auftrag mit Stoppuhr

1994 meldeten sich die Microsoft-Designer Mark Malamud und Erik Gavriluk bei Brian Eno, einem Pionier der Ambient-Musik, berichtet Popular Science. Der Auftrag war sehr genau: Der Sound sollte 3,25 Sekunden lang sein. Eno fand gerade diese Vorgabe amüsant und verglich die Arbeit später damit, „ein winziges kleines Schmuckstück“ zu bauen.

Eno nahm es trotzdem ernst. Laut GRAMMY.com lieferte er 84 Klangentwürfe. Microsoft nahm einen, der fast doppelt so lang war wie bestellt, weil er am besten nach Willkommen, Zuversicht und Fortschritt klang.

## Der Twist mit dem Mac

Jetzt kommt der beste Teil. Eno komponierte den Startsound für das größte PC-Betriebssystem seiner Zeit auf einem Computer der Konkurrenz. „Ich habe es auf einem Mac geschrieben“, sagte er 2011 der BBC, wie Popular Science zitiert. Einen PC habe er nie benutzt.

## Ein Sound fürs nationale Archiv

2025 nahm die Library of Congress, die Nationalbibliothek der USA, das Stück als „Microsoft Windows Reboot Chime“ in ihr National Recording Registry auf. Dort sammelt sie Tonaufnahmen, die sie für kulturell, historisch oder ästhetisch bedeutend hält. Laut Popular Science umfasst das Register damit 675 Einträge.

> Bonusfakt: Im selben Jahr kam auch der Minecraft-Soundtrack des deutschen Produzenten Daniel Rosenfeld alias C418 ins Register. Laut GRAMMY.com ist er erst der zweite Videospiel-Soundtrack dort, nach dem Thema von Super Mario Bros.

Einer der berühmtesten PC-Sounds aller Zeiten ist auf einem Mac entstanden.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('windows-95-sound-mac', 'de', 1, 'Ambient-Album von Brian Eno auf Vinyl', 'Brian Eno Music for Airports Vinyl', 'Ruhige Klangflächen vom Erfinder des Ambient, perfekt zum Lernen oder Entspannen.'),
  ('windows-95-sound-mac', 'de', 2, 'Retro-Mauspad im Stil der Neunziger', 'Retro Mauspad 90er', 'Bringt etwas Neunziger-Computer-Feeling auf deinen Schreibtisch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('windows-95-sound-mac', 'de', 1, 'Popular Science: Iconic Windows 95 startup chime added to National Recording Registry', 'https://www.popsci.com/technology/windows-95-startup-sound-library-of-congress/'),
  ('windows-95-sound-mac', 'de', 2, 'GRAMMY.com: Library Of Congress Adds Elton John, Mary J. Blige, ''Hamilton,'' Amy Winehouse, Celine Dion & More To 2025 National Recording Registry', 'https://www.grammy.com/news/library-of-congress-2025-national-recording-registry-additions-elton-john-mary-j-blige-hamilton-amy-winehouse');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'windows-95-sound-mac', 'en', 'windows-95-sound-made-on-mac',
  'Brian Eno composed the Windows 95 startup sound on a Mac',
  'The most famous PC sound of the nineties was made on a rival''s computer, and it ran twice as long as ordered.',
  'Microsoft asked ambient musician Brian Eno for a 3.25-second startup sound for Windows 95, and Eno composed it on a Mac.',
  'Few sounds say nineties computer quite like this one: the soft, shimmering chime that played whenever Windows 95 started up. It came from a pretty unexpected place.

## A brief with a stopwatch

In 1994, Microsoft designers Mark Malamud and Erik Gavriluk reached out to Brian Eno, a pioneer of ambient music, Popular Science reports. The brief was very precise: the sound had to be 3.25 seconds long. Eno found exactly that requirement amusing and later compared the job to "making a tiny little jewel."

Still, Eno took it seriously. According to GRAMMY.com, he delivered 84 sound elements. Microsoft picked one that ran almost twice as long as requested, because it best conveyed welcome, hopefulness and progress.

## The twist with the Mac

Now the best part. Eno composed the startup sound for the biggest PC operating system of its time on a computer made by the competition. "I wrote it on a Mac," he told the BBC in 2011, as quoted by Popular Science. He added that he had never used a PC.

## A sound for the national archive

In 2025, the Library of Congress, the national library of the US, added the piece as "Microsoft Windows Reboot Chime" to its National Recording Registry. That''s where it collects sound recordings it considers culturally, historically or aesthetically significant. According to Popular Science, the registry now holds 675 entries.

> Bonus fact: In the same year, the Minecraft soundtrack by German producer Daniel Rosenfeld, alias C418, also joined the registry. According to GRAMMY.com, it''s only the second video game soundtrack there, after the Super Mario Bros. theme.

One of the most famous PC sounds of all time was born on a Mac.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('windows-95-sound-mac', 'en', 1, 'Brian Eno ambient album on vinyl', 'Brian Eno Music for Airports vinyl', 'Calm soundscapes from the inventor of ambient, perfect for studying or winding down.'),
  ('windows-95-sound-mac', 'en', 2, 'Retro nineties-style mouse pad', 'retro 90s mouse pad', 'Adds a bit of nineties computer vibe to your desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('windows-95-sound-mac', 'en', 1, 'Popular Science: Iconic Windows 95 startup chime added to National Recording Registry', 'https://www.popsci.com/technology/windows-95-startup-sound-library-of-congress/'),
  ('windows-95-sound-mac', 'en', 2, 'GRAMMY.com: Library Of Congress Adds Elton John, Mary J. Blige, ''Hamilton,'' Amy Winehouse, Celine Dion & More To 2025 National Recording Registry', 'https://www.grammy.com/news/library-of-congress-2025-national-recording-registry-additions-elton-john-mary-j-blige-hamilton-amy-winehouse');
