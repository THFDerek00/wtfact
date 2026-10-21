-- WTFact-Fakt „Beim Juwelenraub im Grünen Gewölbe brauchten die Diebe weniger als 10 Minuten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('green-vault-heist-dresden', '2026-10-23T10:00:00+02:00', 'crime', '👑', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'green-vault-heist-dresden', 'de', 'gruenes-gewoelbe-juwelenraub',
  'Beim Juwelenraub im Grünen Gewölbe brauchten die Diebe weniger als 10 Minuten',
  'Ein Brand im Stromkasten, eine Axt, ein paar Minuten. Ein berühmter Diamant ist bis heute verschwunden.',
  'Im November 2019 stahlen Einbrecher im Dresdner Grünen Gewölbe Juwelen im Wert von rund 113 Millionen Euro und waren nach weniger als 10 Minuten wieder draußen. Der 49-karätige „Dresdner Weiße“ fehlt bis heute.',
  'Das Grüne Gewölbe im Dresdner Residenzschloss ist eine der berühmtesten Schatzkammern Europas. Am 25. November 2019 brauchten Einbrecher nur wenige Minuten, um sie zu plündern.

## Der Einbruch im Morgengrauen

Gegen 5 Uhr morgens legten die Täter Feuer an einem Stromverteiler in der Nähe. Dadurch fiel im Umfeld der Strom aus. Dann brachen sie mit einem hydraulischen Schneidgerät ins Museum ein.

Überwachungsvideos zeigen zwei Männer im Juwelenzimmer, die mit einer Art Axt die Vitrinen zertrümmern. Laut „Artnet“ waren sie nach weniger als 10 Minuten wieder verschwunden.

Die Beute: Juwelen im Wert von rund 113 Millionen Euro. Allein in den gestohlenen Stücken steckten laut „Euronews“ rund 4.300 Diamanten. Darunter der „Dresdner Weiße“, ein Diamant mit 49 Karat, und der Bruststern des polnischen Weißen Adlerordens, der einst dem König von Polen gehört hatte.

## Rückkehr nach drei Jahren

Im Dezember 2022 dann die Wende: Bei Verhandlungen mit der Staatsanwaltschaft verrieten Anwälte der Angeklagten, wo ein großer Teil der Beute lag. Die Polizei stellte 31 Stücke in Berlin sicher, darunter den Bruststern und einen mit Diamanten besetzten Degen.

2023 wurden fünf Männer zu mehrjährigen Haftstrafen verurteilt. Seit 2024 sind die zurückgekehrten Juwelen wieder an ihren alten Plätzen im Grünen Gewölbe zu sehen, manche davon beschädigt.

> Bonusfakt: Noch immer fehlen mehrere Stücke, darunter eine große Brustschleife von Königin Amalie Auguste mit 611 kleinen Diamanten.

Und der „Dresdner Weiße“? Der sitzt auf einer Epaulette, die ebenfalls verschwunden ist. Wo der 49-Karäter steckt, weiß niemand.

Die Schatzkammer ist wieder fast komplett. Ihr berühmtester Stein hat sich aber noch nicht zurückgemeldet.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('green-vault-heist-dresden', 'de', 1, 'Bildband Grünes Gewölbe Dresden', 'Grünes Gewölbe Dresden Bildband', 'Zeigt die Schätze der Kammer in großen Fotos.'),
  ('green-vault-heist-dresden', 'de', 2, 'Sachbuch über spektakuläre Kunstdiebstähle', 'Buch Kunstraub spektakuläre Diebstähle', 'Von Paris bis Dresden: die frechsten Raubzüge in Museen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('green-vault-heist-dresden', 'de', 1, 'Artnet News: Police Seized Dozens of Treasures Stolen in Dresden’s $119 Million Green Vault Heist—But a 49-Carat Diamond Remains Missing', 'https://news.artnet.com/art-world/dresden-green-vault-heist-return-2232384'),
  ('green-vault-heist-dresden', 'de', 2, 'Euronews: Royal Jewels stolen in dramatic Green Vault heist back on display in Dresden', 'https://www.euronews.com/2024/08/16/royal-jewels-stolen-in-dramatic-green-vault-heist-back-on-display-in-dresden'),
  ('green-vault-heist-dresden', 'de', 3, 'GPB: Jewels stolen during a brazen 2019 heist are back on display in Germany', 'https://www.gpb.org/news/2024/08/14/jewels-stolen-during-brazen-2019-heist-are-back-on-display-in-germany');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'green-vault-heist-dresden', 'en', 'green-vault-heist-dresden',
  'The Green Vault jewel thieves needed less than 10 minutes',
  'A fire in a fuse box, an axe, a few minutes. A famous diamond is still missing.',
  'In November 2019, burglars stole jewels worth about 113 million euros from Dresden’s Green Vault and were gone in less than 10 minutes. The 49-carat Dresden White Diamond is still missing.',
  'The Green Vault in Dresden’s Royal Palace is one of the most famous treasure chambers in Europe. On November 25, 2019, burglars needed only a few minutes to raid it.

## The break-in at dawn

At around 5 a.m., the thieves set fire to a nearby circuit-breaker panel, which cut the power in the area. Then they broke into the museum with a hydraulic cutting tool.

Security footage shows two men in the jewel room smashing display cases with what looks like an axe. According to Artnet, they were gone again in less than 10 minutes.

The loot: jewels worth about 113 million euros. Among them were the Dresden White, a 49-carat diamond, and the breast star of the Polish Order of the White Eagle, which once belonged to the king of Poland.

## Coming home after three years

Then, in December 2022, came the twist: during talks with prosecutors, lawyers for the defendants revealed where a large part of the loot was. Police recovered 31 items in Berlin, including the breast star and a diamond-studded sword.

In 2023, five men were sentenced to several years in prison. Since 2024, the returned jewels have been back in their old spots in the Green Vault, some of them damaged.

> Bonus fact: Several pieces are still missing, including a large breast bow belonging to Queen Amalie Auguste, set with 611 small diamonds.

And the Dresden White? It sits on an epaulette that has also vanished. Nobody knows where the 49-carat stone is.

The treasure chamber is almost complete again. Its most famous stone just hasn’t checked back in yet.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('green-vault-heist-dresden', 'en', 1, 'Green Vault Dresden photo book', 'Green Vault Dresden book', 'Shows the chamber’s treasures in big photos.'),
  ('green-vault-heist-dresden', 'en', 2, 'Book about spectacular art thefts', 'book famous art heists', 'From Paris to Dresden: the boldest museum robberies.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('green-vault-heist-dresden', 'en', 1, 'Artnet News: Police Seized Dozens of Treasures Stolen in Dresden’s $119 Million Green Vault Heist—But a 49-Carat Diamond Remains Missing', 'https://news.artnet.com/art-world/dresden-green-vault-heist-return-2232384'),
  ('green-vault-heist-dresden', 'en', 2, 'Euronews: Royal Jewels stolen in dramatic Green Vault heist back on display in Dresden', 'https://www.euronews.com/2024/08/16/royal-jewels-stolen-in-dramatic-green-vault-heist-back-on-display-in-dresden'),
  ('green-vault-heist-dresden', 'en', 3, 'GPB: Jewels stolen during a brazen 2019 heist are back on display in Germany', 'https://www.gpb.org/news/2024/08/14/jewels-stolen-during-brazen-2019-heist-are-back-on-display-in-germany');
