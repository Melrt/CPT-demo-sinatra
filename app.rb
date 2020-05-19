require "sinatra"

enable :static

# Available colors
BLUE   = "blue"
GREEN  = "green"
PURPLE = "purple"
YELLOW = "yellow"

COLORS = [BLUE, GREEN, PURPLE, YELLOW]

get "/" do
  @profiles = [
    {
      color: COLORS.sample,
      first_name: "Julie",
      last_name: "Boenec",
      gender: "woman",
      city: "Copenhague",
      quote: "Plus je le plonge dans le domaine du web et de la programmation, plus je réalise la montagne d'éléments à connaitre et à prendre en compte. Je prends des cours du soir et des cours en ligne, qui représentent une structure, un chemin pour ne pas se perdre en forêt. En parallèle, je code un peu tous les jours soit juste pour me détendre (JS ou PY), ou pour des projets précis..."
    },
    {
      color: COLORS.sample,
      first_name: "Fadal",
      last_name: "El ABDIOUI",
      gender: "man",
      city: "Versoix en Suisse",
      quote: "Bonjour,\r\n\r\nJe suis inscris à la Batch d'été (début le 6 juillet) du Wagon à lausanne, j'ai effectué le prepwork et j'aurais souhaité participer à votre programme afin de préparer au mieux mon bootcamp .\r\n\r\nJ'espère que le fais de ne pas être de la région de Rennes ne me sera pas préjudiciable .\r\n\r\nMerci par avance"
    },
    {
      color: COLORS.sample,
      first_name: "Erick",
      last_name: "Laborier",
      gender: "man",
      city: "Nantes",
      quote: "Déjà, bravo pour cette initiative. J'espère apprendre des bases de codes pour progresser dans mon métier et ma vie d'entrepreneur.\r\nAujourd'hui, je suis COO dans une société d'événementiel, et les bases de code vont, j'espère, me permettre de faciliter le développement de mon activité le temps que notre budget soit suffisant pour faire appel à des développeurs si nécessaire."
    },
    {
      color: COLORS.sample,
      first_name: "Michael",
      last_name: "Hirbec",
      gender: "man",
      city: "Nantes",
      quote: "1/ Comprendre les fondamentaux du coding et les enjeux des différents languages.\r\n\r\n2/ Acquérir quelques notions pour mieux comprendre et pouvoir échanger avec les développeurs au sein de mon activité\r\n\r\n3/ développer une app suite à la formation."
    },
    {
      color: COLORS.sample,
      first_name: "Thibault",
      last_name: "Cartier",
      gender: "man",
      city: "Rennes",
      quote: "J’ai déjà complété environ 50% de la track Ruby et je voudrais approfondir. J’ai dans l’idée de participer au prochain bootcamp de Rennes"
    },
    {
      color: COLORS.sample,
      first_name: "Cédric",
      last_name: "Morvan",
      gender: "man",
      city: "BREST",
      quote: "Je souhaite apprendre les bases du code dans une éventuelle reconversion, je suis curieux et le domaine m'intéresse. J'ai déjà effectué des leçons en ligne mais ce n'est pas toujours simple sans accompagnement. Rejoindre la formation me permettra de voir si ce domaine pourrai me correspondre car cela serait un sacré virage dans ma carrière professionnelle."
    },
    {
      color: COLORS.sample,
      first_name: "Cédric",
      last_name: "LE BRUN",
      gender: "man",
      city: "Nantes",
      quote: "J'ai pour projet d'apprendre à coder en suivant une formation pour changer de voie professionnelle. Ce programme va, je l'espère, me conforter dans ce choix, me faire découvrir les bases et me donner un bon aperçu de ce que je pourrais faire. C'est donc plein de motivation que je souhaite suivre ce programme et me donner à fond pour franchir le pas et me lancer à fond dans l'apprentissage du code par la suite."
    },
    {
      color: COLORS.sample,
      first_name: "Germain",
      last_name: "Baclet",
      gender: "man",
      city: "Nantes",
      quote: "Apprécier le gain de productivité qu'offre Ruby et pouvoir réaliser des POC"
    },
    {
      color: COLORS.sample,
      first_name: "Emmanuel",
      last_name: "Gréau",
      gender: "man",
      city: "Nantes",
      quote: "Ce programme va me permettre de mettre un premier pas dans cet univers"
    },
    {
      color: COLORS.sample,
      first_name: "Pauline",
      last_name: "Trabuc",
      gender: "woman",
      city: "Helsinki",
      quote: "Après avoir suivi le wébinaire sur Ruby d'avril, je suis tentée d'en apprendre plus. Je voudrais approfondir ce que j'ai appris pendant le wébinaire. J'avais aussi suivi le Women coding day mi-avril, que j'avais bien apprécié, et je souhaiterais en savoir plus sur Ruby, abordé rapidement lors de cette session."
    },
    {
      color: COLORS.sample,
      first_name: "Fred",
      last_name: "Gibert",
      gender: "man",
      city: "Nantes",
      quote: "J'ai l'intention de suivre la formation de 9 semaines et suis actuellement en montage de dossier de financement. Cette première formation gratuite m'aidera à confirmer mes capacités à devenir codeur. Ce sera aussi très utile pour démontrer ma détermination auprès des institutions de financement de formation."
    },
    {
      color: COLORS.sample,
      first_name: "christine",
      last_name: "le gouestre",
      gender: "woman",
      city: "Saint nazaire",
      quote: "J aimerais en savoir plus et savoir si je peux apprendre pour devenir autonome dans la création de site. Et aussi rencontrer des gens auxquels je pourrais faire appel par la suite...si la création se fait\r\nJ espere étre sélectionnée. Si je viens aussi régulièrement sur Nantes.\r\nJe vous remercie de votre offre\r\nBien à vous\r\nChristine"
    },
    {
      color: COLORS.sample,
      first_name: "Davide",
      last_name: "Usai",
      gender: "man",
      city: "Nantes",
      quote: "Hello, j’ai toujours entendu parler de Ruby, de Ruby on Rails, sans jamais avoir eu l’occasion d’écrire quelques lignes, même pas un tout petit Hello World. Par ailleurs j’aimerais profiter cette opportunité pour connaitre un peu mieux la méthode pédagogique du Wagon."
    },
    {
      color: COLORS.sample,
      first_name: "patrick",
      last_name: "Brouchet",
      gender: "man",
      city: "Nantes",
      quote: "Une compréhension précise d'un langage orienté objet. Une étude de cas pratique avec ruby et éventuellement son framework rails. Un avant goût pour savoir si je m'inscris à la formation complète sur plusieurs mois."
    },
    {
      color: COLORS.sample,
      first_name: "Noham",
      last_name: "MEDYOUNI",
      gender: "man",
      city: "Nantes",
      quote: "Je cherche à étendre mon champs d’application, et d’élever ma vision de l’IT. À l’heure d’aujourd’hui je suis très infrastructure, c’est la raison pour laquelle je souhaite acquérir quelques compétences au niveau code."
    },
    {
      color: COLORS.sample,
      first_name: "Régis",
      last_name: "Guérin",
      gender: "man",
      city: "Nantes",
      quote: "A court terme, développer toutes les compétences pour être plus à l'aise au sein d'une équipe tech et à moyen long terme apprendre à coder mes propres applications et sites web de façon autonome ;)"
    },
    {
      color: COLORS.sample,
      first_name: "Sebastien",
      last_name: "Lavie",
      gender: "man",
      city: "Lisieux",
      quote: "je me suis mis a coder en découvrant le VBA il y a une quinzaine d'année (pas forcement la bonne base), après avoir essayé de faire du JAVA pendant 6 mois en cours sans jamais arriver a faire fonctionner mes programmes..."
    },
    {
      color: COLORS.sample,
      first_name: "Claire",
      last_name: "Foucault",
      gender: "woman",
      city: "Vallet",
      quote: "Je suis en plein questionnement quant à mon avenir professionnel. Je suis embarquée dans une aventure folle avec mon mari qui produit/commercialise un logiciel pour SF libérales et le succès fait qu'on ne serait pas trop de 2 à temps plein."
    },
    {
      color: COLORS.sample,
      first_name: "Quatrine",
      last_name: "Ducroux",
      gender: "woman",
      city: "Nantes",
      quote: "Comprendre comment ça marche! J'ai peut-être aussi envie de créer une app pour mobile, qui sait?"
    },
    {
      color: COLORS.sample,
      first_name: "Zeïneb",
      last_name: "Ben Becher",
      gender: "woman",
      city: "Nantes",
      quote: "Je suis intéressée par le bootcamp de 9 semaines et j'aimerais m'assurer que le code est fait pour moi avant de m'engager dans la formation. J'ai\r\n\r\n travaillé pendant 4 ans dans le digital chez Dior. J'ai de bonnes connaissances en UX et PO. Aujourd'hui je souhaite monter un projet qui nécessite une plateforme web, et je ne souhaite pas être dépendante d'autres développeurs pour lancer mon projet..."
    },
    {
      color: COLORS.sample,
      first_name: "laure",
      last_name: "dolisy",
      gender: "woman",
      city: "Nantes",
      quote: "Je souhaite développer mes connaissances en la matière, c'est un univers que je découvre petit à petit et j'ai besoin d’accélérer les choses. Je ne pensais pas que le codage était abordable pour des non initiés et je voudrais vraiment grandir sur ce sujet. De plus, j'ai besoin de devenir à l'aise avec cet écosystème car dans le cadre de mon activité je dois créer un certain nombre de landing pages, et je suis contrainte d'utiliser des CMS... "
    },
    {
      color: COLORS.sample,
      first_name: "samuel",
      last_name: "moreau",
      gender: "man",
      city: "Rennes",
      quote: "Je cherche à me positionner sur du développement back-end à l'avenir et le ruby est un choix intéressant pour un langage qui offre beaucoup de flexibilité sur des projets de différentes tailles"
    },
    {
      color: COLORS.sample,
      first_name: "Laetitia",
      last_name: "Piat",
      gender: "woman",
      city: "Chartres",
      quote: "Je commence la formation développeur web chez OpenClassrooms dès lundi.\r\nActuellement je gère HTML et CSS. J’aimerai apprendre d’autre langages mais seule ce n’est vraiment pas évident... J’essai actuellement d’apprendre le PHP, j’y arrive mais je pense que j’y arriverai mieux si j’étais accompagnée...\r\ndonc Ruby pourquoi pas ☺️"
    },
    {
      color: COLORS.sample,
      first_name: "Justine",
      last_name: "Provent",
      gender: "woman",
      city: "Grenoble ",
      quote: "Je suis actuellement chargée de communication en intérim, job que j’ai obtenu à la suite de ma étude (master marketing digital a l’INSEEC BS). A la suite de ma mission qui se termine dans 1 an, je souhaiterais me reconvertir, et devenir digital nomade tout en faisant le tour du monde. J’aimerais donc apprendre à coder pour en faire mon job."
    },
    {
      color: COLORS.sample,
      first_name: "Nathalie",
      last_name: "Thomas",
      gender: "woman",
      city: "Paris",
      quote: "Ce programme me permettra d'acquérir les notions de base de code Ruby dont j'ai besoin pour m'affirmer dans mon travail, et confirmer mon souhait d'une réorientation professionnelle dans le domaine du développement web avec l'ambition de créer des sites web. J'espère que ce programme me permettra aussi de bénéficier d'une émulation productive dans une ambiance bienveillante et pédagogue."
    },
    {
      color: COLORS.sample,
      first_name: "Briac",
      last_name: "LOUAZEL",
      gender: "man",
      city: "Rennes",
      quote: "Acquérir les bases du code. J’ai lancé une plateforme web de location c2c.J’atteint les limite de la plateforme  que je « loue ». Je vais devoir la developper, ou la faire développer, dans les 2 cas, il me faudra ces connaissances."
    },
    {
      color: COLORS.sample,
      first_name: "Francois",
      last_name: "DUMAS LATTAQUE",
      gender: "man",
      city: "Nantes",
      quote: "Je souhaite obtenir des bases pour pouvoir tester et lancer des idees que j'ai et aussi savoir si coder me plait vraiment afin de pouvoir envisager de faire la formation du Wagon."
    },
    {
      color: COLORS.sample,
      first_name: "Sarah",
      last_name: "Chevenat",
      gender: "woman",
      city: "Paris ",
      quote: "J'ai toujours été attirée par le secteur du digital (même si mon stage actuel ne le reflète pas). J'aimerais acquérir les notions nécessaires afin de pouvoir m'orienter vers des postes de product manager ou UX/UI. J'avais commencé à suivre les modules du wagon lorsque vous étiez venus à Audencia (Nantes) fin 2017 mais les cours ont subitement été arrêtés sans explication. J'aimerais pouvoir finir cette formation"
    },
    {
      color: COLORS.sample,
      first_name: "Iuliia",
      last_name: "Tushkova",
      gender: "woman",
      city: "Nantes",
      quote: "algorithmie, révision de grandes notions, premiers pas en Ruby"
    },
    {
      color: COLORS.sample,
      first_name: "Olivier",
      last_name: "Olivier",
      gender: "man",
      city: "Poitiers",
      quote: "une première idée de ce qu'est le code"
    },
    {
      color: COLORS.sample,
      first_name: "Yessi",
      last_name: "YESSI-Y-MUNGUENGUI",
      gender: "men",
      city: "Nantes",
      quote: "J’espère pouvoir être suffisamment autonome pour pouvoir offrir des solutions concrètes en Ruby.  Obtenir des nouvelles compétences est très important pour moi, étant un jeune étudiant en recherche d’alternance. En effet, ce cours en ligne me permettra assurément de m’ouvrir des portes et de devenir meilleur tout simplement. Étant actuellement en cours à distance de 13 à 17h, je dispose de la matinée pour préparer les cours en parallèles de mes recherches d’alternance... "
    },
    {
      color: COLORS.sample,
      first_name: "Aïssata",
      last_name: "Lelandais",
      gender: "woman",
      city: "Rennes",
      quote: "Avoir des bases supplémentaires en langage de programmation et pouvoir être plus autonome sur du back end"
    },
    {
      color: COLORS.sample,
      first_name: "Eugène",
      last_name: "Guilavogui",
      gender: "man",
      city: "Abidjan",
      quote: "Je voudrais pouvoir programmer pour avoir une indépendance totale."
    },
    {
      color: COLORS.sample,
      first_name: "Souâd",
      last_name: "T",
      gender: "woman",
      city: "Nantes",
      quote: "Tester mon appétence et aptitude avant d'envisager une inscription à une formation complète"
    },
    {
      color: COLORS.sample,
      first_name: "Isabelle",
      last_name: "Pouget",
      gender: "woman",
      city: "Nantes",
      quote: "Bonjour,\r\n\tIngénieur agronome depuis 2013, je souhaite me reconvertir dans la tech. Construire des outils fiables et faciles d'utilisation, dans une logique de forte collaboration avec mes collègues m'attire particulièrement.\r\n\tMon diplôme et mes expériences professionnelles me permettent de mettre en avant ma capacité à analyser les besoins et à résoudre des problèmes en équipe. Consciente qu'il me manque des connaissances techniques pour intégrer adéquatement le monde de la tech, j'envisage de suivre la formation de développeur web du Wagon Nantes..."
    },
    {
      color: COLORS.sample,
      first_name: "Sofia",
      last_name: "Idri",
      gender: "woman",
      city: "Rennes",
      quote: "Je pense me familiariser avec certains languages mais surtout acquérir les réflexe et méthodologie du développement. Je pourrais ainsi par la suite décider de suivre une formation longue dans le domaine pour ma reconversion ou juste être plus efficace dans mon domaine au quotidien grâce a ces nouvelles connaissances."
    },
    {
      color: COLORS.sample,
      first_name: "Pierre-Marie",
      last_name: "Servel",
      gender: "man",
      city: "Nantes",
      quote: "Une compréhension du mécanisme derrière certains produits/application web. De formation sales, je manque de bagage technique : dans mon métier, je suis amené à parler fréquemment avec des développeurs. J’ai envie de passer un step en ayant une base. Je crois que le bootcamp peut m’apporter cette base."
    },
    {
      color: COLORS.sample,
      first_name: "Arthur",
      last_name: "Boudreault",
      gender: "man",
      city: "Rennes",
      quote: "Oui j'ai bien envie de voir la qualité de vos enseignements"
    },
    {
      color: COLORS.sample,
      first_name: "emilie",
      last_name: "fleuret",
      gender: "man",
      city: "Paimboeuf",
      quote: "Je suis en train de monter un site de vente en ligne sur Wordpress de façon totalement débutante. Cela fait quelque temps que je tatonne dessus et je vois clairement mes limites. Je pense que, en sachant coder, je pourrais avancer plus vite dans sa création et résoudre les problèmes que je vais rencontrer..."
    },
    {
      color: COLORS.sample,
      first_name: "Jennifer",
      last_name: "Petit",
      gender: "woman",
      city: "Nantes",
      quote: "C'est une activité qui m'attire mais que je n'ai pas eu le temps d'approfondir. Ça me permettra de me rendre compte de ce que c'est exactement et si ça le plaît pour aller plus loin."
    },
    {
      color: COLORS.sample,
      first_name: "Christopher",
      last_name: "Baron",
      gender: "man",
      city: "Montaigu ",
      quote: "Acquérir davantage de compétence!"
    },
    {
      color: COLORS.sample,
      first_name: "Raquel",
      last_name: "Sanchez Carrillo",
      gender: "woman",
      city: "Rennes",
      quote: "Gagner de la confiance pour franchir le pas vers mon projet de reconversion en tant que Data Analyst."
    },
    {
      color: COLORS.sample,
      first_name: "Yohan",
      last_name: "Navennec",
      gender: "man",
      city: "Rennes",
      quote: "Rentrer concrètement dans le code pour valider ma motivation avant de m'engager dans une reconversion professionnelle. j'ai déjà regardé HTML et CSS mais Ruby serrai mon premier véritable langage. Je pourrait ainsi voire si la pédagogie du wagon me convient. J'ai le temps et ma motivation, mais je cherche un programme structuré... "
    },
    {
      color: COLORS.sample,
      first_name: "Arnaud",
      last_name: "Adam",
      gender: "man",
      city: "Aix-en-Provence",
      quote: "J'ai découvert le Wagon Nantes l'année dernière et je contemplais m'inscrire au bootcamp de l'été. Nous sommes aujourd'hui sur Aix-en-Provence mais avec des options de retour sur Nantes.\r\nLe programme 'Le code pour tou.te.s' me parait comme un étape fondatrice de ma transition vers des missions freelance, en télétravail, afin d'obtenir une indépendance géographique et permettant de m'investir également dans des missions caritatives."
    },
    {
      color: COLORS.sample,
      first_name: "Nicolas",
      last_name: "AUVRAY",
      gender: "man",
      city: "Nantes",
      quote: "J'ai appris un peu de code en autodidacte HTML et CSS. Après une prise de contact avec vous à La Cantine pour suivre votre formation Full Stack, j'avais découvert Ruby et votre programme me permettra de découvrir ce langage."
    },
    {
      color: COLORS.sample,
      first_name: "Camille",
      last_name: "Chenuil",
      gender: "woman",
      city: "Clisson",
      quote: "J'ai essayé d'apprendre à coder de la pire manière qui existe (de manière 100% théorique), je cherche une approche différente pour développer des compétences de programmation pour le développement de mon entreprise."
    },
    {
      color: COLORS.sample,
      first_name: "benoit",
      last_name: "rolland",
      gender: "man",
      city: "Nantes",
      quote: "Je gère des sites web au quotidien et j'ai toujours un peu de frustration de ne pas pouvoir aller plus loin dans l'accompagnement sur le code. J'aimerais vraiment être plus autonome sur le code pour proposer plus de services qu'actuellement au sein de ma mission."
    },
    {
      color: COLORS.sample,
      first_name: "Amélie",
      last_name: "ROUILLER",
      gender: "woman",
      city: "Angers",
      quote: "Je souhaite développer une nouvelle compétence. Actuellement en deuxième année de Master Digital je n'ai pas eu la chance de le voir en cours et je souhaite ajouter une nouvelle corde à mon arc. Cela me permettra également d'être plus à l'aise dans mon travail actuel…"
    },
    {
      color: COLORS.sample,
      first_name: "Marie-Hélène",
      last_name: "Poyet",
      gender: "woman",
      city: "Bry-sur-Marne et Nantes bientôt",
      quote: "Je crée des sites sous WordPress en mode \"no code\" et j'aimerais acquérir les bases du code pour pouvoir \"mettre les mains dans le cambouis\" et ne pas me sentir perdue quand on me parle balises :)"
    },
    {
      color: COLORS.sample,
      first_name: "Chantal",
      last_name: "RAKOTOARIVELO",
      gender: "woman",
      city: "Nantes",
      quote: "Manager expérimenté, je souhaite valoriser les acquis sur mon CV et démontrer mes appétences pour le code et le numérique en général. Je suis également toujours curieuse d'apprendre !"
    },
    {
      color: COLORS.sample,
      first_name: "David",
      last_name: "Dias",
      gender: "man",
      city: "Madrid, Espagne",
      quote: "Apprender les basics"
    },
    {
      color: COLORS.sample,
      first_name: "Gwenaëlle",
      last_name: "Teste",
      gender: "woman",
      city: "Nantes",
      quote: "Des connaissances en Ruby"
    },
    {
      color: COLORS.sample,
      first_name: "Louise",
      last_name: "Vialard",
      gender: "woman",
      city: "Nantes",
      quote: "Des bases d'apprentissage qui me permettront d'être plus indépendante dans mon métier. Qui pourra aussi être une base aux futures formations si je le souhaite."
    },
    {
      color: COLORS.sample,
      first_name: "Emmanuel",
      last_name: "ALBERT",
      gender: "man",
      city: "Nantes",
      quote: "Je souhaite apprendre à coder afin de comprendre le monde d'aujourd'hui et de demain. Le code sera l’écosystème de demain et si je souhaites continuer à conseiller les entreprises et à les orienter dans leurs choix stratégiques il est impératif que je comprenne le code."
    },
    {
      color: COLORS.sample,
      first_name: "Marie-Christine",
      last_name: "Joutard",
      gender: "woman",
      city: "Nantes",
      quote: "Il s'agit de me remettre au développement pour augmenter toutes mes chances de missions"
    },
    {
      color: COLORS.sample,
      first_name: "Viviane",
      last_name: "Bangar",
      gender: "woman",
      city: "Nantes",
      quote: "Une envoie d'évolution professionnelle. Une corde manque à mon arc pour m'éclater dans mon travail."
    },
    {
      color: COLORS.sample,
      first_name: "Sandra",
      last_name: "Petit",
      gender: "woman",
      city: "Nantes",
      quote: "M'initier à un langage de développement que je ne connais pas, voir ce qu'il peut m'apporter dans le cadre de mon activité, s'il est pertinent pour moi de l'ajouter à mon apprentissage du code (HTML, CSS, JS), voir les possibilités offertes par Ruby et m'amuser :)"
    },
    {
      color: COLORS.sample,
      first_name: "Pascal",
      last_name: "Sené",
      gender: "man",
      city: "Lannion",
      quote: "Savoir faire un site en Ruby et faire du Reverse Engineering via ce langage"
    },
    {
      color: COLORS.sample,
      first_name: "mohamed",
      last_name: "malek",
      gender: "man",
      city: "Tunis",
      quote: "Je souhaite avoir des connaissances sur le langage ruby"
    },
    {
      color: COLORS.sample,
      first_name: "Suzanne",
      last_name: "Jobard",
      gender: "woman",
      city: "Londres",
      quote: "J’avais l’idée à mon retour en France de faire le web developemt bootcamp du wagon donc ce programme est parfait pour une introduction et voir si ça me plaît.\r\nEt ce qui m’intéresse aussi c’est que les explications seront en français. Ça fait quelque temps que je suis sur codecademy et c’est vrai que apprendre une autre langue en anglais peut être parfois compliqué."
    },
    {
      color: COLORS.sample,
      first_name: "Patricia",
      last_name: "Le dantec",
      gender: "woman",
      city: "La chapelle sur erdre ",
      quote: "Découvrir comprendre et apprendre ce qu'est le code puis de continuer à travailler pour faire des analyses"
    },
    {
      color: COLORS.sample,
      first_name: "Fanch",
      last_name: "Le dantec",
      gender: "man",
      city: "Nantes",
      quote: "Mon objectif est de découvrir le monde du Code et confirmer mon intérêt pour ce métier.\r\nC'est pour moi un moyen de me tester pour valider ma capacité à apprendre un nouveau domaine technique. Je suis à un moment de ma vie professionnelle où je n'ai pas le droit de me tromper dans ma reconversion. Je suis prêt à quitter une situation avantageuse pour me relancer. J'ai aujourd'hui envie d'être passionné par mon travail... "
    },
    {
      color: COLORS.sample,
      first_name: "Benjamin",
      last_name: "Communier",
      gender: "man",
      city: "Nantes",
      quote: "Valider ou non mon appétence pour la programmation et ainsi confirmer ou non mon projet de reconversion professionnel."
    },
    {
      color: COLORS.sample,
      first_name: "Maxime",
      last_name: "Reuiller",
      gender: "man",
      city: "Nantes",
      quote: "Le développement web est un pouvoir magique dont je souhaite acquérir le savoir depuis plusieurs années. Cette force m'a toujours fasciné.\r\n\r\nMais avoir envie d'apprendre une nouvelle compétence et être passionné pour cette dernière ne suffit pas toujours pour passer à l'action..."
    },
    {
      color: COLORS.sample,
      first_name: "Alexandre",
      last_name: "Houizot",
      gender: "man",
      city: "Laval",
      quote: "Co-fondateur d'une néo-assurance dédiée à la location de voiture (SereniTrip), je souhaite apprendre le code pour gagner en efficacité en:\r\n- réalisant des tâches moi-même\r\n- drivant mieux notre agence dev en comprenant mieux les problématiques, surtout que l'on a de gros projets qui arrivent.\r\n\r\nJe suis expert en acquisition digital, rajouter un volet \"développeur\" à mon arc est indispensable à la réussite de ma boite. Je souhaite à terme coder notre futur projet prévu en fin d'année.\r\nJ'aime les challenges et la nouveauté..."
    },
    {
      color: COLORS.sample,
      first_name: "Florian",
      last_name: "Hervéou",
      gender: "man",
      city: "Nantes",
      quote: "Je traîne avec des développeurs depuis pas mal de temps et j'ai toujours voulu mieux comprendre leur job. J'ai déjà passé un peu de temps sur Codecademy mais il y a quelques années déjà. J'ai dans un coin de ma tête de \"faire Le Wagon\" depuis longtemps donc je me dis que c'est l'occasion de se lancer une première fois... "
    },
    {
      color: COLORS.sample,
      first_name: "Charlotte",
      last_name: "Guillot",
      gender: "woman",
      city: "Nantes",
      quote: "J'espère développer les maigres connaissances que j'ai dans le domaine du code (html) et surtout acquérir des connaissances qui pourront me servir pour la refonte du site internet de mon entreprise (sous magento) afin de ne pas toujours compter sur l'éditeur qui n'est pas toujours fiable."
    },
    {
      color: COLORS.sample,
      first_name: "Paul",
      last_name: "Calvis",
      gender: "man",
      city: "Toulouse",
      quote: "Je souhaiterais apprendre les bases du code pour mieux appréhender ce secteur auquel je suis confronté tous les jours dans le développement online de mon activité."
    },
    {
      color: COLORS.sample,
      first_name: "Julien",
      last_name: "VICTOR",
      gender: "man",
      city: "Teillé",
      quote: "Acquérir de nouvelles compétences et approfondir certains aspects du code Ruby"
    },
    {
      color: COLORS.sample,
      first_name: "Armel",
      last_name: "AHEHEHINNOU",
      gender: "man",
      city: "Nantes",
      quote: "Je souhaite consolider mes connaissances et bosser davantage les bases de la programmation avant de me lancer pour de bon en tant que dev"
    },
    {
      color: COLORS.sample,
      first_name: "Stéphanie",
      last_name: "ETIENNE",
      gender: "woman",
      city: "Orvault",
      quote: "Je n'ai aucune notion du code mais j'en entends parler et je suis curieuse de savoir ce que c'est si ça m'intéresse pour éventuellement me réorienter professionnellement."
    },
    {
      color: COLORS.sample,
      first_name: "Anne-cecile",
      last_name: "Cire",
      gender: "woman",
      city: "Nantes",
      quote: "Comprendre comment fonctionne le code pour mieux comprendre les enjeux des développeurs de mon entreprise . Je m interroge sur comment fonctionne les programmes web les possibilités qu offrent le code dans le monde de demain ou le nulerique est primordial"}
  ]

  erb :index
end
