-- WTFact-Fakt „Ein Mann hatte 68 Jahre lang ununterbrochen Schluckauf“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('charles-osborne-68-years-hiccups', '2026-10-22T10:00:00+02:00', 'records', '😮‍💨', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'charles-osborne-68-years-hiccups', 'de', 'charles-osborne-68-jahre-schluckauf',
  'Ein Mann hatte 68 Jahre lang ununterbrochen Schluckauf',
  'Er begann 1922 beim Anheben eines Schweins. Und hörte erst 1990 wieder auf.',
  'Charles Osborne aus dem US-Bundesstaat Iowa bekam 1922 Schluckauf und wurde ihn 68 Jahre lang nicht mehr los. Laut Smithsonian hickste er in dieser Zeit rund 430 Millionen Mal.',
  'Schluckauf nervt schon nach fünf Minuten. Charles Osborne aus Iowa in den USA hatte ihn 68 Jahre lang. Fast ohne Pause.

## Alles begann mit einem Schwein

Laut dem Smithsonian Magazine passierte es 1922. Osborne wollte ein Schwein zum Schlachten aufhängen, das rund 350 Pfund wog, also etwa 160 Kilogramm. Er hob es hoch und fiel hin, und kurz darauf begann der Schluckauf. Er sollte die nächsten Jahrzehnte nicht mehr aufhören.

Ein Arzt vermutete laut Smithsonian später, dass der Sturz einen kleinen Bereich im Hirnstamm zerstört hatte, der den Schluckauf normalerweise unterdrückt. Osborne selbst erzählte, ihm sei ein Blutgefäß „so groß wie ein Stecknadelkopf“ im Gehirn geplatzt.

## 430 Millionen Hickser

Osborne hickste laut Smithsonian im Schnitt 20 bis 40 Mal pro Minute. Über die Jahre summierte sich das auf schätzungsweise 430 Millionen Hickser. Laut Guinness ist das die längste bekannte Schluckauf-Attacke.

Trotzdem lebte Osborne ein ziemlich normales Leben. Laut Smithsonian heiratete er zweimal und bekam acht Kinder. Er lernte, zwischen den Hicksern einzuatmen, sodass man das „Hick“ kaum hörte.

> Bonusfakt: Nachdem seine Geschichte bekannt wurde, bekam Osborne laut Guinness rund 4.000 Briefe mit Tipps gegen Schluckauf. Geholfen hat keiner davon.

Die längste Pause, an die er sich erinnerte, dauerte laut Guinness etwa 50 Stunden. Danach ging es wieder los.

Und dann, im Jahr 1990, hörte der Schluckauf plötzlich auf. Einfach so, ohne dass jemand wusste, warum. 68 Jahre, nachdem er angefangen hatte.

Wer Schluckauf hat und gerade die Luft anhält, kann sich also trösten. Bei den meisten Menschen ist er nach ein paar Minuten vorbei.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('charles-osborne-68-years-hiccups', 'de', 1, 'Buch über den menschlichen Körper', 'Buch menschlicher Körper Kinder', 'Erklärt, was im Körper bei Schluckauf, Niesen und Gähnen passiert.'),
  ('charles-osborne-68-years-hiccups', 'de', 2, 'Guinness World Records Buch', 'Guinness World Records Buch', 'Noch mehr verrückte Rekorde zum Staunen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('charles-osborne-68-years-hiccups', 'de', 1, 'Smithsonian Magazine: The Curious Case of Charles Osborne, Who Hiccupped for 68 Years Straight', 'https://www.smithsonianmag.com/history/the-curious-case-of-charles-osborne-who-hiccuped-for-68-years-straight-180980232/'),
  ('charles-osborne-68-years-hiccups', 'de', 2, 'Guinness World Records: Extreme measures person with 68-year attack of hiccups took to try and stop them', 'https://www.guinnessworldrecords.com/news/2023/7/extreme-measures-person-with-68-year-attack-of-hiccups-took-to-try-and-stop-them-754877');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'charles-osborne-68-years-hiccups', 'en', 'charles-osborne-68-years-hiccups',
  'A man had nonstop hiccups for 68 years',
  'They started in 1922 while he was lifting a hog. And only stopped in 1990.',
  'Charles Osborne from the US state of Iowa got the hiccups in 1922 and couldn’t get rid of them for 68 years. According to Smithsonian, he hiccupped about 430 million times.',
  'Hiccups get annoying after five minutes. Charles Osborne from Iowa, in the US, had them for 68 years. Almost without a break.

## It all started with a hog

According to Smithsonian Magazine, it happened in 1922. Osborne was hanging a hog of about 350 pounds for butchering. He picked it up and fell, and shortly afterwards the hiccups started. They wouldn’t stop for decades.

According to Smithsonian, a doctor later suggested the fall had destroyed a small area of the brain stem that normally suppresses hiccups. Osborne himself said he had "busted a blood vessel the size of a pin" in his brain.

## 430 million hiccups

According to Smithsonian, Osborne hiccupped 20 to 40 times a minute on average. Over the years, that added up to an estimated 430 million hiccups. According to Guinness, it’s the longest known attack of hiccups.

Still, Osborne lived a fairly normal life. According to Smithsonian, he married twice and had eight children. He learned to breathe in between hiccups to muffle the "hic" sound.

> Bonus fact: After his story became known, Osborne received about 4,000 letters with hiccup cures, according to Guinness. None of them worked.

The longest break he remembered lasted about 50 hours, according to Guinness. Then they started again, as if nothing had happened.

And then, in 1990, the hiccups suddenly stopped. Just like that, with nobody knowing why. 68 years after they had started.

So if you get the hiccups and hold your breath, take comfort. For most people, they’re over after a few minutes.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('charles-osborne-68-years-hiccups', 'en', 1, 'Book about the human body', 'book human body for kids', 'Explains what happens in the body when you hiccup, sneeze or yawn.'),
  ('charles-osborne-68-years-hiccups', 'en', 2, 'Guinness World Records book', 'Guinness World Records book', 'Even more amazing records to marvel at.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('charles-osborne-68-years-hiccups', 'en', 1, 'Smithsonian Magazine: The Curious Case of Charles Osborne, Who Hiccupped for 68 Years Straight', 'https://www.smithsonianmag.com/history/the-curious-case-of-charles-osborne-who-hiccuped-for-68-years-straight-180980232/'),
  ('charles-osborne-68-years-hiccups', 'en', 2, 'Guinness World Records: Extreme measures person with 68-year attack of hiccups took to try and stop them', 'https://www.guinnessworldrecords.com/news/2023/7/extreme-measures-person-with-68-year-attack-of-hiccups-took-to-try-and-stop-them-754877');
