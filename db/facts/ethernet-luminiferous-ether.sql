-- WTFact-Fakt „Ethernet ist nach einem Stoff benannt, den es gar nicht gibt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ethernet-luminiferous-ether', '2026-11-02T08:00:00+01:00', 'tech', '🔌', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ethernet-luminiferous-ether', 'de', 'ethernet-nach-aether-benannt',
  'Ethernet ist nach einem Stoff benannt, den es gar nicht gibt',
  'Das Kabel zu deinem Router trägt den Namen von etwas, das Physiker im späten 19. Jahrhundert für den Träger des Lichts hielten.',
  '1973 benannte Bob Metcalfe bei Xerox PARC sein „Alto Aloha Network“ in Ethernet um, nach dem Lichtäther, einem längst widerlegten Stoff, der einst Licht und andere elektromagnetische Wellen tragen sollte.',
  'Die Netzwerkbuchse an deinem Laptop und das Kabel zum Router tragen einen Namen, der von etwas geliehen ist, an das die Physik schon seit über 100 Jahren nicht mehr glaubt.

## Ein Netzwerk namens Aloha

1973 arbeitete Bob Metcalfe am Xerox Palo Alto Research Center in Kalifornien. Laut dem Centre for Computing History ging es vor allem darum, die vielen Alto-Arbeitsrechner dort mit dem ersten vernetzten Laserdrucker der Welt zu verbinden. Am 22. Mai 1973 hielt Metcalfe seine Ideen in einem Memo fest.

Die erste Versuchsversion hatte einen deutlich niedlicheren Namen: „Alto Aloha Network“. TeleGeography erklärt, dass Metcalfe sie 1973 in „Ethernet“ umbenannte, weil klar sein sollte, dass das System jeden Computer unterstützt und nicht nur Altos.

## Der Äther, den es nicht gab

Mit „Ether“ ist der Lichtäther gemeint, im Englischen „luminiferous ether“: ein theoretischer Stoff, von dem Physiker im späten 19. Jahrhundert glaubten, er trage elektromagnetische Wellen wie Licht. Metcalfe lieh sich den Begriff für das physische Medium, das die Bits zu jeder Station bringt.

Kleines Problem: Den Äther gibt es nicht. Britannica beschreibt, wie das Michelson-Morley-Experiment von 1887 nachweisen wollte, dass sich die Erde durch den Äther bewegt, und keinerlei Unterschied fand. Dieses Nullergebnis erschütterte die Äthertheorien, und 1905 schlug Albert Einstein vor, dass die Lichtgeschwindigkeit eine universelle Konstante ist.

Der Name war also von Anfang an ein Physik-Insiderwitz. IEEE Spectrum zitiert Alan Kay, der sich an einen Satz von Chuck Thacker erinnert, einem Kollegen von Metcalfe: „coaxial cable is nothing but captive ether“, also: Ein Koaxialkabel ist nichts anderes als eingesperrter Äther.

> Bonusfakt: Laut IEEE Spectrum schickte das erste Ethernet Daten mit bis zu 2,94 Megabit pro Sekunde über ein Koaxialkabel, und am ursprünglichen Kabel hingen 100 Transceiver-Knoten.

## Durcheinanderreden mit System

Der Clou war, wie viele Computer sich ein einziges Kabel teilen konnten. Beim älteren Aloha-Prinzip, so TeleGeography, schickte eine Station einfach ihre Daten los und wartete auf eine Bestätigung. Stießen zwei Übertragungen zusammen, wählten beide Stationen eine zufällige Wartezeit und versuchten es erneut. Metcalfe ergänzte eine Kollisionserkennung, und die Stationen hören erst zu, bevor sie senden. Das Patent, erteilt am 13. Dezember 1977, heißt „Multipoint data communication system with collision detection“.

