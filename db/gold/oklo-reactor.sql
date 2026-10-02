-- Gold-Fakt „Die Erde hatte den ersten Atomreaktor“ (Science Jumper, ab Highscore 1000)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('oklo-reactor', 1000, 'science', '☢️');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('oklo-reactor', 'de', 'Die Erde hatte den ersten Atomreaktor', '1972 fiel bei einer Routineprüfung von Uranerz aus der Oklo-Mine in Gabun etwas Seltsames auf: Es enthielt 0,717 Prozent Uran-235 statt der 0,720 Prozent, die man sonst überall in natürlichem Uran findet. Winziger Unterschied, großes Rätsel. Der französische Physiker Francis Perrin und sein Team fanden Spaltprodukte im Erz und kamen dahinter, was passiert war. Vor etwa 2 Milliarden Jahren liefen in der Lagerstätte ganz von selbst Kettenreaktionen ab, wobei Grundwasser die Neutronen abbremste, ähnlich wie in einem modernen Reaktor. Die Natur hatte einen Teil des Brennstoffs also schon verbraucht.'),
  ('oklo-reactor', 'en', 'Earth Built a Nuclear Reactor First', 'In 1972, a routine check of uranium ore from the Oklo mine in Gabon turned up something odd: it contained 0.717 percent uranium-235 instead of the 0.720 percent found in natural uranium everywhere else. Tiny gap, big mystery. French physicist Francis Perrin and colleagues found fission products in the ore and figured out what had happened. About 2 billion years ago, the uranium deposit had run self-sustaining chain reactions all on its own, with groundwater slowing down the neutrons, much like in a modern reactor. Nature had already used up some of the fuel.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('oklo-reactor', 1, 'POWER Magazine: The Curious Case of a Two-Billion-Year-Old Nuclear Reactor', 'https://www.powermag.com/%E2%80%AAthe-curious-case-of-a-two-billion-year-old-nuclear-reactor/'),
  ('oklo-reactor', 2, 'IAEA: Meet Oklo, the Earth’s Two-billion-year-old only Known Natural Nuclear Reactor', 'https://www.iaea.org/newscenter/news/meet-oklo-the-earths-two-billion-year-old-only-known-natural-nuclear-reactor');
