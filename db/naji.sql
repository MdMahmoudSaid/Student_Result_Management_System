-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 12 mai 2024 à 21:40
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `naji`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-11 12:26:07');

-- --------------------------------------------------------

--
-- Structure de la table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'di', 8, 'MQI', '2024-05-04 10:25:50', '2024-05-04 13:29:47'),
(2, 'IG', 21, 'MQI', '2024-05-04 13:29:33', '0000-00-00 00:00:00'),
(3, 'RIT', 17, 'MQI', '2024-05-04 13:30:10', '0000-00-00 00:00:00'),
(4, 'SAE', 18, 'MQI', '2024-05-04 13:31:33', '0000-00-00 00:00:00'),
(5, 'FC', 2, 'MED', '2024-05-04 13:31:53', '0000-00-00 00:00:00'),
(6, 'BA', 7, 'MED', '2024-05-04 13:32:07', '0000-00-00 00:00:00'),
(7, 'GRH', 91, 'MED', '2024-05-04 13:32:18', '0000-00-00 00:00:00'),
(8, 'TCM', 69, 'MED', '2024-05-04 13:32:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 1, 80, '2024-05-04 10:29:24', NULL),
(2, 6, 1, 14, 50, '2024-05-04 19:21:19', NULL),
(3, 6, 1, 5, 50, '2024-05-04 19:21:19', NULL),
(4, 6, 1, 4, 50, '2024-05-04 19:21:19', NULL),
(5, 6, 1, 15, 50, '2024-05-04 19:21:19', NULL),
(6, 6, 1, 2, 50, '2024-05-04 19:21:19', NULL),
(7, 6, 1, 11, 50, '2024-05-04 19:21:19', NULL),
(8, 6, 1, 8, 50, '2024-05-04 19:21:19', NULL),
(9, 6, 1, 18, 50, '2024-05-04 19:21:19', NULL),
(10, 6, 1, 19, 50, '2024-05-04 19:21:19', NULL),
(11, 6, 1, 7, 50, '2024-05-04 19:21:19', NULL),
(12, 6, 1, 1, 50, '2024-05-04 19:21:19', NULL),
(13, 6, 1, 1, 50, '2024-05-04 19:21:19', NULL),
(14, 6, 1, 9, 50, '2024-05-04 19:21:19', NULL),
(15, 6, 1, 13, 50, '2024-05-04 19:21:19', NULL),
(16, 6, 1, 10, 50, '2024-05-04 19:21:19', NULL),
(17, 6, 1, 6, 50, '2024-05-04 19:21:19', NULL),
(18, 6, 1, 16, 50, '2024-05-04 19:21:19', NULL),
(19, 6, 1, 17, 50, '2024-05-04 19:21:19', NULL),
(20, 6, 1, 12, 50, '2024-05-04 19:21:19', NULL),
(21, 74, 7, 2, 1, '2024-05-05 08:00:20', NULL),
(22, 74, 7, 21, 1, '2024-05-05 08:00:20', NULL),
(23, 74, 7, 22, 1, '2024-05-05 08:00:20', NULL),
(24, 74, 7, 26, 11, '2024-05-05 08:00:20', NULL),
(25, 74, 7, 34, 1, '2024-05-05 08:00:20', NULL),
(26, 74, 7, 35, 1, '2024-05-05 08:00:20', NULL),
(27, 74, 7, 9, 1, '2024-05-05 08:00:20', NULL),
(28, 74, 7, 25, 1, '2024-05-05 08:00:20', NULL),
(29, 74, 7, 10, 1, '2024-05-05 08:00:20', NULL),
(30, 74, 7, 23, 1, '2024-05-05 08:00:20', NULL),
(31, 74, 7, 24, 1, '2024-05-05 08:00:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'hasen', '19686', 'sidahmedmhd08@gmail.com', 'Male', '2024-05-04', 1, '2024-05-04 10:26:16', '2024-05-04 14:10:00', 1),
(2, 'vatimetou algari aly abdi', '17413', 'vatimetoualgarialyabdi@gmail.com', 'Female', '', 1, '2024-05-04 14:35:48', NULL, 1),
(3, 'metaha el hassen abdel hay', '17446', 'metahaelhassenabdelhay@gmail.com', 'Female', '', 1, '2024-05-04 14:37:23', NULL, 1),
(4, 'demba abdoulaye ndiaye', '18271', 'dembaabdoulayendiaye@gmail.com', 'Male', '', 1, '2024-05-04 14:41:10', NULL, 1),
(5, 'Hendou el boukhary mohamed el boukhary', '18294', 'Hendouelboukharymohamedelboukhary@gmail.com', 'Female', '', 1, '2024-05-04 14:43:33', NULL, 1),
(6, 'abdel mety ahmed el kharchi', '18369', 'abdelmetyahmedelkharchi@gmail.com', 'Male', '', 1, '2024-05-04 14:44:20', NULL, 1),
(7, 'fatimetou abdellahi mohamed jidou', '18534', 'fatimetouabdellahimohamedjidou@gmail.com', 'Female', '', 1, '2024-05-04 14:45:11', NULL, 1),
(8, 'Aminetou sidi med teyib', '18550', 'Aminetousidimedteyib@gmail.com', 'Female', '', 1, '2024-05-04 14:45:50', NULL, 1),
(9, 'Esma ebnou sidi aly cherif', '18634', 'Esmaebnousidialycherif@gmail.com', 'Female', '', 1, '2024-05-04 14:46:56', NULL, 1),
(10, 'mohamed sidi mohamed said', '18742', 'mohamedsidimohamedsaid@gmail.com', 'Male', '', 1, '2024-05-04 14:48:19', NULL, 1),
(11, 'habibe mohamed aghmeihir', '18785', 'habibemohamedaghmeihir@gmail.com', 'Male', '', 1, '2024-05-04 14:49:03', NULL, 1),
(12, 'med salem med el hadrami ahmed', '18788', 'medsalemmedelhadramiahmed@gmail.com', 'Male', '', 2, '2024-05-04 14:50:09', NULL, 1),
(13, 'maria harouna sall', '18803', 'mariaharounasall@gmail.com', 'Female', '', 2, '2024-05-04 14:52:25', NULL, 1),
(14, 'amar mohamed moctar ahmed deina', '18906', 'amarmohamedmoctarahmeddeina@gmail.com', 'Male', '', 2, '2024-05-04 14:53:30', NULL, 1),
(15, 'yousra ahmed mohamed lemin', '19033', 'yousraahmedmohamedlemin@gmail.com', 'Female', '', 2, '2024-05-04 14:54:34', NULL, 1),
(16, 'el moctar mohamed sidi ahmed', '19059', 'elmoctarmohamedsidiahmed@gmail.com', 'Female', '', 2, '2024-05-04 14:55:21', NULL, 1),
(17, 'ahmedou ahmed henoune', '19061', 'ahmedouahmedhenoune@gmail.com', 'Male', '', 2, '2024-05-04 14:56:02', NULL, 1),
(18, 'ahmed el atighebeid', '19096', 'ahmedelatighebeid@gmail.com', 'Male', '', 2, '2024-05-04 14:57:12', NULL, 1),
(19, 'essmaou mohamed vall maouloud', '19113', 'essmaoumohamedvallmaouloud@gmail.com', 'Female', '', 2, '2024-05-04 14:59:24', NULL, 1),
(20, 'hemad ahmedou ikhalih', '19116', 'hemadahmedouikhalih@gmail.com', 'Male', '', 2, '2024-05-04 15:00:12', NULL, 1),
(21, 'vayza med magham', '19367', 'vayzamedmagham@gmail.com', 'Female', '', 2, '2024-05-04 15:02:01', NULL, 1),
(22, 'mariem el moctar med magham', '19368', 'mariemelmoctarmedmagham@gmail.com', 'Female', '', 2, '2024-05-04 15:04:01', NULL, 1),
(23, 'med el hassen moctar magham', '19369', 'medelhassenmoctarmagham@gmail.com', 'Male', '', 3, '2024-05-04 15:04:48', NULL, 1),
(24, 'med salem ebnou echvagha oubeid', '19371', 'medsalemebnouechvaghaoubeid@gmail.com', 'Male', '', 3, '2024-05-04 15:05:44', NULL, 1),
(25, 'nayba cheikh deing', '19372', 'naybacheikhdeing@gmail.com', 'Female', '', 3, '2024-05-04 15:06:39', NULL, 1),
(26, 'med vadel saadna cheikh sidaty ', '19373', 'medvadelsaadnacheikhsidaty@gmail.com', 'Male', '', 3, '2024-05-04 15:07:32', NULL, 1),
(27, 'med babe meden aba neh souvi', '19375', 'medbabemedenabanehsouvi@gmail.com', 'Male', '', 3, '2024-05-04 15:08:17', NULL, 1),
(28, 'aminetou med yahya youbah', '19376', 'aminetoumedyahyayoubah@gmail.com', 'Female', '', 3, '2024-05-04 15:09:23', NULL, 1),
(29, 'abd rehmane med lemine med lehbibe', '19378', 'abdrehmanemedleminemedlehbibe@gmail.com', 'Male', '', 3, '2024-05-04 15:10:20', NULL, 1),
(30, 'diyah med el hanefi dehah', '19379', 'diyahmedelhanefidehah@gmail.com', 'Female', '', 3, '2024-05-04 15:10:59', NULL, 1),
(31, 'khadijetou med lemin eimane', '19380', 'khadijetoumedlemineimane@gmail.com', 'Female', '', 3, '2024-05-04 15:12:12', NULL, 1),
(32, 'dehid chigaly zeine', '19381', 'dehidchigalyzeine@gmail.com', 'Male', '', 3, '2024-05-04 15:13:02', NULL, 1),
(33, 'hamedi bouna camara', '19404', 'hamedibounacamara@gmail.com', 'Male', '', 4, '2024-05-04 15:14:18', NULL, 1),
(34, 'hamedy guemou camara', '19406', 'hamedyguemoucamara@gmail.com', 'Male', '', 4, '2024-05-04 15:14:53', NULL, 1),
(35, 'meimouna med salem ebou', '19430', 'meimounamedsalemebou@gmail.com', 'Female', '', 4, '2024-05-04 15:15:38', NULL, 1),
(36, 'el moctar mohameden hamma ', '19431', 'elmoctarmohamedenhamma@gmail.com', 'Male', '', 4, '2024-05-04 15:16:27', NULL, 1),
(37, 'med beder ned saleke oumar', '19432', 'medbedernedsalekeoumar@gmail.com', 'Male', '', 4, '2024-05-04 15:16:59', NULL, 1),
(38, 'hanane mohamed lareibi', '19441', 'hananemohamedlareibi@gmail.com', 'Female', '', 4, '2024-05-04 15:18:06', NULL, 1),
(39, 'aminetou ahmed sidi el moctar', '19443', 'aminetouahmedsidielmoctar@gmail.com', 'Female', '', 4, '2024-05-04 15:18:40', NULL, 1),
(40, 'med vall med lemine neyane', '19471', 'medvallmedlemineneyane@gmail.com', 'Male', '', 4, '2024-05-04 15:19:29', NULL, 1),
(41, 'khoudeije khattry babah', '19484', 'khoudeijekhattrybabah@gmail.com', 'Female', '', 4, '2024-05-04 15:20:12', NULL, 1),
(42, 'el wely med salem bah', '19485', 'elwelymedsalembah@gmail.com', 'Male', '', 4, '2024-05-04 15:20:51', NULL, 1),
(43, 'belghiss dah hemin', '19486', 'belghissdahhemin@gmail.com', 'Female', '', 5, '2024-05-04 15:21:34', NULL, 1),
(44, 'ely ethmane kerkoub', '19488', 'elyethmanekerkoub@gmail.com', 'Male', '', 5, '2024-05-04 15:22:14', NULL, 1),
(45, 'med mahmoud ahmed said', '19503', 'medmahmoudahmedsaid@gmail.com', 'Male', '', 5, '2024-05-04 15:22:48', NULL, 1),
(46, 'med vall med abdellai khatry', '19506', 'medvallmedabdellaikhatry@gmail.com', 'Male', '', 5, '2024-05-04 15:23:42', NULL, 1),
(47, 'mariem med el bechir', '19507', 'mariemmedelbechir@gmail.com', 'Female', '', 5, '2024-05-04 15:24:14', NULL, 1),
(48, 'med abdellahi med el hafed el bah', '19508', 'medabdellahimedelhafedelbah@gmail.com', 'Male', '', 5, '2024-05-04 15:24:55', NULL, 1),
(49, 'med legdhaf el fagha ahmed maloum', '19510', 'medlegdhaf@gmail.com', 'Male', '', 5, '2024-05-04 15:25:27', NULL, 1),
(50, 'khadijetou med lemine tlamide', '19526', 'khadijetoulamide@gmail.com', 'Female', '', 5, '2024-05-04 15:26:07', NULL, 1),
(51, 'sidi med med khalouna', '19541', 'sidimedmedkhalouna@gmail.com', 'Male', '', 5, '2024-05-04 15:26:44', NULL, 1),
(52, 'savia abdellahi hamar', '19547', 'saviaabdellahihamar@gmail.com', 'Female', '', 5, '2024-05-04 15:27:17', NULL, 1),
(53, 'mahmouda lemrabott mahmoudi', '19555', 'mahmoudalemr@gmail.com', 'Male', '', 5, '2024-05-04 15:28:21', NULL, 1),
(54, 'med mahmoud el kori med habib', '19568', 'medmahmoud@gmail.com', 'Male', '', 6, '2024-05-04 15:28:57', NULL, 1),
(55, 'vatimetou med alem', '19599', 'vatimetoumedalem@gmail.com', 'Female', '', 6, '2024-05-04 15:30:01', NULL, 1),
(56, 'sidi aly med lemine sidi oumar', '19600', 'sidialymedleminesidioumar@gmail.com', 'Male', '', 6, '2024-05-04 15:31:16', NULL, 1),
(57, 'fatimetou ahmed mina', '19608', 'fatimetouahmedmina@gmail.com', 'Female', '', 6, '2024-05-04 15:31:48', NULL, 1),
(58, 'mohamedou med lemine mouhamedou', '19618', 'mohamedoumedleminemouhamedou@gmail.com', 'Male', '', 6, '2024-05-04 15:32:30', NULL, 1),
(59, 'soumeya dah el habib', '19632', 'soumeyadahelhabib@gmail.com', 'Female', '', 6, '2024-05-04 15:33:32', NULL, 1),
(60, 'moustapha yehdih yehdih', '19634', 'moustaphayehdihyehdih@gmail.com', 'Male', '', 6, '2024-05-04 15:34:13', NULL, 1),
(61, 'khadijetou mohamed kenkou', '19648', 'khadijetoumohamedkenkou@gmail.com', 'Male', '', 6, '2024-05-04 15:35:01', NULL, 1),
(62, 'el moctar el moustapha bidih', '19655', 'elmoctarelmoustaphabidih@gmail.com', 'Male', '', 6, '2024-05-04 15:35:57', NULL, 1),
(63, 'baba tall ahmed tall taleb', '19687', 'babatallahmedtalltaleb@gmail.com', 'Male', '', 6, '2024-05-04 15:37:38', NULL, 1),
(64, 'ahmed med ahmed el hadj sidi', '19695', 'ahmedmedahmedelhadjsidi@gmail.com', 'Male', '', 7, '2024-05-04 15:38:18', NULL, 1),
(65, 'aicha med mbareck', '19697', 'aichamedmbareck@gmail.com', 'Female', '', 7, '2024-05-04 15:38:50', NULL, 1),
(66, 'zahra yisleck boubekar', '19698', 'zahrayisleckboubekar@gmail.com', 'Female', '', 7, '2024-05-04 15:39:25', NULL, 1),
(67, 'khadijetou med mahmoud ely salem', '19699', 'khadijetoumedmahmoud@gmail.com', 'Female', '', 7, '2024-05-04 15:40:00', NULL, 1),
(68, 'sidi med med lemine talebne', '19714', 'sidimedmedleminetalebne@gmail.com', 'Male', '', 7, '2024-05-04 15:40:39', NULL, 1),
(69, 'khalilou yacouba tandia', '19717', 'khalilouyacoubatandia@gmail.com', 'Male', '', 7, '2024-05-04 15:41:36', NULL, 1),
(70, 'med yislim ahmed sidahmed', '19722', 'medyislimahmedsidahmed2@gmail.com', 'Male', '', 7, '2024-05-04 15:42:18', NULL, 1),
(71, 'fatoumata tomba diarra', '19725', 'fatoumatatombadiarra@gmail.com', 'Female', '', 7, '2024-05-04 15:42:50', NULL, 1),
(72, 'gaye lassana yatera', '19732', 'gayelassanayatera@gmail.com', 'Male', '', 7, '2024-05-04 15:44:20', NULL, 1),
(73, 'ismail med houd', '19739', 'ismailmedhoud@gmail.com', 'Male', '', 7, '2024-05-04 15:44:49', NULL, 1),
(74, 'brahim bakar diah', '19745', 'brahimbakardiah@gmail.com', 'Male', '', 7, '2024-05-04 15:45:37', NULL, 1),
(75, 'yahya sidna sidna', '19747', 'yahyasidnasidna@gmail.com', 'Male', '', 8, '2024-05-04 15:46:49', NULL, 1),
(76, 'med ahmedou el valli', '19797', 'medahmedouelvalli@gmail.com', 'Male', '', 8, '2024-05-04 15:48:37', NULL, 1),
(77, 'moukhtar mahfoud jidou', '19801', 'moukhtarmahfoudjidou@gmail.com', 'Male', '', 8, '2024-05-04 15:49:20', NULL, 1),
(78, 'ahmed sidi med lmine essa', '19814', 'ahmedsidimedlmineessa@gmail.com', 'Male', '', 8, '2024-05-04 15:50:01', NULL, 1),
(79, 'med med lemine essa', '19823', 'medmedlemineessa@gmail.com', 'Male', '', 8, '2024-05-04 15:50:37', NULL, 1),
(80, 'toutou el moustapha siyam', '19827', 'toutouelmoustaphasiyam@gmail.com', 'Female', '', 8, '2024-05-04 15:51:14', NULL, 1),
(81, 'ismail zeine cheikh mohamedou yahya', '19841', 'ismailzeinecheikhmohamedouyahya@gmail.com', 'Male', '', 8, '2024-05-04 15:51:55', NULL, 1),
(82, 'khadijetou saadna med ahmed', '19889', 'khadijetousaadnamedahmed@gmail.com', 'Female', '', 8, '2024-05-04 15:52:33', NULL, 1),
(83, 'ghaly mamadou diawara', '19923', 'ghalymamadoudiawara@gmail.com', 'Male', '', 8, '2024-05-04 15:53:07', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 0, '2024-05-04 10:28:59', '2024-05-04 10:28:59'),
(2, 1, 1, 1, '2024-05-04 13:33:26', '2024-05-04 13:33:26'),
(3, 2, 1, 1, '2024-05-04 13:33:32', '2024-05-04 13:33:32'),
(4, 3, 1, 1, '2024-05-04 13:33:40', '2024-05-04 13:33:40'),
(5, 1, 2, 1, '2024-05-04 13:51:22', '2024-05-04 13:51:22'),
(6, 2, 2, 1, '2024-05-04 13:51:30', '2024-05-04 13:51:30'),
(7, 3, 2, 1, '2024-05-04 13:51:37', '2024-05-04 13:51:37'),
(8, 5, 2, 1, '2024-05-04 13:51:49', '2024-05-04 13:51:49'),
(9, 6, 2, 1, '2024-05-04 13:52:01', '2024-05-04 13:52:01'),
(10, 7, 2, 1, '2024-05-04 13:52:08', '2024-05-04 13:52:08'),
(11, 8, 2, 1, '2024-05-04 13:52:15', '2024-05-04 13:52:15'),
(12, 1, 5, 1, '2024-05-04 13:53:49', '2024-05-04 13:53:49'),
(13, 2, 5, 1, '2024-05-04 13:53:56', '2024-05-04 13:53:56'),
(14, 3, 5, 1, '2024-05-04 13:54:02', '2024-05-04 13:54:02'),
(15, 1, 3, 1, '2024-05-04 13:54:12', '2024-05-04 13:54:12'),
(16, 1, 4, 1, '2024-05-04 13:54:33', '2024-05-04 13:54:33'),
(17, 2, 4, 1, '2024-05-04 13:54:39', '2024-05-04 13:54:39'),
(18, 3, 4, 1, '2024-05-04 13:54:47', '2024-05-04 13:54:47'),
(19, 1, 6, 1, '2024-05-04 13:54:56', '2024-05-04 13:54:56'),
(20, 1, 7, 1, '2024-05-04 13:55:03', '2024-05-04 13:55:03'),
(21, 2, 7, 1, '2024-05-04 13:55:11', '2024-05-04 13:55:11'),
(22, 3, 7, 1, '2024-05-04 13:55:16', '2024-05-04 13:55:16'),
(23, 1, 8, 1, '2024-05-04 13:55:28', '2024-05-04 13:55:28'),
(24, 2, 8, 1, '2024-05-04 13:55:35', '2024-05-04 13:55:35'),
(25, 1, 9, 1, '2024-05-04 13:55:46', '2024-05-04 13:55:46'),
(26, 2, 9, 1, '2024-05-04 13:55:52', '2024-05-04 13:55:52'),
(27, 3, 9, 1, '2024-05-04 13:56:00', '2024-05-04 13:56:00'),
(28, 4, 9, 1, '2024-05-04 13:56:05', '2024-05-04 13:56:05'),
(29, 5, 9, 1, '2024-05-04 13:56:11', '2024-05-04 13:56:11'),
(30, 6, 9, 1, '2024-05-04 13:56:18', '2024-05-04 13:56:18'),
(31, 7, 9, 1, '2024-05-04 13:56:25', '2024-05-04 13:56:25'),
(32, 8, 9, 1, '2024-05-04 13:56:31', '2024-05-04 13:56:31'),
(33, 1, 10, 1, '2024-05-04 13:56:38', '2024-05-04 13:56:38'),
(34, 2, 10, 1, '2024-05-04 13:56:47', '2024-05-04 13:56:47'),
(35, 3, 10, 1, '2024-05-04 13:56:52', '2024-05-04 13:56:52'),
(36, 5, 10, 1, '2024-05-04 13:57:00', '2024-05-04 13:57:00'),
(37, 6, 10, 1, '2024-05-04 13:57:06', '2024-05-04 13:57:06'),
(38, 7, 10, 1, '2024-05-04 13:57:12', '2024-05-04 13:57:12'),
(39, 8, 10, 1, '2024-05-04 13:57:18', '2024-05-04 13:57:18'),
(40, 1, 11, 1, '2024-05-04 13:58:13', '2024-05-04 13:58:13'),
(41, 2, 11, 1, '2024-05-04 13:58:19', '2024-05-04 13:58:19'),
(42, 3, 11, 1, '2024-05-04 13:58:25', '2024-05-04 13:58:25'),
(43, 1, 12, 1, '2024-05-04 13:58:41', '2024-05-04 13:58:41'),
(44, 2, 3, 1, '2024-05-04 13:58:58', '2024-05-04 13:58:58'),
(45, 3, 3, 1, '2024-05-04 13:59:04', '2024-05-04 13:59:04'),
(46, 1, 13, 1, '2024-05-04 13:59:16', '2024-05-04 13:59:16'),
(47, 1, 14, 1, '2024-05-04 13:59:25', '2024-05-04 13:59:25'),
(48, 2, 14, 1, '2024-05-04 13:59:32', '2024-05-04 13:59:32'),
(49, 3, 14, 1, '2024-05-04 13:59:40', '2024-05-04 13:59:40'),
(50, 1, 15, 1, '2024-05-04 13:59:49', '2024-05-04 13:59:49'),
(51, 2, 15, 1, '2024-05-04 13:59:54', '2024-05-04 13:59:54'),
(52, 3, 15, 1, '2024-05-04 13:59:59', '2024-05-04 13:59:59'),
(53, 1, 16, 1, '2024-05-04 14:00:06', '2024-05-04 14:00:06'),
(54, 2, 6, 1, '2024-05-04 14:00:13', '2024-05-04 14:00:13'),
(55, 3, 6, 1, '2024-05-04 14:00:20', '2024-05-04 14:00:20'),
(56, 1, 17, 1, '2024-05-04 14:00:38', '2024-05-04 14:00:38'),
(57, 2, 17, 1, '2024-05-04 14:00:45', '2024-05-04 14:00:45'),
(58, 3, 17, 1, '2024-05-04 14:00:52', '2024-05-04 14:00:52'),
(59, 1, 18, 1, '2024-05-04 14:00:58', '2024-05-04 14:00:58'),
(60, 2, 18, 1, '2024-05-04 14:01:04', '2024-05-04 14:01:04'),
(61, 3, 18, 1, '2024-05-04 14:01:09', '2024-05-04 14:01:09'),
(62, 1, 19, 1, '2024-05-04 14:01:20', '2024-05-04 14:01:20'),
(63, 5, 20, 1, '2024-05-04 14:01:31', '2024-05-04 14:01:31'),
(64, 6, 20, 1, '2024-05-04 14:01:39', '2024-05-04 14:01:39'),
(65, 5, 21, 1, '2024-05-04 14:01:52', '2024-05-04 14:01:52'),
(66, 2, 21, 1, '2024-05-04 14:02:03', '2024-05-04 14:02:03'),
(67, 6, 21, 1, '2024-05-04 14:02:12', '2024-05-04 14:02:12'),
(68, 7, 21, 1, '2024-05-04 14:02:22', '2024-05-04 14:02:22'),
(69, 8, 21, 1, '2024-05-04 14:02:30', '2024-05-04 14:02:30'),
(70, 2, 22, 1, '2024-05-04 14:02:40', '2024-05-04 14:02:40'),
(71, 5, 22, 1, '2024-05-04 14:02:49', '2024-05-04 14:02:49'),
(72, 6, 22, 1, '2024-05-04 14:02:59', '2024-05-04 14:02:59'),
(73, 7, 22, 1, '2024-05-04 14:03:07', '2024-05-04 14:03:07'),
(74, 8, 22, 1, '2024-05-04 14:03:18', '2024-05-04 14:03:18'),
(75, 5, 23, 1, '2024-05-04 14:03:31', '2024-05-04 14:03:31'),
(76, 4, 23, 1, '2024-05-04 14:03:46', '2024-05-04 14:03:46'),
(77, 6, 23, 1, '2024-05-04 14:03:55', '2024-05-04 14:03:55'),
(78, 6, 23, 1, '2024-05-04 14:04:05', '2024-05-04 14:04:05'),
(79, 7, 23, 1, '2024-05-04 14:04:14', '2024-05-04 14:04:14'),
(80, 8, 23, 1, '2024-05-04 14:04:22', '2024-05-04 14:04:22'),
(81, 5, 24, 1, '2024-05-04 14:04:37', '2024-05-04 14:04:37'),
(82, 4, 24, 1, '2024-05-04 14:04:47', '2024-05-04 14:04:47'),
(83, 6, 24, 1, '2024-05-04 14:04:54', '2024-05-04 14:04:54'),
(84, 7, 24, 1, '2024-05-04 14:05:03', '2024-05-04 14:05:03'),
(85, 8, 24, 1, '2024-05-04 14:05:12', '2024-05-04 14:05:12'),
(86, 5, 25, 1, '2024-05-04 14:05:25', '2024-05-04 14:05:25'),
(87, 6, 25, 1, '2024-05-04 14:05:35', '2024-05-04 14:05:35'),
(88, 7, 25, 1, '2024-05-04 14:06:10', '2024-05-04 14:06:10'),
(89, 8, 25, 1, '2024-05-04 14:06:19', '2024-05-04 14:06:19'),
(90, 5, 26, 1, '2024-05-04 14:06:38', '2024-05-04 14:06:38'),
(91, 6, 26, 1, '2024-05-04 14:06:46', '2024-05-04 14:06:46'),
(92, 7, 26, 1, '2024-05-04 14:06:54', '2024-05-04 14:06:54'),
(93, 6, 33, 1, '2024-05-04 14:07:21', '2024-05-04 14:07:21'),
(94, 4, 33, 1, '2024-05-04 14:07:36', '2024-05-04 14:07:36'),
(95, 4, 30, 1, '2024-05-04 14:07:46', '2024-05-04 14:07:46'),
(96, 4, 31, 1, '2024-05-04 14:07:56', '2024-05-04 14:07:56'),
(97, 4, 32, 1, '2024-05-04 14:08:10', '2024-05-04 14:08:10'),
(98, 7, 34, 1, '2024-05-04 14:08:21', '2024-05-04 14:08:21'),
(99, 8, 34, 1, '2024-05-04 14:08:29', '2024-05-04 14:08:29'),
(100, 7, 35, 1, '2024-05-04 14:08:37', '2024-05-04 14:08:37');

-- --------------------------------------------------------

--
-- Structure de la table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'MATALB', '9II', '2024-05-04 10:28:36', '0000-00-00 00:00:00'),
(2, 'Anglais Technique', '223', '2024-05-04 13:35:29', '0000-00-00 00:00:00'),
(3, 'Systeme D\'exploitation 1', '214', '2024-05-04 13:35:58', '0000-00-00 00:00:00'),
(4, 'Analyse 1', '113', '2024-05-04 13:36:39', '0000-00-00 00:00:00'),
(5, 'Algorithme', '212', '2024-05-04 13:36:55', '0000-00-00 00:00:00'),
(6, 'Programmation Web 1', '213', '2024-05-04 13:38:16', '0000-00-00 00:00:00'),
(7, 'Logique mathematique', '112', '2024-05-04 13:39:18', '0000-00-00 00:00:00'),
(8, 'Architecture des ordinateurs', '224', '2024-05-04 13:39:49', '0000-00-00 00:00:00'),
(9, 'methodologie du travail universitaires', '222', '2024-05-04 13:40:59', '0000-00-00 00:00:00'),
(10, 'Ms office', '221', '2024-05-04 13:41:11', '0000-00-00 00:00:00'),
(11, 'Anglais technique 2', '334', '2024-05-04 13:41:52', '0000-00-00 00:00:00'),
(12, 'System d\'exploitation 2', '335', '2024-05-04 13:42:11', '0000-00-00 00:00:00'),
(13, 'Modelisation merise', '323', '2024-05-04 13:42:27', '0000-00-00 00:00:00'),
(14, 'Algebre lineaire', '332', '2024-05-04 13:42:47', '0000-00-00 00:00:00'),
(15, 'Analyse 2', '225', '2024-05-04 13:43:06', '0000-00-00 00:00:00'),
(16, 'Programmation web 2', '221', '2024-05-04 13:43:23', '0000-00-00 00:00:00'),
(17, 'python', '324', '2024-05-04 13:43:34', '0000-00-00 00:00:00'),
(18, 'Langage c', '555', '2024-05-04 13:43:49', '0000-00-00 00:00:00'),
(19, 'Langage c++', '556', '2024-05-04 13:44:03', '0000-00-00 00:00:00'),
(20, 'Mathematique financier', '245', '2024-05-04 13:44:38', '0000-00-00 00:00:00'),
(21, 'Comptapilite financier 1', '343', '2024-05-04 13:45:00', '0000-00-00 00:00:00'),
(22, 'Comptapilite Financier 2', '344', '2024-05-04 13:45:15', '0000-00-00 00:00:00'),
(23, 'Statistique 1', '666', '2024-05-04 13:45:31', '0000-00-00 00:00:00'),
(24, 'Statistique 2', '656', '2024-05-04 13:45:45', '0000-00-00 00:00:00'),
(25, 'Micro economie', '314', '2024-05-04 13:46:04', '0000-00-00 00:00:00'),
(26, 'Droit des affaires', '313', '2024-05-04 13:46:31', '0000-00-00 00:00:00'),
(27, 'Economies des entreprises', '444', '2024-05-04 13:46:56', '0000-00-00 00:00:00'),
(28, 'Reseaux 1', '443', '2024-05-04 13:47:34', '0000-00-00 00:00:00'),
(29, 'Reseaux 2', '664', '2024-05-04 13:47:43', '0000-00-00 00:00:00'),
(30, 'cacule matriciel', '554', '2024-05-04 13:48:03', '0000-00-00 00:00:00'),
(31, 'integrale', '229', '2024-05-04 13:48:14', '0000-00-00 00:00:00'),
(32, 'Probabilite', '777', '2024-05-04 13:48:26', '0000-00-00 00:00:00'),
(33, 'Macro economies', '333', '2024-05-04 13:49:02', '0000-00-00 00:00:00'),
(34, 'Gestion Commercial de la relation client', '776', '2024-05-04 13:49:38', '0000-00-00 00:00:00'),
(35, 'GRH', '558', '2024-05-04 13:50:27', '0000-00-00 00:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Index pour la table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