Die Physik fand 1887 keine Spur vom Äther. Die Informatik hat ihm trotzdem eine zweite Karriere verschafft, und die steckt bis heute in deinem Router.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ethernet-luminiferous-ether', 'de', 1, 'Flaches Cat-6-Netzwerkkabel', 'Netzwerkkabel flach Cat 6', 'Ein schmales LAN-Kabel, das unter Türen und Teppichen verschwindet.'),
  ('ethernet-luminiferous-ether', 'de', 2, 'Buch zur Geschichte des Internets', 'Geschichte des Internets Buch', 'Erzählt, wie Computernetze vom Laborexperiment zur Alltagstechnik wurden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ethernet-luminiferous-ether', 'de', 1, 'Computing History: Bob Metcalfe invents Ethernet', 'https://www.computinghistory.org.uk/det/5823/Bob-Metcalfe-invents-Ethernet/'),
  ('ethernet-luminiferous-ether', 'de', 2, 'TeleGeography: Staring into the Luminiferous Ether (Or How Ethernet Got its Name)', 'https://resources.telegeography.com/luminiferous-ether-how-ethernet-got-its-name-local-access-pricing-service'),
  ('ethernet-luminiferous-ether', 'de', 3, 'IEEE Spectrum: Ethernet is Still Going Strong After 50 Years', 'https://spectrum.ieee.org/ethernet-ieee-milestone'),
  ('ethernet-luminiferous-ether', 'de', 4, 'Britannica: Michelson-Morley experiment', 'https://britannica.com/print/article/380069');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ethernet-luminiferous-ether', 'en', 'ethernet-named-after-nonexistent-ether',
  'Ethernet is named after a substance that doesn''t exist',
  'The cable to your router carries the name of something physicists in the late 1800s believed carried light.',
  'In 1973, Bob Metcalfe at Xerox PARC renamed his "Alto Aloha Network" to Ethernet, after the luminiferous ether, a since-disproven substance once thought to carry light and other electromagnetic waves.',
  'The network port on your laptop and the cable to your router carry a name borrowed from something physics stopped believing in more than a century ago.

## A network called Aloha

In 1973, Bob Metcalfe was working at the Xerox Palo Alto Research Center in California. According to the Centre for Computing History, the main goal was to connect the many Alto workstations there to the world''s first networked laser printer. On May 22, 1973, Metcalfe documented his ideas in a memo.

The first experimental version had a much cuter name: the "Alto Aloha Network". TeleGeography explains that Metcalfe changed it to "Ethernet" in 1973 because he wanted to make clear that the system would support any computer, not just Altos.

## The ether that wasn''t there

The "ether" in the name is the luminiferous ether, a theoretical substance that physicists in the late 1800s believed carried electromagnetic waves such as light. Metcalfe borrowed it to describe the physical medium that carries bits to every station.

Small problem: there is no such thing. Britannica describes how the Michelson-Morley experiment of 1887 tried to detect Earth moving through the ether and found no difference at all. That null result undermined ether theories, and in 1905 Albert Einstein proposed that the speed of light is a universal constant.

So the name was a physics in-joke from day one. IEEE Spectrum quotes Alan Kay recalling a line from Chuck Thacker, one of Metcalfe''s colleagues: "coaxial cable is nothing but captive ether."

> Bonus fact: According to IEEE Spectrum, the first Ethernet sent data at up to 2.94 megabits per second over coaxial cable, and the original cable had 100 transceiver nodes attached to it.

## Talking over each other, on purpose

The clever part was how many computers could share one cable. In the older Aloha approach, TeleGeography writes, a station simply sent its data and waited for an acknowledgment. If two transmissions collided, both stations picked a random waiting time and tried again. Metcalfe added collision detection, and stations listen before they transmit. The patent, granted on December 13, 1977, is titled "Multipoint data communication system with collision detection".

Physics found no trace of the ether in 1887. Computer science gave it a second career anyway, and it''s still plugged into your router.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ethernet-luminiferous-ether', 'en', 1, 'Flat Cat 6 Ethernet cable', 'flat ethernet cable cat 6', 'A slim network cable that slides under doors and carpets.'),
  ('ethernet-luminiferous-ether', 'en', 2, 'History of the internet book', 'history of the internet book', 'Tells how computer networks grew from lab experiments into everyday infrastructure.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ethernet-luminiferous-ether', 'en', 1, 'Computing History: Bob Metcalfe invents Ethernet', 'https://www.computinghistory.org.uk/det/5823/Bob-Metcalfe-invents-Ethernet/'),
  ('ethernet-luminiferous-ether', 'en', 2, 'TeleGeography: Staring into the Luminiferous Ether (Or How Ethernet Got its Name)', 'https://resources.telegeography.com/luminiferous-ether-how-ethernet-got-its-name-local-access-pricing-service'),
  ('ethernet-luminiferous-ether', 'en', 3, 'IEEE Spectrum: Ethernet is Still Going Strong After 50 Years', 'https://spectrum.ieee.org/ethernet-ieee-milestone'),
  ('ethernet-luminiferous-ether', 'en', 4, 'Britannica: Michelson-Morley experiment', 'https://britannica.com/print/article/380069');
