-- WTFact-Fakt „Pac-Man hieß zuerst Puck-Man, und ein einziger Buchstabe war das Problem“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('pac-man-was-puck-man', '2026-10-14T16:00:00+02:00', 'popculture', '🟡', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pac-man-was-puck-man', 'de', 'pac-man-hiess-puck-man',
  'Pac-Man hieß zuerst Puck-Man, und ein einziger Buchstabe war das Problem',
  'Der gelbe Punktefresser bekam für Amerika einen neuen Namen, weil Vandalen aus dem alten zu leicht etwas anderes hätten machen können.',
  'Pac-Man kam 1980 in Japan als Puck-Man heraus und wurde für den US-Markt umbenannt, weil man fürchtete, Vandalen würden aus dem P ein F machen.',
  'Pac-Man gehört zu den bekanntesten Gesichtern der Gaming-Geschichte. In Japan, wo alles anfing, hieß das Spiel aber ein bisschen anders.

## Eine Pizza und ein Mampf-Geräusch

Das Spiel tauchte 1980 zuerst in Spielhallen in Tokio auf. Designer Toru Iwatani erzählte, die Figur sei von einer Pizza inspiriert, der ein Stück fehlte.

Der Name war ein Geräusch. Laut Malay Mail spielte „Puck-Man“ auf das japanische Wort „paku“ an, das so viel wie mampfen bedeutet. Genau das macht der gelbe Held das ganze Spiel über: Punkte mampfen und dabei den Geistern Blinky, Pinky, Inky und Clyde ausweichen.

## Der Buchstabe musste weg

Für den US-Markt wurde aus „Puck“ dann „Pac“. Der Grund: Der alte Name ließ sich zu leicht verändern. Das Computer History Museum schreibt, das Spiel sei für das englischsprachige Publikum umbenannt worden, damit Vandalen aus „PUCK“ kein Schimpfwort machen. Malay Mail sagt es direkter: Man fürchtete, dass Spieler aus dem P ein F machen.

Geschadet hat der neue Name nicht. Laut ORF waren bis 1982 rund 400.000 Spielautomaten verkauft. Guinness World Records kürte Pac-Man später zum erfolgreichsten Münz-Arcade-Spiel aller Zeiten.

Iwatani hatte außerdem ein anderes Publikum im Kopf als die Alien-Ballerspiele dieser Zeit. Er zielte auf Frauen und Paare, und der erste Automat stand zum Test in einem Kino in Shibuya.

> Bonusfakt: Ein perfektes Pac-Man-Spiel bringt 3.333.360 Punkte. Dafür musst du Level 256 schaffen, ohne ein Leben zu verlieren, und unterwegs jeden Punkt, jede Frucht und jeden Geist fressen.

Eine Pizza, ein Mampf-Geräusch und ein riskanter Buchstabe: So kam eine Gaming-Ikone zu ihrem Namen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pac-man-was-puck-man', 'de', 1, 'Pac-Man-Geisterlampe', 'Pac-Man Geist Lampe', 'Ein leuchtender Geist, der jedes Regal wie eine Spielhalle aussehen lässt.'),
  ('pac-man-was-puck-man', 'de', 2, 'Mini-Retro-Arcade-Automat', 'Mini Retro Arcade Automat Pac-Man', 'Ein Tisch-Spielautomat für schnelle Runden mit Klassikern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pac-man-was-puck-man', 'de', 1, 'Computer History Museum: Play Becomes Profitable - CHM Revolution', 'https://www.computerhistory.org/revolution/computer-games/16/192'),
  ('pac-man-was-puck-man', 'de', 2, 'Malay Mail: Gobble gobble: Pac-Man turns 40', 'https://www.malaymail.com/news/tech-gadgets/2020/05/23/gobble-gobble-pac-man-turns-40/1868845'),
  ('pac-man-was-puck-man', 'de', 3, 'news.ORF.at: Spielhallenklassiker „Pac-Man“ ist 40', 'https://orf.at/stories/3166663/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pac-man-was-puck-man', 'en', 'pac-man-was-called-puck-man',
  'Pac-Man was first called Puck-Man, and one letter was the problem',
  'The yellow dot-eater got a new name for America because of what vandals could have done to the old one.',
  'Pac-Man launched in Japan in 1980 as Puck-Man and was renamed for the US market out of fear that vandals would turn the P into an F.',
  'Pac-Man is one of the most famous faces in gaming. But in Japan, where it all started, the game had a slightly different name.

## A pizza and a gobbling sound

The game first appeared in arcades in Tokyo in 1980. Its designer, Toru Iwatani, said the character was inspired by a pizza with one slice missing.

The name was a sound effect. According to Malay Mail, “Puck-Man” played on the Japanese word “paku”, meaning to gobble. That''s exactly what the yellow hero does all game long: gobble dots while dodging the ghosts Blinky, Pinky, Inky and Clyde.

## The letter that had to go

For the US market, “Puck” became “Pac”. The reason: it was too easy to change. The Computer History Museum explains that the game was renamed for English-speaking audiences “to prevent vandals from turning ‘PUCK’ into an expletive”. Malay Mail puts it more bluntly: there were fears that gamers would change the P to an F.

The new name didn''t hurt at all. According to ORF, about 400,000 arcade cabinets had been sold by 1982. Guinness World Records later named Pac-Man the most successful coin-operated arcade game of all time.

Iwatani also had a different audience in mind than the alien shoot-em-ups of the time. He aimed the game at women and couples, and the first machine was placed in a cinema in Shibuya to test that idea.

> Bonus fact: A perfect game of Pac-Man scores 3,333,360 points. To get there, you have to clear level 256 without losing a life and eat every dot, fruit and ghost along the way.

One pizza, one sound effect and one risky letter: that''s how a gaming icon got its name.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pac-man-was-puck-man', 'en', 1, 'Pac-Man ghost lamp', 'Pac-Man ghost lamp', 'A glowing ghost that makes any shelf look like an arcade.'),
  ('pac-man-was-puck-man', 'en', 2, 'Mini retro arcade cabinet', 'mini retro arcade cabinet Pac-Man', 'A tabletop arcade machine for quick rounds of classic games.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pac-man-was-puck-man', 'en', 1, 'Computer History Museum: Play Becomes Profitable - CHM Revolution', 'https://www.computerhistory.org/revolution/computer-games/16/192'),
  ('pac-man-was-puck-man', 'en', 2, 'Malay Mail: Gobble gobble: Pac-Man turns 40', 'https://www.malaymail.com/news/tech-gadgets/2020/05/23/gobble-gobble-pac-man-turns-40/1868845'),
  ('pac-man-was-puck-man', 'en', 3, 'news.ORF.at: Spielhallenklassiker „Pac-Man“ ist 40', 'https://orf.at/stories/3166663/');
