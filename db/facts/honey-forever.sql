-- WTFact-Fakt „Dieser Honig ist 3.000 Jahre alt. Und er soll noch essbar sein.“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('honey-forever', '2026-09-30', 'science', '🍯', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'honey-forever', 'de', 'honig-verdirbt-nie',
  'Dieser Honig ist 3.000 Jahre alt. Und er soll noch essbar sein.',
  'In ägyptischen Gräbern fanden Archäologen Honig, der noch genießbar gewesen sein soll. Warum verdirbt ausgerechnet Honig nicht?',
  'Honig kann Jahrtausende überdauern, weil Bakterien darin buchstäblich verdursten.',
  'Archäologen, die altägyptische Gräber untersuchten, stießen immer wieder auf Tongefäße mit Honig. Das Absurde: **Der Honig soll nach rund 3.000 Jahren noch essbar gewesen sein.** Fast jedes andere Lebensmittel wäre längst zu Staub zerfallen oder hätte sich in etwas verwandelt, das man nicht mal anfassen möchte.

## Der Trick: Bakterien verdursten

Honig besteht zu etwa 80 Prozent aus Zucker und enthält nur rund 17 Prozent Wasser. Das klingt harmlos, ist für Mikroorganismen aber eine Todeszone. Zucker zieht Wasser an. Landet ein Bakterium im Honig, wird ihm das Wasser regelrecht aus den Zellen gesaugt. **Es vertrocknet, bevor es sich vermehren kann.**

Dass so wenig Wasser drin ist, haben die Bienen selbst erledigt. Frischer Nektar ist ziemlich flüssig. Im Stock fächeln die Bienen mit ihren Flügeln so lange Luft darüber, bis ein großer Teil des Wassers verdunstet ist. Erst dann verschließen sie die Wabe mit Wachs.

## Plan B: Säure und ein eingebautes Desinfektionsmittel

Damit nicht genug. Honig ist ziemlich sauer, sein pH-Wert liegt meist etwa zwischen 3,5 und 4,5, ähnlich wie bei Orangensaft. Und Bienen geben ein Enzym namens Glucoseoxidase dazu. Kommt ein bisschen Feuchtigkeit an den Honig, entsteht daraus **Wasserstoffperoxid**, dasselbe Zeug, das in manchen Desinfektionsmitteln steckt.

> Zucker, Säure und Wasserstoffperoxid: Bienen haben im Grunde ein dreifach gesichertes Konservierungssystem erfunden.

## Der Haken

Ganz ewig hält Honig nur, wenn er gut verschlossen ist. Offen gelassen zieht er Wasser aus der Luft, und dann kann er doch gären. Kristallisiert er, ist das übrigens kein Zeichen von Verderb: Ein warmes Wasserbad, und er ist wieder flüssig.

Der Honig in deinem Küchenschrank wird dich also vermutlich überleben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('honey-forever', 'de', 1, 'Honigspender aus Glas', 'Honigspender Glas tropffrei', 'Kein klebriger Löffel mehr. Dein fast unsterblicher Honig verdient ein besseres Zuhause.'),
  ('honey-forever', 'de', 2, 'Honig-Probierset', 'Honig Probierset Geschenk', 'Akazie, Wald, Manuka: Teste selbst, wie unterschiedlich das ''ewige Lebensmittel'' schmeckt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('honey-forever', 'de', 1, 'Wikipedia: Honig', 'https://de.wikipedia.org/wiki/Honig'),
  ('honey-forever', 'de', 2, 'Smithsonian Magazine: The Science Behind Honey’s Eternal Shelf Life', 'https://www.smithsonianmag.com/science-nature/the-science-behind-honeys-eternal-shelf-life-1218690/'),
  ('honey-forever', 'de', 3, 'Healthline: Does Honey Ever Go Bad? What You Should Know', 'https://www.healthline.com/nutrition/does-honey-go-bad');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'honey-forever', 'en', 'honey-never-spoils',
  'This honey is 3,000 years old. And it is said to still be edible.',
  'Archaeologists reportedly found honey in Egyptian tombs that was still edible. Why does honey, of all things, never go bad?',
  'Honey can last for thousands of years because bacteria literally die of thirst in it.',
  'Archaeologists excavating ancient Egyptian tombs kept finding clay pots filled with honey. The absurd part: **the honey was reportedly still edible after around 3,000 years.** Almost any other food would have turned to dust long ago, or into something you wouldn''t want to touch.

## The trick: bacteria die of thirst

Honey is about 80 percent sugar and only around 17 percent water. That sounds harmless, but for microbes it''s a death zone. Sugar pulls in water. When a bacterium lands in honey, the water gets sucked right out of its cells. **It dries out before it can multiply.**

That low water content is the bees'' own work. Fresh nectar is pretty runny. Back in the hive, bees fan their wings over it until much of the water has evaporated. Only then do they seal the comb with wax.

## Plan B: acid and a built-in disinfectant

That''s not all. Honey is pretty acidic, with a pH typically around 3.5 to 4.5, similar to orange juice. And bees add an enzyme called glucose oxidase. When a little moisture gets in, it produces **hydrogen peroxide**, the same stuff found in some disinfectants.

> Sugar, acid and hydrogen peroxide: bees basically invented a triple-locked preservation system.

## The catch

Honey only lasts forever if it''s sealed. Left open, it pulls water from the air and can eventually ferment. And if it crystallizes, that''s not spoilage: a warm water bath and it''s runny again.

So the honey in your kitchen cupboard will probably outlive you.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('honey-forever', 'en', 1, 'Glass honey dispenser', 'glass honey dispenser no drip', 'No more sticky spoons. Your nearly immortal honey deserves a better home.'),
  ('honey-forever', 'en', 2, 'Honey tasting set', 'honey tasting gift set', 'Acacia, wildflower, manuka: taste for yourself how different the ''eternal food'' can be.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('honey-forever', 'en', 1, 'Wikipedia: Honey', 'https://en.wikipedia.org/wiki/Honey'),
  ('honey-forever', 'en', 2, 'Smithsonian Magazine: The Science Behind Honey’s Eternal Shelf Life', 'https://www.smithsonianmag.com/science-nature/the-science-behind-honeys-eternal-shelf-life-1218690/'),
  ('honey-forever', 'en', 3, 'Healthline: Does Honey Ever Go Bad? What You Should Know', 'https://www.healthline.com/nutrition/does-honey-go-bad');
