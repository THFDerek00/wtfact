-- Gold-Fakt „Der Teil deines Körpers, der direkt aus der Luft atmet“ (Science Jumper, ab Highscore 50)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('cornea-oxygen', 50, 'body', '👁️');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('cornea-oxygen', 'de', 'Der Teil deines Körpers, der direkt aus der Luft atmet', 'Wenn du jemandem in die Augen schaust, siehst du Gewebe ohne Blutversorgung. Bis auf den äußeren Rand hat die Hornhaut, die durchsichtige Wölbung vorne am Auge, überhaupt keine Blutgefäße. Sie würden dir sonst die Sicht versperren. Woher kommt also der Sauerstoff? Solange deine Augen offen sind, holt sich die Vorderseite ihn direkt aus der Luft, gelöst im dünnen Tränenfilm. Von hinten umspült sie eine klare Flüssigkeit im Augeninneren. Deshalb kann die Hornhaut auch anschwellen, wenn Kontaktlinsen zu wenig Sauerstoff durchlassen.'),
  ('cornea-oxygen', 'en', 'The part of your body that breathes straight from the air', 'Look at someone''s eyes and you are looking at tissue with no blood supply. Apart from its outer edge, the cornea, the clear dome at the front of your eye, has no blood vessels at all, because they would block your view. So how does it get oxygen? While your eyes are open, its front surface takes oxygen straight from the air, dissolved in the thin film of tears. From behind, it is bathed by a clear fluid inside the eye. That is also why contact lenses that let too little oxygen through can make the cornea swell.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('cornea-oxygen', 1, 'Britannica: Cornea | Structure, Function & Disease', 'https://www.britannica.com/science/cornea'),
  ('cornea-oxygen', 2, 'Africa Check: Yes, the eye''s cornea doesn''t have blood and gets its oxygen from the air', 'https://africacheck.org/fact-checks/meta-programme-fact-checks/yes-eyes-cornea-doesnt-have-blood-and-gets-its-oxygen-air');
