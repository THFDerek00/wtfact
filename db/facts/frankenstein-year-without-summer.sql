-- WTFact-Fakt „Mary Shelley war 18, als sie Frankenstein erfand“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('frankenstein-year-without-summer', NULL, 'horror', '⚡', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'frankenstein-year-without-summer', 'de', 'frankenstein-jahr-ohne-sommer',
  'Mary Shelley war 18, als sie Frankenstein erfand',
  'Ein verregneter Sommer, eine Villa am Genfersee und eine Wette unter Freunden: So entstand das berühmteste Monster der Literatur.',
  'Mary Shelley erfand Frankenstein mit 18 bei einem Gruselgeschichten-Wettbewerb am Genfersee, im „Jahr ohne Sommer“ 1816.',
  'Stell dir vor, dein Sommerurlaub fällt komplett ins Wasser. Du sitzt mit Freunden in einem Haus fest, draußen Gewitter, drinnen Langeweile. Irgendwer schlägt vor: Wir schreiben Gruselgeschichten. **Genau so entstand 1816 „Frankenstein“.** Die Autorin Mary Shelley war damals 18 Jahre alt.

## Ein Vulkan verdirbt den Sommer

Schuld am miesen Wetter war ein Vulkan am anderen Ende der Welt. Im April 1815 brach der Tambora auf der indonesischen Insel Sumbawa aus. Seine Asche verteilte sich hoch in der Atmosphäre und drückte weltweit die Temperaturen.

Das folgende Jahr 1816 ging als **„Jahr ohne Sommer“** in die Geschichte ein. In Neuengland fiel mitten im Sommer Schnee, in Europa regnete und stürmte es ständig. Mary Shelley selbst schrieb später von einem „nassen, unfreundlichen Sommer“, der die Gruppe ins Haus zwang.

## Die Gruselnacht in der Villa Diodati

Das Haus war die Villa Diodati am Genfersee, gemietet vom Dichter Lord Byron. Zu Gast waren Mary, damals noch Mary Godwin, ihr späterer Ehemann Percy Shelley, ihre Stiefschwester Claire Clairmont und Byrons Leibarzt John Polidori.

Byron rief einen Wettbewerb aus: Jeder sollte eine Gespenstergeschichte schreiben. Mary tat sich zunächst schwer. Nach ihrer eigenen späteren Schilderung kam ihr die entscheidende Idee in einer Art Traum: ein Wissenschaftler, der etwas Lebloses zum Leben erweckt, und dann vor seinem eigenen Werk erschrickt.

Aus dieser Idee wurde ein ganzer Roman. „Frankenstein“ erschien 1818 und gilt heute als Klassiker des Gruselromans und als einer der frühesten Science-Fiction-Romane überhaupt.

> Der Wettbewerb brachte noch ein zweites Monster hervor: John Polidori schrieb „Der Vampyr“. Die Geschichte gehört zu den frühen Vampirerzählungen der Literatur und beeinflusste später Bram Stokers „Dracula“.

Ein schlechter Sommer, ein Haus voller gelangweilter Dichter und eine 18-Jährige mit Albträumen: Mehr brauchte es nicht für zwei der größten Monster der Popkultur.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('frankenstein-year-without-summer', 'de', 1, 'Frankenstein von Mary Shelley als illustrierte Schmuckausgabe', 'Frankenstein Mary Shelley illustrierte Ausgabe', 'Der Originalroman in einer schön gestalteten Ausgabe, die sich auch gut im Regal macht.'),
  ('frankenstein-year-without-summer', 'de', 2, 'Universal Monsters Frankenstein Blu-ray', 'Frankenstein 1931 Blu-ray', 'Der Filmklassiker von 1931 mit Boris Karloff, der das Bild vom Monster mit den Schrauben im Hals geprägt hat.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('frankenstein-year-without-summer', 'de', 1, 'U.S. National Library of Medicine: Frankenstein: Penetrating the Secrets of Nature: The Birth of Frankenstein', 'https://nlm.nih.gov/exhibition/frankenstein/carousel1.html'),
  ('frankenstein-year-without-summer', 'de', 2, 'EarthDate: The Year Without a Summer', 'https://www.earthdate.org/the-year-without-summer'),
  ('frankenstein-year-without-summer', 'de', 3, 'The Paris Review: Year Without a Summer', 'https://www.theparisreview.org/blog/2016/10/25/year-without-summer/'),
  ('frankenstein-year-without-summer', 'de', 4, 'Britannica: Mary Wollstonecraft Shelley', 'https://www.britannica.com/biography/Mary-Wollstonecraft-Shelley');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'frankenstein-year-without-summer', 'en', 'frankenstein-year-without-a-summer',
  'Mary Shelley was 18 when she came up with Frankenstein',
  'A rained-out summer, a villa on Lake Geneva and a bet between friends: that''s how literature''s most famous monster was born.',
  'Mary Shelley came up with Frankenstein at 18 during a ghost-story contest on Lake Geneva in 1816, the "Year Without a Summer."',
  'Picture this: your summer vacation gets completely rained out. You''re stuck in a house with friends, thunderstorms outside, boredom inside. Someone suggests writing ghost stories. **That''s exactly how "Frankenstein" began in 1816.** Its author, Mary Shelley, was 18 years old at the time.

## A volcano ruins summer

The terrible weather came from a volcano on the other side of the planet. In April 1815, Mount Tambora erupted on the Indonesian island of Sumbawa. Its ash spread high into the atmosphere and pushed temperatures down around the world.

The following year, 1816, went down in history as the **"Year Without a Summer."** It snowed in New England in the middle of summer, and Europe got endless rain and storms. Mary Shelley later described it as a "wet, ungenial summer" that kept the group indoors.

## The spooky nights at Villa Diodati

The house was Villa Diodati on Lake Geneva, rented by the poet Lord Byron. His guests were Mary, still Mary Godwin back then, her future husband Percy Shelley, her stepsister Claire Clairmont and Byron''s personal doctor John Polidori.

Byron announced a contest: everyone had to write a ghost story. Mary struggled at first. By her own later account, the key idea came to her in a kind of dream: a scientist who brings something lifeless to life, and is then horrified by his own creation.

That idea grew into a full novel. "Frankenstein" was published in 1818 and is now a classic of horror fiction and one of the earliest science fiction novels ever.

> The contest produced a second monster: John Polidori wrote "The Vampyre." It''s one of literature''s early vampire tales and later influenced Bram Stoker''s "Dracula."

One bad summer, a house full of bored poets and an 18-year-old with nightmares: that''s all it took to create two of pop culture''s biggest monsters.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('frankenstein-year-without-summer', 'en', 1, 'Frankenstein by Mary Shelley, illustrated hardcover edition', 'Frankenstein Mary Shelley illustrated hardcover', 'The original novel in a beautifully designed edition that looks great on a shelf.'),
  ('frankenstein-year-without-summer', 'en', 2, 'Universal Monsters Frankenstein Blu-ray', 'Frankenstein 1931 Blu-ray', 'The 1931 film classic with Boris Karloff that gave the monster its famous flat head and neck bolts.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('frankenstein-year-without-summer', 'en', 1, 'U.S. National Library of Medicine: Frankenstein: Penetrating the Secrets of Nature: The Birth of Frankenstein', 'https://nlm.nih.gov/exhibition/frankenstein/carousel1.html'),
  ('frankenstein-year-without-summer', 'en', 2, 'EarthDate: The Year Without a Summer', 'https://www.earthdate.org/the-year-without-summer'),
  ('frankenstein-year-without-summer', 'en', 3, 'The Paris Review: Year Without a Summer', 'https://www.theparisreview.org/blog/2016/10/25/year-without-summer/'),
  ('frankenstein-year-without-summer', 'en', 4, 'Britannica: Mary Wollstonecraft Shelley', 'https://www.britannica.com/biography/Mary-Wollstonecraft-Shelley');
