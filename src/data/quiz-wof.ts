// „Wahr oder Fake?“: 40 Aussagen (20 wahr, 20 Irrtümer). Typ und Regeln: src/data/quiz.ts.
// Die ersten 20 sind ab dem Start live, danach kommen jeden Samstag 5 neue dazu.
import type { WofItem } from './quiz';

export const WOF: WofItem[] = [
  // Start: 2026-10-10
  {
    id: 'venus-day-longer-than-year',
    from: '2026-10-10',
    cat: 'space',
    answer: true,
    de: {
      q: 'Ein Tag auf der Venus dauert länger als ein Jahr auf der Venus.',
      why: 'Die Venus dreht sich in rund 243 Erdtagen einmal um sich selbst, umrundet die Sonne aber schon in rund 225 Erdtagen.',
    },
    en: {
      q: 'A day on Venus lasts longer than a year on Venus.',
      why: 'Venus takes about 243 Earth days to spin once on its axis, but only about 225 Earth days to orbit the Sun.',
    },
    sources: [{ label: 'NASA: Venus: Facts', url: 'https://science.nasa.gov/venus/venus-facts/' }],
  },
  {
    id: 'great-wall-visible-from-moon',
    from: '2026-10-10',
    cat: 'space',
    answer: false,
    de: {
      q: 'Die Chinesische Mauer kann man vom Mond aus mit bloßem Auge sehen.',
      why: 'Vom Mond aus, über 370.000 km entfernt, sah Neil Armstrong Kontinente, Seen und Wolken, aber kein einziges Bauwerk von Menschen.',
    },
    en: {
      q: 'You can see the Great Wall of China from the Moon with the naked eye.',
      why: 'From the Moon, more than 370,000 km away, Neil Armstrong saw continents, lakes and clouds, but not a single human-made structure.',
    },
    sources: [
      {
        label: "Scientific American: Is China's Great Wall Visible from Space?",
        url: 'https://www.scientificamerican.com/article/is-chinas-great-wall-visible-from-space/',
      },
    ],
  },
  {
    id: 'cleopatra-closer-to-moon-landing',
    from: '2026-10-10',
    cat: 'history',
    answer: true,
    de: {
      q: 'Kleopatra lebte zeitlich näher an der Mondlandung als am Bau der Großen Pyramide.',
      why: 'Kleopatra starb 30 v. Chr., rund 2000 Jahre vor der Mondlandung 1969. Die Große Pyramide stand da schon seit rund 2500 Jahren.',
    },
    en: {
      q: 'Cleopatra lived closer in time to the Moon landing than to the building of the Great Pyramid.',
      why: 'Cleopatra died in 30 BC, about 2,000 years before the 1969 Moon landing. By then the Great Pyramid had stood for about 2,500 years.',
    },
    sources: [
      {
        label: 'Smithsonian Magazine: The University of Oxford Is Older Than the Aztec Empire and Other Facts That Will Change Your Perspective on History',
        url: 'https://www.smithsonianmag.com/smart-news/university-oxford-older-than-aztec-empire-other-facts-will-change-your-perspective-history-1529607/',
      },
      { label: 'Britannica: Cleopatra', url: 'https://www.britannica.com/biography/Cleopatra-queen-of-Egypt' },
    ],
  },
  {
    id: 'viking-horned-helmets',
    from: '2026-10-10',
    cat: 'history',
    answer: false,
    de: {
      q: 'Wikinger trugen im Kampf Helme mit Hörnern.',
      why: 'Der einzige gut erhaltene Wikingerhelm aus Norwegen hat keine Hörner. Das Bild geht vermutlich auf Kostüme zu Wagners „Ring des Nibelungen“ von 1876 zurück.',
    },
    en: {
      q: 'Vikings wore helmets with horns in battle.',
      why: "The only well-preserved Viking helmet found in Norway has no horns. The image probably comes from costumes for Wagner's “Ring of the Nibelung” in 1876.",
    },
    sources: [
      {
        label: "Science Norway: No, the Vikings didn't wear helmets with horns",
        url: 'https://sciencenorway.no/bronze-age-viking-age/no-the-vikings-didnt-wear-helmets-with-horns/1995364',
      },
    ],
  },
  {
    id: 'more-trees-than-milky-way-stars',
    from: '2026-10-10',
    cat: 'nature',
    answer: true,
    de: {
      q: 'Auf der Erde wachsen mehr Bäume, als die Milchstraße Sterne hat.',
      why: 'Eine Studie in „Nature“ schätzt rund 3 Billionen Bäume. Die Milchstraße hat laut NASA etwa 100 bis 400 Milliarden Sterne.',
    },
    en: {
      q: 'There are more trees on Earth than stars in the Milky Way.',
      why: 'A study in “Nature” estimates about 3 trillion trees. According to NASA, the Milky Way has about 100 to 400 billion stars.',
    },
    sources: [
      { label: 'Nature: Mapping tree density at a global scale', url: 'https://www.nature.com/articles/nature14967' },
      {
        label: 'NASA: Our Milky Way Galaxy: How Big is Space?',
        url: 'https://science.nasa.gov/universe/exoplanets/our-milky-way-galaxy-how-big-is-space/',
      },
    ],
  },
  {
    id: 'everest-farthest-from-center',
    from: '2026-10-10',
    cat: 'nature',
    answer: false,
    de: {
      q: 'Der Gipfel des Mount Everest ist der Punkt, der am weitesten vom Erdmittelpunkt entfernt ist.',
      why: 'Die Erde ist am Äquator dicker. Darum liegt der Gipfel des Chimborazo in Ecuador rund 2 km weiter vom Erdmittelpunkt entfernt als der des Everest.',
    },
    en: {
      q: "Mount Everest's summit is the point farthest from Earth's center.",
      why: "Earth bulges at the equator. That puts the summit of Chimborazo in Ecuador about 2 km farther from Earth's center than Everest's.",
    },
    sources: [
      {
        label: "NOAA: What is the highest point on Earth as measured from Earth's center?",
        url: 'https://oceanservice.noaa.gov/facts/highestpoint.html',
      },
    ],
  },
  {
    id: 'scotland-unicorn',
    from: '2026-10-10',
    cat: 'history',
    answer: true,
    de: {
      q: 'Das Nationaltier von Schottland ist das Einhorn.',
      why: 'Das Einhorn ist offiziell Schottlands Nationaltier. Schon vor 1603 hielten zwei Einhörner das schottische Königswappen.',
    },
    en: {
      q: "Scotland's national animal is the unicorn.",
      why: "The unicorn is Scotland's official national animal. Even before 1603, two unicorns held up the Scottish royal coat of arms.",
    },
    sources: [
      {
        label: "National Trust for Scotland: The unicorn – Scotland's national animal",
        url: 'https://www.nts.org.uk/stories/the-unicorn-scotlands-national-animal',
      },
    ],
  },
  {
    id: 'lightning-same-place-twice',
    from: '2026-10-10',
    cat: 'science',
    answer: false,
    de: {
      q: 'Ein Blitz schlägt nie zweimal an derselben Stelle ein.',
      why: 'Blitze treffen hohe, spitze Objekte oft immer wieder. Das Empire State Building wird im Schnitt rund 23-mal pro Jahr getroffen.',
    },
    en: {
      q: 'Lightning never strikes the same place twice.',
      why: 'Lightning often hits tall, pointed objects again and again. The Empire State Building is struck about 23 times a year on average.',
    },
    sources: [{ label: 'National Weather Service: Lightning Myths', url: 'https://www.weather.gov/safety/lightning-myths' }],
  },
  {
    id: 'koala-fingerprints',
    from: '2026-10-10',
    cat: 'animals',
    answer: true,
    de: {
      q: 'Koalas haben Fingerabdrücke, die menschlichen zum Verwechseln ähnlich sehen.',
      why: 'Forschende der University of Adelaide entdeckten 1996, dass man Koala-Abdrücke selbst unter dem Mikroskop kaum von unseren unterscheiden kann.',
    },
    en: {
      q: "Koalas have fingerprints that look almost exactly like humans'.",
      why: 'Researchers at the University of Adelaide found in 1996 that koala prints are hard to tell apart from ours, even under a microscope.',
    },
    sources: [
      {
        label: 'Live Science: Koalas Have Human-like Fingerprints',
        url: 'https://www.livescience.com/14007-koalas-human-fingerprints.html',
      },
    ],
  },
  {
    id: 'brain-ten-percent',
    from: '2026-10-10',
    cat: 'mind',
    answer: false,
    de: {
      q: 'Menschen nutzen nur 10 Prozent ihres Gehirns.',
      why: 'Hirnscans zeigen, dass praktisch alle Bereiche des Gehirns im Lauf von 24 Stunden aktiv sind. Ungenutzte 90 Prozent gibt es nicht.',
    },
    en: {
      q: 'Humans only use 10 percent of their brain.',
      why: 'Brain scans show that virtually every region of the brain is active over a 24-hour period. There is no unused 90 percent.',
    },
    sources: [
      {
        label: 'Scientific American: Do People Only Use 10 Percent of Their Brains?',
        url: 'https://www.scientificamerican.com/article/do-people-only-use-10-percent-of-their-brains/',
      },
    ],
  },
  {
    id: 'headless-cockroach',
    from: '2026-10-10',
    cat: 'survival',
    answer: true,
    de: {
      q: 'Eine Kakerlake kann ohne Kopf wochenlang weiterleben.',
      why: 'Sie atmet über kleine Öffnungen am Körper und kommt mit einer Mahlzeit wochenlang aus. Ein Insektenforscher hielt kopflose Tiere mehrere Wochen in einem Glas.',
    },
    en: {
      q: 'A cockroach can live for weeks without its head.',
      why: 'It breathes through small holes in its body and can go weeks on one meal. An entomologist kept headless roaches alive in a jar for several weeks.',
    },
    sources: [
      {
        label: 'Scientific American: Can a Cockroach Live without Its Head?',
        url: 'https://www.scientificamerican.com/article/can-a-cockroach-live-without-its-he/',
      },
    ],
  },
  {
    id: 'glass-flows-down',
    from: '2026-10-10',
    cat: 'science',
    answer: false,
    de: {
      q: 'Alte Kirchenfenster sind unten dicker, weil Glas über Jahrhunderte langsam nach unten fließt.',
      why: 'Glas fließt bei Raumtemperatur praktisch nicht. Die Scheiben waren von Anfang an ungleich dick, und die dicke Seite kam oft nach unten.',
    },
    en: {
      q: 'Old church windows are thicker at the bottom because glass slowly flows down over centuries.',
      why: 'Glass practically does not flow at room temperature. The panes were uneven from the start, and the thick side was often put at the bottom.',
    },
    sources: [
      {
        label: 'Scientific American: Fact or Fiction?: Glass Is a (Supercooled) Liquid',
        url: 'https://www.scientificamerican.com/article/fact-fiction-glass-liquid/',
      },
    ],
  },
  {
    id: 'bananas-are-berries',
    from: '2026-10-10',
    cat: 'food',
    answer: true,
    de: {
      q: 'Botanisch gesehen ist die Banane eine Beere, die Erdbeere aber nicht.',
      why: 'Eine Beere entsteht aus einer Blüte mit nur einem Fruchtknoten und hat mehrere Samen. Das passt auf die Banane. Erdbeerblüten haben viele Fruchtknoten.',
    },
    en: {
      q: 'Botanically speaking, a banana is a berry, but a strawberry is not.',
      why: 'A berry grows from a flower with a single ovary and has several seeds. Bananas fit. Strawberry flowers have many ovaries.',
    },
    sources: [
      {
        label: 'Live Science: Is a banana a berry, and what about strawberries?',
        url: 'https://www.livescience.com/57477-why-are-bananas-considered-berries.html',
      },
    ],
  },
  {
    id: 'einstein-failed-math',
    from: '2026-10-10',
    cat: 'science',
    answer: false,
    de: {
      q: 'Albert Einstein ist in der Schule in Mathe durchgefallen.',
      why: 'Einstein sagte selbst: „Ich bin nie in Mathematik durchgefallen.“ Differential- und Integralrechnung beherrschte er schon vor seinem 15. Geburtstag.',
    },
    en: {
      q: 'Albert Einstein failed math at school.',
      why: 'Einstein said it himself: “I never failed in mathematics.” He had mastered differential and integral calculus before he turned 15.',
    },
    sources: [
      {
        label: 'TIME: Making the Grade - 20 Things You Need to Know About Einstein',
        url: 'https://content.time.com/time/specials/packages/article/0,28804,1936731_1936743_1936758,00.html',
      },
    ],
  },
  {
    id: 'saturn-less-dense-than-water',
    from: '2026-10-10',
    cat: 'space',
    answer: true,
    de: {
      q: 'Der Saturn hat eine geringere Dichte als Wasser.',
      why: 'Er ist der einzige Planet im Sonnensystem, dessen mittlere Dichte unter der von Wasser liegt. In einer riesigen Badewanne würde er schwimmen.',
    },
    en: {
      q: 'Saturn is less dense than water.',
      why: 'It is the only planet in the solar system with an average density lower than water. It would float in a giant bathtub.',
    },
    sources: [{ label: 'NASA: Saturn: Facts', url: 'https://science.nasa.gov/saturn/facts/' }],
  },
  {
    id: 'seasons-distance-to-sun',
    from: '2026-10-10',
    cat: 'space',
    answer: false,
    de: {
      q: 'Jahreszeiten entstehen, weil die Erde mal näher an der Sonne ist und mal weiter weg.',
      why: 'Grund ist die schräge Erdachse. Am nächsten ist die Erde der Sonne übrigens im Januar, mitten im Winter der Nordhalbkugel.',
    },
    en: {
      q: 'Seasons happen because Earth is sometimes closer to the Sun and sometimes farther away.',
      why: "The cause is Earth's tilted axis. Earth is actually closest to the Sun in January, in the middle of the northern winter.",
    },
    sources: [{ label: 'NASA Space Place: What Causes the Seasons?', url: 'https://spaceplace.nasa.gov/seasons/en/' }],
  },
  {
    id: 'wombat-cube-poop',
    from: '2026-10-10',
    cat: 'animals',
    answer: true,
    de: {
      q: 'Wombats machen würfelförmige Kothaufen.',
      why: 'Ihr Darm ist abschnittsweise unterschiedlich steif und formt den Kot zu Würfeln. Ein Wombat kann bis zu 100 Stück am Tag absetzen.',
    },
    en: {
      q: 'Wombats produce cube-shaped poop.',
      why: 'Their intestines have sections of different stiffness that shape the poop into cubes. A wombat can produce up to 100 of them a day.',
    },
    sources: [
      {
        label: 'Smithsonian Magazine: Wombats Poop Cubes, and Scientists Finally Got to the Bottom of It',
        url: 'https://www.smithsonianmag.com/smart-news/scientists-have-solved-mystery-how-wombats-poop-cubes-180976898/',
      },
    ],
  },
  {
    id: 'camel-hump-water',
    from: '2026-10-10',
    cat: 'animals',
    answer: false,
    de: {
      q: 'Kamele speichern Wasser in ihren Höckern.',
      why: 'Im Höcker steckt Fett, kein Wasser. Dafür kann ein Kamel auf einmal bis zu 114 Liter trinken.',
    },
    en: {
      q: 'Camels store water in their humps.',
      why: 'The hump stores fat, not water. Instead, a camel can drink up to 114 liters in one go.',
    },
    sources: [
      {
        label: 'Live Science: Do camels really have water in their humps?',
        url: 'https://www.livescience.com/32366-why-do-camels-have-humps.html',
      },
    ],
  },
  {
    id: 'statue-of-liberty-copper',
    from: '2026-10-10',
    cat: 'history',
    answer: true,
    de: {
      q: 'Die Freiheitsstatue war ursprünglich nicht grün, sondern rötlich-braun.',
      why: 'Ihre Haut ist aus Kupfer und glänzte anfangs wie eine neue Münze. Die grüne Patina zeigte sich ab etwa 1903, um 1920 war sie ganz grün.',
    },
    en: {
      q: 'The Statue of Liberty was originally reddish-brown, not green.',
      why: 'Its skin is copper and first shone like a new penny. The green patina appeared from around 1903, and by about 1920 it was fully green.',
    },
    sources: [
      {
        label: "History.com: The Statue of Liberty Wasn't Always Green",
        url: 'https://www.history.com/articles/statue-of-liberty-green-color-change',
      },
    ],
  },
  {
    id: 'napoleon-short',
    from: '2026-10-10',
    cat: 'history',
    answer: false,
    de: {
      q: 'Napoleon war für seine Zeit auffällig klein.',
      why: 'Er war wohl etwa 1,68 bis 1,70 m groß. Der Mythos kam auch daher, dass ein französischer Zoll mit 2,71 cm länger war als ein englischer mit 2,54 cm.',
    },
    en: {
      q: 'Napoleon was unusually short for his time.',
      why: 'He was probably about 1.68 to 1.70 m tall. The myth partly came from the French inch, at 2.71 cm, being longer than the English inch at 2.54 cm.',
    },
    sources: [{ label: 'Britannica: Was Napoleon Short?', url: 'https://www.britannica.com/story/was-napoleon-short' }],
  },

  // Nachschub: 2026-10-17
  {
    id: 'octopus-three-hearts',
    from: '2026-10-17',
    cat: 'animals',
    answer: true,
    de: {
      q: 'Kraken haben drei Herzen.',
      why: 'Zwei Herzen pumpen Blut durch die Kiemen, das dritte versorgt den restlichen Körper. Beim Schwimmen setzt dieses dritte Herz sogar aus.',
    },
    en: {
      q: 'Octopuses have three hearts.',
      why: 'Two hearts pump blood through the gills, the third supplies the rest of the body. That third heart even stops beating while the octopus swims.',
    },
    sources: [
      {
        label: 'Smithsonian Magazine: Ten Wild Facts About Octopuses: They Have Three Hearts, Big Brains and Blue Blood',
        url: 'https://www.smithsonianmag.com/science-nature/ten-wild-facts-about-octopuses-they-have-three-hearts-big-brains-and-blue-blood-7625828/',
      },
    ],
  },
  {
    id: 'bats-are-blind',
    from: '2026-10-17',
    cat: 'animals',
    answer: false,
    de: {
      q: 'Fledermäuse sind blind.',
      why: 'Fledermäuse haben kleine, aber sehr lichtempfindliche Augen. Sie sehen noch, wenn es für uns stockdunkel ist.',
    },
    en: {
      q: 'Bats are blind.',
      why: 'Bats have small but very light-sensitive eyes. They can still see when it looks pitch black to us.',
    },
    sources: [{ label: 'USGS: Are bats blind?', url: 'https://www.usgs.gov/faqs/are-bats-blind' }],
  },
  {
    id: 'mars-blue-sunset',
    from: '2026-10-17',
    cat: 'space',
    answer: true,
    de: {
      q: 'Sonnenuntergänge auf dem Mars sind bläulich.',
      why: 'Feiner Staub in der Marsluft lässt blaues Licht besser durch als rotes. Der Rover Curiosity hat solche blauen Sonnenuntergänge fotografiert.',
    },
    en: {
      q: 'Sunsets on Mars are bluish.',
      why: 'Fine dust in the Martian air lets blue light through more easily than red. The Curiosity rover has photographed these blue sunsets.',
    },
    sources: [{ label: "NASA: Sunset in Mars' Gale Crater", url: 'https://science.nasa.gov/resource/sunset-in-mars-gale-crater/' }],
  },
  {
    id: 'ostrich-head-in-sand',
    from: '2026-10-17',
    cat: 'animals',
    answer: false,
    de: {
      q: 'Strauße stecken bei Gefahr den Kopf in den Sand.',
      why: 'Sie legen sich flach hin und strecken Kopf und Hals auf den Boden. Von Weitem sieht es nur so aus, als wäre der Kopf vergraben.',
    },
    en: {
      q: 'Ostriches bury their heads in the sand when in danger.',
      why: 'They lie flat and stretch their head and neck along the ground. From a distance it only looks as if the head is buried.',
    },
    sources: [{ label: 'San Diego Zoo: Ostrich', url: 'https://animals.sandiegozoo.org/animals/ostrich' }],
  },
  {
    id: 'honey-never-spoils',
    from: '2026-10-17',
    cat: 'food',
    answer: true,
    de: {
      q: 'Gut verschlossener Honig verdirbt praktisch nie.',
      why: 'Wenig Wasser, viel Säure und etwas Wasserstoffperoxid machen Honig für Mikroben lebensfeindlich. In ägyptischen Gräbern fand man jahrtausendealten, noch erhaltenen Honig.',
    },
    en: {
      q: 'Properly sealed honey practically never spoils.',
      why: 'Little water, high acidity and a bit of hydrogen peroxide make honey hostile to microbes. Thousands of years old, still preserved honey was found in Egyptian tombs.',
    },
    sources: [
      {
        label: "Smithsonian Magazine: The Science Behind Honey's Eternal Shelf Life",
        url: 'https://www.smithsonianmag.com/science-nature/the-science-behind-honeys-eternal-shelf-life-1218690/',
      },
    ],
  },

  // Nachschub: 2026-10-24
  {
    id: 'penguins-north-pole',
    from: '2026-10-24',
    cat: 'animals',
    answer: false,
    de: {
      q: 'Pinguine leben auch am Nordpol.',
      why: 'Wilde Pinguine leben fast nur auf der Südhalbkugel. Am weitesten nach Norden kommt der Galápagospinguin, bis an den Äquator.',
    },
    en: {
      q: 'Penguins also live at the North Pole.',
      why: 'Wild penguins live almost only in the Southern Hemisphere. The one that gets farthest north is the Galápagos penguin, up to the equator.',
    },
    sources: [
      {
        label: 'Britannica: Do wild penguins live in the Arctic?',
        url: 'https://www.britannica.com/animal/Do-wild-penguins-live-in-the-Arctic',
      },
    ],
  },
  {
    id: 'rhino-horn-keratin',
    from: '2026-10-24',
    cat: 'animals',
    answer: true,
    de: {
      q: 'Das Horn eines Nashorns besteht aus demselben Stoff wie deine Fingernägel.',
      why: 'Nashornhorn ist vor allem Keratin, dasselbe Protein wie in Fingernägeln. Es wächst in Schichten aus verhärteten Hautzellen.',
    },
    en: {
      q: 'A rhino horn is made of the same stuff as your fingernails.',
      why: 'Rhino horn is mostly keratin, the same protein found in fingernails. It grows in layers of hardened skin cells.',
    },
    sources: [
      {
        label: 'Save the Rhino: What is rhino horn made of?',
        url: 'https://www.savetherhino.org/our-work/protecting-rhinos/what-is-rhino-horn-made-of/',
      },
    ],
  },
  {
    id: 'peanuts-are-nuts',
    from: '2026-10-24',
    cat: 'food',
    answer: false,
    de: {
      q: 'Erdnüsse sind Nüsse.',
      why: 'Botanisch gehört die Erdnuss zu den Hülsenfrüchten, also in dieselbe Pflanzenfamilie wie Erbsen und Bohnen.',
    },
    en: {
      q: 'Peanuts are nuts.',
      why: 'Botanically, the peanut is a legume, which puts it in the same plant family as peas and beans.',
    },
    sources: [{ label: 'Britannica: Peanut', url: 'https://www.britannica.com/plant/peanut' }],
  },
  {
    id: 'babies-more-bones',
    from: '2026-10-24',
    cat: 'body',
    answer: true,
    de: {
      q: 'Babys haben mehr Knochen als Erwachsene.',
      why: 'Neugeborene haben über 300 einzelne Knochen, Erwachsene 206. Viele davon wachsen im Lauf der Zeit zusammen.',
    },
    en: {
      q: 'Babies have more bones than adults.',
      why: 'Newborns have more than 300 separate bones, adults have 206. Many of them fuse together over time.',
    },
    sources: [
      {
        label: "Popular Science: You'll never have as many bones as you did at birth (and other strange skeleton facts)",
        url: 'https://www.popsci.com/story/health/bones-human-skeleton/',
      },
    ],
  },
  {
    id: 'frankenstein-monster-name',
    from: '2026-10-24',
    cat: 'popculture',
    answer: false,
    de: {
      q: 'Frankenstein ist der Name des Monsters.',
      why: 'In Mary Shelleys Roman heißt der Wissenschaftler Victor Frankenstein. Sein Geschöpf hat keinen Namen, der Nachname wanderte erst später aufs Monster.',
    },
    en: {
      q: 'Frankenstein is the name of the monster.',
      why: "In Mary Shelley's novel, the scientist is Victor Frankenstein. His creature has no name; the surname only later got attached to the monster.",
    },
    sources: [{ label: 'Britannica: Frankenstein', url: 'https://www.britannica.com/topic/Frankenstein' }],
  },

  // Nachschub: 2026-10-31
  {
    id: 'sahara-was-green',
    from: '2026-10-31',
    cat: 'nature',
    answer: true,
    de: {
      q: 'Die Sahara war vor einigen Tausend Jahren grün.',
      why: 'Vor etwa 11.000 bis 5000 Jahren war die Sahara viel feuchter und grün. Auslöser waren kleine Änderungen der Erdbahn um die Sonne.',
    },
    en: {
      q: 'The Sahara was green a few thousand years ago.',
      why: "About 11,000 to 5,000 years ago, the Sahara was much wetter and green. Small changes in Earth's orbit around the Sun set it off.",
    },
    sources: [
      {
        label: "Nature Education: Green Sahara: African Humid Periods Paced by Earth's Orbital Changes",
        url: 'https://www.nature.com/scitable/knowledge/library/green-sahara-african-humid-periods-paced-by-82884405/',
      },
    ],
  },
  {
    id: 'goldfish-three-second-memory',
    from: '2026-10-31',
    cat: 'animals',
    answer: false,
    de: {
      q: 'Goldfische haben ein Gedächtnis von nur drei Sekunden.',
      why: 'Goldfische können gelernte Aufgaben noch Wochen oder sogar Monate später lösen. Dazu gibt es Forschung aus über 60 Jahren.',
    },
    en: {
      q: 'Goldfish have a memory of only three seconds.',
      why: 'Goldfish can still perform learned tasks weeks or even months later. Research on this goes back more than 60 years.',
    },
    sources: [
      {
        label: 'Live Science: Do goldfish really have a 3-second memory?',
        url: 'https://www.livescience.com/goldfish-memory.html',
      },
    ],
  },
  {
    id: 'pure-water-insulator',
    from: '2026-10-31',
    cat: 'science',
    answer: true,
    de: {
      q: 'Ganz reines Wasser leitet Strom so gut wie gar nicht.',
      why: 'Reines Wasser ist sogar ein guter Isolator. Leitfähig wird Wasser erst durch gelöste Salze und andere Stoffe, die Ionen bilden.',
    },
    en: {
      q: 'Completely pure water barely conducts electricity at all.',
      why: 'Pure water is actually a good insulator. Water only becomes conductive through dissolved salts and other substances that form ions.',
    },
    sources: [
      {
        label: 'USGS: Conductivity (Electrical Conductance) and Water',
        url: 'https://www.usgs.gov/special-topics/water-science-school/science/conductivity-electrical-conductance-and-water',
      },
    ],
  },
  {
    id: 'tongue-taste-map',
    from: '2026-10-31',
    cat: 'body',
    answer: false,
    de: {
      q: 'Süß, salzig, sauer und bitter schmeckst du jeweils mit einer eigenen Zone der Zunge.',
      why: 'Die Zungenkarte beruht auf einer falsch gedeuteten Messung von 1901. Rezeptoren für alle Geschmäcker sitzen über die ganze Zunge verteilt.',
    },
    en: {
      q: 'You taste sweet, salty, sour and bitter with separate zones of your tongue.',
      why: 'The tongue map comes from a misread study from 1901. Receptors for all tastes are spread across the whole tongue.',
    },
    sources: [
      {
        label: 'Smithsonian Magazine: The Taste Map of the Tongue You Learned in School Is All Wrong',
        url: 'https://www.smithsonianmag.com/science-nature/neat-and-tidy-map-tastes-tongue-you-learned-school-all-wrong-180963407/',
      },
    ],
  },
  {
    id: 'butterflies-taste-with-feet',
    from: '2026-10-31',
    cat: 'animals',
    answer: true,
    de: {
      q: 'Schmetterlinge schmecken mit ihren Füßen.',
      why: 'Die meisten ihrer Geschmackssinneszellen sitzen an den Füßen. Beim Landen testen sie so, ob eine Pflanze zur Eiablage taugt.',
    },
    en: {
      q: 'Butterflies taste with their feet.',
      why: 'Most of their taste receptors sit on their feet. When they land, they use them to test whether a plant is good for laying eggs.',
    },
    sources: [
      {
        label: 'Florida Museum: Butterfly Rainforest Moment, How do they taste?',
        url: 'https://www.floridamuseum.ufl.edu/exhibits/blog/butterfly-moment-how-do-they-taste/',
      },
    ],
  },

  // Nachschub: 2026-11-07
  {
    id: 'moon-dark-side',
    from: '2026-11-07',
    cat: 'space',
    answer: false,
    de: {
      q: 'Die Rückseite des Mondes liegt immer im Dunkeln.',
      why: 'Die Rückseite bekommt genauso viel Sonnenlicht wie die Vorderseite. Wir sehen sie nur nie, weil uns der Mond immer dieselbe Seite zeigt.',
    },
    en: {
      q: 'The far side of the Moon is always dark.',
      why: 'The far side gets just as much sunlight as the near side. We just never see it, because the Moon always shows us the same face.',
    },
    sources: [{ label: 'NASA: Top Moon Questions', url: 'https://science.nasa.gov/moon/top-moon-questions/' }],
  },
  {
    id: 'kiwi-giant-egg',
    from: '2026-11-07',
    cat: 'animals',
    answer: true,
    de: {
      q: 'Ein Kiwi-Ei wiegt im Schnitt rund 15 Prozent so viel wie das Weibchen, das es legt.',
      why: 'Gemessen an der Körpergröße legt der Kiwi eines der größten Eier aller Vögel, nur eine andere Art übertrifft ihn.',
    },
    en: {
      q: "A kiwi egg weighs on average about 15 percent of the female's body weight.",
      why: 'For its body size, the kiwi lays one of the biggest eggs of any bird, beaten by only one other species.',
    },
    sources: [{ label: "Smithsonian's National Zoo: Kiwi Fun Facts", url: 'https://nationalzoo.si.edu/animals/news/kiwi-fun-facts' }],
  },
  {
    id: 'swallowed-gum-seven-years',
    from: '2026-11-07',
    cat: 'body',
    answer: false,
    de: {
      q: 'Verschluckter Kaugummi bleibt sieben Jahre im Magen.',
      why: 'Die Kaumasse wird zwar nicht verdaut, wandert aber wie anderes Unverdauliches durch den Darm und ist nach wenigen Tagen draußen.',
    },
    en: {
      q: 'Swallowed chewing gum stays in your stomach for seven years.',
      why: 'The gum base is not digested, but like other indigestible stuff it passes through the gut and is out within a few days.',
    },
    sources: [
      {
        label: 'Britannica: What Happens When You Swallow Gum?',
        url: 'https://www.britannica.com/story/what-happens-when-you-swallow-gum',
      },
    ],
  },
  {
    id: 'eiffel-tower-tip-moves',
    from: '2026-11-07',
    cat: 'science',
    answer: true,
    de: {
      q: 'An sonnigen Tagen wandert die Spitze des Eiffelturms auf einer Kurve von etwa 15 cm Durchmesser.',
      why: 'Die Sonne erwärmt immer nur eine Seite des Eisens, die sich dadurch ausdehnt. Der Turm neigt sich leicht von der Sonne weg und folgt ihr so.',
    },
    en: {
      q: 'On sunny days, the tip of the Eiffel Tower moves along a curve about 15 cm across.',
      why: 'The Sun only heats one side of the iron at a time, which expands. The tower tilts slightly away from the Sun and follows it around.',
    },
    sources: [
      {
        label: 'The Eiffel Tower: Why does the Eiffel Tower change size?',
        url: 'https://www.toureiffel.paris/en/news/history-and-culture/why-does-eiffel-tower-change-size',
      },
    ],
  },
  {
    id: 'toilet-flush-hemisphere',
    from: '2026-11-07',
    cat: 'science',
    answer: false,
    de: {
      q: 'Auf der Südhalbkugel dreht sich das Wasser in der Toilette andersherum.',
      why: 'Die Corioliskraft ist für so wenig Wasser viel zu schwach. Die Drehrichtung bestimmen Form und Spüldüsen der Toilette.',
    },
    en: {
      q: 'In the Southern Hemisphere, toilet water swirls the other way.',
      why: 'The Coriolis force is far too weak for such a small amount of water. The direction depends on the shape and jets of the toilet.',
    },
    sources: [
      {
        label: 'Britannica: Do Toilets in Different Hemispheres Flush in Different Directions?',
        url: 'https://www.britannica.com/story/do-toilets-in-different-hemispheres-flush-in-different-directions',
      },
    ],
  },
];
