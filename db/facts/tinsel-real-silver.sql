-- WTFact-Fakt „Das erste Lametta war aus echtem Silber“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tinsel-real-silver', '2026-12-02T00:00:00+01:00', 'history', '✨', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tinsel-real-silver', 'de', 'lametta-war-aus-echtem-silber',
  'Das erste Lametta war aus echtem Silber',
  'Glitzerfäden am Baum gab es schon vor über 400 Jahren. Nur waren sie damals ein Vermögen wert.',
  'Das erste Lametta, um 1610 in Nürnberg erfunden, bestand aus hauchdünnen Streifen echten Silbers.',
  'Heute kostet eine Packung Lametta ein paar Euro und landet nach Weihnachten im Staubsauger. Am Anfang hing am Baum buchstäblich Silber.

## Silberfäden aus Nürnberg

Laut The Local wurde Lametta um 1610 in Nürnberg erfunden. Die ersten Fäden bestanden aus echtem Silber, das zu hauchdünnen Streifen gepresst wurde. Die Idee dahinter: Die Fäden sollten das Licht der Kerzen am Baum einfangen und glitzern lassen wie Eiszapfen.

Am Baum hing damit ein kleines Vermögen, entsprechend hatten anfangs nur reiche Familien so etwas. Das klappte, hatte aber einen Haken. Silber läuft an, und Kerzenrauch beschleunigt das. Nach ein paar Abenden im Kerzenschein war das teure Glitzern grau und stumpf. Deshalb probierten die Hersteller billigere Metalle aus, zuerst Zinnlegierungen, später Aluminium und Kupfer.

## Vom Silber zum Blei

Als Kupfer im Ersten Weltkrieg knapp wurde, griffen Hersteller zu Blei. Bleilametta hing schwer und schön gerade nach unten, war aber für Gesundheit und Umwelt eine schlechte Idee. Laut The Local wird Lametta mit Blei schon seit 1972 nicht mehr hergestellt.

Danach kamen Kunststofffolien mit Metallschicht. Doch die Mode drehte sich: Ab den 1980er Jahren verboten viele deutsche Gemeinden Lametta, weil es das Recycling der ausgedienten Bäume störte, berichtet German Way. Im Dezember 2015 hörten laut The Local die letzten deutschen Lametta-Hersteller ganz auf, weil kaum noch jemand welches kaufte.

> Bonusfakt: Eppstein Foils, einer der großen deutschen Hersteller, hatte laut The Local schon 2013 aufgehört. Zwei Jahre später machten dann auch die letzten anderen dicht.

Mehr als 400 Jahre Glitzergeschichte, von Edelmetall über Blei bis Plastik, und am Ende hat die Müllabfuhr gewonnen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tinsel-real-silver', 'de', 1, 'Glas-Eiszapfen als Baumschmuck', 'Christbaumschmuck Glas Eiszapfen', 'Glitzert wie Lametta, lässt sich aber jedes Jahr wieder aufhängen.'),
  ('tinsel-real-silver', 'de', 2, 'Buch über die Geschichte des Weihnachtsbaums', 'Buch Geschichte des Weihnachtsbaums', 'Erzählt, woher Kugeln, Kerzen und Lametta am Baum stammen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tinsel-real-silver', 'de', 1, 'The Local: German Advent word of the day: Das Lametta', 'https://www.thelocal.de/20191213/german-advent-word-of-the-day-das-lametta'),
  ('tinsel-real-silver', 'de', 2, 'German Way & More: Glass Ornaments and Tinsel', 'https://german-way.com/history-and-culture/holidays-and-celebrations/christmas/glass-christmas-ornaments');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tinsel-real-silver', 'en', 'first-tinsel-was-real-silver',
  'The first tinsel was made of real silver',
  'Shiny threads on the tree go back more than 400 years. Back then they were worth a fortune.',
  'The first tinsel, invented in Nuremberg around 1610, was made of paper-thin strips of real silver.',
  'Today a pack of tinsel costs a few euros and ends up in the vacuum cleaner after Christmas. In the beginning, people hung actual silver on their trees.

## Silver threads from Nuremberg

According to The Local, tinsel was invented in Nuremberg around 1610. The first strands were made of real silver pressed into paper-thin strips. The idea: catch the light of the candles on the tree and sparkle like icicles.

It worked, with one catch. Silver tarnishes, and candle smoke speeds that up. After a few evenings by candlelight, the expensive sparkle turned grey and dull. So makers tried cheaper metals, first tin alloys, then aluminium and copper.

## From silver to lead

When copper became scarce during the First World War, manufacturers switched to lead. Lead tinsel hung heavy and perfectly straight, but it was a bad idea for health and the environment. According to The Local, lead tinsel hasn''t been made since 1972.

Plastic film with a metal coating took over. Then fashion turned: from the 1980s, many German towns banned tinsel because it messed up recycling of old Christmas trees, German Way reports. In December 2015, The Local says, the last German tinsel makers shut down for good because hardly anyone was buying it anymore.

> Bonus fact: Eppstein Foils, one of the big German makers, had already quit in 2013, according to The Local. Two years later the last remaining ones closed too.

More than 400 years of sparkle, from precious metal to lead to plastic, and in the end the recycling bin won.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tinsel-real-silver', 'en', 1, 'Glass icicle tree ornaments', 'glass icicle christmas ornaments', 'They sparkle like tinsel but go back on the tree every year.'),
  ('tinsel-real-silver', 'en', 2, 'Book on the history of the Christmas tree', 'history of the christmas tree book', 'Explains where baubles, candles and tinsel came from.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tinsel-real-silver', 'en', 1, 'The Local: German Advent word of the day: Das Lametta', 'https://www.thelocal.de/20191213/german-advent-word-of-the-day-das-lametta'),
  ('tinsel-real-silver', 'en', 2, 'German Way & More: Glass Ornaments and Tinsel', 'https://german-way.com/history-and-culture/holidays-and-celebrations/christmas/glass-christmas-ornaments');
