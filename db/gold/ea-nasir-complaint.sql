-- Gold-Fakt „Die älteste Kundenbeschwerde ist eine 1-Stern-Bewertung aus Ton“ (Science Jumper, ab Highscore 100)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('ea-nasir-complaint', 100, 'history', '🏺');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('ea-nasir-complaint', 'de', 'Die älteste Kundenbeschwerde ist eine 1-Stern-Bewertung aus Ton', 'Um 1750 v. Chr. war ein Mann namens Nanni in der Stadt Ur richtig sauer. Der Händler Ea-nasir hatte ihm hochwertige Kupferbarren versprochen und dann miese Ware geliefert. Sein Bote bekam angeblich nur ein „Nimm es oder lass es“ zu hören. Also drückte Nanni seine Wut in eine nur 11,6 cm hohe Tontafel: „Wofür hältst du mich, dass du jemanden wie mich so verächtlich behandelst?“ Laut Guinness ist das die älteste schriftliche Kundenbeschwerde, heute liegt sie im British Museum. Weitere Tafeln deuten darauf hin, dass Nanni nicht der einzige unzufriedene Kunde von Ea-nasir war. Bewertung: 1 Stern, nie wieder.'),
  ('ea-nasir-complaint', 'en', 'The oldest customer complaint is a 1-star review in clay', 'Around 1750 BC in the city of Ur, a man named Nanni was furious. He had been promised fine quality copper ingots by the merchant Ea-nasir and received inferior goods instead, and his messenger was apparently told to take it or leave it. So Nanni pressed his rage into a clay tablet just 11.6 cm tall: "What do you take me for, that you treat somebody like me with such contempt?" Guinness lists it as the oldest written customer complaint, and it now sits in the British Museum. Other tablets suggest Nanni was not Ea-nasir''s only unhappy customer. Rating: 1 star, would not trade again.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('ea-nasir-complaint', 1, 'British Museum: Collections Online | British Museum', 'https://www.britishmuseum.org/collection/object/W_1953-0411-71'),
  ('ea-nasir-complaint', 2, 'Guinness World Records: Oldest written customer complaint', 'https://www.guinnessworldrecords.com/world-records/537889-oldest-written-customer-complaint'),
  ('ea-nasir-complaint', 3, 'University of Liverpool: The oldest complaint in the world: a trip to the British Museum', 'https://www.liverpool.ac.uk/archaeology-classics-and-egyptology/blog/2025/oldest-complaint-in-the-world-british-museum/');
