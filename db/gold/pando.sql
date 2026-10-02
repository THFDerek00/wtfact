-- Gold-Fakt „Der Wald, der eigentlich ein Baum ist“ (Science Jumper, ab Highscore 900)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('pando', 900, 'nature', '🌳');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('pando', 'de', 'Der Wald, der eigentlich ein Baum ist', 'Im Fishlake National Forest in Utah steht ein Hain aus Zitterpappeln, der aussieht wie ein ganz normaler Wald. Ist er aber nicht. Alle rund 47.000 Stämme sind genetisch identisch und über ein gemeinsames Wurzelsystem verbunden. Deshalb zählt die Forschung das Ganze als einen einzigen Organismus namens Pando. Er bedeckt etwa 43 Hektar und wiegt schätzungsweise rund 5.900 Tonnen, damit gehört er zu den schwersten bekannten Lebewesen. Die einzelnen Stämme werden nur etwa 130 bis 150 Jahre alt, aber der Klon treibt aus den Wurzeln immer neue nach. Jeder Stamm ist im Grunde nur ein Ast auf Zeit.'),
  ('pando', 'en', 'The Forest That Is Actually One Tree', 'In Utah''s Fishlake National Forest stands a grove of quaking aspens that looks like an ordinary forest. It isn''t. All of its roughly 47,000 trunks are genetically identical and connected by one shared root system, so scientists count it as a single organism, named Pando. It covers about 43 hectares and is estimated to weigh around 5,900 tonnes, which makes it one of the heaviest living things known. The individual trunks only live around 130 to 150 years, but the clone keeps growing new ones from its roots. Each stem is basically just a temporary branch.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('pando', 1, 'Live Science: Pando: The world''s largest tree and heaviest living organism', 'https://www.livescience.com/planet-earth/plants/pando-the-worlds-largest-tree-and-heaviest-living-organism'),
  ('pando', 2, 'Friends of Pando: Pando FAQ: How Pando Works', 'https://www.friendsofpando.org/faq-howpandoworks/');
