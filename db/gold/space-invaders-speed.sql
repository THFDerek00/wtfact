-- Gold-Fakt „Die Schwierigkeit von Space Invaders war ein Hardware-Zufall“ (Science Jumper, ab Highscore 75)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('space-invaders-speed', 75, 'tech', '👾');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('space-invaders-speed', 'de', 'Die Schwierigkeit von Space Invaders war ein Hardware-Zufall', 'In Space Invaders (1978) marschieren die Aliens immer schneller, je mehr du abschießt. Geplant war das ursprünglich nicht. Das Spiel lief auf einem Intel-8080-Prozessor, der mit den vielen Sprites ordentlich zu kämpfen hatte. Jeder zerstörte Invader war eine Figur weniger zum Zeichnen, also wurden die übrigen ganz von selbst schneller. Entwickler Tomohiro Nishikado soll gemerkt haben, dass das Spiel dadurch spannender wird, und hat es angeblich drin gelassen, sogar mit passend schnellerer Musik. Eine der berühmtesten Schwierigkeitskurven der Spielegeschichte ist im Grunde ein Performance-Problem.'),
  ('space-invaders-speed', 'en', 'Space Invaders'' difficulty curve was a hardware accident', 'In Space Invaders (1978), the aliens march faster the more of them you shoot. That was not originally a design idea. The game ran on an Intel 8080 processor that struggled to move all those sprites. Every invader you destroyed meant one less thing to draw, so the remaining ones sped up on their own. Designer Tomohiro Nishikado reportedly noticed that this made the game more tense and kept it in, even speeding up the music to match. One of gaming''s most famous difficulty curves is basically a performance problem.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('space-invaders-speed', 1, 'The Register: Thirty-five years ago today: Space Invaders conquer the Earth', 'https://www.theregister.com/on-prem/2013/06/05/thirty-five-years-ago-today-space-invaders-conquer-the-earth/510549?page=3'),
  ('space-invaders-speed', 2, 'SVG: Details You Didn''t Know About Space Invaders', 'https://www.svg.com/293293/details-you-didnt-know-about-space-invaders/');
