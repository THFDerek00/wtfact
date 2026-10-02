-- Gold-Fakt „Der 10-zu-1-Bakterien-Mythos“ (Science Jumper, ab Highscore 300)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('bacteria-ratio', 300, 'body', '🦠');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('bacteria-ratio', 'de', 'Der 10-zu-1-Bakterien-Mythos', 'Bestimmt hast du schon gehört, dass Bakterien deine eigenen Zellen 10 zu 1 überzählen. Dann wärst du vor allem Mikrobe. Die Zahl geht auf eine einzige grobe Überschlagsrechnung aus den 1970ern zurück, die jahrzehntelang abgeschrieben wurde. 2016 haben Ron Sender, Shai Fuchs und Ron Milo neu gerechnet, für einen „Referenzmann“ mit 70 kg. Ergebnis: etwa 38 Billionen Bakterien gegen rund 30 Billionen menschliche Zellen. Also eher 1 zu 1. Und weil ein einziger Toilettengang ungefähr ein Viertel bis ein Drittel des Darminhalts im Dickdarm rausspült, verschiebt sich das Verhältnis jeden Tag ein bisschen.'),
  ('bacteria-ratio', 'en', 'The 10-to-1 Bacteria Myth', 'You''ve probably heard that bacteria outnumber your own cells 10 to 1, which would make you mostly microbe. That number goes back to a single back-of-the-envelope estimate from the 1970s that got copied for decades. In 2016, Ron Sender, Shai Fuchs and Ron Milo redid the math for a "reference man" of 70 kg. Their result: about 38 trillion bacteria versus roughly 30 trillion human cells. So it''s closer to 1 to 1. And since a single trip to the toilet can flush out roughly a quarter to a third of your colon''s contents, the balance shifts a little every day.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('bacteria-ratio', 1, 'PLOS Biology: Revised Estimates for the Number of Human and Bacteria Cells in the Body', 'https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002533'),
  ('bacteria-ratio', 2, 'American Council on Science and Health: Commonly Cited Stat — 10 Bacteria For Every 1 Human Cell — Is Wrong', 'https://www.acsh.org/news/2016/08/26/commonly-cited-stat-of-10-bacteria-for-every-1-human-cell-is-wrong');
