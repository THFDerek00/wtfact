-- WTFact-Fakt „Eulen drehen ihren Kopf um bis zu 270 Grad, ohne sich die Blutzufuhr abzuklemmen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('owl-head-270', NULL, 'animals', '🦉', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'owl-head-270', 'de', 'eulen-drehen-kopf-270-grad',
  'Eulen drehen ihren Kopf um bis zu 270 Grad, ohne sich die Blutzufuhr abzuklemmen',
  'Wenn du deinen Kopf so weit drehen würdest, hättest du ein ernstes Problem. Eulen haben dafür gleich mehrere Tricks im Hals.',
  'Eulen können ihren Kopf um bis zu 270 Grad drehen, und Forschende der Johns Hopkins University haben herausgefunden, warum ihr Gehirn dabei trotzdem genug Blut bekommt.',
  'Eine Eule sitzt auf einem Ast, du gehst um den Baum herum, und ihr Kopf folgt dir einfach. Bis zu 270 Grad in jede Richtung schafft sie das, also deutlich mehr als eine Dreivierteldrehung.

## Warum Eulen überhaupt den Kopf drehen müssen

Die Eule hat keine andere Wahl. Laut World of Owls sind ihre Augen keine runden Augäpfel, sondern lange Röhren, die von einem knöchernen Ring festgehalten werden. Sie kann die Augen nicht rollen und nur geradeaus schauen. Wer nach links gucken will, muss also den ganzen Kopf drehen.

Dafür ist der Hals gebaut. Er hat 14 Halswirbel, doppelt so viele wie deiner. Das macht ihn sehr beweglich. Aber Beweglichkeit allein erklärt nicht, warum der Eule bei so einer Drehung nicht die Blutversorgung des Gehirns wegbleibt.

## Was Forschende im Eulenhals gefunden haben

Genau das wollten Forschende der Johns Hopkins University wissen. Laut Mental Floss untersuchten der medizinische Illustrator Fabian de Kok-Mercado und der Neuroradiologe Philippe Gailloud 12 Eulen, die eines natürlichen Todes gestorben waren, darunter Schneeeulen, Streifenkäuze und Virginia-Uhus. Um die Adern sichtbar zu machen, spritzten sie Kontrastmittel in die Blutgefäße.

Dabei fanden sie mehrere Anpassungen. Unter dem Kiefer haben Eulen Blutgefäße, die sich wie kleine Speicher erweitern können. So fließt auch während einer extremen Drehung weiter Blut zum Gehirn und zu den Augen. Dazu kommen kleine Verbindungen zwischen den großen Halsschlagadern, über die das Blut umgeleitet werden kann, falls ein Weg abgedrückt wird. Und die Knochenkanäle, durch die eine wichtige Arterie im Hals verläuft, sind bei Eulen deutlich weiter als nötig. Die Arterie hat dort also Platz, um sich mitzubewegen.

> Bonusfakt: Die Zeichnungen aus diesem Projekt gewannen laut der California Academy of Sciences 2012 den ersten Platz in einem Visualisierungswettbewerb der National Science Foundation.

## Kein Trick, sondern Ingenieurskunst

Was aussieht wie ein Partytrick aus einem Horrorfilm, ist in Wahrheit eine durchdachte Konstruktion aus Knochen und Adern. Menschen fehlt dieses Paket, deshalb solltest du es lieber bei einem Schulterblick belassen.

Die Eule kann ihre Augen nicht bewegen, also hat die Evolution ihr einfach einen drehbaren Kopf gegeben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('owl-head-270', 'de', 1, 'Sachbuch über Eulen', 'Eulen Buch Sachbuch', 'Erklärt, wie Eulen jagen, hören und sehen, mit vielen Fotos.'),
  ('owl-head-270', 'de', 2, 'Eulen-Kuscheltier', 'Eule Kuscheltier Plüsch', 'Große Augen, weiches Gefieder und ein Kopf, der sich zum Glück nicht dreht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('owl-head-270', 'de', 1, 'Mental Floss: How Can Owls Rotate Their Heads 270 Degrees Without Dying?', 'https://www.mentalfloss.com/animals/birds/how-can-owls-rotate-their-heads-270-degrees-without-dying'),
  ('owl-head-270', 'de', 2, 'California Academy of Sciences: Head-Spinning Birds', 'https://calacademy.org/explore-science/head-spinning-birds'),
  ('owl-head-270', 'de', 3, 'World of Owls: Eyes and Vision', 'https://worldofowls.com/eyes');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'owl-head-270', 'en', 'owls-turn-heads-270-degrees',
  'Owls turn their heads up to 270 degrees without cutting off their blood supply',
  'If you turned your head that far, you''d be in serious trouble. Owls have several tricks built into their necks.',
  'Owls can rotate their heads up to 270 degrees, and researchers at Johns Hopkins University found out why their brains still get enough blood.',
  'An owl sits on a branch, you walk around the tree, and its head just follows you. It can turn up to 270 degrees in either direction, well past three quarters of a full circle.

## Why owls need to turn their heads at all

The owl has no choice. According to World of Owls, its eyes aren''t round eyeballs but long tubes held in place by a bony ring. It can''t roll its eyes and can only look straight ahead. If it wants to look left, it has to turn its whole head.

Its neck is built for that. It has 14 neck vertebrae, twice as many as yours, which makes it very flexible. But flexibility alone doesn''t explain why such a twist doesn''t cut off the blood supply to the owl''s brain.

## What researchers found inside an owl''s neck

That is exactly what researchers at Johns Hopkins University wanted to know. According to Mental Floss, medical illustrator Fabian de Kok-Mercado and neuroradiologist Philippe Gailloud examined 12 owls that had died of natural causes, including snowy, barred and great horned owls. To make the vessels visible, they injected contrast dye into them.

They found several adaptations. Under the jaw, owls have blood vessels that can widen like small reservoirs, so blood keeps flowing to the brain and eyes even during an extreme turn. There are also small connections between the major neck arteries that let blood take a detour if one route gets squeezed. And the bony channels that carry an important artery through the neck are much wider in owls than they need to be, giving the artery room to move.

> Bonus fact: According to the California Academy of Sciences, the illustrations from this project won first place in a 2012 National Science Foundation visualization challenge.

## Not a trick, but engineering

What looks like a party trick from a horror movie is really a carefully built system of bone and blood vessels. Humans don''t have that package, so you''re better off sticking to a quick glance over your shoulder.

The owl can''t move its eyes, so evolution simply gave it a swivel head.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('owl-head-270', 'en', 1, 'Nonfiction book about owls', 'owls book nonfiction', 'Explains how owls hunt, hear and see, with lots of photos.'),
  ('owl-head-270', 'en', 2, 'Owl plush toy', 'owl plush stuffed animal', 'Big eyes, soft feathers and a head that thankfully stays put.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('owl-head-270', 'en', 1, 'Mental Floss: How Can Owls Rotate Their Heads 270 Degrees Without Dying?', 'https://www.mentalfloss.com/animals/birds/how-can-owls-rotate-their-heads-270-degrees-without-dying'),
  ('owl-head-270', 'en', 2, 'California Academy of Sciences: Head-Spinning Birds', 'https://calacademy.org/explore-science/head-spinning-birds'),
  ('owl-head-270', 'en', 3, 'World of Owls: Eyes and Vision', 'https://worldofowls.com/eyes');
