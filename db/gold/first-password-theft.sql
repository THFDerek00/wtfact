-- Gold-Fakt „Der erste Passwort-Diebstahl ging um mehr Rechenzeit“ (Science Jumper, ab Highscore 200)
INSERT INTO gold_facts (id, points, category, emoji) VALUES
  ('first-password-theft', 200, 'tech', '🔑');

INSERT INTO gold_texts (gold, lang, title, text) VALUES
  ('first-password-theft', 'de', 'Der erste Passwort-Diebstahl ging um mehr Rechenzeit', 'Im Frühjahr 1962 hatte der MIT-Forscher Allan Scherr ein Problem: Am Time-Sharing-System CTSS bekam man nur vier Stunden Rechenzeit pro Woche, viel zu wenig für seine Simulationen. Seine Lösung war ziemlich dreist. Er reichte eine Lochkarte ein, die das System anwies, die Passwort-Datei auszudrucken, und es tat genau das. Scherr gab die Passwörter weiter, und jemand hinterließ über den Account des Laborleiters sogar spöttische Nachrichten. Gestanden hat er 25 Jahre später. Das gilt oft als erster Passwort-Diebstahl, und das Motiv war kein Geld, sondern Rechenzeit.'),
  ('first-password-theft', 'en', 'The first password theft was about more computer time', 'In spring 1962, MIT researcher Allan Scherr had a problem: users of the CTSS time-sharing system got only four hours of computer time per week, far too little for his simulations. His solution was blunt. He submitted a punched card asking the system to print out its password file, and it did. Scherr shared the passwords around, and someone even used the lab director''s account to leave taunting messages. He confessed 25 years later. It is often called the first password theft, and the motive was not money but extra computer time.');

INSERT INTO gold_sources (gold, pos, label, url) VALUES
  ('first-password-theft', 1, 'Gizmodo: The World''s First Computer Password? It Was Useless Too', 'https://gizmodo.com/the-world-s-first-computer-password-it-was-useless-too-5879856'),
  ('first-password-theft', 2, 'Purdue cyberTAP: How much do you know about the history of cybersecurity?', 'https://cyber.tap.purdue.edu/blog/articles/how-much-do-you-know-about-the-history-of-cybersecurity/'),
  ('first-password-theft', 3, 'UNC School of Government: Hacking Hacked: Password Security in the Digital Age', 'https://itd.sog.unc.edu/knowledge-base/article/hacking-hacked-password-security-digital-age');

INSERT INTO gold_products (gold, lang, name, query, why, emoji) VALUES
  ('first-password-theft', 'de', 'YubiKey 5 NFC Sicherheitsschlüssel', 'YubiKey 5 NFC', 'Damit ein gestohlenes Passwort allein nicht mehr reicht: Der Schlüssel von Yubico schützt Google, Microsoft, Apple und Co. per USB oder Antippen am Handy.', '🔑'),
  ('first-password-theft', 'en', 'YubiKey 5 NFC security key', 'YubiKey 5 NFC', 'So a stolen password is no longer enough on its own. Yubico''s key protects Google, Microsoft, Apple and more via USB or a tap on your phone.', '🔑');
