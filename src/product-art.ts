// Bild für eine Werbe-Kachel (Wunsch von Eric, 2026-10-09): Statt des Fakt-Emojis zeigt jede Kachel ein Emoji,
// das zum beworbenen Artikel passt. Produktfotos von Amazon gibt es ohne Product Advertising API nicht,
// deshalb wird das Emoji aus dem Produktnamen abgeleitet (Deutsch und Englisch).
// Bücher, Filme und Bildbände zeigen 📚 bzw. 🎬 groß und das Thema klein daneben.
// Neue Produkte ohne Treffer bekommen 🛍️; dann hier eine Regel ergänzen. Reihenfolge zählt: Erste passende Regel gewinnt.

const RULES: [RegExp, string][] = [
  // Tiere (vor Kuscheltier, damit der Hai ein Hai bleibt)
  [/bärtierchen|tardigrade/, '🦠'],
  [/mikrobe|microbe|bakteri|gefährten|multitudes/, '🦠'],
  [/fangschreckenkrebs|mantis shrimp/, '🦐'],
  [/\bhai|shark/, '🦈'],
  [/flamingo/, '🦩'],
  [/oktopus|octopus|krake|other minds/, '🐙'],
  [/qualle|jellyfish|spineless/, '🪼'],
  [/koala/, '🐨'],
  [/kamel|camel/, '🐫'],
  [/elefant|elephant/, '🐘'],
  [/otter/, '🦦'],
  [/frosch|frog/, '🐸'],
  [/einhorn|unicorn/, '🦄'],
  [/stachelschwein|porcupine/, '🦔'],
  [/meerschwein|guinea pig/, '🐹'],
  [/collie|\bhund|\bdog/, '🐕'],
  [/wombat/, '🐾'],
  [/braunbär|\bbär|\bbear\b/, '🐻'],
  [/raben|crow|vogel|vögel|bird/, '🐦'],
  [/quietscheente|rubber duck/, '🦆'],
  [/meerestier|ocean animal|unterwasser|underwater/, '🐠'],
  // Weltall
  [/frozen planet|antarkti|antarctica|endurance|lansing|635 tage/, '🧊'],
  [/darkness|biolumin/, '✨'],
  [/teleskop|telescope/, '🔭'],
  [/fernglas|binocular/, '🔭'],
  [/mikroskop|microscope/, '🔬'],
  [/lupe|magnifying/, '🔍'],
  [/apollo|raumstation|space station|nasa|saturn v/, '🚀'],
  [/\bmond|\bmoon/, '🌕'],
  [/\bmars|planet|sonnensystem|solar system/, '🪐'],
  [/sternenhimmel|sternkarte|leuchtsterne|star projector|star finder|planisphere|ceiling stars|astrophysi/, '🌌'],
  // Technik
  [/tastatur|keyboard/, '⌨️'],
  [/\bmaus|\bmouse/, '🖱️'],
  [/\bssd/, '💾'],
  [/webcam/, '📷'],
  [/stativ|tripod/, '🤳'],
  [/handy|flip phone|cell phone/, '📱'],
  [/konsole|console|videospiel|video game|nintendo|game over/, '🎮'],
  [/wlan|wi-fi|repeater|range extender/, '📶'],
  [/scanner/, '🖨️'],
  [/radio/, '📻'],
  [/roboter|robot|r\.u\.r/, '🤖'],
  [/plasma/, '⚡'],
  [/sturmglas|storm glass/, '⛈️'],
  [/internet|wizards stay up|innovator/, '🌐'],
  [/computer|hopper/, '💻'],
  // Essen
  [/sterneküche|fine dining/, '🍽️'],
  [/kaffee|coffee/, '☕'],
  [/honig|honey/, '🍯'],
  [/pizza/, '🍕'],
  [/sushi|japan/, '🍣'],
  [/zuckerwatte|cotton candy/, '🍭'],
  [/schokolade|chocolate/, '🍫'],
  [/glückskeks|fortune cookie/, '🥠'],
  [/keks|cookie/, '🍪'],
  [/eis-am-stiel|eis-rezept|ice pop|popsicle/, '🍦'],
  [/kuchen|torte|springform|cake/, '🎂'],
  [/muskat|nutmeg|gewürz|spice/, '🧂'],
  [/pistazie|pistachio|cashew|erdnuss|peanut|nuss|nüss|\bnut/, '🥜'],
  [/ananas|pineapple/, '🍍'],
  [/banane|banana/, '🍌'],
  [/tomate|tomato/, '🍅'],
  [/karotte|carrot|gemüse|vegetable/, '🥕'],
  [/salat|salad/, '🥗'],
  [/vanille|vanilla/, '🌼'],
  [/tortilla|nacho/, '🌮'],
  [/grill|spieß|rotisserie/, '🍢'],
  [/snack|chip/, '🍿'],
  [/küchenchemie|kitchen chemistry/, '🧪'],
  [/essen|food|sterneküche|fine dining/, '🍽️'],
  // Pflanzen
  [/bambus|bamboo/, '🎋'],
  [/palme|palm/, '🌴'],
  [/orchidee|orchid/, '🌸'],
  [/baum|bäume|wald|tree|forest/, '🌳'],
  [/saat|samen|seed|botanik|botany|pflanze|plant/, '🌱'],
  // Sport und Spiel
  [/basketball/, '🏀'],
  [/volleyball/, '🏐'],
  [/tischtennis|table tennis/, '🏓'],
  [/tennis|wimbledon/, '🎾'],
  [/kicker|foosball|fußball|football|world cup/, '⚽'],
  [/putting|golf/, '⛳'],
  [/marathon/, '🏃'],
  [/tauzieh|tug of war/, '🪢'],
  [/medaille|medal|olympi|goldmünze|gold coin/, '🏅'],
  [/münz|coin|geld|money/, '🪙'],
  [/hanafuda|kartenspiel|card deck/, '🎴'],
  [/scrabble/, '🔤'],
  [/monopoly|brettspiel|board game/, '🎲'],
  [/puzzle/, '🧩'],
  [/knet|play-doh|play dough/, '🎨'],
  [/fidget|pop it|luftpolster|bubble wrap/, '🫧'],
  // Körper
  [/gehirn|brain|kopfmassage|head massager/, '🧠'],
  [/auge|\beye/, '👁️'],
  [/darm|\bgut\b/, '🦠'],
  [/sinne|senses|immense world/, '👃'],
  [/hand|muskel|muscle/, '💪'],
  [/anatomie|anatomy|skelett|skeleton|neandert/, '🦴'],
  [/fingerabdruck|fingerprint|detektiv|detective/, '🕵️'],
  // Orte und Geschichte
  [/ampelm/, '🚦'],
  [/eiffel/, '🗼'],
  [/pyramide|pyramid|kleopatra|cleopatra/, '🏛️'],
  [/petersdom|st\. peter|vatikan|latein|latin/, '⛪'],
  [/röm|roman|spqr/, '🏛️'],
  [/azteken|aztec/, '🗿'],
  [/wikinger|viking/, '⛵'],
  [/spitzbergen|svalbard|himalaya|winter/, '🏔️'],
  [/schiff|segel|sailboat|ship/, '⛵'],
  [/trabant|modellauto|model car/, '🚗'],
  [/napoleon|zweispitz|bicorne/, '🎩'],
  [/schottland|scotland|gomera|kanarisch|canary|reiseführer|travel guide|wüste|desert/, '🧳'],
  [/karte|\bmap\b|kompass|compass|globus/, '🧭'],
  [/bergleute|miners|the 33/, '⛑️'],
  [/zeitleiste|timeline|kalender|calendar|erfindung|invention/, '⏳'],
  [/ddr|east german|einheit|reunification/, '🧱'],
  [/lego/, '🧱'],
  // Sprache und Schrift
  [/kalligrafie|calligraphy/, '🖋️'],
  [/winchester|professor/, '📖'],
  [/emoji/, '😂'],
  [/\bok\b|\bok:/, '👌'],
  [/schrift|writing|alphabet|typogra|wörterbuch|dictionary|sprache|language|wörter|words|etymolog|toki pona|slang/, '🔤'],
  [/notizbuch|notebook/, '📓'],
  [/byron|gedicht|poetry|austen|northanger/, '✒️'],
  // Dinge
  [/lampe|lamp|neon|light/, '💡'],
  [/kissen|pillow/, '🛋️'],
  [/fensterbild|stained glass|suncatcher/, '🪟'],
  [/materialien|stuff matters/, '🧱'],
  [/schüssel|bowl|schale|schneidebrett|cutting board|halter|hanger|spender|dispenser|korb|basket/, '🥣'],
  [/poster/, '🖼️'],
];

