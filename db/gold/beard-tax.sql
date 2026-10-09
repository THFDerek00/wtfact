-- Gold-Fakt „Der Zar, der Bärte besteuerte“ (Science Jumper, ab Highscore 700)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('beard-tax', 700, 'history', '🧔');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('beard-tax', 'de', 'Der Zar, der Bärte besteuerte', '1698 wollte der russische Zar Peter der Große, dass seine Oberschicht europäischer aussieht, und knöpfte sich deshalb die Bärte vor. Rasieren oder zahlen. Ab 1705 hing die Höhe der Steuer vom Stand ab, Bauern zahlten nur eine kleine Gebühr, wenn sie in eine Stadt kamen. Wer seinen Bart behielt, musste einen Nachweis dabeihaben: eine kleine Kupfermarke. Ein Exemplar von 1705 liegt heute im National Museum of American History der Smithsonian. Auf einer Seite sind Nase, Schnurrbart und Bart zu sehen, auf der anderen der Doppeladler, dazu die Aufschrift „Geld erhalten“. Quasi ein Parkausweis fürs Gesicht.'),
  ('beard-tax', 'en', 'The Tsar Who Charged for Beards', 'In 1698, Russian Tsar Peter the Great wanted his elite to look more European, so he went after their beards. Shave, or pay a tax. From 1705 the rates depended on your social class, while peasants only paid a small fee when entering a city. Anyone who kept his beard had to carry proof: a small copper token. One from 1705, now in the Smithsonian''s National Museum of American History, shows a nose, mustache and beard on one side, the words "Money Collected" and the double-headed eagle on the other. Basically a parking permit for your face.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('beard-tax', 1, 'National Museum of American History: Beard Token, Russia, 1705', 'https://americanhistory.si.edu/collections/object/nmah_1412643'),
  ('beard-tax', 2, 'Russia Beyond: 319 years ago: Peter the Great established tax on beards', 'https://www.rbth.com/arts/history/2017/09/05/319-years-ago-peter-the-great-established-tax-on-beards_833570');

INSERT INTO gold_products (gold, lang, name, query, why, emoji) VALUES
  ('beard-tax', 'de', '„Peter der Große“ von Robert K. Massie', 'Robert K. Massie Peter der Große', 'Die mit dem Pulitzer-Preis ausgezeichnete Biografie über den Zaren, der Russland mit der Schere modernisieren wollte. Spannend wie ein Roman.', '👑'),
  ('beard-tax', 'en', 'Peter the Great: His Life and World by Robert K. Massie', 'Robert K. Massie Peter the Great His Life and World', 'The Pulitzer Prize-winning biography of the tsar who tried to modernize Russia one shaved chin at a time. Reads like a novel.', '👑');
