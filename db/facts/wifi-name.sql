-- WTFact-Fakt „„Wi-Fi“ steht für gar nichts, auch nicht für „Wireless Fidelity““
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('wifi-name', '2026-09-15', 'tech', '📶', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wifi-name', 'de', 'wifi-bedeutet-nichts',
  '„Wi-Fi“ steht für gar nichts, auch nicht für „Wireless Fidelity“',
  'Der Name, den du jeden Tag benutzt, ist ein reines Marketing-Produkt. Die angebliche Abkürzung kam erst hinterher.',
  '„Wi-Fi“ ist keine Abkürzung. Eine Markenagentur hat den Namen 1999 erfunden, „Wireless Fidelity“ wurde erst nachträglich draufgeklebt.',
  'Frag ein paar Leute, wofür „Wi-Fi“ steht, und du hörst wahrscheinlich: „Wireless Fidelity“. Klingt logisch, ist aber falsch. **Wi-Fi ist keine Abkürzung. Der Name bedeutet schlicht gar nichts.**

## Ein Name aus der Markenagentur

Ende der 1990er hatte die Funktechnik ein Imageproblem. Ihr offizieller Name lautete „IEEE 802.11b Direct Sequence“. Nicht gerade etwas, das man auf eine Verpackung druckt.

Also beauftragte der Herstellerverband, damals noch WECA genannt und heute als Wi-Fi Alliance bekannt, 1999 die Markenagentur **Interbrand**. Die schlug 10 mögliche Namen vor. Gründungsmitglied Phil Belanger und seine Kollegen entschieden sich für „Wi-Fi“. Interbrand entwarf auch gleich das Logo, das an ein Yin-und-Yang-Symbol erinnert.

Warum gerade dieser Name? Er klingt wie „Hi-Fi“, also High Fidelity aus der Musiktechnik. Der Gedanke dahinter: Wer den Namen hört, denkt automatisch an gute Qualität.

## Die Erklärung, die keine war

Einigen im Verband war das unheimlich. Ein Markenname ohne Bedeutung? Das würde doch niemand akzeptieren. Also bekam Wi-Fi anfangs einen Slogan verpasst: **„The Standard for Wireless Fidelity“**.

Belanger hält das rückblickend für einen Fehler. Der Zusatz habe die Leute nur verwirrt und die Marke verwässert. „Wireless Fidelity“ sei nur ein ungeschickter Versuch gewesen, zwei Wörter zu finden, die zu „Wi“ und „Fi“ passen. Sein Fazit ist eindeutig: **„Wi-Fi ist keine Abkürzung. Es gibt keine Bedeutung.“**

Der Slogan verschwand zwar bald wieder, die Legende aber nicht. Sie hält sich bis heute hartnäckig in Quizfragen, Foren und Partygesprächen.

> Laut Mental Floss bezeichnet sogar das Oxford English Dictionary die Erklärung „Wireless Fidelity“ als „spurious“, also unecht.

Ganz unschuldig sind die Erfinder an dem Missverständnis also nicht. Sie haben die falsche Erklärung selbst in die Welt gesetzt. Und Wi-Fi bleibt, was es von Anfang an war: ein Wort, das einfach gut klingt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wifi-name', 'de', 1, 'WLAN-Repeater für die Steckdose', 'WLAN Repeater Steckdose Mesh', 'Verlängert das Funknetz in Ecken, in denen sonst nur noch ein Balken ankommt. Einstecken, verbinden, fertig.'),
  ('wifi-name', 'de', 2, 'Sachbuch über die Geschichte des Internets', 'Geschichte des Internets Sachbuch', 'Zeigt, wie aus ein paar vernetzten Rechnern das Netz wurde, an dem heute fast alles hängt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wifi-name', 'de', 1, 'Wikipedia: Wi-Fi', 'https://en.wikipedia.org/wiki/Wi-Fi'),
  ('wifi-name', 'de', 2, 'Mental Floss: What Does ‘Wi-Fi’ Stand For? It’s Complicated', 'https://www.mentalfloss.com/posts/what-does-wi-fi-stand-for'),
  ('wifi-name', 'de', 3, 'Wi-Fi Networking News: Wi-Fi Stands for...Nothing (and Everything)', 'https://wifinetnews.com/archives/2005/11/wi-fi_stands_fornothing_and_everything.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wifi-name', 'en', 'wifi-stands-for-nothing',
  'Wi-Fi doesn''t stand for anything, not even wireless fidelity',
  'The word you use every day is pure marketing. The so-called acronym was tacked on afterward.',
  'Wi-Fi isn''t an acronym. A branding agency came up with the name in 1999, and wireless fidelity was added later.',
  'Ask a few people what Wi-Fi stands for and you''ll probably hear "wireless fidelity." Sounds right. It isn''t. **Wi-Fi isn''t an acronym. The name literally means nothing.**

## A name from a branding agency

In the late 1990s, wireless networking had an image problem. Its official name was "IEEE 802.11b Direct Sequence." Not exactly something you''d print on a box.

So in 1999, the industry group, then called WECA and known today as the Wi-Fi Alliance, hired the branding firm **Interbrand**. Interbrand pitched 10 possible names. Founding member Phil Belanger and his colleagues picked "Wi-Fi." Interbrand also designed the logo that looks a bit like a yin-yang symbol.

Why that name? It sounds like "hi-fi," as in high fidelity from the audio world. The idea: hear the name and you automatically think quality.

## The explanation that wasn''t

Some people in the group got nervous. A brand name with no meaning? Surely nobody would buy that. So early on, Wi-Fi got a tagline: **"The Standard for Wireless Fidelity."**

Looking back, Belanger calls that a mistake that only confused people and diluted the brand. "Wireless fidelity," he says, was just a clumsy attempt to come up with two words that matched "Wi" and "Fi." His verdict couldn''t be clearer: **"Wi-Fi does not mean anything. Wi-Fi is not an acronym."**

The tagline didn''t last, but the legend did. It still pops up in trivia questions, online forums and party conversations.

> According to Mental Floss, even the Oxford English Dictionary calls the "wireless fidelity" explanation "spurious."

So the people behind the name aren''t totally innocent here. They put the fake explanation out into the world themselves. And Wi-Fi is still what it was from day one: a word that just sounds good.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wifi-name', 'en', 1, 'Plug-in Wi-Fi range extender', 'wifi range extender plug in mesh', 'Pushes your wireless signal into corners where you''d otherwise get one bar. Plug in, connect, done.'),
  ('wifi-name', 'en', 2, 'Book on the history of the internet', 'history of the internet book', 'Shows how a few connected computers grew into the network almost everything runs on today.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wifi-name', 'en', 1, 'Wikipedia: Wi-Fi', 'https://en.wikipedia.org/wiki/Wi-Fi'),
  ('wifi-name', 'en', 2, 'Mental Floss: What Does ‘Wi-Fi’ Stand For? It’s Complicated', 'https://www.mentalfloss.com/posts/what-does-wi-fi-stand-for'),
  ('wifi-name', 'en', 3, 'Wi-Fi Networking News: Wi-Fi Stands for...Nothing (and Everything)', 'https://wifinetnews.com/archives/2005/11/wi-fi_stands_fornothing_and_everything.html');
