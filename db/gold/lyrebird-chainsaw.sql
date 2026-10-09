-- Gold-Fakt „Der Vogel, der wie eine Kettensäge klingen kann“ (Science Jumper, ab Highscore 150)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('lyrebird-chainsaw', 150, 'nature', '🪶');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('lyrebird-chainsaw', 'de', 'Der Vogel, der wie eine Kettensäge klingen kann', 'Der Prachtleierschwanz aus Australien ist im Grunde ein lebendes Soundboard. Laut Australian Museum besteht sein Gesang zu etwa 80 % aus Imitationen: heimische Vögel, Hundegebell, Automotoren und sogar Kettensägen. In David Attenboroughs BBC-Serie „The Life of Birds“ von 1998 ahmten Leierschwänze aus Gefangenschaft einen Kameraauslöser, einen Kamera-Motorantrieb und eine Autoalarmanlage fast perfekt nach. Ein Vogel im Zoo von Adelaide soll Kettensägen-Geräusche gelernt haben, während nebenan ein Gehege gebaut wurde. Was er oft genug hört, landet in seiner Playlist.'),
  ('lyrebird-chainsaw', 'en', 'The bird that can sound like a chainsaw', 'The superb lyrebird from Australia is basically a living soundboard. According to the Australian Museum, about 80% of its song is mimicry: native birds, dog barks, car engines and even chainsaws. In David Attenborough''s 1998 BBC series The Life of Birds, captive lyrebirds imitated a camera shutter, a camera''s motor drive and a car alarm almost perfectly. One bird at Adelaide Zoo reportedly picked up chainsaw sounds while a nearby enclosure was being built. Whatever it hears often enough can end up in its playlist.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('lyrebird-chainsaw', 1, 'The Australian Museum: Superb Lyrebird', 'https://australian.museum/learn/animals/birds/superb-lyrebird/'),
  ('lyrebird-chainsaw', 2, 'Mental Floss: This Australian Bird Can Mimic the Sounds of Cameras, Chainsaws, and Car Alarms', 'https://www.mentalfloss.com/article/653848/lyrebird-best-impressionist-animal-kingdom'),
  ('lyrebird-chainsaw', 3, 'NSW National Parks: Superb lyrebird | Australian animals | NSW National Parks', 'https://www.nationalparks.nsw.gov.au/plants-and-animals/superb-lyrebird');

INSERT INTO gold_products (gold, lang, name, query, why, emoji) VALUES
  ('lyrebird-chainsaw', 'de', 'ZEISS Terra ED 8x42 Fernglas', 'Zeiss Terra ED 8x42', 'Ein Fernglas von Zeiss für Vogelbeobachtung: wasserdicht, scharf bis an den Rand. Ideal, um Leierschwänze und alle anderen Imitatoren zu entdecken.', '🐦'),
  ('lyrebird-chainsaw', 'en', 'ZEISS Terra ED 8x42 binoculars', 'Zeiss Terra ED 8x42', 'Zeiss binoculars built for birdwatching: waterproof and sharp to the edge. Ideal for spotting lyrebirds and every other mimic.', '🐦');