// Bücher (auch Bildbände und Titel mit Autor), Filme und Dokus.
const FILM = /dvd|blu-ray|\bdoku\b|documentary|\bfilm\b|movie/;
const BOOK = /buch|book|bildband|biografie|biography|ratgeber|guide|reiseführer|wörterbuch|dictionary|atlas|encyclopedia|gedichtband|poetry collection|collection|\bvon [A-ZÄÖÜ]|\bby [A-Z]|„|“|^the |^das |^die |^der |^darm|^gut by|^spqr|^r\.u\.r|^endurance by|^winter world|^stuff matters|^cleopatra:|^napoleon:|^ok:|^toki pona|^lost moon|^northanger|^neanderthal|^an immense|^spineless|^other minds|^game over|^gifts of|^through the|^astrophysi|^below the|^i contain|^where wizards|^winzige|^im spiegel|^alfred lansing|^kleopatra:|^die innovatoren/i;

// Haben „Buch“ im Namen, sind aber keine Bücher.
const NOT_BOOK = /scanner|gästebuch|guest book|buchstaben|springform|lego|neonschild|neon sign|notizbuch|notebook/;

export type ProductArt = { main: string; topic?: string };

const topicOf = (name: string) => RULES.find(([re]) => re.test(name))?.[1];

export function productArt(name: string): ProductArt {
  const lower = name.toLowerCase();
  // „Kochbuch“, „Malbuch“ usw. zählen als Buch, Spielzeug mit „Buch“ im Namen gibt es nicht.
  if (FILM.test(lower)) return { main: '🎬', topic: topicOf(lower) };
  if (!NOT_BOOK.test(lower) && (BOOK.test(name) || BOOK.test(lower))) {
    const topic = /malbuch|coloring/.test(lower) ? '🖍️' : topicOf(lower);
    return { main: '📚', topic };
  }
  return { main: topicOf(lower) ?? '🛍️' };
}
