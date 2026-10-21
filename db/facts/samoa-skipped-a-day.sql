-- WTFact-Fakt „Samoa hat den 30. Dezember 2011 einfach übersprungen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('samoa-skipped-a-day', '2026-10-23T19:00:00+02:00', 'places', '📅', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'samoa-skipped-a-day', 'de', 'samoa-uebersprang-einen-tag',
  'Samoa hat den 30. Dezember 2011 einfach übersprungen',
  'Auf den 29. folgte direkt der 31. Ein ganzes Land hat einen Tag gestrichen.',
  'Um Mitternacht am 29. Dezember 2011 sprangen in Samoa die Uhren direkt auf den 31. Dezember. Der Inselstaat wechselte die Seite der Datumsgrenze, um näher an Australien und Neuseeland zu rücken.',
  'Einen Tag einfach ausfallen lassen? Davon träumt man vor einer Prüfung. Samoa hat es 2011 tatsächlich gemacht, mit dem ganzen Land.

## Der Tag, den es nie gab

Am 29. Dezember 2011 um Mitternacht sprangen die Uhren im Inselstaat Samoa im Südpazifik nicht auf den 30. Dezember, sondern direkt auf den 31. Dezember, Silvester. Der Freitag, 30. Dezember 2011, existierte für die rund 186.000 Einwohner schlicht nicht.

Der Grund: Samoa wechselte die Seite der internationalen Datumsgrenze. Bis dahin lag das Land fast einen ganzen Tag hinter seinen wichtigsten Handelspartnern Australien und Neuseeland zurück. Wenn dort Montag war, war in Samoa noch Sonntag. Laut „The Register“ verschob sich Samoas Zeit dadurch von 23 Stunden hinter Sydney auf drei Stunden davor.

## Zurück auf die andere Seite

Eigentlich war es eine Rückkehr. Laut „ABC7“ hatten US-Händler die Behörden auf Samoa 119 Jahre zuvor überredet, die Uhren an das benachbarte Amerikanisch-Samoa anzupassen. Das erleichterte damals den Handel mit Kalifornien.

Inzwischen aber war Samoa viel enger mit Australien und Neuseeland verbunden. Premierminister Tuilaepa Sailele Malielegaoi sagte laut „The Register“, über 90 Prozent der Menschen aus Samoa würden nach Neuseeland und Australien auswandern. Der Wechsel sei deshalb „absolut entscheidend“.

> Bonusfakt: Beim ersten Wechsel 1892 bekam Samoa einen Tag geschenkt. Laut „The Register“ feierte das Land damals zweimal hintereinander den 4. Juli.

Für die Menschen in Samoa hieß das vor allem: Ab sofort lagen Wochenende, Feiertage und Geschäftszeiten wieder im selben Takt wie bei Familie und Handelspartnern in Australien und Neuseeland.

Wer am 30. Dezember 2011 in Samoa Geburtstag hatte, musste übrigens ein Jahr warten. Oder einfach am 31. doppelt feiern.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('samoa-skipped-a-day', 'de', 1, 'Weltzeituhr für die Wand', 'Weltzeituhr Wanduhr', 'Zeigt die Uhrzeit in mehreren Städten auf einmal.'),
  ('samoa-skipped-a-day', 'de', 2, 'Buch über die Geschichte der Zeitmessung', 'Buch Geschichte der Zeit Zeitmessung', 'Wie Menschen Kalender, Uhren und Zeitzonen erfunden haben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('samoa-skipped-a-day', 'de', 1, 'The Register: Samoa takes day off to skip International Date Line', 'https://www.theregister.com/offbeat/2011/12/30/samoa-takes-day-off-to-skip-international-date-line/1230771'),
  ('samoa-skipped-a-day', 'de', 2, 'ABC7 San Francisco: Samoa skips a day, crosses international dateline', 'https://abc7news.com/archive/8482990');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'samoa-skipped-a-day', 'en', 'samoa-skipped-a-day',
  'Samoa simply skipped December 30, 2011',
  'The 29th was followed straight by the 31st. A whole country deleted a day.',
  'At midnight on December 29, 2011, clocks in Samoa jumped straight to December 31. The island nation switched sides of the date line to move closer to Australia and New Zealand.',
  'Skipping a day entirely? That’s the dream before an exam. Samoa actually did it in 2011, with the entire country.

## The day that never happened

At midnight on December 29, 2011, the clocks in the South Pacific nation of Samoa didn’t move to December 30. They jumped straight to December 31, New Year’s Eve. Friday, December 30, 2011, simply didn’t exist for its roughly 186,000 citizens.

The reason: Samoa switched sides of the International Date Line. Until then, the country had been almost a whole day behind its most important trading partners, Australia and New Zealand. When it was Monday there, it was still Sunday in Samoa. According to The Register, the switch moved Samoa from 23 hours behind Sydney to three hours ahead.

## Back to the other side

It was really a return. According to ABC7, US traders had persuaded Samoan authorities 119 years earlier to line up their clocks with neighboring American Samoa. Back then, that made trade with California easier.

By now, though, Samoa was much more closely tied to Australia and New Zealand. Prime Minister Tuilaepa Sailele Malielegaoi said, according to The Register, that "over 90 percent of our people emigrate to New Zealand and Australia". That made the change "absolutely vital".

> Bonus fact: The first switch in 1892 gave Samoa an extra day. According to The Register, the country celebrated the Fourth of July twice in a row.

For people in Samoa, it mainly meant one thing: from then on, weekends, holidays and business hours lined up again with family and trading partners in Australia and New Zealand.

Anyone with a birthday on December 30, 2011, in Samoa had to wait a year. Or just celebrate twice on the 31st.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('samoa-skipped-a-day', 'en', 1, 'World time wall clock', 'world time wall clock', 'Shows the time in several cities at once.'),
  ('samoa-skipped-a-day', 'en', 2, 'Book about the history of timekeeping', 'book history of timekeeping', 'How people invented calendars, clocks and time zones.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('samoa-skipped-a-day', 'en', 1, 'The Register: Samoa takes day off to skip International Date Line', 'https://www.theregister.com/offbeat/2011/12/30/samoa-takes-day-off-to-skip-international-date-line/1230771'),
  ('samoa-skipped-a-day', 'en', 2, 'ABC7 San Francisco: Samoa skips a day, crosses international dateline', 'https://abc7news.com/archive/8482990');
