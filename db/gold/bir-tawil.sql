-- Gold-Fakt „Die 2.060 km² Land, die zwei Länder nicht haben wollen“ (Science Jumper, ab Highscore 250)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('bir-tawil', 250, 'weird', '🏜️');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('bir-tawil', 'de', 'Die 2.060 km² Land, die zwei Länder nicht haben wollen', 'Normalerweise streiten Länder um Land. Bei Bir Tawil ist es genau andersrum: Das 2.060 km² große Stück Wüste zwischen Ägypten und dem Sudan will keiner der beiden haben. Schuld sind zwei alte Grenzlinien, eine von 1899 entlang des 22. Breitengrads und eine Verwaltungsgrenze von 1902. Jedes Land beruft sich auf die Linie, die ihm das viel größere und wertvollere Hala’ib-Dreieck nebenan zuspricht. Nach genau dieser Linie gehört Bir Tawil aber dem anderen. Wer es beansprucht, schwächt also seinen Anspruch auf das bessere Stück.'),
  ('bir-tawil', 'en', 'The 2,060 km² of land that two countries refuse to claim', 'Countries usually fight over land. With Bir Tawil, it is the other way round. This 2,060 km² patch of desert between Egypt and Sudan is claimed by neither. The reason is two old border lines: one from 1899 along the 22nd parallel and an administrative one from 1902. Each country prefers the line that hands it the much larger and more valuable Hala''ib Triangle next door, and under that line Bir Tawil belongs to the other side. Claiming it would weaken your own claim to the better piece.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('bir-tawil', 1, 'ZME Science: Bir Tawil: The World''s Only Unclaimed Habitable Land Is a Battleground for Gold Miners, Tribes, and Fake Kings', 'https://www.zmescience.com/feature-post/natural-sciences/geography/bir-tawil-the-worlds-only-unclaimed-habitable-land-is-a-battleground-for-gold-miners-tribes-and-fake-kings/'),
  ('bir-tawil', 2, 'Egyptian Streets: Bir Tawil: the Stateless Land of Many and No Rulers', 'https://egyptianstreets.com/2023/07/20/bir-tawil-the-stateless-land-of-many-and-no-rulers/');

INSERT INTO gold_products (gold, lang, name, query, why, emoji) VALUES
  ('bir-tawil', 'de', '„Atlas of Unusual Borders“ von Zoran Nikolić', 'Atlas of Unusual Borders Zoran Nikolic', 'Ein ganzer Atlas voller Grenzen, die keinen Sinn ergeben: Enklaven, Niemandsland und natürlich Bir Tawil. Liebevoll gezeichnet, auf Englisch.', '🧭'),
  ('bir-tawil', 'en', 'The Atlas of Unusual Borders by Zoran Nikolić', 'Atlas of Unusual Borders Zoran Nikolic', 'A whole atlas of borders that make no sense: enclaves, no-man''s-lands and, of course, Bir Tawil. Beautifully drawn.', '🧭');
