// „Was war zuerst?“: 40 Duelle, das frühere Ereignis gewinnt. Typ und Regeln: src/data/quiz.ts.
// Die ersten 20 sind ab dem Start live, danach kommen jeden Samstag 5 neue dazu.
import type { FirstItem } from './quiz';

export const FIRST: FirstItem[] = [
  // Start: 2026-10-10
  {
    id: 'oxford-vs-tenochtitlan',
    from: '2026-10-10',
    a: { cat: 'history', year: 1325, approx: true, de: 'Die Azteken gründen Tenochtitlan', en: 'The Aztecs found Tenochtitlan' },
    b: { cat: 'history', year: 1096, de: 'In Oxford wird schon unterrichtet', en: 'Teaching is already underway at Oxford' },
    de: { why: 'In Oxford gab es schon 1096 Unterricht, die Aztekenhauptstadt Tenochtitlan wurde erst um 1325 gegründet.' },
    en: { why: 'Teaching existed at Oxford by 1096, while the Aztec capital Tenochtitlan was only founded around 1325.' },
    sources: [
      { label: 'University of Oxford: Our history', url: 'https://www.ox.ac.uk/about/organisation/history' },
      {
        label: 'Smithsonian Magazine: The University of Oxford Is Older Than the Aztec Empire and Other Facts That Will Change Your Perspective on History',
        url: 'https://www.smithsonianmag.com/smart-news/university-oxford-older-than-aztec-empire-other-facts-will-change-your-perspective-history-1529607/',
      },
    ],
  },
  {
    id: 'fax-vs-telephone',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1843, de: 'Erstes Patent für ein Faxgerät', en: 'First patent for a fax machine' },
    b: { cat: 'tech', year: 1876, de: 'Bell erhält das Patent fürs Telefon', en: 'Bell receives the telephone patent' },
    de: { why: 'Alexander Bain bekam sein Fax-Patent 1843, Alexander Graham Bell das Telefonpatent erst 1876.' },
    en: { why: 'Alexander Bain got his fax patent in 1843, Alexander Graham Bell the telephone patent only in 1876.' },
    sources: [
      { label: 'Britannica: Alexander Bain', url: 'https://www.britannica.com/biography/Alexander-Bain-Scottish-inventor' },
      { label: 'Britannica: When was the telephone patented?', url: 'https://www.britannica.com/question/When-was-the-telephone-patented' },
    ],
  },
  {
    id: 'mammoths-vs-great-pyramid',
    from: '2026-10-10',
    a: { cat: 'animals', year: -2300, approx: true, de: 'Die letzten Mammuts sterben aus', en: 'The last mammoths die out' },
    b: { cat: 'history', year: -2500, approx: true, de: 'Die Große Pyramide von Gizeh ist fertig', en: 'The Great Pyramid of Giza is finished' },
    de: { why: 'Die Große Pyramide war um 2500 v. Chr. fertig, die letzten Mammuts lebten auf der Wrangelinsel noch bis vor rund 4300 Jahren.' },
    en: { why: 'The Great Pyramid was finished around 2500 BC, while the last mammoths lived on Wrangel Island until about 4,300 years ago.' },
    sources: [
      {
        label: 'Britannica: How long did the Great Pyramid of Giza hold the record as the tallest man-made structure in the world?',
        url: 'https://www.britannica.com/place/How-long-did-the-Great-Pyramid-of-Giza-hold-the-record-as-the-tallest-man-made-structure-in-the-world',
      },
      {
        label: 'Smithsonian Magazine: The Last Wooly Mammoths Died Isolated and Alone',
        url: 'https://www.smithsonianmag.com/smart-news/last-wooly-mammoths-died-isolated-and-alone-180955208/',
      },
    ],
  },
  {
    id: 'sharks-vs-trees',
    from: '2026-10-10',
    a: { cat: 'nature', year: -390000000, approx: true, de: 'Die ersten Wälder wachsen', en: 'The first forests grow' },
    b: { cat: 'animals', year: -450000000, approx: true, de: 'Die ersten Haie tauchen auf', en: 'The first sharks appear' },
    de: { why: 'Die ältesten Hai-Schuppen sind rund 450 Millionen Jahre alt, der älteste bekannte Wald rund 390 Millionen Jahre.' },
    en: { why: 'The oldest shark scales are about 450 million years old, the oldest known forest about 390 million years.' },
    sources: [
      {
        label: 'Natural History Museum: Shark evolution: a 450 million year timeline',
        url: 'https://www.nhm.ac.uk/discover/shark-evolution-a-450-million-year-timeline.html',
      },
      {
        label: 'Cardiff University: Earth’s earliest forest revealed in Somerset fossils',
        url: 'https://www.cardiff.ac.uk/news/view/2800919-earths-earliest-forest-revealed-in-somerset-fossils',
      },
    ],
  },
  {
    id: 'nintendo-vs-basketball',
    from: '2026-10-10',
    a: { cat: 'brands', year: 1889, de: 'Nintendo wird gegründet', en: 'Nintendo is founded' },
    b: { cat: 'sport', year: 1891, de: 'Basketball wird erfunden', en: 'Basketball is invented' },
    de: { why: 'Nintendo begann 1889 in Kyoto mit Hanafuda-Spielkarten, James Naismith erfand Basketball im Dezember 1891.' },
    en: { why: 'Nintendo started out in Kyoto in 1889 making hanafuda playing cards, James Naismith invented basketball in December 1891.' },
    sources: [
      { label: 'Nintendo: Company History', url: 'https://www.nintendo.co.jp/corporate/en/history/index.html' },
      {
        label: 'Springfield College: Where Basketball was Invented: The History of Basketball',
        url: 'https://springfield.edu/about/birthplace-of-basketball',
      },
    ],
  },
  {
    id: 'lighter-vs-match',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1826, de: 'Das erste Reibstreichholz', en: 'The first friction match' },
    b: { cat: 'tech', year: 1823, de: 'Döbereiner baut sein Feuerzeug', en: 'Döbereiner builds his lighter' },
    de: { why: 'Johann Wolfgang Döbereiner entwickelte sein Feuerzeug 1823, John Walker erfand das Reibstreichholz erst 1826.' },
    en: { why: 'Johann Wolfgang Döbereiner developed his lighter in 1823, John Walker invented the friction match only in 1826.' },
    sources: [
      {
        label: 'Science Museum: Ways of Catching a Spark: A History of Fire-Making Methods',
        url: 'https://www.sciencemuseum.org.uk/objects-and-stories/ways-catching-spark-history-fire-making-methods',
      },
    ],
  },
  {
    id: 'tin-can-vs-can-opener',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1810, de: 'Die Blechdose wird patentiert', en: 'The tin can is patented' },
    b: { cat: 'tech', year: 1858, de: 'Der erste Dosenöffner wird patentiert', en: 'The first can opener is patented' },
    de: { why: 'Peter Durand patentierte die Blechdose 1810, Ezra Warner den ersten Dosenöffner erst 1858.' },
    en: { why: 'Peter Durand patented the tin can in 1810, Ezra Warner the first can opener only in 1858.' },
    sources: [
      { label: 'Britannica: Peter Durand', url: 'https://www.britannica.com/biography/Peter-Durand' },
      {
        label: "Smithsonian Magazine: Why the Can Opener Wasn't Invented Until Almost 50 Years After the Can",
        url: 'https://www.smithsonianmag.com/smart-news/why-can-opener-wasnt-invented-until-almost-50-years-after-can-180964590/',
      },
    ],
  },
  {
    id: 'traffic-light-vs-car',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1886, de: 'Benz patentiert sein Motorauto', en: 'Benz patents his motor car' },
    b: { cat: 'tech', year: 1868, de: 'Die erste Ampel steht in London', en: 'The first traffic light goes up in London' },
    de: { why: 'Die erste Ampel regelte ab Dezember 1868 den Verkehr vor dem Londoner Parlament, Benz bekam sein Autopatent erst 1886.' },
    en: { why: 'The first traffic light controlled traffic outside London’s Parliament from December 1868, Benz got his car patent only in 1886.' },
    sources: [
      { label: 'History Hit: Where Were the World’s First Traffic Lights?', url: 'https://www.historyhit.com/1868-first-traffic-light/' },
      { label: 'Britannica: Patent Motorwagen', url: 'https://www.britannica.com/technology/Patent-Motorwagen' },
    ],
  },
  {
    id: 'smartphone-vs-pokemon',
    from: '2026-10-10',
    a: { cat: 'popculture', year: 1996, de: 'Die ersten Pokémon-Spiele erscheinen', en: 'The first Pokémon games come out' },
    b: { cat: 'tech', year: 1993, de: 'Das erste Smartphone, der IBM Simon, wird vorgestellt', en: "The first smartphone, IBM's Simon, is unveiled" },
    de: { why: 'Der IBM Simon mit Touchscreen und Apps wurde 1993 vorgestellt, Pokémon Rot und Grün erschienen 1996 in Japan.' },
    en: { why: 'The IBM Simon, with touchscreen and apps, was unveiled in 1993, Pokémon Red and Green came out in Japan in 1996.' },
    sources: [
      {
        label: 'Computer History Museum: IBM/BellSouth Simon Personal Communicator',
        url: 'https://www.computerhistory.org/revolution/mobile-computing/18/341/1733',
      },
      { label: 'The Strong National Museum of Play: Pokémon Red and Green', url: 'https://www.museumofplay.org/games/pokemon-red-and-green/' },
    ],
  },
  {
    id: 'netflix-vs-google',
    from: '2026-10-10',
    a: { cat: 'brands', year: 1997, de: 'Netflix wird gegründet', en: 'Netflix is founded' },
    b: { cat: 'brands', year: 1998, de: 'Google wird gegründet', en: 'Google is founded' },
    de: { why: 'Netflix wurde 1997 gegründet, damals noch als DVD-Verleih per Post. Google Inc. entstand im August 1998.' },
    en: { why: 'Netflix was founded in 1997, back then as a DVD-by-mail service. Google Inc. was born in August 1998.' },
    sources: [
      { label: 'Britannica: Netflix', url: 'https://www.britannica.com/money/Netflix-Inc' },
      { label: 'Google: How we started and where we are today', url: 'https://about.google/company-info/our-story/' },
    ],
  },
  {
    id: 'nokia-vs-telephone',
    from: '2026-10-10',
    a: { cat: 'brands', year: 1865, de: 'Nokia wird gegründet', en: 'Nokia is founded' },
    b: { cat: 'tech', year: 1876, de: 'Das Telefon wird patentiert', en: 'The telephone is patented' },
    de: { why: 'Die Firma Nokia wurde 1865 im finnischen Tampere gegründet, das Telefon erst 1876 patentiert.' },
    en: { why: 'The Nokia company was founded in Tampere, Finland, in 1865, the telephone was only patented in 1876.' },
    sources: [
      { label: 'Nokia: Nokia History', url: 'https://www.nokia.com/about-us/newsroom/media-resources/media-library/nokia-history/' },
      { label: 'Britannica: When was the telephone patented?', url: 'https://www.britannica.com/question/When-was-the-telephone-patented' },
    ],
  },
  {
    id: 'wimbledon-vs-light-bulb',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1879, de: 'Edison patentiert seine Glühbirne', en: 'Edison patents his light bulb' },
    b: { cat: 'sport', year: 1877, de: 'Das erste Wimbledon-Turnier', en: 'The first Wimbledon tournament' },
    de: { why: 'In Wimbledon wurde schon 1877 um den Titel gespielt, Thomas Edison patentierte seine Glühbirne erst 1879.' },
    en: { why: 'The first Wimbledon title was played for in 1877, Thomas Edison only patented his light bulb in 1879.' },
    sources: [
      { label: "Wimbledon: The Championships 1877 Gentlemen's Singles", url: 'https://assets.wimbledon.com/archive/draws/pdfs/draws/1877_MS_A4.pdf' },
      { label: 'U.S. Department of Energy: The History of the Light Bulb', url: 'https://www.energy.gov/articles/history-light-bulb' },
    ],
  },
  {
    id: 'bread-vs-farming',
    from: '2026-10-10',
    a: { cat: 'food', year: -12400, approx: true, de: 'Das älteste bekannte Brot wird gebacken', en: 'The oldest known bread is baked' },
    b: { cat: 'history', year: -8400, approx: true, de: 'Menschen beginnen mit Ackerbau', en: 'Humans start farming' },
    de: { why: 'Die Brotreste aus Jordanien sind rund 14.400 Jahre alt, also etwa 4000 Jahre älter als der Ackerbau.' },
    en: { why: 'The bread remains from Jordan are about 14,400 years old, roughly 4,000 years older than farming.' },
    sources: [
      {
        label: 'University of Copenhagen: Archaeologists discover bread that predates agriculture by 4,000 years',
        url: 'https://humanities.ku.dk/news/2018/archaeologists-discover-bread-that-predates-agriculture-by-4000-years/',
      },
      {
        label: 'Smithsonian Magazine: Archaeologists Discover Evidence of Bread Baked Before Advent of Agriculture',
        url: 'https://www.smithsonianmag.com/smart-news/archaeologists-discover-evidence-bread-baked-advent-agriculture-180969667/',
      },
    ],
  },
  {
    id: 'emoji-vs-wikipedia',
    from: '2026-10-10',
    a: { cat: 'language', year: 1999, de: 'Die ersten Emoji erscheinen in Japan', en: 'The first emoji appear in Japan' },
    b: { cat: 'tech', year: 2001, de: 'Wikipedia geht online', en: 'Wikipedia goes online' },
    de: { why: 'NTT Docomo brachte 1999 Shigetaka Kuritas 176 Emoji aufs Handy, Wikipedia startete erst 2001.' },
    en: { why: "NTT Docomo put Shigetaka Kurita's 176 emoji on phones in 1999, Wikipedia only started in 2001." },
    sources: [
      { label: 'MoMA: Shigetaka Kurita. Emoji. 1998-1999', url: 'https://www.moma.org/collection/works/196070' },
      { label: 'Britannica: Wikipedia', url: 'https://www.britannica.com/topic/Wikipedia' },
    ],
  },
  {
    id: 'cambridge-vs-machu-picchu',
    from: '2026-10-10',
    a: { cat: 'history', year: 1450, approx: true, de: 'Die Inka bauen Machu Picchu', en: 'The Inca build Machu Picchu' },
    b: { cat: 'history', year: 1209, de: 'Die Universität Cambridge entsteht', en: 'The University of Cambridge is founded' },
    de: { why: 'Die Universität Cambridge gibt es seit 1209, Machu Picchu entstand erst Mitte des 15. Jahrhunderts.' },
    en: { why: 'The University of Cambridge dates back to 1209, Machu Picchu was only built in the mid-15th century.' },
    sources: [
      { label: 'University of Cambridge: History', url: 'https://www.cam.ac.uk/about-the-university/history' },
      { label: 'Britannica: When was Machu Picchu built?', url: 'https://www.britannica.com/question/When-was-Machu-Picchu-built' },
    ],
  },
  {
    id: 'dinosaurs-vs-flowers',
    from: '2026-10-10',
    a: { cat: 'animals', year: -245000000, approx: true, de: 'Die ersten Dinosaurier leben', en: 'The first dinosaurs live' },
    b: { cat: 'nature', year: -130000000, approx: true, de: 'Die ersten Blütenpflanzen blühen', en: 'The first flowering plants bloom' },
    de: { why: 'Dinosaurier gab es seit etwa 245 Millionen Jahren, die ersten Blütenpflanzen erst seit etwa 130 Millionen Jahren.' },
    en: { why: 'Dinosaurs appeared about 245 million years ago, the first flowering plants only about 130 million years ago.' },
    sources: [
      { label: 'Natural History Museum: When did dinosaurs live?', url: 'https://www.nhm.ac.uk/discover/when-did-dinosaurs-live.html' },
      {
        label: 'American Museum of Natural History: When Flowers First Bloomed',
        url: 'https://www.amnh.org/exhibitions/dinosaurs-ancient-fossils/liaoning-diorama/when-flowers-first-bloomed',
      },
    ],
  },
  {
    id: 'bubble-wrap-vs-barbie',
    from: '2026-10-10',
    a: { cat: 'popculture', year: 1959, de: 'Barbie kommt auf den Markt', en: 'Barbie is launched' },
    b: { cat: 'brands', year: 1957, de: 'Luftpolsterfolie wird erfunden', en: 'Bubble wrap is invented' },
    de: { why: 'Luftpolsterfolie entstand 1957 bei dem Versuch, eine Strukturtapete zu bauen. Barbie feierte im März 1959 Premiere.' },
    en: { why: 'Bubble wrap was created in 1957 while trying to make a textured wallpaper. Barbie debuted in March 1959.' },
    sources: [
      {
        label: 'Smithsonian Magazine: The Accidental Invention of Bubble Wrap',
        url: 'https://www.smithsonianmag.com/innovation/accidental-invention-bubble-wrap-180971325/',
      },
      { label: 'Britannica: When did Barbie officially make her debut?', url: 'https://www.britannica.com/question/When-did-Barbie-officially-make-her-debut' },
    ],
  },
  {
    id: 'digital-camera-vs-walkman',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1975, de: 'Kodak baut die erste Digitalkamera', en: 'Kodak builds the first digital camera' },
    b: { cat: 'tech', year: 1979, de: 'Sony bringt den Walkman heraus', en: 'Sony launches the Walkman' },
    de: { why: 'Steve Sasson baute die erste Digitalkamera 1975 bei Kodak, den Walkman gab es erst 1979.' },
    en: { why: 'Steve Sasson built the first digital camera at Kodak in 1975, the Walkman only arrived in 1979.' },
    sources: [
      { label: 'Kodak: Milestones', url: 'https://www.kodak.com/en/company/page/milestones/' },
      { label: 'Britannica: Sony', url: 'https://www.britannica.com/topic/Sony-Corporation' },
    ],
  },
  {
    id: 'play-doh-vs-computer-mouse',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1964, de: 'Der erste Prototyp einer Computermaus', en: 'The first computer mouse prototype' },
    b: { cat: 'brands', year: 1956, de: 'Play-Doh kommt als Spielzeug heraus', en: 'Play-Doh comes out as a toy' },
    de: { why: 'Play-Doh, ursprünglich ein Tapetenreiniger, kam 1956 als Spielzeug heraus. Die erste Computermaus entstand im Herbst 1964.' },
    en: { why: 'Play-Doh, originally a wallpaper cleaner, came out as a toy in 1956. The first computer mouse was built in fall 1964.' },
    sources: [
      {
        label: 'Smithsonian Magazine: The Accidental Invention of Play-Doh',
        url: 'https://www.smithsonianmag.com/innovation/accidental-invention-play-doh-180973527/',
      },
      { label: 'Doug Engelbart Institute: Firsts: The Mouse', url: 'https://www.dougengelbart.org/theMouse' },
    ],
  },
  {
    id: 'coffee-pot-cam-vs-sms',
    from: '2026-10-10',
    a: { cat: 'tech', year: 1992, de: 'Die erste SMS wird verschickt', en: 'The first text message is sent' },
    b: { cat: 'tech', year: 1991, de: 'Eine Kamera filmt live eine Kaffeekanne', en: 'A camera streams a coffee pot live' },
    de: { why: 'In Cambridge filmte ab 1991 eine Kamera die Kaffeekanne, später die erste Webcam. Die erste SMS ging im Dezember 1992 raus.' },
    en: { why: 'From 1991 a camera in Cambridge filmed the coffee pot, later the first webcam. The first text message went out in December 1992.' },
    sources: [
      { label: 'University of Cambridge: Trojan Room Coffee Pot Biography', url: 'https://www.cl.cam.ac.uk/coffee/qsf/coffee.html' },
      {
        label: 'History.com: First SMS text message is sent',
        url: 'https://www.history.com/this-day-in-history/december-3/first-sms-text-message-sent',
      },
    ],
  },

  // Nachschub: 2026-10-17
  {
    id: 'tv-vs-sliced-bread',
    from: '2026-10-17',
    a: { cat: 'food', year: 1928, de: 'Erstes maschinell geschnittenes Brot', en: 'The first machine-sliced bread' },
    b: { cat: 'tech', year: 1926, de: 'Baird führt erstmals Fernsehen vor', en: 'Baird gives the first TV demonstration' },
    de: { why: 'John Logie Baird zeigte sein Fernsehen im Januar 1926, geschnittenes Brot gab es erst ab Juli 1928 in Chillicothe, USA.' },
    en: { why: 'John Logie Baird showed his television in January 1926, sliced bread only arrived in July 1928 in Chillicothe, USA.' },
    sources: [
      { label: 'Britannica: John Logie Baird', url: 'https://www.britannica.com/biography/John-Logie-Baird' },
      {
        label: 'Smithsonian Magazine: Take a Look at the Patents Behind Sliced Bread',
        url: 'https://www.smithsonianmag.com/smart-news/take-look-patents-behind-sliced-bread-180963870/',
      },
    ],
  },
  {
    id: 'game-boy-vs-public-web',
    from: '2026-10-17',
    a: { cat: 'popculture', year: 1989, de: 'Der Game Boy kommt auf den Markt', en: 'The Game Boy goes on sale' },
    b: { cat: 'tech', year: 1991, de: 'Das World Wide Web wird öffentlich', en: 'The World Wide Web goes public' },
    de: { why: 'Nintendo brachte den Game Boy 1989 heraus, Tim Berners-Lee machte das Web erst im August 1991 öffentlich bekannt.' },
    en: { why: 'Nintendo launched the Game Boy in 1989, Tim Berners-Lee only announced the web publicly in August 1991.' },
    sources: [
      { label: 'Nintendo: Company History', url: 'https://www.nintendo.co.jp/corporate/en/history/index.html' },
      { label: 'CERN: A short history of the Web', url: 'https://home.cern/science/computing/the-birth-of-the-web/short-history-web/' },
    ],
  },
  {
    id: 'laser-vs-cassette',
    from: '2026-10-17',
    a: { cat: 'tech', year: 1963, de: 'Philips zeigt den ersten Kassettenrekorder', en: 'Philips shows the first cassette recorder' },
    b: { cat: 'science', year: 1960, de: 'Der erste Laser leuchtet', en: 'The first laser shines' },
    de: { why: 'Theodore Maiman brachte 1960 den ersten Laser zum Leuchten, Philips zeigte die Kompaktkassette im August 1963.' },
    en: { why: 'Theodore Maiman got the first laser working in 1960, Philips showed the compact cassette in August 1963.' },
    sources: [
      { label: 'Britannica: Theodore H. Maiman', url: 'https://www.britannica.com/biography/Theodore-Maiman' },
      {
        label: 'Philips: First Philips cassette recorder, 1963',
        url: 'https://www.philips.com/a-w/about/news/media-library/20190101-First-Philips-cassette-recorder-1963.html',
      },
    ],
  },
  {
    id: 'mickey-vs-pluto-discovery',
    from: '2026-10-17',
    a: { cat: 'popculture', year: 1928, de: 'Micky Maus kommt ins Kino', en: 'Mickey Mouse debuts on screen' },
    b: { cat: 'space', year: 1930, de: 'Pluto wird entdeckt', en: 'Pluto is discovered' },
    de: { why: '„Steamboat Willie“ mit Micky Maus lief im November 1928 an, Clyde Tombaugh entdeckte Pluto im Februar 1930.' },
    en: { why: '“Steamboat Willie” starring Mickey Mouse premiered in November 1928, Clyde Tombaugh discovered Pluto in February 1930.' },
    sources: [
      { label: 'D23: Steamboat Willie (film)', url: 'https://d23.com/a-to-z/steamboat-willie-film/' },
      {
        label: 'Britannica: Today in History February 18: Clyde Tombaugh Discovers Pluto',
        url: 'https://www.britannica.com/today-in-history/February-18-Clyde-Tombaugh-Discovers-Pluto',
      },
    ],
  },
  {
    id: 'robot-vs-talkie',
    from: '2026-10-17',
    a: { cat: 'popculture', year: 1927, de: 'Der erste Tonfilm in Spielfilmlänge', en: 'The first feature-length talkie' },
    b: { cat: 'language', year: 1920, de: 'Das Stück „R.U.R.“ bringt das Wort „Roboter“', en: 'The play “R.U.R.” brings us the word “robot”' },
    de: { why: 'Karel Čapeks Stück „R.U.R.“ machte 1920 das Wort „Roboter“ bekannt, „The Jazz Singer“ kam 1927 ins Kino.' },
    en: { why: 'Karel Čapek’s play “R.U.R.” popularized the word “robot” in 1920, “The Jazz Singer” hit cinemas in 1927.' },
    sources: [
      { label: 'Britannica: Who coined the term robot?', url: 'https://www.britannica.com/question/Who-coined-the-term-robot' },
      { label: 'Britannica: The Jazz Singer', url: 'https://www.britannica.com/topic/The-Jazz-Singer-film-1927' },
    ],
  },

  // Nachschub: 2026-10-24
  {
    id: '3d-printing-vs-web',
    from: '2026-10-24',
    a: { cat: 'tech', year: 1986, de: '3D-Druck wird patentiert', en: '3D printing is patented' },
    b: { cat: 'tech', year: 1989, de: 'Das World Wide Web wird vorgeschlagen', en: 'The World Wide Web is proposed' },
    de: { why: 'Chuck Hull patentierte den 3D-Druck 1986, Tim Berners-Lee schrieb seinen Vorschlag fürs Web im März 1989.' },
    en: { why: 'Chuck Hull patented 3D printing in 1986, Tim Berners-Lee wrote his proposal for the web in March 1989.' },
    sources: [
      {
        label: 'National Inventors Hall of Fame: Who Invented 3D Printing? Meet Inductee Chuck Hull',
        url: 'https://www.invent.org/blog/inventors/3d-printing-chuck-hull',
      },
      { label: 'CERN: A short history of the Web', url: 'https://home.cern/science/computing/the-birth-of-the-web/short-history-web/' },
    ],
  },
  {
    id: 'minecraft-vs-instagram',
    from: '2026-10-24',
    a: { cat: 'brands', year: 2010, de: 'Instagram startet', en: 'Instagram launches' },
    b: { cat: 'popculture', year: 2009, de: 'Minecraft erscheint', en: 'Minecraft is released' },
    de: { why: 'Mojang veröffentlichte Minecraft erstmals 2009, Instagram kam im Oktober 2010 in den App Store.' },
    en: { why: 'Mojang first released Minecraft in 2009, Instagram arrived in the App Store in October 2010.' },
    sources: [
      { label: 'The Strong National Museum of Play: Minecraft', url: 'https://www.museumofplay.org/games/minecraft/' },
      { label: 'Britannica: Instagram', url: 'https://www.britannica.com/topic/Instagram' },
    ],
  },
  {
    id: 'emoticon-vs-macintosh',
    from: '2026-10-24',
    a: { cat: 'language', year: 1982, de: 'Das erste :-) wird gepostet', en: 'The first :-) is posted' },
    b: { cat: 'tech', year: 1984, de: 'Apple stellt den Macintosh vor', en: 'Apple unveils the Macintosh' },
    de: { why: 'Scott Fahlman tippte das erste :-) im September 1982, der Macintosh kam im Januar 1984.' },
    en: { why: 'Scott Fahlman typed the first :-) in September 1982, the Macintosh arrived in January 1984.' },
    sources: [
      { label: 'Carnegie Mellon University: Smiley is no joke', url: 'https://www.cmu.edu/125/stories/emoticon.html' },
      { label: 'Computer History Museum: A Computer for the Rest of Us', url: 'https://computerhistory.org/blog/a-computer-for-the-rest-of-us/' },
    ],
  },
  {
    id: 'stonehenge-vs-great-pyramid',
    from: '2026-10-24',
    a: { cat: 'history', year: -2500, approx: true, de: 'Die Große Pyramide von Gizeh ist fertig', en: 'The Great Pyramid of Giza is finished' },
    b: { cat: 'history', year: -3000, approx: true, de: 'In Stonehenge entsteht der erste Ringgraben', en: 'Stonehenge gets its first circular ditch' },
    de: { why: 'Der erste Ringgraben von Stonehenge entstand um 3000 v. Chr., die Große Pyramide war um 2500 v. Chr. fertig.' },
    en: { why: 'Stonehenge’s first circular ditch was dug around 3000 BC, the Great Pyramid was finished around 2500 BC.' },
    sources: [
      { label: 'English Heritage: History of Stonehenge', url: 'https://www.english-heritage.org.uk/visit/places/stonehenge/history-and-stories/history/' },
      {
        label: 'Britannica: How long did the Great Pyramid of Giza hold the record as the tallest man-made structure in the world?',
        url: 'https://www.britannica.com/place/How-long-did-the-Great-Pyramid-of-Giza-hold-the-record-as-the-tallest-man-made-structure-in-the-world',
      },
    ],
  },
  {
    id: 'coca-cola-vs-eiffel-tower',
    from: '2026-10-24',
    a: { cat: 'brands', year: 1886, de: 'Coca-Cola wird erfunden', en: 'Coca-Cola is invented' },
    b: { cat: 'history', year: 1889, de: 'Der Eiffelturm ist fertig', en: 'The Eiffel Tower is completed' },
    de: { why: 'Coca-Cola wurde im Mai 1886 in Atlanta erstmals ausgeschenkt, der Eiffelturm war im März 1889 fertig.' },
    en: { why: 'Coca-Cola was first served in Atlanta in May 1886, the Eiffel Tower was finished in March 1889.' },
    sources: [
      { label: 'The Coca-Cola Company: The Birth of a Refreshing Idea', url: 'https://www.coca-colacompany.com/about-us/history/the-birth-of-a-refreshing-idea' },
      { label: 'The Eiffel Tower: Origins and Construction of the Eiffel Tower', url: 'https://www.toureiffel.paris/en/the-monument/history' },
    ],
  },

  // Nachschub: 2026-10-31
  {
    id: 'harvard-vs-principia',
    from: '2026-10-31',
    a: { cat: 'history', year: 1636, de: 'Die Harvard-Universität wird gegründet', en: 'Harvard University is founded' },
    b: { cat: 'science', year: 1687, de: 'Newtons „Principia“ erscheint', en: 'Newton’s “Principia” is published' },
    de: { why: 'Harvard wurde im Oktober 1636 gegründet, Newton veröffentlichte sein Gravitationsgesetz in der „Principia“ erst 1687.' },
    en: { why: 'Harvard was founded in October 1636, Newton only published his law of gravitation in the “Principia” in 1687.' },
    sources: [
      { label: 'Harvard University: The history of Harvard University', url: 'https://www.harvard.edu/about/history/' },
      { label: 'Britannica: Principia', url: 'https://www.britannica.com/topic/Principia' },
    ],
  },
  {
    id: 'youtube-vs-pluto-demoted',
    from: '2026-10-31',
    a: { cat: 'space', year: 2006, de: 'Pluto verliert seinen Planetenstatus', en: 'Pluto loses its planet status' },
    b: { cat: 'brands', year: 2005, de: 'YouTube wird gegründet', en: 'YouTube is founded' },
    de: { why: 'YouTube wurde im Februar 2005 registriert, Pluto wurde erst 2006 zum Zwergplaneten erklärt.' },
    en: { why: 'YouTube was registered in February 2005, Pluto was only declared a dwarf planet in 2006.' },
    sources: [
      { label: 'Britannica: YouTube', url: 'https://www.britannica.com/topic/YouTube' },
      { label: 'Britannica: Is Pluto a planet?', url: 'https://www.britannica.com/question/Is-Pluto-a-planet' },
    ],
  },
  {
    id: 'x-rays-vs-olympics',
    from: '2026-10-31',
    a: { cat: 'science', year: 1895, de: 'Röntgen entdeckt die Röntgenstrahlen', en: 'Röntgen discovers X-rays' },
    b: { cat: 'sport', year: 1896, de: 'Die ersten modernen Olympischen Spiele', en: 'The first modern Olympic Games' },
    de: { why: 'Wilhelm Conrad Röntgen entdeckte die Strahlen 1895, die ersten modernen Olympischen Spiele fanden im April 1896 in Athen statt.' },
    en: { why: 'Wilhelm Conrad Röntgen discovered the rays in 1895, the first modern Olympic Games took place in Athens in April 1896.' },
    sources: [
      { label: 'Nobel Prize: Wilhelm Conrad Röntgen – Biographical', url: 'https://www.nobelprize.org/prizes/physics/1901/rontgen/biographical/' },
      { label: 'Britannica: Athens 1896 Olympic Games', url: 'https://www.britannica.com/sports/Athens-1896-Olympic-Games' },
    ],
  },
  {
    id: 'toilet-paper-vs-underground',
    from: '2026-10-31',
    a: { cat: 'history', year: 1863, de: 'Die erste U-Bahn der Welt fährt in London', en: 'The world’s first underground railway opens in London' },
    b: { cat: 'brands', year: 1857, de: 'Klopapier wird erstmals verkauft', en: 'Toilet paper goes on sale' },
    de: { why: 'Joseph Gayetty verkaufte ab 1857 in New York Toilettenpapier, Londons erste U-Bahn fuhr im Januar 1863.' },
    en: { why: 'Joseph Gayetty started selling toilet paper in New York in 1857, London’s first underground line opened in January 1863.' },
    sources: [
      {
        label: 'History.com: All the Ways We’ve Wiped: The History of Toilet Paper and What Came Before',
        url: 'https://www.history.com/articles/toilet-paper-hygiene-ancient-rome-china',
      },
      { label: 'London Transport Museum: The world’s first Underground', url: 'https://www.ltmuseum.co.uk/visit/museum-guide/worlds-first-underground' },
    ],
  },
  {
    id: 'railway-vs-photograph',
    from: '2026-10-31',
    a: { cat: 'tech', year: 1827, approx: true, de: 'Das älteste erhaltene Foto entsteht', en: 'The oldest surviving photograph is made' },
    b: { cat: 'tech', year: 1825, de: 'Erster öffentlicher Personenzug mit Dampflok', en: 'First steam passenger train on a public railway' },
    de: { why: 'Der erste Dampfzug mit Passagieren fuhr im September 1825 in England, Niépces ältestes erhaltenes Foto entstand um 1827.' },
    en: { why: 'The first steam passenger train ran in England in September 1825, Niépce’s oldest surviving photograph was made around 1827.' },
    sources: [
      {
        label: 'National Railway Museum: 2025: Celebrating 200 Years of the Stockton & Darlington Railway',
        url: 'https://blog.railwaymuseum.org.uk/2025-celebrating-200-years-of-the-stockton-darlington-railway/',
      },
      { label: 'Harry Ransom Center: The Niépce Heliograph', url: 'https://www.hrc.utexas.edu/niepce-heliograph/' },
    ],
  },

  // Nachschub: 2026-11-07
  {
    id: 'jigsaw-vs-hot-air-balloon',
    from: '2026-11-07',
    a: { cat: 'history', year: 1766, approx: true, de: 'Das erste Puzzle entsteht', en: 'The first jigsaw puzzle is made' },
    b: { cat: 'science', year: 1783, de: 'Der erste Heißluftballon steigt auf', en: 'The first hot-air balloon takes off' },
    de: { why: 'John Spilsbury machte um 1766 aus einer Landkarte das erste Puzzle, die Brüder Montgolfier ließen 1783 den ersten Heißluftballon steigen.' },
    en: { why: 'John Spilsbury turned a map into the first jigsaw puzzle around 1766, the Montgolfier brothers launched the first hot-air balloon in 1783.' },
    sources: [
      { label: 'The Strong National Museum of Play: The First Jigsaw Puzzle', url: 'https://www.museumofplay.org/blog/the-first-jigsaw-puzzle/' },
      { label: 'Britannica: Joseph-Michel and Jacques-Étienne Montgolfier', url: 'https://www.britannica.com/biography/Montgolfier-brothers' },
    ],
  },
  {
    id: 'pac-man-vs-cd',
    from: '2026-11-07',
    a: { cat: 'tech', year: 1982, de: 'Die CD kommt auf den Markt', en: 'The CD goes on sale' },
    b: { cat: 'popculture', year: 1980, de: 'Pac-Man erscheint', en: 'Pac-Man is released' },
    de: { why: 'Pac-Man kam 1980 in die Spielhallen, die Compact Disc wurde erst 1982 verkauft.' },
    en: { why: 'Pac-Man hit arcades in 1980, the compact disc only went on sale in 1982.' },
    sources: [
      { label: 'The Strong National Museum of Play: Pac-Man', url: 'https://www.museumofplay.org/games/pac-man/' },
      { label: 'Britannica: Compact disc (CD)', url: 'https://www.britannica.com/technology/compact-disc' },
    ],
  },
  {
    id: 'stonehenge-vs-last-mammoths',
    from: '2026-11-07',
    a: { cat: 'history', year: -3000, approx: true, de: 'In Stonehenge entsteht der erste Ringgraben', en: 'Stonehenge gets its first circular ditch' },
    b: { cat: 'animals', year: -2300, approx: true, de: 'Die letzten Mammuts sterben aus', en: 'The last mammoths die out' },
    de: { why: 'Stonehenge begann um 3000 v. Chr. als Ringgraben, die letzten Mammuts lebten noch bis vor rund 4300 Jahren.' },
    en: { why: 'Stonehenge began as a circular ditch around 3000 BC, the last mammoths survived until about 4,300 years ago.' },
    sources: [
      { label: 'English Heritage: History of Stonehenge', url: 'https://www.english-heritage.org.uk/visit/places/stonehenge/history-and-stories/history/' },
      {
        label: 'Smithsonian Magazine: The Last Wooly Mammoths Died Isolated and Alone',
        url: 'https://www.smithsonianmag.com/smart-news/last-wooly-mammoths-died-isolated-and-alone-180955208/',
      },
    ],
  },
  {
    id: 'barbie-vs-laser',
    from: '2026-11-07',
    a: { cat: 'science', year: 1960, de: 'Der erste Laser leuchtet', en: 'The first laser shines' },
    b: { cat: 'popculture', year: 1959, de: 'Barbie kommt auf den Markt', en: 'Barbie is launched' },
    de: { why: 'Barbie feierte im März 1959 Premiere, den ersten funktionierenden Laser baute Theodore Maiman 1960.' },
    en: { why: 'Barbie debuted in March 1959, Theodore Maiman built the first working laser in 1960.' },
    sources: [
      { label: 'Britannica: When did Barbie officially make her debut?', url: 'https://www.britannica.com/question/When-did-Barbie-officially-make-her-debut' },
      { label: 'Britannica: Theodore H. Maiman', url: 'https://www.britannica.com/biography/Theodore-Maiman' },
    ],
  },
  {
    id: 'running-machine-vs-railway',
    from: '2026-11-07',
    a: { cat: 'tech', year: 1817, de: 'Drais fährt mit seiner Laufmaschine', en: 'Drais rides his running machine' },
    b: { cat: 'tech', year: 1825, de: 'Erster öffentlicher Personenzug mit Dampflok', en: 'First steam passenger train on a public railway' },
    de: { why: 'Karl Drais fuhr 1817 mit seiner Laufmaschine, dem Vorläufer des Fahrrads. Der erste öffentliche Dampfzug mit Passagieren folgte 1825.' },
    en: { why: 'Karl Drais rode his running machine, the ancestor of the bicycle, in 1817. The first public steam passenger train followed in 1825.' },
    sources: [
      { label: 'Britannica: Draisienne', url: 'https://www.britannica.com/technology/draisienne' },
      {
        label: 'National Railway Museum: 2025: Celebrating 200 Years of the Stockton & Darlington Railway',
        url: 'https://blog.railwaymuseum.org.uk/2025-celebrating-200-years-of-the-stockton-darlington-railway/',
      },
    ],
  },
];
