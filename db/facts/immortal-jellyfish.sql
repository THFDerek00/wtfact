-- WTFact-Fakt „Diese Qualle drückt einfach auf Reset“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('immortal-jellyfish', '2026-09-18', 'nature', '🪼', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'immortal-jellyfish', 'de', 'unsterbliche-qualle',
  'Diese Qualle drückt einfach auf Reset',
  'Turritopsis dohrnii kann sich vom erwachsenen Tier zurück in ein Jugendstadium verwandeln. Und das nicht nur einmal.',
  'Die „unsterbliche Qualle“ kann sich bei Stress in einen Polypen zurückverwandeln und ihr Leben noch einmal von vorn beginnen.',
  'Stell dir vor, du wirst alt oder krank, und statt zu sterben, wirst du einfach wieder Kind. Für uns ist das Science-Fiction, für eine winzige Qualle im Meer ganz normal. Sie heißt Turritopsis dohrnii und trägt den Spitznamen **„unsterbliche Qualle“**.

## Klein, durchsichtig, unscheinbar

Die Meduse, also die schwimmende Glockenform, misst nur etwa 4,5 Millimeter. Kleiner als dein Fingernagel. Durch die durchsichtige Glocke leuchtet ein knallroter Magen, am Rand hängen bis zu 90 weiße Tentakel. Beschrieben wurde die Art 1883, benannt nach Anton Dohrn, dem Gründer der Zoologischen Station in Neapel. Ursprünglich stammt sie aus dem Mittelmeer.

## Zurück auf Anfang

Normalerweise läuft das Leben einer Qualle nur in eine Richtung: Aus einem festsitzenden Polypen knospen Medusen, die erwachsen werden, sich fortpflanzen und sterben. Turritopsis dohrnii kann diese Einbahnstraße umdrehen. Ist sie verletzt, hungert sie oder ist sie krank oder alt, verwandelt sie sich **zurück in einen Polypen**.

Möglich macht das die sogenannte Transdifferenzierung. Dabei wandeln sich bereits spezialisierte Zellen in ganz andere Zelltypen um. Aus dem neuen Polypen knospen später wieder Medusen, die genetisch identisch mit dem Ausgangstier sind. Theoretisch kann sich das endlos wiederholen.

Der japanische Forscher Shin Kubota hielt eine Kolonie im Labor, die sich innerhalb von 2 Jahren 11-mal „neu geboren“ hat.

## Unsterblich? Nicht ganz

Bevor du neidisch wirst: Unverwundbar ist die Qualle nicht. In der Natur werden die meisten Tiere vermutlich gefressen oder sterben an Krankheiten, bevor sie den Reset-Knopf drücken können. Zu ihren Fressfeinden zählen andere Quallen, Seeanemonen, Thunfische, Haie und Meeresschildkröten. **Biologisch unsterblich heißt also nur: Am Altern allein muss sie nicht sterben.**

> Genetisch identische Exemplare wurden in Meeren rund um die Welt gefunden. Vermutlich reisen sie im Ballastwasser von Frachtschiffen mit.

Ein Tier, das bei jeder Krise einfach wieder von vorn anfängt. Irgendwie beneidenswert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('immortal-jellyfish', 'de', 1, 'LED-Quallenlampe mit Mini-Aquarium', 'Quallen Lampe LED Aquarium', 'Künstliche Quallen schweben im farbig beleuchteten Wasser. Beruhigt fast so gut wie Meeresrauschen.'),
  ('immortal-jellyfish', 'de', 2, 'Sachbuch über Quallen und andere Nesseltiere', 'Quallen Sachbuch', 'Erklärt mit vielen Fotos, wie Quallen leben, jagen und sich fortpflanzen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('immortal-jellyfish', 'de', 1, 'Wikipedia: Turritopsis dohrnii', 'https://en.wikipedia.org/wiki/Turritopsis_dohrnii'),
  ('immortal-jellyfish', 'de', 2, 'American Museum of Natural History: The "Immortal" Jellyfish That Resets When Damaged', 'https://www.amnh.org/explore/news-blogs/immortal-jellyfish'),
  ('immortal-jellyfish', 'de', 3, 'Texas A&M University: This Jellyfish Can Defy Death And Turn Back Time', 'https://stories.tamu.edu/news/2021/03/12/this-jellyfish-can-defy-death-and-turn-back-time/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'immortal-jellyfish', 'en', 'immortal-jellyfish',
  'This jellyfish just hits the reset button',
  'Turritopsis dohrnii can turn from an adult back into its juvenile stage. And not just once.',
  'The "immortal jellyfish" can turn back into a polyp when it''s stressed and start its life all over again.',
  'Imagine getting old or sick, and instead of dying, you just turn back into a kid. For us, that''s science fiction. For one tiny jellyfish, it''s just Tuesday. Its name is Turritopsis dohrnii, and its nickname is **the "immortal jellyfish."**

## Small, see-through, easy to miss

The medusa, the floating bell-shaped form, measures only about 4.5 millimeters across. That''s smaller than your fingernail. A bright red stomach shows through its transparent bell, and up to 90 white tentacles hang from the edge. The species was described in 1883 and named after Anton Dohrn, founder of the zoological station in Naples, Italy. It originally comes from the Mediterranean Sea.

## Back to square one

Normally, a jellyfish''s life only runs one way: a polyp stuck to the sea floor buds off medusae, which grow up, reproduce and die. Turritopsis dohrnii can flip that one-way street. When it''s injured, starving, sick or old, it **transforms back into a polyp**.

The trick is called transdifferentiation. Cells that already have a specialized job turn into completely different cell types. The new polyp later buds off fresh medusae that are genetically identical to the original. In theory, this can repeat forever.

Japanese researcher Shin Kubota kept a colony in the lab that "rebirthed" itself 11 times in 2 years.

## Immortal? Not quite

Before you get jealous: this jellyfish is far from invincible. In the wild, most of them are probably eaten or killed by disease before they ever get to hit reset. Their predators include other jellyfish, sea anemones, tuna, sharks and sea turtles. **Biologically immortal just means old age alone doesn''t have to kill it.**

> Genetically identical individuals have been found in oceans all over the world. They probably hitch rides in the ballast water of cargo ships.

An animal that answers every crisis by starting over from scratch. Honestly, kind of enviable.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('immortal-jellyfish', 'en', 1, 'LED jellyfish lamp with mini aquarium', 'jellyfish lamp LED aquarium', 'Fake jellyfish drift through color-changing water. Weirdly relaxing on a desk or nightstand.'),
  ('immortal-jellyfish', 'en', 2, 'Spineless by Juli Berwald', 'Spineless Juli Berwald jellyfish', 'A science writer dives into the strange world of jellyfish. Smart, personal and easy to read.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('immortal-jellyfish', 'en', 1, 'Wikipedia: Turritopsis dohrnii', 'https://en.wikipedia.org/wiki/Turritopsis_dohrnii'),
  ('immortal-jellyfish', 'en', 2, 'American Museum of Natural History: The "Immortal" Jellyfish That Resets When Damaged', 'https://www.amnh.org/explore/news-blogs/immortal-jellyfish'),
  ('immortal-jellyfish', 'en', 3, 'Texas A&M University: This Jellyfish Can Defy Death And Turn Back Time', 'https://stories.tamu.edu/news/2021/03/12/this-jellyfish-can-defy-death-and-turn-back-time/');
