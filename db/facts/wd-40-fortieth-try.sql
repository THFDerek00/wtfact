-- WTFact-Fakt „WD-40 ist nach dem 40. Versuch benannt und schützte zuerst Raketen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('wd-40-fortieth-try', '2026-10-14T12:00:00+02:00', 'brands', '🛢️', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wd-40-fortieth-try', 'de', 'wd-40-nach-dem-40-versuch-benannt',
  'WD-40 ist nach dem 40. Versuch benannt und schützte zuerst Raketen',
  'Die Sprühdose aus gefühlt jeder Garage trägt einen Namen, der im Grunde ein Laborergebnis ist.',
  'WD-40 steht für „Water Displacement“ (Wasserverdrängung) und für den 40. Versuch, den eine Firma mit drei Leuten in San Diego 1953 brauchte, um die Formel hinzubekommen.',
  'Die blau-gelbe Dose in deiner Garage hat einen Namen, der wie ein Geheimcode klingt. In Wahrheit ist er einfach ein Laborergebnis.

## Drei Leute, ein kleines Labor

1953 bestand die Rocket Chemical Company in San Diego, Kalifornien, aus gerade mal drei Leuten. In einem kleinen Labor wollten sie Rostschutzmittel und Entfetter für die Luft- und Raumfahrtindustrie entwickeln. Gesucht war eine Formel, die Wasser von Metall verdrängt.

Bis es klappte, brauchten sie 40 Versuche. Daher kommt der Name: WD steht für „Water Displacement“, also Wasserverdrängung, und die 40 für den Versuch, der endlich funktionierte.

## Gebaut für Raketen, mitgenommen nach Hause

Als Erstes setzte es Convair ein, ein Luft- und Raumfahrtunternehmen in San Diego, und schützte damit die Außenhaut der Atlas-Rakete vor Rost und Korrosion. Laut der Firmengeschichte wirkte das Zeug so gut, dass mehrere Angestellte Dosen mit nach Hause nahmen.

Gründer Norm Larsen erkannte das Potenzial. Er testete das Mittel in Sprühdosen, weil er dachte, dass auch ganz normale Leute es zu Hause gebrauchen könnten. 1958 stand WD-40 zum ersten Mal in Läden in San Diego im Regal.

Die Firma blieb erst mal winzig. 1960 war sie auf gerade einmal sieben Leute gewachsen, die im Schnitt 45 Kartons am Tag an Baumärkte und Sportgeschäfte rund um San Diego verkauften, direkt aus dem Kofferraum ihrer Autos. 1969 legte Rocket Chemical den alten Namen ab und benannte sich nach seinem einzigen Produkt: WD-40 Company.

> Bonusfakt: Laut Firmenangaben stand WD-40 im Jahr 1993 in 4 von 5 US-Haushalten, und pro Woche wurden mehr als eine Million Dosen verkauft.

Und das alles nur, weil ein Team nach Versuch 39 nicht aufgegeben hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wd-40-fortieth-try', 'de', 1, 'WD-40 Smart Straw Multifunktionsspray', 'WD-40 Smart Straw Multifunktionsspray', 'Das klassische Spray mit klappbarem Röhrchen, das nicht mehr verloren geht.'),
  ('wd-40-fortieth-try', 'de', 2, 'Retro-Blechschild für die Garage', 'Retro Blechschild Garage', 'Gibt der Werkstatt- oder Garagenwand einen Vintage-Look.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wd-40-fortieth-try', 'de', 1, 'WD-40: WD-40 History | Learn the Stories Behind the WD-40 Brand', 'https://www.wd40.com/history/'),
  ('wd-40-fortieth-try', 'de', 2, 'Encyclopedia.com: WD-40 Company', 'https://www.encyclopedia.com/social-sciences-and-law/economics-business-and-labor/businesses-and-occupations/wd-40-company');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wd-40-fortieth-try', 'en', 'wd-40-named-after-40th-try',
  'WD-40 is named after attempt number 40, and it started out on missiles',
  'The spray can in half the world''s garages carries a name that is basically a lab result.',
  'WD-40 stands for “Water Displacement” and the 40th attempt it took a three-person company in San Diego to perfect the formula in 1953.',
  'That blue and yellow can in your garage has a name that sounds like a secret code. It''s actually just a lab result.

## Three people, one small lab

In 1953, the Rocket Chemical Company in San Diego, California, had a staff of three. Working in a small lab, they set out to make rust-prevention solvents and degreasers for the aerospace industry. What they needed was a formula that pushes water away from metal.

It took them 40 attempts to get it right. That''s where the name comes from: WD stands for “Water Displacement”, and 40 for the attempt that finally worked.

## Built for missiles, taken home in pockets

The first to use it was Convair, an aerospace contractor in San Diego. It used the product to protect the outer skin of the Atlas missile from rust and corrosion. According to the company''s own history, it worked so well that several employees took cans home with them.

Founder Norm Larsen noticed the potential. He tested the product in aerosol cans, figuring that regular people could use it at home too. In 1958, WD-40 reached store shelves in San Diego for the first time.

The company stayed tiny for a while. In 1960 it had grown to just seven people, who sold an average of 45 cases a day to hardware and sporting goods stores in the San Diego area, straight out of the trunks of their cars. In 1969, Rocket Chemical gave up its old name and renamed itself after its only product: WD-40 Company.

> Bonus fact: According to the company, WD-40 was in 4 out of 5 American households by 1993, and it was selling more than one million cans a week.

All of that rests on a team that didn''t stop at attempt 39.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wd-40-fortieth-try', 'en', 1, 'WD-40 Smart Straw multi-use spray', 'WD-40 Smart Straw multi-use spray', 'The classic spray with a flip-up straw, so the thin tube doesn''t get lost.'),
  ('wd-40-fortieth-try', 'en', 2, 'Retro garage tin sign', 'retro garage tin sign', 'Gives a workshop or garage wall a vintage look.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wd-40-fortieth-try', 'en', 1, 'WD-40: WD-40 History | Learn the Stories Behind the WD-40 Brand', 'https://www.wd40.com/history/'),
  ('wd-40-fortieth-try', 'en', 2, 'Encyclopedia.com: WD-40 Company', 'https://www.encyclopedia.com/social-sciences-and-law/economics-business-and-labor/businesses-and-occupations/wd-40-company');
