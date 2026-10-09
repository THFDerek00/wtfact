-- Gold-Fakt „Diese Schildkröte atmet durch den Hintern“ (Science Jumper, ab Highscore 25)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('fitzroy-turtle', 25, 'nature', '🐢');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('fitzroy-turtle', 'de', 'Diese Schildkröte atmet durch den Hintern', 'Die Fitzroy-Schildkröte aus Queensland in Australien hat ein Talent, das wie ein Witz klingt: Sie nimmt Sauerstoff über ihren Hintern auf. Ihre Kloake, die Allzweck-Öffnung am Heck, etwa so groß wie eine kleine Münze, führt in einen Hohlraum mit kiemenartigen Strukturen, die Sauerstoff direkt aus dem Flusswasser ziehen. Forschende der University of Queensland haben gemessen, dass die Tiere bis zu fünf Stunden abtauchen, ohne Luft zu holen. Bei anderen Schildkrötenarten lag das Maximum bei etwa zwei Stunden. Ein Forscher hält es sogar für möglich, dass sie unbegrenzt unten bleiben kann. Nicht elegant, aber extrem effektiv.'),
  ('fitzroy-turtle', 'en', 'This turtle breathes through its butt', 'The Fitzroy River turtle from Queensland, Australia, has a talent that sounds like a joke: it takes up oxygen through its butt. Its cloaca, the all-purpose rear opening about the size of a small coin, leads to a cavity lined with gill-like structures that pull oxygen out of the river water. University of Queensland researchers recorded these turtles staying under for up to five hours without coming up for air, while the maximum recorded for other turtle species was about two. One researcher even says it could potentially stay down indefinitely. Not glamorous, but very effective.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('fitzroy-turtle', 1, 'The University of Queensland: UQ researchers make head and tail of turtle breathing', 'https://news.uq.edu.au/1997-02-06-uq-researchers-make-head-and-tail-turtle-breathing'),
  ('fitzroy-turtle', 2, 'Live Science: Can turtles really breathe through their butts?', 'https://www.livescience.com/can-turtles-breathe-through-butts');

INSERT INTO gold_products (gold, lang, name, query, why, emoji) VALUES
  ('fitzroy-turtle', 'de', 'Steiff Schildkröte aus Plüsch', 'Steiff Schildkröte', 'Kuscheltier-Qualität aus Giengen seit 1880, mit dem berühmten Knopf im Ohr. Wird sicher nicht durch den Hintern atmen, ist aber trotzdem ein Liebling.', '🐢'),
  ('fitzroy-turtle', 'en', 'Jellycat turtle plush', 'Jellycat turtle plush', 'Jellycat''s famously soft quality in turtle form. Will not breathe through its rear, but will still be everyone''s favorite.', '🐢');
