-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 12 août 2019 à 20:18
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_blog_cabinet_0`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_descr` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `blog_categories`
--

INSERT INTO `blog_categories` (`cat_id`, `cat_descr`) VALUES
(1, 'Les autres initiatives'),
(2, 'Sujets de société'),
(3, 'Podcasts des émissions'),
(4, 'Culture Q'),
(5, 'Au fond des choses'),
(6, 'Témoignages');

-- --------------------------------------------------------

--
-- Structure de la table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `comment_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire',
  `comment_post_ID` int(11) NOT NULL COMMENT 'Clé vers le post',
  `comment_author` int(11) NOT NULL COMMENT 'Clé vers l''auteur',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date du commentaire',
  `comment_content` text NOT NULL COMMENT 'Texte du commentaire',
  PRIMARY KEY (`comment_ID`),
  KEY `fk_blog_comments_blog_posts1` (`comment_post_ID`),
  KEY `fk_blog_comments_blog_users1` (`comment_author`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `blog_comments`
--

INSERT INTO `blog_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_date`, `comment_content`) VALUES
(1, 3, 6, '2018-12-06 07:28:00', 'Super podcast ! pour rebondir sur ce sujet, j’ai découvert le drap de lune pour avoir de l’intimité même pendant ses menstruations et j’ai trouvé ça super bien ! ce n’est pas encore très développé car encore tabou mais super pratique ! celui de plim est super confortable ! et bien sur, en parlant de règles, j’ai testé les serviettes de plim (elles sont lavables justement et en coton bio) : ça m’a juste changé la vision de mes règles et mon quotidien.'),
(2, 4, 7, '2019-01-31 21:05:00', 'Super échanges, des propos pro et vous faites un super boulot, je suis contente d’être tomber sur votre site…. merci'),
(3, 4, 8, '2019-03-16 17:26:00', 'un site passionnant, je me suis beaucoup retrouvé dans cette analyse des croyances. J’aimerais dire que je suis enseignant en philo, je devrais être plus pointu face aux croyances, eh bien dans le domaine de l’intime je me suis fait avoir par mes croyances… mais à 50 ans je progresse. Enfin je crois'),
(4, 5, 9, '2019-01-19 15:22:00', 'Bonjour, Je vous remercie d’avoir mis la photo de SPECULUM reprenant les comédiennes Caroline SUQUET, Flore GRIMAUD et Delphine Biard. Pouvez-vous intégrer dessous la photo la mention Crédit photo Quaerere © Jean-Luc Maridet Avec mes remerciements,  Bien cordialement, jean-Luc Maridet +33 0 643 774 172'),
(5, 5, 3, '2019-01-20 13:36:00', 'Bonjour, Merci pour votre message et toutes mes excuses. C’est un problème informatique, je ne sais pas pourquoi la légende de la photo n’apparaît pas. J’ai donc ajouté le crédit en fin d’article. Bien cordialement,'),
(6, 5, 9, '2019-01-21 10:20:00', 'Merci à vous, Très bonne journée, Jean-Luc Maridet'),
(7, 8, 10, '2019-04-30 09:57:00', 'Sublime photo et egalement merci pour cette precission forte utile  » le BDSM ne se résume pas au sado masochisme, comme beaucoup de personnes le croient. Il est bien plus riche que cela. « '),
(8, 10, 11, '2019-04-29 13:32:00', 'Top cet épisode ! et oui, les mecs écoutent aussi  Biz'),
(9, 10, 12, '2019-05-03 13:36:00', 'Information Les papillomavirus peuvent se transmettre même par simple contact avec les mains.J’ai personnellement vu en consultation des jeunes des deux sexes qui en étaient atteints alors qu’ils n’avaient jamais eu de rapport sexuel.Leur seul point commun:la masturbation.Alors qu’on soit hétéro,homo,lesbienne ou autre,il faut se faire vacciner. Dr Fischer,médecin à la retraite,Paris'),
(10, 10, 13, '2019-05-11 15:46:00', 'Entièrement d’accord, lorsqu’on supprime des sens, les autres sens prennent encore plus d’importance. L’audio est un sens très suggestif, car il fait énormément travailler l’imaginaire. En tout cas cela semble très intéressant.'),
(11, 10, 14, '2019-07-03 19:43:00', 'J’ai lu qu’on ne pouvait pas se faire vacciner contre toutes les souches de papillomavirus. Et que du coup, même vacciné-e contre certaines, on pourrait très bien être contaminé-e par d’autres. Est-ce que vous pourriez confirmer ?'),
(24, 10, 3, '2019-07-23 10:29:56', 'ghdshshthysr'),
(25, 10, 3, '2019-07-23 10:30:02', 'fezqtguiol;, fdgeqrhgethrzs'),
(28, 10, 3, '2019-07-23 14:29:17', 'gggdfgsgsqgzegz'),
(29, 10, 3, '2019-07-23 14:29:25', 'yooyoyoyoyoyo'),
(36, 13, 10, '2019-07-30 18:56:08', 'vdfvdvd');

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE IF NOT EXISTS `blog_posts` (
  `post_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire',
  `post_author` int(11) NOT NULL COMMENT 'Clé vers l''auteur',
  `post_category` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date du post',
  `post_content` longtext NOT NULL COMMENT 'Contenu du post',
  `post_title` text NOT NULL COMMENT 'Titre du post',
  `post_img_url` text NOT NULL COMMENT 'Url de image du post',
  PRIMARY KEY (`post_ID`),
  KEY `fk_blog_posts_blog_users` (`post_author`),
  KEY `fk_blog_posts_blog_categories1` (`post_category`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `blog_posts`
--

INSERT INTO `blog_posts` (`post_ID`, `post_author`, `post_category`, `post_date`, `post_content`, `post_title`, `post_img_url`) VALUES
(1, 1, 1, '2018-11-05 18:20:00', 'On donne du souffle pour une course solidaire !\r\nPour la troisième année consécutive la Fondation des Femmes, fondation de référence en France pour les Droits des Femmes, organise La Nuit les Relais. Cette soirée solidaire de récolte de fonds s’est déroulée le mardi 4 décembre au Grand Palais à Paris et avait pour but de soutenir les femmes victimes de violences et sensibiliser au sujet.\r\n\r\nDans une ambiance festive, les équipes, composées de 5 à 10 membres et ayant collecté au moins 1 000 euros au préalable, se sont relayées toutes les 8 minutes (on est loin du marathon !). Les fonds collectés sont intégralement reversés aux associations luttant contre les violences faites aux femmes. \r\n\r\nNotre équipe \r\nLe Cabinet de curiosité féminine s’est engagé contre les violences faites aux femmes le mardi 4 décembre 2018 au Grand Palais à Paris. Nous avons récolté 1205 euros.\r\nLes dons effectués donnaient le droit à une déduction fiscale de 66% du montant du don (dans la limite de 20% du revenu imposable).', 'Le CCF participe à la Nuit des Relais 2018 !', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2018/11/Relais-du-4-d%C3%A9cembre-720x315-720x340.jpg'),
(2, 1, 2, '2018-11-27 16:56:00', 'Nous aussi nous avons défilé ce samedi 24 novembre 2018 pour lutter contre les violences sexistes et sexuelles. Cette marche organisée par le mouvement féministe #NousToutes est un vrai succès car il a rassemblé plus de 50000 personnes partout en France. Mais, plus que des mots, nous préférons partager des messages forts qui nous ont parfois bien fait rigoler, parfois ému. Merci à notre photographe @Nicolas de Bacchus pour avoir immortalisé cette journée.', 'Nous Toutes, le 24 novembre 2018', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2018/11/NDB0167-720x340-720x340.jpg'),
(3, 1, 3, '2018-12-02 16:53:00', 'Où l’on parle des ragnagnas…\r\n…des ourses, des Anglais qui débarquent. Où l’on parle d’un sang à l’origine de beaucoup de superstitions, de fantasmes, de tabous. Mais à l’origine surtout de l’humanité !\r\n\r\nAvec Caroline Sahuquet et Aline Stinus, metteuse en scène et comédienne de « Tout sur le ROuge », une pièce en cours d’écriture avec Elise Thiébaut, l’auteure des Règles… quelle aventure !\r\n\r\nUne émission animée par Joe, Cécile Martin et Claire Alquier.', '[PODCAST] Dans les règles', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2018/12/REGLES_FB-705x340-720x340.jpg'),
(4, 2, 3, '2019-01-02 16:55:00', 'Où l’on parle de nos croyances…\r\n… qui peuvent devenir limitantes et nous empêchent de vivre sereinement notre sexualité.\r\n\r\nAvec Mrs Rose\r\n\r\nUne émission animée par Joe, Cécile Martin et Claire Alquier.', '[PODCAST] Déconstruire les croyances limitantes', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/01/DECONSTRUCTION-FB-720x340-720x340.jpg'),
(5, 3, 4, '2019-01-14 16:15:00', '« Un spectacle sur la gynécologie ? Vous êtes sûres ? C’est une drôle d’idée quand même… » Caroline Sahuquet, Flore Grimaud et Delphine Biard ont souvent entendu ça. Mais quand au Cabinet de Curiosité Féminine, on nous a parlé de Speculum, nous, on a dit « Génial !!! C’est quand ? On y va ! ». Nous avions rencontré Caroline Sahuquet lors de l’émission de radio de novembre sur les règles. Elle met en scène Tout sur le Rouge avec Aline Stinus, d’après livre d’Elise Thiébaut. Décidemment, elle pourrait avoir sa carte officielle de Curieuse ! Nous sommes donc allés voir Speculum qui se joue actuellement au Théâtre de la Manufacture des Abbesses à Paris jusqu’au 16 février. Je vous confirme,  ce n’était pas une drôle d’idée mais bien une idée géniale !\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nDe l’intime….\r\n\r\n\r\n\r\nLe spectacle Speculum est né  de la rencontre de trois femmes s’interrogeant sur leur rapport à leur utérus et sa médecine. Partant de leur parcours personnel fait de fausses couches, d’endométriose ou de distilbène[i], elles nous parlent plus largement du lien qu’entretient la gynécologie avec les femmes. Toutes les trois, nous offrent avec pudeur et émotion leurs histoires intimes, celles que bien souvent l’on tait car, non on ne parle pas de son appareil reproducteur dans les diners en ville. Mais, ouvrant la voie de la parole et offrant une oreille pour écouter, les langues vont se délier. Chaque femme a une histoire à raconter. La boîte de Pandore est ouverte.  Il  y a comme une urgence à briser ce tabou millénaire, comme un besoin de raconter ce que personne sans doute ne voulait entendre.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nElles ont alors mené trois ans d’enquête recueillant des témoignages de femmes comme des paroles de médecins ou de penseurs.ses. Elles rencontrent entre autres Benoit de Sarcus – gynécologue  à Nanterre, Marie-Hélène Lahaye – autrice du blog Marie accouche là , Chantal Birman, sage-femme militante[ii]. Elles lisent Benoite Groult[iii], Martin Winkler[iv] et d’autres… Elles se plongent dans l’histoire de la gynécologie, ses fondements pour en comprendre sa pratique actuelle.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nUne violence institutionnalisée\r\n\r\n\r\n\r\nIl ne s’agit pas d’incriminer tous les gynécologues ou personnels de santé mais d’enrayer une machine bien huilée, celle d’une violence médicale, de pratiques habituelles, de manières de faire qui semblent avoir été pensées davantage dans le confort du médecin que dans le souci de la patiente. La position d’accouchement en est le parfait exemple. Être allongée sur le dos avec les pieds relevés dans les étriers n’est pas la position idéale pour expulser un bébé. En revanche, elle offre une parfaite visibilité pour le médecin. En gynécologie comme ailleurs, le médecin est le sachant, il exerce une autorité naturelle sur ses patientes. Quand vous vous installez nue sur la table, sexe béant, le visage d’un.e inconnu.e ou presque, à 5 centimètres de votre intimité, il y a de grande chance pour que vous vous sentiez vulnérable. Personnellement, j’ai toujours la sensation d’une forme de régression. Je me sens paradoxalement comme une enfant sur la table de ma gynéco… Ce que les trois artistes-enquêtrices vont découvrir dépasse ce qu’elles pressentaient. Il y a les gestes médicaux réalisés par surprise, sans le consentement (ex : épisiotomie, point du mari[v]…), ceux interdits car dangereux mais que l’on pratique encore par « habitude » (ex : expression abdominale[vi]…). Et il y a aussi des histoires de viols, d’agressions sexuelles et sexistes. Pour cela, je vous conseille fortement de lire Le Livre Noir de la Gynécologie[vii] de Mélanie Déchalotte ou son documentaire, qui a été aussi une ressource clef pour le spectacle.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nComme le reflet d’une société sexiste\r\n\r\n\r\n\r\nCette violence s’enracine dans un sexisme ordinaire. Le ventre des femmes est un enjeu de pouvoir majeur.  Il en va de la survie de l’espèce. Il en va aussi du maintien d’un asservissement de la femme en tant que mère. Les gynécologues et penseurs de la gynécologie sont majoritairement des hommes, les patientes des femmes. Si aujourd’hui , de plus en plus de gynécologues femmes sont présentes dans les cabinets et hôpitaux, il n’en demeure pas moins que ce sont les hommes qui restent à la tête des grands institutions médicales et que la médecine s’est construite sur des années de monopole masculin. Lors du congrès des gynécologues de 2018, une diapositive  a suscité de vives réactions sur les réseaux sociaux et pour cause : elle comparait les femmes à des juments[viii] ! Charmant ! Speculum est un spectacle militant féministe mettant en lumière une gynécologie construite sur un socle de machisme et qui peine à s’en défaire.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n… à l’universel\r\n\r\n\r\n\r\nDelphine Biard, Flore Grimaud, et Caroline Sahuquet, fortes de leur indignation, nous offrent un spectacle kaléidoscope, foutraque et fantaisiste comme on les aime. Incarnant à elles trois, les cinquante personnages qu’elles ont rencontrés ou lus. Leur urgence à dire ces histoires est jubilatoire. Speculum possède à la fois la force du théâtre documentaire, celui qui nous parle de notre société à partir de faits réels, et l’énergie du théâtre fictionnel, celui du jeu, de la folie, de l’imaginaire.  Les trois formidables comédiennes réussissent ce challenge un peu fou de surfer entre humour et émotion pour nous parler gynécologie. Parler de la gynécologie, c’est un peu nous parler de l’origine du monde, c’est parler de notre humanité, c’est profondément universel.\r\n\r\n\r\nSpeculum, de Delphine Biard, Flore Grimaud, et Caroline Sahuquet, au Théâtre de la Manufacture des Abbesses à Paris jusqu’au 16 févier 2019 du mercredi au samedi à 19h, le 5 mars à Cherbourg – Festival Femmes dans la ville, du 31 mai au 2 juin à Joué-les-Tours – Festival Les Années Joué.\r\n\r\n \r\n\r\n\r\n\r\n[i] Médicament prescrit contre les fausses couches ou pour améliorer la fertilité des femmes entre 1955 et 1977 et qui fut ensuite responsable de nombreuses anomalies génitales, de stérilités, de cancers chez les enfants nés du distilbène.\r\n\r\n\r\n\r\n[ii] Chantal Birman, Au monde – Ce qu’accoucher veut dire, Points, 2009\r\n\r\n\r\n\r\n[iii] Benoite Groult était journalise, militante féministe, autrice, entre autre, de Ainsi soit-elle en 1975, un essai sur la condition féminine.\r\n\r\n\r\n\r\n[iv] Martin Winckler est médecin et romancier, auteur notamment de Le Chœur des Femmes en 2009, qui se passe dans une unité dédiée à la médecine des femmes.\r\n\r\n\r\n\r\n[v] Pratique qui consiste à ajouter un point lorsqu’on recoud une épisiotomie, afin de resserrer l’entrée du vagin et procurer plus de plaisir au « mari ».\r\n\r\n\r\n\r\n[vi] Pratique consistant à appliquer une pression sur le fond de l’utérus (appuyer fermement sur le ventre de la femme) afin de faire sortir le bébé plus vite.\r\n\r\n\r\n\r\n[vii] Mélanie Déchalotte, Le livre noir de la gynécologie, First Edition, 2017\r\n\r\n\r\n\r\n[viii] « Les femmes c’est comme les juments, celles qui ont de grosses hanches ne sont pas les plus agréables à monter, mais c’est celles qui mettent bas le plus facilement »\r\n\r\n\r\n\r\nUne : Crédit photo Quaerere © Jean-Luc Maride', 'Speculum, de l’intime à l’universel', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/01/speculum-%C2%A9quaerere@jeanlucmaridet-719x340-720x340.jpg'),
(6, 4, 5, '2019-02-07 16:33:00', 'enrglkjljerlgjergjijregjmerojgioer', 'Comment je veux désirer et comment je veux être désirée', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/02/image001-543x340-720x340.png'),
(7, 1, 3, '2019-02-28 11:31:00', 'Où l’on parle du sexe chanté…\r\nDes chansons qui en parlent, des chanteurs.ses qui en ont fait leur fond de paroles, de ce que ça raconte de notre société et de ce que ça nous fait de les écouter.\r\n\r\nAvec Stéphane Hirschi et Diane du groupe Üghett\r\n\r\nUne émission animée par Joe, Cécile Martin et Claire Alquier.', '[PODCAST] Sexe et/en chansons', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/02/Chanson-facebook-2-640x340-720x340.jpg'),
(8, 5, 6, '2019-03-21 22:44:00', 'Le monde du BDSM a toujours suscité des réactions aussi diverses que contrastées : curiosité, intérêt, envie, incompréhension, dégoût, rejet, passion, clichés ou critiques. C’est un univers qui questionne tant sur les notions de plaisir et douleur, que sur la propriété corporelle  et intellectuelle, mais aussi sur la notion fondamentale de liberté.\r\nDepuis plusieurs mois, je ne cesse d’explorer à travers des rencontres, mais aussi des soirées qui me permettent non seulement de me découvrir dans ma sexualité, de me questionner, mais aussi de faire tomber certains clichés sur ces pratiques. J’ai trouvé une façon de sortir d’une sexualité trop « génito-centrée » qui me pesait et du  quasi sacro-saint parcours «fellation, cunnilingus, pénétration et…orgasme », dans le meilleur des cas. Non pas que le BDSM soit la seule voie possible pour s’échapper d’une sexualité un peu trop « normée », mais il a été pour moi une réelle libération.\r\n\r\nPetites précisions toutefois nécessaires :  le BDSM ne se résume pas au sado masochisme, comme beaucoup de personnes le croient. Il est bien plus riche que cela. BDSM signifie : Bondage et Discipline, Domination et Soumission, Sadisme et Masochisme. Il y a donc une multitude de pratiques qui, certes, pour beaucoup impliquent de donner ou de supporter la douleur, physiquement, mais il y a aussi tous les jeux liés à la domination/soumission, l’humiliation, la contrainte, qui procurent un plaisir davantage cérébral que sexuel à proprement parler. Le principe qui anime toute activité BDSM est le SSC : « Sécuritaire, sain et consenti » (Safe, Sane and Consensual).\r\n\r\nIl va sans dire que je n’évoquerai ici que les pratiques sécurisées qui ont lieu uniquement entre adultes consentants. Il n’est aucunement question de faire l’apologie de quelque forme de violence et d’abus que ce soit.\r\n\r\nJeudi 14 février 2019, 20h30 :\r\n\r\nJe suis  invitée à une soirée munch & play. Kezako ? C’est une soirée ouverte à toutes les personnes pratiquantes ou non du BDSM ou simplement curieuses, qui se réunissent pour échanger sur leurs pratiques, s’informer, découvrir et aussi jouer* (*c’est le terme employé lorsqu’on pratique). Débat, démonstration et pratique sont réunis. Le thème de ce munch est la pratique de la bougie, ce qui m’intéresse particulièrement pour avoir commencé à l’expérimenter avec mon partenaire/maître, en tant que soumise.\r\n\r\nA mon arrivée, l’ambiance est décontractée et j’ai (presque) l’impression d’être à une soirée entre potes ! Une fois que nous sommes au complet, l’hôtesse commence par nous donner toutes les consignes en matière d’hygiène. Elle nous explique longuement la façon dont on doit se laver les mains, si, si ! (mesure numéro 1 que toute personne devrait faire avant d’en toucher une autre !). J’apprends aussi beaucoup de choses sur les différents types de produits pour désinfecter les accessoires que l’on utilise : distinguer les désinfectants (pour les objets et accessoires), des antiseptiques à utiliser sur soi (peau, muqueuses). On parle aussi antifongiques et antibactériens. Bref, toute la panoplie pour se débarrasser de « crobes », miasmes et autres bestioles indésirables en tous genres !\r\n\r\nVient ensuite l’intervention d’un professionnel qui fabrique ses propres bougies végétales et qui nous donne d’abord les consignes avant toute utilisation. Une grande bâche a été étendue sur le sol pour pouvoir faire la démonstration avec une jeune femme qui, après avoir retiré ses vêtements, excepté sa culotte, s’allonge sur le dos pour faire le cobaye. L’homme commence la démo, tout en nous expliquant qu’il ne faut pratiquer qu’avec des bougies basse température (sinon on prend le risque de causer des dégradations des tissus), commencer en étant à environ un mètre au-dessus de la peau, et descendre progressivement suivant les réactions de la partenaire. Moins il y a de distance entre la bougie et la peau et plus on ressent la sensation de chaleur. Il applique d’abord de la crème hydratante sur le corps de sa partenaire, en nous expliquant que cela permet d’enlever la cire ensuite plus facilement. Il fait même tomber des gouttelettes de cire sur la langue de la jeune femme, en nous précisant que, contrairement aux idées reçues, certaines régions sont moins sensibles qu’on ne le croit. Je le vois jouer avec deux bougies sur le corps de cette jeune femme, (qui a visiblement l’habitude de la pratique), en faisant même glisser la flamme le long de la peau. Tout cela est fascinant.\r\n\r\nA la fin de la démo, certains continuent de discuter, d’autres investissent le donjon (espace de jeux équipé) pour jouer. Je décide d’aller y faire un tour, en observatrice (pour satisfaire mon côté voyeur). Je vois une femme très dénudée, installée sur la croix de Saint André (un X qui permet d’attacher les poignets et les chevilles et maintenir les bras et jambes écartés, pour y être fouettée par exemple ou tout autre délice). Elle reçoit des coups de fouet de son partenaire. Cette pratique me fascine : il y a la beauté du geste, les différents sons du claquement du fouet dans l’air ou sur la peau, la complicité entre les joueurs et la recherche des limites dans la douleur.  Quelques coups lui arrachent toutefois des cris qui sont un signal pour le donneur qu’il faut certainement « ralentir » ou prodiguer quelques moments de caresses ou baisers bienvenus pour apaiser le feu sur la peau. Je vois aussi deux autres couples qui pratiquent le Shibari (bondage japonais, jeux de cordes) qui est magnifique aussi à regarder, car très artistique.\r\n\r\nJe décide ensuite de retourner dans la grande salle où se trouve l’homme qui nous a fait la démo. Je reste un long moment à parler avec lui. Il me montre des photos qu’il a prises de diverses séances avec des partenaires et me parle aussi d’autres pratiques, plus extrêmes comme le fire play (jeux avec le feu) , le knife play (jeux de lames) ou le breath play (asphyxie érotique). Nous abordons le sujet de la limite et de l’intégrité physique. Il m’explique qu’on parle souvent des risques, pour un ou une soumise, de tomber sur un maître (maîtresse) qui ne respecterait pas les limites de son ou sa partenaire, mais que l’opposé existe aussi : certaines personnes soumises ne connaissent pas leurs limites et peuvent se mettre en danger. C’est alors au maître (maîtresse) de décider d’arrêter le jeu. Je crois qu’en matière de BDSM, c’est un point crucial qui souvent interroge et à juste titre. Chaque personne est différente et a ses propres limites. Elle doit pouvoir les identifier et au fur et à mesure des pratiques, elle va en repousser certaines. Cela fait partie d’un processus de connaissance de soi et permet de gagner en confiance et en force. Car aussi paradoxal que cela puisse paraître, se soumettre implique une force. On ne peut se soumettre que si on est capable d’accorder sa confiance en l’autre et  de pouvoir lâcher prise totalement. Il faut être mentalement fort et solide et toujours garder un esprit de discernement quand on navigue dans cet univers.\r\n\r\nAprès ma passionnante conversation, je termine la soirée en observant un couple qui s’adonne à la bougie sur la bâche étendue parterre. Je suis fascinée par le spectacle qu’ils nous offrent : le maître joue avec plusieurs bougies entre les mains, faisant tomber les gouttes de cire de différentes couleurs sur la peau de sa partenaire, qui se retrouve tel un tableau dont il serait le peintre. Le corps de la jeune femme se retrouve recouvert de taches multicolores : c’est magnifique. Vient ensuite le moment d’enlever la cire… Je vois alors le maître s’emparer d’un grand couteau, et, le geste assuré, commencer à décoller les gouttes de cire, les unes après les autres. Le spectacle de cette jeune femme qui livre son corps à cette lame que son partenaire manie avec la plus grande dextérité, en toute confiance, est fascinant.\r\n\r\nJ’ai ensuite quitté ce lieu qui fut comme une parenthèse de délices, en ayant un peu perdu la notion du temps. Je me suis fait la réflexion suivante : si l’univers du BDSM peut faire peur, inquiéter voire être considéré comme un monde pour psychopathes ou pervers en tous genres, il est grand temps de faire tomber les préjugés et informer sur la réalité de ces pratiques. Certes des dérives peuvent exister, comme partout, et il convient de savoir s’entourer des bonnes personnes, de faire preuve de bon sens et suivre son intuition. J’ai vécu cette soirée dans une ambiance totalement sécurisée et libre.\r\n\r\nRappelons que toute pratique du BDSM se vit à l’intérieur d’un cadre qui est posé entre les partenaires, qu’il soit écrit ou oral. Ce cadre est une sorte de « garant » que les deux partenaires consentent à certaines pratiques et pas à d’autres. Les limites, qui sont mouvantes, sans cesse explorées et repoussées doivent être le sujet d’une communication constante. Toute personne qui souhaite pratiquer le BDSM, particulièrement si elle doit se soumettre à un partenaire, doit lui faire part de ses limites, envies, tabous et choisir un « safe word » (mot de sécurité) qui, s’il est prononcé, arrête immédiatement la séance de jeux et marque là la fin du consentement.\r\n\r\nJe ne dirais toutefois pas que le BDSM est un monde idéal de « bisounours » où « tout le monde il est beau et il est gentil » ! (Si un tel monde existait, nous y aurions déjà tous migré !). Mais au fil de mes explorations, je me rends compte que l’image que nous en avons  est souvent assez loin de la réalité. La découverte pour moi de la relation Domination/Soumission plus spécifiquement m’a plongée dans cet univers et a contribué à changer radicalement la vision de ma sexualité. Bien évidemment, cette exploration de sa propre sexualité doit être une démarche que l’on décide soi-même, issue d’un réel désir, d’une véritable curiosité. Il ne s’agit pas de replacer la femme dans un contexte où elle se sentirait poussée à le faire soit par un « effet de mode » pour se dire « libérée » à tous prix, soit poussée par un partenaire, pour « faire plaisir » au détriment de ses réels besoins à elle.\r\n\r\nQue ce soit donc à travers le BDSM ou non, je ne peux qu’encourager chaque femme à vivre sa sexualité, quelle qu’elle soit, le plus librement possible, d’oser, d’être curieuse et audacieuse, de se défaire de ses croyances limitantes pour vivre toutes ces merveilleuses sensations et émotions qui nous font nous sentir plus vivantes que jamais et plus fortes.\r\n\r\nAlysse', 'Alysse au pays des brûlants délices…', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/03/bougie-640x340-720x340.png'),
(9, 1, 3, '2019-03-26 09:36:00', 'Où l’on fait le point clito…\r\nNi P, ni G, ni le point dans ta gueule, mais le point Clito ! Le point Clito, c’est le point qui n’en est pas un. Le clito, kézaco ? Et pourquoi est-il sur le devant de la scène, notamment féministe ?\r\n\r\nAvec Julia Pietri, fondatrice du compte @gangduclito et Sarah Constantin, qui a lancé, avec Elvire Duvelle-Charle, le compte @clitRevolution et la série documentaire du même nom.\r\n\r\nUne émission animée par Joe, Cécile Martin et Claire Alquier.', '[PODCAST] Le Point Clito', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/03/CLITO-facebook-720x340-720x340.jpg'),
(10, 1, 3, '2019-04-23 11:52:00', 'Où le sexe se susurre…\r\n… A l’oreille. Une émission pour parler d’audio érotique et pornographique, des podcast qui fleurissent, de ce que l’ouïe peut jouer comme rôle dans l’excitation. Pourquoi écouter de la pornographie plutôt que la regarder ? Dans « jouir », n’y a-t-il pas « ouïr » ?…\r\n\r\nAvec Olympe de G, de Voxxx et Lou du Verrou.\r\n\r\nUne émission animée par Joe, Cécile Martin et Claire Alquier.', '[PODCAST] J’Ouir', 'https://cabinetsdecuriosites.fr/wp-content/uploads/2019/04/FACEBOOK-jouir-640x340-720x340.jpg'),
(11, 1, 6, '2019-07-24 10:30:26', 'Des hauts et débats. test ajout.', 'Des bas de société', 'http://www.sensuelle59.fr/wp-content/uploads/sites/9/2018/08/collants.jpg'),
(12, 1, 1, '2019-07-24 10:34:37', 'ca fume!', 'Vap Gals', 'https://www.ecigclopedia.com/wp-content/uploads/2015/09/Sexy-girls-vaping.jpg'),
(13, 1, 6, '2019-07-24 12:28:54', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'Brigitte M. , femme de flic', 'https://www.adultkonversation.com/wp-content/uploads/2017/07/bd-720x340.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `blog_users`
--

DROP TABLE IF EXISTS `blog_users`;
CREATE TABLE IF NOT EXISTS `blog_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clé primaire',
  `user_login` varchar(60) NOT NULL COMMENT 'Login',
  `user_pass` varchar(64) NOT NULL COMMENT 'Password',
  `user_email` varchar(100) NOT NULL COMMENT 'Email',
  `display_name` varchar(250) NOT NULL COMMENT 'Nom affiché',
  `user_photo` varchar(45) DEFAULT NULL,
  `user_key` varchar(32) DEFAULT NULL,
  `user_admin` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `blog_users`
--

INSERT INTO `blog_users` (`ID`, `user_login`, `user_pass`, `user_email`, `display_name`, `user_photo`, `user_key`, `user_admin`) VALUES
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin@gmail.fr', 'Le Cabinet de Curiosité', NULL, '', 1),
(2, 'Joe', 'bf403351dfb2ae819874163aff25a49c', 'joe@gmail.fr', 'Joe', NULL, '', 1),
(3, 'Martin', '17f271c1ae2c705da509b71e671ce90b', 'cecile_martin@gmail.fr', 'Cécile Martin', NULL, '', 0),
(4, 'Potin', 'b2707a0af0223dc938b61bad32d918d6', 'potin_kahn@gmail.fr', 'Dominique Potin-Kahn - Psychologue clinicienne / psychothérapeute', NULL, '', 0),
(5, 'guest', 'e10adc3949ba59abbe56e057f20f883e', 'boz@gmail.fr', 'Chroniqueur Invité(e)', NULL, '', 0),
(6, 'adeline', 'e10adc3949ba59abbe56e057f20f883e', 'adeline@gmail.fr', 'adeline', NULL, '', 0),
(7, 'pascale', 'e10adc3949ba59abbe56e057f20f883e', 'pascalou@gmail.fr', 'Pascale', NULL, '', 0),
(8, 'philo978', 'e10adc3949ba59abbe56e057f20f883e', 'philo978@gmail.fr', 'philo', NULL, '', 0),
(9, 'jlm', 'e10adc3949ba59abbe56e057f20f883e', 'maridet_jl@gmail.fr', 'Jean-Luc maridet', NULL, '', 0),
(10, 'clemclem', 'e10adc3949ba59abbe56e057f20f883e', 'clementine_autain@gmail.fr', 'clem', NULL, '', 0),
(11, 'matt_landers', 'e10adc3949ba59abbe56e057f20f883e', 'matthieu_pokorowitz@gmail.fr', 'Matthieu', NULL, '', 0),
(12, 'fischer', 'e10adc3949ba59abbe56e057f20f883e', 'fischer_price@gmail.fr', 'fischer', NULL, '', 0),
(13, 'hdc', 'e10adc3949ba59abbe56e057f20f883e', 'hdc@gmail.fr', 'Harmonie des corps', '', '', 0),
(14, 'ganos', 'e10adc3949ba59abbe56e057f20f883e', 'pascal_praud@gmail.fr', 'Ganos', '', '', 0),
(15, 'dodo', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'toto', NULL, NULL, 0),
(16, 'dodo', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'toto', NULL, NULL, 0),
(17, 'toto', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'salut', NULL, NULL, 0),
(18, 'toto', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'salut', NULL, NULL, 0),
(19, 'test1', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'test', NULL, NULL, 0),
(20, 'test1', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'test', NULL, NULL, 0),
(21, 'test', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'test', NULL, NULL, 0),
(22, 'tchoupi', '202cb962ac59075b964b07152d234b70', 'loaye1978@gmail.com', 'kapi', NULL, NULL, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `fk_blog_cab_comment_author` FOREIGN KEY (`comment_author`) REFERENCES `blog_users` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_blog_cab_comment_post` FOREIGN KEY (`comment_post_ID`) REFERENCES `blog_posts` (`post_ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `fk_blog_cab_categories` FOREIGN KEY (`post_category`) REFERENCES `blog_categories` (`cat_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_blog_cab_users` FOREIGN KEY (`post_author`) REFERENCES `blog_users` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
