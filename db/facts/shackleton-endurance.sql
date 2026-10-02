-- WTFact-Fakt „Das Packeis zerdrückte ihr Schiff, und trotzdem überlebten alle 28 Männer“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('shackleton-endurance', '2026-08-29', 'survival', '🚣', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'shackleton-endurance', 'de', 'shackleton-endurance-alle-ueberlebt',
  'Das Packeis zerdrückte ihr Schiff, und trotzdem überlebten alle 28 Männer',
  'Shackletons Endurance-Expedition scheiterte an ihrem Ziel. Dafür wurde daraus eine der berühmtesten Rettungsgeschichten der Polarforschung.',
  'Nachdem das Packeis ihr Schiff Endurance zerdrückt hatte, überlebten alle 28 Männer von Shackletons Weddellmeer-Gruppe.',
  'Der Plan war groß: Ernest Shackleton wollte mit seiner Mannschaft als Erster die Antarktis zu Fuß durchqueren. Daraus wurde nichts. Stattdessen entstand eine Geschichte, die bis heute erzählt wird, weil sie so unwahrscheinlich gut ausgeht.

## Gefangen im Weddellmeer

Im Januar 1915 fror die Endurance im Packeis des Weddellmeers fest. Monatelang trieb das Schiff mit dem Eis, während der Druck der Schollen den Rumpf langsam zerdrückte. Ende Oktober 1915 mussten die Männer an Bord aussteigen, im November versank die Endurance.

**28 Männer standen jetzt auf dem Eis**, mit Zelten, Vorräten und drei Rettungsbooten. Sie lebten monatelang auf treibenden Schollen. Als das Eis aufbrach, ruderten sie los und erreichten im April 1916 Elephant Island, eine kahle Insel ohne jede Aussicht auf zufällige Rettung.

## 800 Meilen im Rettungsboot

Shackleton entschied, Hilfe zu holen. Am 24. April 1916 brach er mit 5 Männern in der **James Caird** auf, einem nur 22,5 Fuß langen Rettungsboot, also knapp 7 Meter. Ziel: Südgeorgien, rund 800 Meilen entfernt. Nach gut 2 Wochen auf dem Südpolarmeer kamen sie an.

Allerdings auf der falschen Seite der Insel. Also überquerten Shackleton, Tom Crean und Frank Worsley die unkartierten Berge und Gletscher. **36 Stunden waren sie am Stück unterwegs**, bis sie am 20. Mai 1916 die Walfangstation Stromness erreichten.

## Die Rettung

Die 22 Männer auf Elephant Island mussten noch Monate warten. Erst nach mehreren Anläufen holte Shackleton sie am 30. August 1916 mit dem chilenischen Schlepper Yelcho ab. **Alle 28 Männer der Weddellmeer-Gruppe hatten überlebt.**

Zur Expedition gehörte übrigens noch eine zweite Gruppe auf der anderen Seite des Kontinents, die Rossmeer-Gruppe. Ihre Geschichte verlief getrennt davon und ist eine eigene.

> Das Wrack der Endurance wurde am 5. März 2022 im Weddellmeer wiederentdeckt, mehr als 100 Jahre nach dem Untergang.

Das Ziel verfehlt, das Schiff verloren, aber die ganze Crew zurückgebracht. Manchmal ist genau das die größere Leistung.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('shackleton-endurance', 'de', 1, 'Alfred Lansing: 635 Tage im Eis', 'Alfred Lansing 635 Tage im Eis', 'Der Klassiker über die Endurance-Expedition, erzählt nach Tagebüchern und Gesprächen mit den Teilnehmern.'),
  ('shackleton-endurance', 'de', 2, 'Modellbausatz Segelschiff Endurance', 'Endurance Shackleton Schiff Modellbausatz', 'Ein Bausatz des berühmten Polarschiffs für alle, die gern basteln und Geschichte ins Regal stellen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('shackleton-endurance', 'de', 1, 'Wikipedia: Imperial Trans-Antarctic Expedition', 'https://en.wikipedia.org/wiki/Imperial_Trans-Antarctic_Expedition'),
  ('shackleton-endurance', 'de', 2, 'Smithsonian Magazine: Reliving Shackleton''s Epic Endurance Expedition', 'https://www.smithsonianmag.com/history/reliving-shackletons-epic-endurance-expedition-102707360/'),
  ('shackleton-endurance', 'de', 3, 'Royal Museums Greenwich: Sir Ernest Shackleton', 'https://www.rmg.co.uk/stories/maritime-history/sir-ernest-shackleton');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'shackleton-endurance', 'en', 'shackleton-endurance-all-survived',
  'Pack ice crushed their ship, and all 28 men still survived',
  'Shackleton''s Endurance expedition never reached its goal. Instead it became one of the most famous rescue stories in polar history.',
  'After pack ice crushed their ship Endurance, all 28 men of Shackleton''s Weddell Sea party survived.',
  'The plan was huge: Ernest Shackleton and his crew wanted to be the first to cross Antarctica on foot. That never happened. Instead, they ended up in a story people still tell today, because it ends so improbably well.

## Stuck in the Weddell Sea

In January 1915, Endurance got locked in the pack ice of the Weddell Sea. For months the ship drifted with the ice while the pressure of the floes slowly crushed its hull. In late October 1915 the men had to abandon ship, and in November Endurance sank.

**Now 28 men were standing on the ice**, with tents, supplies and three lifeboats. They lived on drifting floes for months. When the ice finally broke up, they rowed off and reached Elephant Island in April 1916, a barren island where nobody was going to stumble across them.

## 800 miles in a lifeboat

Shackleton decided to go for help. On April 24, 1916, he set out with 5 men in the **James Caird**, a lifeboat just 22.5 feet long. The goal: South Georgia, about 800 miles away. After a little over 2 weeks on the Southern Ocean, they made it.

On the wrong side of the island, though. So Shackleton, Tom Crean and Frank Worsley crossed its uncharted mountains and glaciers. **They kept going for 36 hours straight** until they reached the Stromness whaling station on May 20, 1916.

## The rescue

The 22 men on Elephant Island still had months to wait. After several attempts, Shackleton finally picked them up on August 30, 1916, aboard the Chilean tug Yelcho. **All 28 men of the Weddell Sea party had survived.**

The expedition also had a second group on the other side of the continent, the Ross Sea party. Its story played out separately and is a different one.

> The wreck of Endurance was rediscovered in the Weddell Sea on March 5, 2022, more than 100 years after it sank.

Goal missed, ship lost, but the whole crew brought home. Sometimes that''s the bigger achievement.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('shackleton-endurance', 'en', 1, 'Endurance by Alfred Lansing', 'Endurance Shackleton''s Incredible Voyage Alfred Lansing', 'The classic account of the expedition, built from diaries and interviews with the men who were there.'),
  ('shackleton-endurance', 'en', 2, 'Endurance ship model kit', 'Shackleton Endurance ship model kit', 'A build-it-yourself version of the famous polar ship, for anyone who likes putting history on a shelf.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('shackleton-endurance', 'en', 1, 'Wikipedia: Imperial Trans-Antarctic Expedition', 'https://en.wikipedia.org/wiki/Imperial_Trans-Antarctic_Expedition'),
  ('shackleton-endurance', 'en', 2, 'Smithsonian Magazine: Reliving Shackleton''s Epic Endurance Expedition', 'https://www.smithsonianmag.com/history/reliving-shackletons-epic-endurance-expedition-102707360/'),
  ('shackleton-endurance', 'en', 3, 'Royal Museums Greenwich: Sir Ernest Shackleton', 'https://www.rmg.co.uk/stories/maritime-history/sir-ernest-shackleton');
