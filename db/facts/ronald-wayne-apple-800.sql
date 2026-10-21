-- WTFact-Fakt „Apples dritter Gründer verkaufte seine 10 Prozent für 800 Dollar“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ronald-wayne-apple-800', '2026-10-22T19:00:00+02:00', 'money', '🍎', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ronald-wayne-apple-800', 'de', 'ronald-wayne-apple-800-dollar',
  'Apples dritter Gründer verkaufte seine 10 Prozent für 800 Dollar',
  'Neben Jobs und Wozniak gab es noch einen Mitgründer. Er stieg nach 12 Tagen aus.',
  'Ronald Wayne gründete Apple 1976 mit Steve Jobs und Steve Wozniak und bekam 10 Prozent der Firma. Etwa 12 Tage später verkaufte er seinen Anteil für 800 Dollar.',
  'Wenn es um die Gründung von Apple geht, fallen zwei Namen: Steve Jobs und Steve Wozniak. Dabei waren es eigentlich drei. Der dritte hat eine der berühmtesten Fehlentscheidungen der Wirtschaftsgeschichte getroffen, findet aber selbst, dass es keine war.

## Der Mann mit den 10 Prozent

Ronald Wayne war deutlich älter als die beiden jungen Gründer und kümmerte sich um Verwaltung und Unterlagen. Bei der Gründung im April 1976 bekamen Jobs und Wozniak je 45 Prozent, Wayne 10 Prozent.

Etwa 12 Tage nach der Gründung stieg er aus und verkaufte seinen Anteil für 800 Dollar. Später bekam er noch einmal 1.500 Dollar dafür, dass er auf alle weiteren Ansprüche verzichtete.

## Warum er ging

Wayne hatte gute Gründe. Jobs hatte sich 15.000 Dollar geliehen, um eine Bestellung von Computern für den Laden Byte Shop zu erfüllen, der als schlechter Zahler galt. Wayne hatte, wie er sagte, „ein Haus, ein Auto und ein Bankkonto“. Wäre die Firma pleitegegangen, hätte er persönlich mitgehaftet.

Dazu kam die Sorge, neben den beiden jungen Genies nie ein eigenes Projekt zu bekommen.

> Bonusfakt: Laut „Fortune“ wären Waynes 10 Prozent heute bis zu 400 Milliarden Dollar wert, wenn sein Anteil nie verwässert worden wäre.

Bereut er es? Nein, sagt Wayne. Er hätte mit Jobs und Wozniak nicht mithalten können. Wäre er geblieben, wäre er vielleicht nur „der reichste Mann auf dem Friedhof“ geworden.

Die Rechnung ist trotzdem schwer zu ignorieren. 800 Dollar gegen ein paar Hundert Milliarden. Wayne nimmt es gelassen, und das ist vielleicht die eigentliche Leistung.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ronald-wayne-apple-800', 'de', 1, 'Biografie über Steve Jobs', 'Steve Jobs Biografie Walter Isaacson', 'Erzählt die Apple-Geschichte von der Garage bis zum iPhone.'),
  ('ronald-wayne-apple-800', 'de', 2, 'Sachbuch über berühmte Firmengründungen', 'Buch Gründergeschichten Startups', 'Wie aus kleinen Ideen große Unternehmen wurden, mit allen Pannen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ronald-wayne-apple-800', 'de', 1, 'Fortune: Apple cofounder Ronald Wayne sold his 10% stake for $800 in 1976—today it’d be worth up to $400 billion', 'https://fortune.com/2025/06/24/apple-cofounder-ronald-wayne-sold-10-percent-stake-early-today-worth-300-billion-steve-jobs-steve-wozniak/'),
  ('ronald-wayne-apple-800', 'de', 2, 'Daily Investor: The Apple co-founder who sold his 10% share for $800', 'https://dailyinvestor.com/investing/17501/the-apple-co-founder-who-sold-his-10-share-for-800/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ronald-wayne-apple-800', 'en', 'ronald-wayne-apple-800',
  'Apple’s third founder sold his 10 percent for 800 dollars',
  'Besides Jobs and Wozniak, there was another co-founder. He bailed after 12 days.',
  'Ronald Wayne founded Apple with Steve Jobs and Steve Wozniak in 1976 and got 10 percent of the company. About 12 days later, he sold his stake for 800 dollars.',
  'When people talk about Apple’s founding, two names come up: Steve Jobs and Steve Wozniak. There were actually three. The third made one of the most famous bad calls in business history, but he doesn’t think it was one.

## The man with 10 percent

Ronald Wayne was much older than the two young founders and handled administration and paperwork. When the company was founded in April 1976, Jobs and Wozniak each got 45 percent and Wayne got 10 percent.

About 12 days after the founding, he dropped out and sold his stake for 800 dollars. Later, he got another 1,500 dollars for giving up any further claims.

## Why he left

Wayne had his reasons. Jobs had borrowed 15,000 dollars to fill a computer order for the Byte Shop, a store with a reputation for not paying its bills. Wayne, as he put it, "had a house, and a car, and a bank account". If the company had gone bust, he would have been personally liable.

He also worried he’d never get a project of his own next to the two young geniuses.

> Bonus fact: According to Fortune, Wayne’s 10 percent would be worth up to 400 billion dollars today if his stake had never been diluted.

Does he regret it? No, Wayne says. He couldn’t have kept up with Jobs and Wozniak. Had he stayed, he might just have become "the richest man in the cemetery".

The math is still hard to ignore. 800 dollars versus a few hundred billion. Wayne shrugs it off, and that might be the real achievement.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ronald-wayne-apple-800', 'en', 1, 'Steve Jobs biography', 'Steve Jobs biography Walter Isaacson', 'Tells the Apple story from the garage to the iPhone.'),
  ('ronald-wayne-apple-800', 'en', 2, 'Book about famous startup stories', 'book startup founder stories', 'How small ideas turned into big companies, mishaps included.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ronald-wayne-apple-800', 'en', 1, 'Fortune: Apple cofounder Ronald Wayne sold his 10% stake for $800 in 1976—today it’d be worth up to $400 billion', 'https://fortune.com/2025/06/24/apple-cofounder-ronald-wayne-sold-10-percent-stake-early-today-worth-300-billion-steve-jobs-steve-wozniak/'),
  ('ronald-wayne-apple-800', 'en', 2, 'Daily Investor: The Apple co-founder who sold his 10% share for $800', 'https://dailyinvestor.com/investing/17501/the-apple-co-founder-who-sold-his-10-share-for-800/');
