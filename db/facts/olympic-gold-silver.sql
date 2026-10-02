-- WTFact-Fakt „Olympische Goldmedaillen sind fast nur Silber, mit mindestens 6 Gramm Gold“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('olympic-gold-silver', '2026-08-30', 'sport', '🥇', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'olympic-gold-silver', 'de', 'goldmedaille-aus-silber',
  'Olympische Goldmedaillen sind fast nur Silber, mit mindestens 6 Gramm Gold',
  'Wer bei Olympia gewinnt, beißt vor allem auf Silber. Und 1896 gab es für Sieger gar kein Gold.',
  'Eine olympische Goldmedaille besteht zu mindestens 92,5 Prozent aus Silber und ist nur mit mindestens 6 Gramm reinem Gold überzogen.',
  'Das berühmte Foto: Olympiasiegerin auf dem Podest, beißt auf ihre Goldmedaille. Nur dass sie dabei hauptsächlich auf Silber beißt. **Eine olympische Goldmedaille besteht zu mindestens 92,5 Prozent aus Silber und ist nur mit mindestens 6 Gramm reinem Gold überzogen.**

## Gold außen, Silber innen

Die Vorgaben dafür kommen vom Internationalen Olympischen Komitee. Der Kern einer Goldmedaille ist Sterlingsilber, darüber liegt eine Schicht aus echtem Gold. Silbermedaillen bestehen ebenfalls aus mindestens 92,5 Prozent Silber. Und Bronze ist laut Las Vegas Sun vor allem Kupfer mit etwas Zink.

Bei den Winterspielen 2026 in Mailand und Cortina wog eine Goldmedaille 506 Gramm. Der reine Metallwert lag laut dem Bericht bei rund 2.300 US-Dollar, und den größten Teil davon macht das Silber aus, nicht das Gold.

## Massives Gold gab es nur ganz kurz

Medaillen aus massivem Gold wurden zuletzt 1912 bei den Spielen in Stockholm verliehen. Danach war Schluss. Gold ist teuer, schwer und ziemlich weich. Eine große Medaille aus purem Gold würde allein beim Material schnell Zehntausende Dollar kosten.

Noch verrückter ist der Anfang der modernen Spiele. 1896 in Athen bekamen die Sieger gar keine Goldmedaille, sondern eine aus **Silber**. Wer Zweiter wurde, bekam Bronze, und für Platz drei gab es nichts. Die heute bekannte Reihenfolge Gold, Silber, Bronze kam laut Smithsonian Magazine erst 1904.

> Eine Siegermedaille aus Silber von 1896 wurde bei einer Auktion für rund 112.000 US-Dollar versteigert.

## Was eine Medaille wirklich wert ist

Der Metallwert ist am Ende fast egal. Historische Medaillen bringen auf Auktionen ein Vielfaches davon, weil an ihnen eine Geschichte hängt und nicht nur ein paar Gramm Edelmetall.

Gold ist bei Olympia also eher die Verpackung. Der Inhalt ist Silber, und der eigentliche Wert ist der Sieg.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('olympic-gold-silver', 'de', 1, 'Medaillenhalter für die Wand', 'Medaillenhalter Wand', 'Damit hängen deine eigenen Medaillen vom Stadtlauf oder Turnier endlich ordentlich.'),
  ('olympic-gold-silver', 'de', 2, 'Schokoladen-Goldmünzen', 'Schokoladen Goldmünzen', 'Außen golden, innen Schokolade. Ehrlicher als manche Medaille.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('olympic-gold-silver', 'de', 1, 'Las Vegas Sun: Are Olympic medalists really striking gold or silver? What’s in a medal?', 'https://lasvegassun.com/news/2026/feb/15/are-olympic-medalists-really-striking-gold-or-silv/'),
  ('olympic-gold-silver', 'de', 2, 'Science Notes: Are Olympic Gold Medals Real Gold?', 'https://sciencenotes.org/are-olympic-gold-medals-real-gold/'),
  ('olympic-gold-silver', 'de', 3, 'Smithsonian Magazine: Winners Got Silver Medals at the First Modern Olympic Games in 1896', 'https://www.smithsonianmag.com/smart-news/a-172-year-old-olympic-medal-from-the-first-modern-games-sold-for-nearly-112k-180983646/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'olympic-gold-silver', 'en', 'gold-medals-mostly-silver',
  'Olympic gold medals are mostly silver, with at least 6 grams of gold',
  'Olympic champions mostly bite into silver. And in 1896, winners didn''t get gold at all.',
  'An Olympic gold medal is at least 92.5 percent silver and only plated with at least 6 grams of pure gold.',
  'You know the photo: an Olympic champion on the podium, biting her gold medal. Except she''s mostly biting silver. **An Olympic gold medal is at least 92.5 percent silver and only plated with at least 6 grams of pure gold.**

## Gold outside, silver inside

The rules come from the International Olympic Committee. The core of a gold medal is sterling silver, covered with a layer of real gold. Silver medals are also at least 92.5 percent silver. And bronze, according to the Las Vegas Sun, is mostly copper with a bit of zinc.

At the 2026 Winter Games in Milan and Cortina, a gold medal weighed 506 grams. Its pure metal value was around 2,300 US dollars, according to the report, and most of that came from the silver, not the gold.

## Solid gold was a short phase

Solid gold medals were last handed out at the 1912 Games in Stockholm. After that, they were gone. Gold is expensive, heavy and pretty soft. A big medal made of pure gold would cost tens of thousands of dollars in raw material alone.

The start of the modern Games was even stranger. In 1896 in Athens, winners didn''t get a gold medal at all. They got **silver**. Second place got bronze, and third place got nothing. The gold, silver, bronze order we know today only arrived in 1904, according to Smithsonian Magazine.

> A silver winner''s medal from 1896 sold at auction for about 112,000 US dollars.

## What a medal is really worth

In the end, the metal value hardly matters. Historic medals sell for many times that amount at auction, because they carry a story, not just a few grams of precious metal.

So at the Olympics, gold is more of a wrapper. What''s inside is silver, and the real value is the win.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('olympic-gold-silver', 'en', 1, 'Wall-mounted medal hanger', 'medal hanger display wall', 'Finally a proper spot for your own medals from fun runs or tournaments.'),
  ('olympic-gold-silver', 'en', 2, 'Chocolate gold coins', 'chocolate gold coins', 'Gold on the outside, chocolate on the inside. More honest than some medals.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('olympic-gold-silver', 'en', 1, 'Las Vegas Sun: Are Olympic medalists really striking gold or silver? What’s in a medal?', 'https://lasvegassun.com/news/2026/feb/15/are-olympic-medalists-really-striking-gold-or-silv/'),
  ('olympic-gold-silver', 'en', 2, 'Science Notes: Are Olympic Gold Medals Real Gold?', 'https://sciencenotes.org/are-olympic-gold-medals-real-gold/'),
  ('olympic-gold-silver', 'en', 3, 'Smithsonian Magazine: Winners Got Silver Medals at the First Modern Olympic Games in 1896', 'https://www.smithsonianmag.com/smart-news/a-172-year-old-olympic-medal-from-the-first-modern-games-sold-for-nearly-112k-180983646/');
