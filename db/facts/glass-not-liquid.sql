-- WTFact-Fakt „Nein, Glas ist keine Flüssigkeit, die langsam nach unten fließt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('glass-not-liquid', '2026-09-01', 'science', '🪟', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'glass-not-liquid', 'de', 'glas-fliesst-nicht',
  'Nein, Glas ist keine Flüssigkeit, die langsam nach unten fließt',
  'Alte Kirchenfenster sind unten dicker. Der Grund dafür ist viel banaler als flüssiges Glas.',
  'Altes Fensterglas ist nicht nach unten geflossen. Es war von Anfang an ungleichmäßig, und die dicke Seite kam meist nach unten.',
  'Vielleicht hast du es auch schon mal gehört, vielleicht sogar in der Schule: Glas sei eigentlich eine extrem zähe Flüssigkeit. Der Beweis? Uralte Kirchenfenster sind unten dicker als oben, weil das Glas über Jahrhunderte nach unten gesackt ist. Klingt logisch. **Ist aber falsch.**

## Was wirklich hinter den dicken Scheiben steckt

Richtig ist: Manche alten Fensterscheiben sind tatsächlich unten dicker. Das liegt aber an ihrer Herstellung. Früher konnte man schlicht keine perfekt gleichmäßigen Scheiben produzieren. Die Glasmacher fertigten das Glas von Hand, und das Ergebnis hatte unebene Oberflächen und schwankende Dicken.

Wer so eine Scheibe einbaute, setzte laut Scientific American **die dickere Seite meistens nach unten**. Das wirkte stabiler. Jahrhunderte später sah es dann so aus, als wäre das Glas geschmolzen.

Wirklich glatte, gleichmäßig dicke Scheiben gibt es erst seit dem Floatglas-Verfahren, das laut Wikipedia ab den 1960er-Jahren breit verfügbar wurde.

## Wie schnell fließt Glas denn nun?

Praktisch gar nicht. Eine Studie von 2017 untersuchte mittelalterliches Glas aus der Westminster Abbey in London, datiert auf das Jahr 1268. Ergebnis laut Wikipedia: **Bei Raumtemperatur fließt solches Glas höchstens etwa 1 Nanometer pro Milliarde Jahre.** Das ist nicht messbar, nicht sichtbar, nicht relevant.

Scientific American bringt es noch drastischer auf den Punkt: Damit Kirchenglas bei Raumtemperatur so aussieht, als wäre es geschmolzen, würde es länger dauern, als das Universum existiert.

## Fest, aber ohne Ordnung

Was ist Glas dann? Fachleute nennen es einen **amorphen Festkörper**. In einem Kristall, etwa Salz oder Eis, sind die Atome in einem regelmäßigen Gitter angeordnet. Im Glas fehlt diese Fernordnung. Die Atome sitzen kreuz und quer, ähnlich wie in einer Flüssigkeit, bewegen sich aber nicht mehr vom Fleck.

> Uralte Glasgefäße aus dem alten Ägypten zeigen laut Scientific American keinerlei Durchhängen, obwohl sie noch viel älter sind als jedes Kirchenfenster.

Glas ist also kein Honig in Zeitlupe. Es ist einfach ein Festkörper mit sehr unordentlichen Atomen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('glass-not-liquid', 'de', 1, 'Bleiglas-Fensterbild zum Aufhängen', 'Bleiglas Fensterbild Tiffany Suncatcher', 'Bringt ein bisschen Kirchenfenster-Feeling ans eigene Fenster, wenn die Sonne durchscheint.'),
  ('glass-not-liquid', 'de', 2, 'Stuff Matters von Mark Miodownik (Sachbuch über Materialien)', 'Mark Miodownik Stuff Matters', 'Ein Materialforscher erklärt Glas, Stahl, Beton und Co. so unterhaltsam, dass man nicht aufhören will.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('glass-not-liquid', 'de', 1, 'Wikipedia: Glass', 'https://en.wikipedia.org/wiki/Glass'),
  ('glass-not-liquid', 'de', 2, 'Scientific American: Fact or Fiction?: Glass Is a (Supercooled) Liquid', 'https://www.scientificamerican.com/article/fact-fiction-glass-liquid/'),
  ('glass-not-liquid', 'de', 3, 'DoITPoMS, University of Cambridge: Do Cathedral Glasses Flow?', 'https://www.doitpoms.ac.uk/tlplib/glass-transition/myth.php');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'glass-not-liquid', 'en', 'glass-does-not-flow',
  'No, glass isn''t a liquid slowly dripping down your windows',
  'Old church windows are thicker at the bottom. The reason is way more boring than liquid glass.',
  'Old window glass didn''t flow downward. It was uneven from the start, and the thick side usually went at the bottom.',
  'Maybe you''ve heard it too, maybe even in school: glass is secretly an extremely thick liquid. The proof? Ancient church windows are thicker at the bottom than at the top, because the glass has been sagging for centuries. Sounds logical. **It''s also wrong.**

## What''s really behind those thick panes

Here''s the true part: some old windowpanes really are thicker at the bottom. But that comes from how they were made. Back then, nobody could produce perfectly even panes. Glassmakers worked by hand, and the result had imperfect surfaces and uneven thickness.

According to Scientific American, whoever installed a pane like that **usually put the thicker side at the bottom**. It seemed sturdier. Centuries later, it looked as if the glass had melted.

Truly smooth panes with an even thickness only arrived with the float glass process, which according to Wikipedia became widely available starting in the 1960s.

## So how fast does glass flow?

Practically not at all. A 2017 study looked at medieval glass from Westminster Abbey in London, dated to the year 1268. The result, per Wikipedia: **at room temperature, glass like that flows at most about 1 nanometer per billion years.** That''s not measurable, not visible, not relevant.

Scientific American puts it even more bluntly: for cathedral glass at room temperature to rearrange itself enough to look melted, it would take longer than the universe has existed.

## Solid, but messy

So what is glass? Scientists call it an **amorphous solid**. In a crystal, like salt or ice, atoms are lined up in a regular grid. Glass lacks that long-range order. Its atoms are jumbled up like in a liquid, but they don''t go anywhere anymore.

> Ancient Egyptian glass vessels show no sagging at all, according to Scientific American, even though they''re far older than any church window.

So glass isn''t honey in slow motion. It''s just a solid with very untidy atoms.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('glass-not-liquid', 'en', 1, 'Stained glass window suncatcher', 'stained glass suncatcher window hanging', 'Brings a bit of cathedral-window glow to your own window when the sun hits it.'),
  ('glass-not-liquid', 'en', 2, 'Stuff Matters by Mark Miodownik', 'Stuff Matters Mark Miodownik', 'A materials scientist explains glass, steel, concrete and more so well you won''t want to stop reading.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('glass-not-liquid', 'en', 1, 'Wikipedia: Glass', 'https://en.wikipedia.org/wiki/Glass'),
  ('glass-not-liquid', 'en', 2, 'Scientific American: Fact or Fiction?: Glass Is a (Supercooled) Liquid', 'https://www.scientificamerican.com/article/fact-fiction-glass-liquid/'),
  ('glass-not-liquid', 'en', 3, 'DoITPoMS, University of Cambridge: Do Cathedral Glasses Flow?', 'https://www.doitpoms.ac.uk/tlplib/glass-transition/myth.php');
