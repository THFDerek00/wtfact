-- Gold-Fakt „Die Zeitung, die Fledermausmenschen auf dem Mond fand“ (Science Jumper, ab Highscore 400)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('great-moon-hoax', 400, 'history', '🌕');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('great-moon-hoax', 'de', 'Die Zeitung, die Fledermausmenschen auf dem Mond fand', 'Am 25. August 1835 startete die New York Sun eine sechsteilige Serie mit einer Riesennews: Der berühmte Astronom Sir John Herschel habe mit einem neuen Teleskop Leben auf dem Mond entdeckt. Die Leser erfuhren von Einhörnern, Bibern, die auf zwei Beinen laufen, und pelzigen geflügelten Humanoiden, die an Fledermäuse erinnerten, im Text „Vespertilio-homo“ genannt. Als Quelle diente angeblich das Edinburgh Journal of Science, das schon Jahre vorher eingestellt worden war. Herschel saß in Südafrika und wusste nichts davon. Geschrieben hat das Ganze höchstwahrscheinlich Reporter Richard Adams Locke, und die Verkaufszahlen der Sun gingen durch die Decke.'),
  ('great-moon-hoax', 'en', 'The Newspaper That Found Bat-People on the Moon', 'On August 25, 1835, the New York Sun started a six-part series with huge news: famous astronomer Sir John Herschel had spotted life on the Moon with a giant new telescope. Readers learned about unicorns, beavers walking on two legs and furry winged humanoids resembling bats, which the story called "Vespertilio-homo". The claimed source was the Edinburgh Journal of Science, which had actually stopped publishing years earlier. Herschel himself was in South Africa and had no idea his name was attached. The writer was most likely reporter Richard Adams Locke, and the Sun''s sales took off.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('great-moon-hoax', 1, 'History: "The Great Moon Hoax" is published in the "New York Sun"', 'https://www.history.com/this-day-in-history/august-25/the-great-moon-hoax'),
  ('great-moon-hoax', 2, 'Museum of Hoaxes: The Great Moon Hoax (1835)', 'https://hoaxes.org/archive/permalink/the_great_moon_hoax');
