-- Gold-Fakt „Die Insel, die ihre Uhren nur halb umstellt“ (Science Jumper, ab Highscore 10)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('lord-howe-dst', 10, 'weird', '🕧');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('lord-howe-dst', 'de', 'Die Insel, die ihre Uhren nur halb umstellt', 'Die meisten Orte mit Sommerzeit drehen die Uhr um eine ganze Stunde. Die Lord-Howe-Insel, ein winziges Stück Australien weit vor der Küste von New South Wales, macht lieber halbe Sachen: Normal gilt dort UTC+10:30, im Sommer geht die Uhr gerade mal 30 Minuten vor auf UTC+11. Damit passt sie dann zum Festland. Zweimal im Jahr gibt’s also nur eine halbe Stunde Schlaf weniger oder mehr. Die Insel gehört zu den ganz wenigen Orten der Welt mit so einer Halbstunden-Umstellung. Für alle, die Zeitzonen-Software programmieren, ist das ein kleines Kopfzerbrechen.'),
  ('lord-howe-dst', 'en', 'The island that only changes its clocks by half', 'Most places with daylight saving time jump a full hour. Lord Howe Island, a tiny piece of Australia far off the coast of New South Wales, does things by halves. Its standard time is UTC+10:30, and in summer the clocks move forward just 30 minutes to UTC+11, which lines it up with the mainland. So twice a year the islanders lose or gain a measly half hour of sleep. It is one of the very few places on Earth with a half-hour switch, which makes it a small headache for anyone writing time zone software.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('lord-howe-dst', 1, 'Atlas Obscura: Lord Howe Island''s Time in Lord Howe Island', 'https://www.atlasobscura.com/places/lord-howe-islands-time'),
  ('lord-howe-dst', 2, 'SBS News: Daylight saving in Australia: When it starts and whether clocks go forward or back', 'https://sbs.com.au/news/article/clocks-forward-or-back-daylight-saving-australia-explained/cu6xfjfkd');

INSERT INTO gold_products (gold, lang, name, query, why, emoji) VALUES
  ('lord-howe-dst', 'de', 'Junghans Max Bill MEGA Funkuhr', 'Junghans Max Bill MEGA Funk', 'Bauhaus-Klassiker aus Schramberg, der sich per Funksignal selbst auf Sommer- und Winterzeit stellt. Ob ganze oder halbe Stunde, du musst nie wieder drehen.', '⌚'),
  ('lord-howe-dst', 'en', 'Citizen Eco-Drive atomic timekeeping watch', 'Citizen Eco-Drive atomic timekeeping watch', 'Solar powered and synced by radio signal, so it switches to daylight saving time on its own. Whole hour or half hour, you never adjust it again.', '⌚');
