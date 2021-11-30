-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for x
CREATE DATABASE IF NOT EXISTS `x` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `x`;

-- Dumping structure for table x.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.articles: ~0 rows (approximately)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table x.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.categories: ~4 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `dept_id`, `name`, `priority`) VALUES
	(1, 1, 'Fees', 1),
	(2, 1, 'Rechecking', 0),
	(3, 1, 'Remedial', 1),
	(4, 1, 'Holidays', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table x.coach
CREATE TABLE IF NOT EXISTS `coach` (
  `coachID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`coachID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table x.coach: ~18 rows (approximately)
DELETE FROM `coach`;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` (`coachID`, `name`, `email`, `age`) VALUES
	(1, 'Aybek Tosetti', 'seano@yahoo.com', 47),
	(2, 'Emin Rose', 'kmself@comcast.net', 34),
	(3, 'Vili Cabral ', 'jeteve@hotmail.com', 37),
	(4, 'Wladek Klerks', 'pemungkah@gmail.com', 35),
	(5, 'Obed Perkins', 'weazelman@msn.com', 28),
	(6, 'Bikendi Bernhard', 'eminence@gmail.com', 39),
	(7, 'Anil Albert', 'mcast@yahoo.ca', 44),
	(8, 'Spartak Aston', 'fbriere@aol.com', 41),
	(9, 'Klaas Bloodworth', 'zeller@yahoo.ca', 42),
	(10, 'Dilwyn Silverstein', 'campware@yahoo.com', 46),
	(11, 'Chinwe Frazier', 'themer@gmail.com', 32),
	(12, 'Alfredo Wirner', 'dowdy@hotmail.com', 34),
	(13, 'Afanasy Gagneux', 'afeldspar@gmail.com', 36),
	(14, 'Drahomír Allsopp', 'nicktrig@att.net', 39),
	(15, 'Stefan Agosti', 'sriha@gmail.com', 41),
	(16, 'Kyo Plank', 'jmmuller@sbcglobal.net', 42),
	(17, 'Sigeberht Mac Leòid', 'uraeus@icloud.com', 37),
	(18, 'Agmundr Tsukuda ', 'drhyde@msn.com', 35);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;

-- Dumping structure for table x.complaints
CREATE TABLE IF NOT EXISTS `complaints` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `open` date DEFAULT NULL,
  `close` date DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `resolution` varchar(4000) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  KEY `technician_id` (`faculty_id`) USING BTREE,
  CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complaints_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complaints_ibfk_4` FOREIGN KEY (`faculty_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.complaints: ~0 rows (approximately)
DELETE FROM `complaints`;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;

-- Dumping structure for table x.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.departments: ~0 rows (approximately)
DELETE FROM `departments`;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `name`) VALUES
	(1, 'Admin');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table x.faq
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(4000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.faq: ~2 rows (approximately)
DELETE FROM `faq`;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` (`id`, `question`, `answer`, `user_id`, `created`) VALUES
	(1, 'What are the set up fees to start a TourneyCentral site?', '$0.00, nothing', 4, '2021-10-31'),
	(2, 'How do I sign up my team?', 'You should register as coach first then you can register your team.', 4, '2021-10-31');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

-- Dumping structure for table x.location
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table x.location: ~6 rows (approximately)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `name`, `city`, `state`) VALUES
	(1, 'Sun Devil Soccer Stadium', 'Tempe', 'AZ'),
	(2, 'Mitchell Soccer Field', 'Tempe', 'AZ'),
	(3, 'Eagles Park Soccer Field', 'Mesa', 'AZ'),
	(4, 'GCC Soccer Fields', 'Glendale', 'AZ'),
	(5, 'Freestone Park Soccer Field', 'Gilbert', 'AZ'),
	(6, 'IC Soccer Field', 'San Tan Valley', 'AZ');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table x.match
CREATE TABLE IF NOT EXISTS `match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team1` int(11) NOT NULL,
  `team2` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` int(11) NOT NULL,
  `referee` int(11) NOT NULL,
  `isPlayed` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_match_team_mst` (`team1`),
  KEY `FK_match_team_mst_2` (`team2`),
  KEY `FK_match_location` (`location`),
  KEY `FK_match_users` (`referee`),
  CONSTRAINT `FK_match_location` FOREIGN KEY (`location`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_match_team_mst` FOREIGN KEY (`team1`) REFERENCES `team_mst` (`TeamID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_match_team_mst_2` FOREIGN KEY (`team2`) REFERENCES `team_mst` (`TeamID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_match_users` FOREIGN KEY (`referee`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table x.match: ~4 rows (approximately)
DELETE FROM `match`;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` (`id`, `team1`, `team2`, `date`, `time`, `location`, `referee`, `isPlayed`) VALUES
	(1, 103, 110, '2021-11-29', '18:00:00', 1, 7, 0),
	(2, 104, 109, '2021-11-29', '18:00:00', 2, 14, 0),
	(3, 105, 108, '2021-11-30', '09:00:00', 3, 16, 0),
	(4, 102, 114, '2022-11-30', '09:00:00', 4, 18, 0),
	(5, 106, 113, '2021-11-30', '18:00:00', 2, 14, 0);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;

-- Dumping structure for table x.player_mst
CREATE TABLE IF NOT EXISTS `player_mst` (
  `playerId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `TeamID` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`playerId`),
  KEY `FK_player_mst_team_mst` (`TeamID`),
  CONSTRAINT `FK_player_mst_team_mst` FOREIGN KEY (`TeamID`) REFERENCES `team_mst` (`TeamID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=latin1;

-- Dumping data for table x.player_mst: ~250 rows (approximately)
DELETE FROM `player_mst`;
/*!40000 ALTER TABLE `player_mst` DISABLE KEYS */;
INSERT INTO `player_mst` (`playerId`, `name`, `email`, `age`, `TeamID`, `position`) VALUES
	(1, 'Leone Beatty IV', 'becker.noah@example.net', 39, 103, 'Defensive Mid'),
	(2, 'Erling Moen', 'dean.pfannerstill@example.net', 28, 111, 'Full Back'),
	(3, 'Reese Brekke', 'christiana.denesik@example.org', 29, 109, 'Center Forward'),
	(4, 'Gust Smitham', 'raphaelle.schinner@example.com', 32, 103, 'Center Forward'),
	(5, 'Dr. Candace Greenholt', 'greenfelder.hosea@example.com', 37, 103, 'Center Forward'),
	(6, 'Francesca Kuhic II', 'colby.bogan@example.com', 24, 113, 'Left Mid'),
	(7, 'Chesley Herzog I', 'ryann.lakin@example.com', 35, 106, 'Center Mid'),
	(8, 'Mr. Zackery Keeling IV', 'murphy.braxton@example.net', 36, 102, 'Left Mid'),
	(9, 'Kasey Rath', 'hickle.erich@example.com', 31, 113, 'Striker'),
	(10, 'Ms. Melba Hahn PhD', 'jerad.carroll@example.org', 25, 108, 'Left Mid'),
	(11, 'Effie Bechtelar', 'schumm.dimitri@example.net', 40, 112, 'Goalkeeper'),
	(12, 'Aditya Crona', 'avandervort@example.net', 37, 105, 'Center back'),
	(13, 'Dr. Jermaine Rolfson', 'ivory.mcclure@example.org', 32, 108, 'Attacking Mid'),
	(14, 'Dr. Myrtis Reynolds I', 'dibbert.jaycee@example.org', 23, 107, 'Attacking Mid'),
	(15, 'Imelda Little', 'pollich.jairo@example.net', 36, 104, 'Right Mid'),
	(16, 'Prof. Shaun Purdy', 'dankunding@example.org', 37, 106, 'Right Mid'),
	(17, 'Mr. Gregorio Marks Jr.', 'harvey.isaac@example.com', 25, 109, 'Striker'),
	(18, 'Jordon Donnelly PhD', 'daisha.schultz@example.net', 23, 111, 'Right Mid'),
	(19, 'Tessie Huel', 'scronin@example.com', 22, 104, 'Attacking Mid'),
	(20, 'Dr. Grover Tremblay', 'rodriguez.felipe@example.com', 29, 104, 'Center Forward'),
	(21, 'Mr. Greg Hudson', 'monica28@example.com', 26, 102, 'Wing Backs'),
	(22, 'Breana Spinka', 'hans96@example.org', 29, 111, 'Center back'),
	(23, 'Dean Hauck', 'nlesch@example.com', 21, 114, 'Defensive Mid'),
	(24, 'Rosendo Pfannerstill', 'ruby97@example.org', 24, 105, 'Wingers'),
	(25, 'Joshua Rath', 'forrest13@example.com', 23, 110, 'Center back'),
	(26, 'Prof. Maxime Little Sr.', 'jondricka@example.com', 26, 111, 'Goalkeeper'),
	(27, 'Nolan Moore', 'hickle.deonte@example.org', 23, 110, 'Goalkeeper'),
	(28, 'Nestor Mayert', 'sandra67@example.com', 32, 113, 'Right Mid'),
	(29, 'Derick Zemlak', 'glover.leila@example.org', 25, 104, 'Striker'),
	(30, 'Mr. Horacio Kunde Jr.', 'greta.watsica@example.com', 27, 105, 'Right Mid'),
	(31, 'Fredy Reilly', 'lavern.abshire@example.net', 39, 106, 'Center Forward'),
	(32, 'Tate Nolan', 'wkeebler@example.net', 34, 105, 'Center back'),
	(33, 'Aubree Emmerich', 'jon.murazik@example.org', 38, 107, 'Wingers'),
	(34, 'Kelton Kuhlman DDS', 'markus73@example.net', 39, 108, 'Wing Backs'),
	(35, 'Myrtle Wiza', 'kenneth.pacocha@example.org', 26, 113, 'Left Mid'),
	(36, 'Savanah Boyle', 'htromp@example.net', 36, 112, 'Attacking Mid'),
	(37, 'Gillian Mitchell PhD', 'einar.gaylord@example.org', 34, 105, 'Full Back'),
	(38, 'Kari O\'Reilly', 'qo\'kon@example.org', 21, 105, 'Striker'),
	(39, 'Prof. Jadon Lemke MD', 'wkoch@example.org', 28, 105, 'Center Forward'),
	(40, 'Syble Borer', 'tiffany67@example.com', 37, 113, 'Center Mid'),
	(41, 'Neal Brekke', 'hblock@example.net', 39, 108, 'Center Forward'),
	(42, 'Dr. Winifred Adams', 'davin90@example.org', 21, 105, 'Sweeper'),
	(43, 'Prof. Rossie Bartell', 'roderick.hodkiewicz@example.com', 39, 114, 'Striker'),
	(44, 'Jason Borer', 'laisha.fay@example.net', 27, 102, 'Full Back'),
	(45, 'Casandra Flatley I', 'brisa15@example.com', 31, 108, 'Defensive Mid'),
	(46, 'Prof. Dayne Harvey DVM', 'diego.ryan@example.org', 25, 108, 'Center Forward'),
	(47, 'Arch Thiel', 'wnader@example.net', 22, 109, 'Goalkeeper'),
	(48, 'Ryleigh Lowe', 'fbuckridge@example.com', 40, 102, 'Wingers'),
	(49, 'Andre Koepp', 'evans.mueller@example.org', 40, 104, 'Attacking Mid'),
	(50, 'Ms. Estell Wyman DDS', 'kfeeney@example.org', 31, 111, 'Center Forward'),
	(51, 'Colton Gaylord', 'snikolaus@example.org', 27, 109, 'Full Back'),
	(52, 'Ms. Retta Baumbach', 'hartmann.maci@example.com', 23, 109, 'Center Mid'),
	(53, 'Mr. Blake Ferry IV', 'jackson07@example.org', 32, 112, 'Sweeper'),
	(54, 'Josefina Johnson', 'maggie64@example.org', 27, 110, 'Left Mid'),
	(55, 'Miss Trudie Dare Jr.', 'fadel.henderson@example.org', 30, 104, 'Center back'),
	(56, 'Mr. Camryn Bartoletti', 'halie.schaden@example.org', 39, 104, 'Attacking Mid'),
	(57, 'Hubert Frami', 'trobel@example.org', 30, 106, 'Wingers'),
	(58, 'Wilfred Haley', 'kjones@example.org', 26, 104, 'Attacking Mid'),
	(59, 'Mr. Murl Sporer', 'emory.collins@example.net', 24, 105, 'Striker'),
	(60, 'Wyatt Dibbert', 'pagac.russ@example.org', 36, 109, 'Center Mid'),
	(61, 'Virginie Beer', 'annabell.hessel@example.org', 23, 112, 'Left Mid'),
	(62, 'Prof. Jammie Crona', 'nolan.robel@example.com', 29, 106, 'Wingers'),
	(63, 'Miss Heather Spinka IV', 'hettinger.mathilde@example.net', 35, 104, 'Full Back'),
	(64, 'Shemar Brekke', 'jena47@example.com', 23, 113, 'Right Mid'),
	(65, 'Geovanny Berge V', 'willy.hayes@example.com', 28, 111, 'Sweeper'),
	(66, 'Ruthe Kutch', 'nmarks@example.net', 39, 111, 'Defensive Mid'),
	(67, 'Prof. Ephraim Hackett DVM', 'ojohns@example.org', 26, 114, 'Center back'),
	(68, 'Mr. Hilario Frami IV', 'nicholaus91@example.net', 37, 102, 'Right Mid'),
	(69, 'Gunnar Feil', 'nvandervort@example.com', 21, 102, 'Center Forward'),
	(70, 'Lourdes Morar', 'fay.mafalda@example.org', 34, 114, 'Center back'),
	(71, 'Gwendolyn Quitzon', 'quinton76@example.org', 29, 112, 'Full Back'),
	(72, 'Boyd Powlowski', 'kub.jocelyn@example.com', 24, 102, 'Attacking Mid'),
	(73, 'Dr. Don Feest MD', 'jaeden19@example.com', 29, 114, 'Wing Backs'),
	(74, 'Pink Greenfelder Jr.', 'abernathy.jamar@example.net', 30, 102, 'Attacking Mid'),
	(75, 'Casimer Dooley', 'bgreenfelder@example.net', 34, 104, 'Left Mid'),
	(76, 'Bertram Abbott', 'kschneider@example.net', 30, 105, 'Defensive Mid'),
	(77, 'Dr. Enoch Waelchi', 'christ.kautzer@example.net', 40, 107, 'Left Mid'),
	(78, 'Charley Turner', 'orath@example.com', 21, 108, 'Center Forward'),
	(79, 'Dr. Ola Turcotte', 'rogers.breitenberg@example.com', 38, 105, 'Striker'),
	(80, 'Tristin Leuschke', 'roma.daugherty@example.com', 34, 110, 'Attacking Mid'),
	(81, 'Yasmine Towne', 'blick.jannie@example.net', 31, 102, 'Striker'),
	(82, 'Dangelo Vandervort PhD', 'khuel@example.com', 38, 111, 'Goalkeeper'),
	(83, 'Rylan Pfeffer', 'muriel39@example.com', 22, 112, 'Wing Backs'),
	(84, 'Ayden Hodkiewicz', 'xrobel@example.com', 35, 106, 'Right Mid'),
	(85, 'John Crona', 'kertzmann.reese@example.org', 24, 104, 'Center back'),
	(86, 'Liam Hand', 'maggio.kamron@example.org', 32, 112, 'Wing Backs'),
	(87, 'Granville Hickle', 'zheaney@example.com', 30, 103, 'Striker'),
	(88, 'Robb Prosacco', 'anne.renner@example.net', 40, 112, 'Sweeper'),
	(89, 'Mrs. Audra Bogan', 'fcormier@example.net', 40, 110, 'Wingers'),
	(90, 'Mrs. Cierra Ward', 'runte.tracey@example.org', 39, 114, 'Full Back'),
	(91, 'Kelvin O\'Keefe', 'enola.herman@example.org', 26, 106, 'Wingers'),
	(92, 'Ian Stark', 'heidenreich.gilda@example.com', 38, 114, 'Wingers'),
	(93, 'Jada Hartmann', 'qstracke@example.net', 36, 103, 'Center Forward'),
	(94, 'Kaci Lynch', 'zstehr@example.net', 25, 114, 'Center back'),
	(95, 'Jeramy Fay', 'pierre59@example.com', 36, 105, 'Right Mid'),
	(96, 'Lucile Heaney', 'tyra.fay@example.com', 28, 112, 'Sweeper'),
	(97, 'Alvera Bashirian DDS', 'rutherford.lucile@example.net', 21, 106, 'Defensive Mid'),
	(98, 'Raheem Ebert PhD', 'vsanford@example.net', 24, 105, 'Full Back'),
	(99, 'Ms. Jalyn Roberts', 'hand.carmella@example.org', 39, 106, 'Full Back'),
	(100, 'Davin Crooks', 'amya.rice@example.com', 24, 106, 'Full Back'),
	(101, 'Dr. Demetrius Nader', 'smitham.marcus@example.com', 36, 109, 'Wing Backs'),
	(102, 'Leda Schmitt', 'goodwin.cali@example.com', 28, 112, 'Center Mid'),
	(103, 'Dr. Jacklyn Bruen', 'little.daphne@example.org', 36, 104, 'Center Forward'),
	(104, 'Sheridan Lindgren', 'chanel86@example.org', 20, 106, 'Striker'),
	(105, 'Miss Mattie Gerlach DDS', 'eichmann.marcelina@example.net', 20, 102, 'Center back'),
	(106, 'Audie White', 'rick98@example.org', 27, 103, 'Center Mid'),
	(107, 'Shany Stokes', 'agrant@example.org', 39, 102, 'Full Back'),
	(108, 'Ms. Lillian O\'Reilly MD', 'rjones@example.net', 31, 107, 'Left Mid'),
	(109, 'Pamela Beier', 'dmorar@example.net', 37, 105, 'Center Mid'),
	(110, 'Amara Schulist', 'balistreri.easton@example.org', 27, 114, 'Full Back'),
	(111, 'Savanah Lemke', 'cody88@example.org', 22, 106, 'Center Forward'),
	(112, 'Dr. Vladimir Bradtke PhD', 'angelita.senger@example.com', 25, 110, 'Defensive Mid'),
	(113, 'Alford Mante MD', 'owen.gerhold@example.com', 28, 107, 'Wingers'),
	(114, 'Muriel Wuckert DDS', 'bruen.maia@example.org', 33, 107, 'Sweeper'),
	(115, 'Zetta Beier', 'dkoepp@example.org', 22, 109, 'Full Back'),
	(116, 'Linnea Thiel', 'vicenta.ebert@example.net', 24, 110, 'Wingers'),
	(117, 'Abbey Orn', 'bonita36@example.net', 34, 112, 'Goalkeeper'),
	(118, 'Montana Kassulke DVM', 'hildegard84@example.com', 32, 109, 'Wing Backs'),
	(119, 'Grayce Wilkinson', 'mable.zulauf@example.com', 30, 103, 'Defensive Mid'),
	(120, 'Mr. Emerson Cummerata', 'lmueller@example.com', 22, 110, 'Attacking Mid'),
	(121, 'Deion Abshire', 'osvaldo13@example.org', 25, 111, 'Sweeper'),
	(122, 'Collin Klein', 'harmony67@example.org', 39, 114, 'Wing Backs'),
	(123, 'Green Glover', 'flavie44@example.org', 20, 113, 'Center back'),
	(124, 'Madaline Lynch', 'rosalyn.wolff@example.net', 35, 112, 'Right Mid'),
	(125, 'Charity Schowalter', 'marcelo.parisian@example.com', 40, 111, 'Center Forward'),
	(126, 'Domenico Lesch', 'torn@example.net', 38, 103, 'Left Mid'),
	(127, 'Ms. Aimee Gleason DVM', 'lia.raynor@example.net', 27, 104, 'Right Mid'),
	(128, 'Dr. Theresa Johns', 'willms.darlene@example.org', 26, 102, 'Sweeper'),
	(129, 'Miguel Ebert', 'kellen.bogan@example.org', 27, 107, 'Wingers'),
	(130, 'Prof. King Bartoletti DVM', 'rempel.vida@example.net', 25, 104, 'Full Back'),
	(131, 'Isobel Kertzmann', 'lloyd.skiles@example.net', 32, 105, 'Goalkeeper'),
	(132, 'Mark Welch', 'maxie41@example.org', 40, 114, 'Full Back'),
	(133, 'Gunner Dietrich', 'ayla.lubowitz@example.org', 29, 103, 'Wing Backs'),
	(134, 'Willow McClure DDS', 'yost.owen@example.net', 38, 106, 'Center back'),
	(135, 'Darius Davis', 'marianne08@example.org', 34, 114, 'Defensive Mid'),
	(136, 'Dr. Jimmie Wuckert V', 'lueilwitz.fay@example.net', 31, 107, 'Wing Backs'),
	(137, 'Marcus Hamill', 'cwisoky@example.com', 23, 110, 'Left Mid'),
	(138, 'Katheryn Sporer', 'krajcik.kareem@example.org', 28, 103, 'Wingers'),
	(139, 'Modesto Gutmann', 'hoppe.helmer@example.org', 20, 108, 'Sweeper'),
	(140, 'Alexis Beier', 'nona.casper@example.org', 20, 108, 'Wing Backs'),
	(141, 'Makenzie Ondricka', 'sylvia92@example.com', 39, 110, 'Wing Backs'),
	(142, 'Beatrice Kshlerin PhD', 'lexi11@example.net', 27, 109, 'Center Forward'),
	(143, 'Rigoberto Sipes', 'lstracke@example.org', 33, 112, 'Center back'),
	(144, 'Mrs. Helena Beahan', 'lora.howe@example.org', 21, 109, 'Center Forward'),
	(145, 'Diamond Heller', 'yhilpert@example.net', 22, 107, 'Center Forward'),
	(146, 'Prof. Cullen Abernathy', 'anais.hoppe@example.com', 39, 111, 'Full Back'),
	(147, 'Syble Rutherford', 'ziemann.terrill@example.org', 30, 111, 'Attacking Mid'),
	(148, 'Cale Jenkins PhD', 'amelie40@example.net', 34, 111, 'Right Mid'),
	(149, 'Alice Emard', 'mueller.deja@example.org', 32, 108, 'Sweeper'),
	(150, 'Prof. Robert Hagenes DDS', 'hartmann.rosalinda@example.com', 27, 110, 'Striker'),
	(151, 'Lucinda Carroll', 'estevan.schmeler@example.com', 31, 113, 'Defensive Mid'),
	(152, 'Prof. Bart Murphy IV', 'wilfred30@example.org', 28, 114, 'Left Mid'),
	(153, 'Evie Marquardt', 'gaylord.retha@example.com', 26, 112, 'Wingers'),
	(154, 'Devin Cormier II', 'leone96@example.com', 38, 111, 'Sweeper'),
	(155, 'Jerad Huel', 'ferry.pearline@example.org', 20, 114, 'Defensive Mid'),
	(156, 'Lukas Keebler', 'mpredovic@example.net', 34, 110, 'Center Mid'),
	(157, 'Mallie Jenkins Jr.', 'thand@example.com', 26, 102, 'Attacking Mid'),
	(158, 'Tyrell Cormier', 'scarlett.gleason@example.net', 34, 111, 'Center Mid'),
	(159, 'Mozelle Nienow', 'howell.block@example.com', 28, 107, 'Defensive Mid'),
	(160, 'Lukas Gibson', 'hellen50@example.org', 34, 103, 'Full Back'),
	(161, 'Shanelle Carroll', 'kayla.gerhold@example.org', 26, 109, 'Wing Backs'),
	(162, 'Alanna Hahn', 'sarah.kerluke@example.org', 31, 106, 'Center Forward'),
	(163, 'Cecil Davis', 'hcarter@example.net', 39, 111, 'Goalkeeper'),
	(164, 'Beatrice Glover I', 'batz.liliana@example.com', 27, 107, 'Sweeper'),
	(165, 'Prof. Dedrick Dach', 'auer.arely@example.net', 27, 109, 'Wing Backs'),
	(166, 'Prof. Flo Cassin', 'kiley42@example.org', 21, 106, 'Sweeper'),
	(167, 'Mr. Rudolph Schmeler DDS', 'vince02@example.net', 21, 104, 'Wing Backs'),
	(168, 'Mrs. Caitlyn Raynor Jr.', 'nya20@example.org', 20, 106, 'Center Forward'),
	(169, 'Axel Cronin Sr.', 'cassin.timmothy@example.com', 36, 106, 'Center Forward'),
	(170, 'Dr. Leann Ortiz V', 'rolfson.jade@example.com', 25, 111, 'Attacking Mid'),
	(171, 'Prof. Jayson Jones', 'zpacocha@example.org', 25, 106, 'Center Mid'),
	(172, 'Prof. Carolyne Weimann', 'reyes12@example.net', 32, 114, 'Wingers'),
	(173, 'Dr. Lina Halvorson V', 'alexanne.lesch@example.org', 24, 102, 'Center back'),
	(174, 'Reilly Hickle', 'zsauer@example.com', 36, 114, 'Attacking Mid'),
	(175, 'Madeline Hermiston', 'kozey.rebecca@example.com', 36, 104, 'Wing Backs'),
	(176, 'Thora Mueller DVM', 'emma66@example.net', 27, 113, 'Defensive Mid'),
	(177, 'Kristoffer Lindgren Jr.', 'hermiston.tom@example.com', 40, 114, 'Left Mid'),
	(178, 'Vincenza Walter DVM', 'rogelio.beahan@example.com', 35, 110, 'Center back'),
	(179, 'Dr. Carmella Wilkinson II', 'prohaska.cristian@example.net', 22, 114, 'Defensive Mid'),
	(180, 'Ola Abbott', 'fae.boehm@example.com', 26, 107, 'Sweeper'),
	(181, 'Mr. Marcos Batz', 'gia70@example.org', 32, 103, 'Center Mid'),
	(182, 'Dr. Oliver Breitenberg Jr.', 'kunze.odell@example.net', 39, 108, 'Striker'),
	(183, 'Irwin Kuhn IV', 'macie51@example.org', 21, 113, 'Center Forward'),
	(184, 'Carmella Nikolaus', 'irma.d\'amore@example.org', 31, 109, 'Right Mid'),
	(185, 'Eleazar Sauer', 'donnelly.brionna@example.org', 39, 111, 'Right Mid'),
	(186, 'Laila Konopelski', 'durgan.zoe@example.net', 39, 113, 'Goalkeeper'),
	(187, 'Hazle Ondricka', 'dulce71@example.com', 29, 114, 'Sweeper'),
	(188, 'Wilmer Rempel', 'aklein@example.com', 30, 106, 'Center Forward'),
	(189, 'Hilma Grady', 'melyna.jacobson@example.org', 21, 103, 'Wingers'),
	(190, 'Nigel Jenkins DDS', 'lindgren.clemmie@example.com', 37, 112, 'Wingers'),
	(191, 'Ms. Irma Howe DDS', 'hwyman@example.net', 27, 112, 'Goalkeeper'),
	(192, 'Dr. Graciela Lehner DVM', 'peyton.bosco@example.net', 36, 107, 'Wing Backs'),
	(193, 'Lizzie Grimes', 'carter.monica@example.com', 22, 102, 'Striker'),
	(194, 'Verda Donnelly', 'brakus.isai@example.com', 24, 106, 'Defensive Mid'),
	(195, 'Mr. Alex Pfeffer', 'kaycee.johnston@example.com', 25, 104, 'Sweeper'),
	(196, 'Katrina Haley I', 'goodwin.roy@example.com', 39, 113, 'Sweeper'),
	(197, 'Harry Jakubowski I', 'alexandrea16@example.org', 22, 113, 'Center back'),
	(198, 'Mrs. Sylvia Hintz II', 'vcole@example.org', 22, 106, 'Wing Backs'),
	(199, 'Baylee Hermann', 'marquardt.eusebio@example.org', 26, 114, 'Wingers'),
	(200, 'Prof. Kenneth Roob II', 'yernser@example.org', 29, 113, 'Center Mid'),
	(201, 'Dexter Will', 'pwill@example.com', 27, 106, 'Center back'),
	(202, 'Dr. Timmothy Osinski V', 'deborah.ortiz@example.net', 38, 103, 'Striker'),
	(203, 'Dr. Aracely Cassin', 'ihettinger@example.org', 25, 102, 'Center Mid'),
	(204, 'Prof. Susan Daugherty III', 'schneider.shemar@example.org', 39, 102, 'Attacking Mid'),
	(205, 'Maryjane Hammes', 'yzulauf@example.net', 26, 107, 'Right Mid'),
	(206, 'Shany Ondricka Sr.', 'paucek.jerry@example.net', 23, 112, 'Left Mid'),
	(207, 'Vicente Hermann', 'o\'connell.william@example.com', 31, 102, 'Defensive Mid'),
	(208, 'Josephine Gutmann', 'bogan.william@example.com', 23, 111, 'Wingers'),
	(209, 'Isom Parisian', 'russel.hammes@example.com', 27, 104, 'Sweeper'),
	(210, 'Veda Berge', 'jlowe@example.org', 27, 110, 'Wing Backs'),
	(211, 'Gwendolyn Balistreri', 'otis62@example.org', 28, 112, 'Striker'),
	(212, 'Mariane Goyette', 'gilberto.marvin@example.net', 27, 112, 'Sweeper'),
	(213, 'Dr. Owen Ferry', 'legros.olga@example.org', 29, 109, 'Center back'),
	(214, 'Dr. Rhiannon Bogisich Jr.', 'walsh.dominic@example.net', 21, 104, 'Center back'),
	(215, 'Wilburn Smith', 'margot36@example.net', 40, 106, 'Striker'),
	(216, 'Helen Bogan', 'jesse.beier@example.com', 25, 105, 'Goalkeeper'),
	(217, 'Wanda Runolfsson', 'stehr.charles@example.net', 23, 104, 'Center back'),
	(218, 'Brandi Cole', 'pierce52@example.org', 26, 114, 'Attacking Mid'),
	(219, 'Darwin Carter', 'schulist.nelson@example.org', 30, 106, 'Center Mid'),
	(220, 'Mr. Micheal Leannon', 'trey90@example.net', 38, 113, 'Goalkeeper'),
	(221, 'Moses Reinger IV', 'oswaldo33@example.com', 28, 112, 'Attacking Mid'),
	(222, 'Pasquale Abshire', 'jdeckow@example.net', 29, 107, 'Right Mid'),
	(223, 'Dr. Lavonne Hegmann III', 'mitchell.esmeralda@example.org', 36, 102, 'Center Forward'),
	(224, 'Wilmer Fisher', 'hickle.maynard@example.org', 34, 113, 'Center Forward'),
	(225, 'Prof. Stan Considine DDS', 'enola21@example.com', 38, 103, 'Wing Backs'),
	(226, 'Rhett Ratke', 'price.daniel@example.net', 31, 111, 'Center Mid'),
	(227, 'Mertie Casper', 'russel.eulah@example.net', 30, 102, 'Striker'),
	(228, 'Mr. Paolo Nolan Sr.', 'trenton77@example.com', 33, 107, 'Striker'),
	(229, 'Jakob Kohler', 'rafael.collier@example.org', 28, 109, 'Sweeper'),
	(230, 'Caitlyn Leannon', 'izabella.carter@example.org', 27, 112, 'Full Back'),
	(231, 'Prof. Alex Brakus DDS', 'immanuel.daugherty@example.net', 28, 104, 'Striker'),
	(232, 'Amalia Hilpert', 'ebahringer@example.com', 31, 111, 'Right Mid'),
	(233, 'Meta White', 'schaden.greta@example.com', 35, 106, 'Striker'),
	(234, 'Helen Emmerich', 'caesar.hintz@example.com', 30, 112, 'Full Back'),
	(235, 'Eldridge Dach', 'kward@example.net', 29, 106, 'Defensive Mid'),
	(236, 'Heather Mertz', 'marina27@example.net', 24, 109, 'Striker'),
	(237, 'Evalyn Padberg DDS', 'abel.legros@example.org', 31, 113, 'Wingers'),
	(238, 'Cayla Hagenes', 'olang@example.com', 34, 102, 'Attacking Mid'),
	(239, 'Prof. Tommie Koelpin III', 'rhea77@example.org', 40, 105, 'Defensive Mid'),
	(240, 'Kraig Sawayn', 'orn.darrel@example.com', 22, 103, 'Left Mid'),
	(241, 'Miss Katelyn Boyer', 'satterfield.dudley@example.org', 24, 103, 'Wingers'),
	(242, 'Mittie Jenkins Jr.', 'gvon@example.net', 37, 105, 'Full Back'),
	(243, 'Jolie West', 'concepcion37@example.net', 20, 106, 'Full Back'),
	(244, 'Lance Klein', 'gerardo79@example.com', 20, 114, 'Wingers'),
	(245, 'Rolando Ryan', 'dennis.connelly@example.org', 23, 108, 'Goalkeeper'),
	(246, 'Alexzander Trantow II', 'hassie11@example.net', 38, 107, 'Attacking Mid'),
	(247, 'Stacy Wisoky MD', 'kaylah92@example.net', 34, 102, 'Center back'),
	(248, 'Dan Sauer', 'sfriesen@example.org', 35, 105, 'Sweeper'),
	(249, 'Ladarius Rippin', 'leuschke.casandra@example.org', 35, 106, 'Sweeper'),
	(250, 'Dr. Arne Bode IV', 'amya96@example.net', 24, 102, 'Goalkeeper');
/*!40000 ALTER TABLE `player_mst` ENABLE KEYS */;

-- Dumping structure for table x.ratings
CREATE TABLE IF NOT EXISTS `ratings` (
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.ratings: ~0 rows (approximately)
DELETE FROM `ratings`;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;

-- Dumping structure for table x.sponsor
CREATE TABLE IF NOT EXISTS `sponsor` (
  `id` int(11) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `interest` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.sponsor: ~0 rows (approximately)
DELETE FROM `sponsor`;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` (`id`, `business_name`, `person_name`, `email`, `phone_number`, `interest`) VALUES
	(101, 'Adidas', 'Jack Micheal', 'jm@jm@gmail.com', '4806691963', 'N/A');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;

-- Dumping structure for table x.team_mst
CREATE TABLE IF NOT EXISTS `team_mst` (
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(50) DEFAULT NULL,
  `TeamCode` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `coachId` int(11) DEFAULT NULL,
  `isActive` int(1) NOT NULL,
  PRIMARY KEY (`TeamID`),
  KEY `Team_to_coach` (`coachId`),
  CONSTRAINT `Team_to_coach` FOREIGN KEY (`coachId`) REFERENCES `coach` (`coachID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.team_mst: ~13 rows (approximately)
DELETE FROM `team_mst`;
/*!40000 ALTER TABLE `team_mst` DISABLE KEYS */;
INSERT INTO `team_mst` (`TeamID`, `TeamName`, `TeamCode`, `City`, `coachId`, `isActive`) VALUES
	(102, 'Hurricane Explorers', 'HCE', 'New York City', 10, 0),
	(103, 'Calm Hurricane', 'CHC', 'Los Angeles', 11, 0),
	(104, 'Evil Cardinals', 'ECD', 'Chicago', 12, 0),
	(105, 'Dangerous Cobras', 'DCB', '	Houston', 13, 0),
	(106, 'Grave Dons', 'GVD', 'Phoenix', 14, 0),
	(107, 'Loyal Whales', 'LWL', 'Philadelphia', 15, 0),
	(108, 'Cool Dons', 'CDS', 'Jacksonville', 16, 0),
	(109, 'Clever Monarchs', 'CRM', 'Seattle', 17, 0),
	(110, 'Culver Creek', 'CRC', 'Birmingham', 18, 0),
	(111, 'Raging Devils', 'RGD', 'Denver', 1, 0),
	(112, 'Flying Squirrels', 'FLS', 'Salt Lake City', 2, 0),
	(113, 'Platinum Badgers', 'PBD', 'Santa Ana', 3, 0),
	(114, 'Royal Deacons', 'RYD', '	Atlanta', 4, 0);
/*!40000 ALTER TABLE `team_mst` ENABLE KEYS */;

-- Dumping structure for table x.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.users: ~61 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `dept_id`, `name`, `email`, `password`, `user_type`) VALUES
	(4, 1, 'Administrative dept.', 'admin@ddu.ac.in', 'admin', 2),
	(7, 1, 'Harsh', 'harsh@gmail.com', 'bankim', 1),
	(9, 1, 'Jashmin', 'jass@gmail.com', 'jass123', 0),
	(10, 2, 'Parth', 'parth@gmail.com', 'parth123', 0),
	(11, 2, 'pankti', 'pankti@gmail.com', 'pankti123', 0),
	(12, 2, 'Coach', 'coach@gmail.com', 'coach123', 0),
	(13, 1, 'Thane Poole', 'lacinia.mattis@google.net', 'GLU47EIM9DK', 0),
	(14, 1, 'Jasmine Woodward', 'lorem.eget@icloud.org', 'KWB03IPW9JG', 1),
	(15, 1, 'Garrett Baxter', 'semper.auctor@yahoo.ca', 'PJM66IUB9KR', 0),
	(16, 1, 'Dante Cortez', 'consectetuer.cursus@icloud.net', 'QWP07GDG8JW', 1),
	(17, 1, 'Kermit Ward', 'iaculis.quis@outlook.org', 'UTR22GOO6QM', 2),
	(18, 1, 'Dolan Fox', 'non.dui@protonmail.net', 'NLN22CEB8QF', 1),
	(19, 1, 'Kiara Stanton', 'eu.euismod@icloud.couk', 'MDN80SLW2KR', 1),
	(20, 1, 'Clinton Mcfadden', 'nec.leo@hotmail.org', 'WQM11CUU5LF', 1),
	(21, 1, 'Preston Ferrell', 'cursus.a@outlook.net', 'ZDU78UJP3EK', 1),
	(22, 1, 'Chastity Rivera', 'vel.pede@yahoo.couk', 'YRR30KVR6SN', 2),
	(23, 1, 'Naomi Hatfield', 'mollis.dui@hotmail.ca', 'WQJ33JPU9OI', 2),
	(24, 1, 'Sybill Foster', 'nam.tempor@aol.com', 'XTL11ABR6VC', 2),
	(25, 1, 'Karyn Frost', 'convallis.dolor.quisque@icloud.ca', 'TWJ65MXX9YA', 0),
	(26, 1, 'Declan Green', 'ipsum.suspendisse@hotmail.com', 'NVG58XHZ5DU', 0),
	(27, 1, 'Kato Johnson', 'scelerisque.lorem@aol.org', 'REF37IVQ1OV', 1),
	(28, 1, 'Lael Fernandez', 'mattis@aol.ca', 'LPP30CON0VF', 1),
	(29, 1, 'Hannah Noble', 'quam.pellentesque@aol.net', 'JXU34DZJ2HM', 2),
	(30, 1, 'Marshall Cote', 'semper@icloud.net', 'SNM35BRR1YU', 2),
	(31, 1, 'Ava Dixon', 'fusce@hotmail.com', 'ZAY32RSV2CD', 2),
	(32, 1, 'Eaton Gilbert', 'suspendisse.non@aol.org', 'BPQ16EPR4OE', 2),
	(33, 1, 'Preston Cardenas', 'ornare.in@protonmail.org', 'NQF30XNR2CQ', 0),
	(34, 1, 'Carissa Smith', 'nec.ligula.consectetuer@aol.ca', 'VOX66GQU8QW', 1),
	(35, 1, 'Cassady Hampton', 'nibh.enim.gravida@google.org', 'UUR28LIT0XO', 1),
	(36, 1, 'Lisandra Browning', 'dui.cras@google.net', 'JHJ61UBE3SH', 1),
	(37, 1, 'Quamar Howe', 'massa.suspendisse@aol.org', 'FLT08HZM5GB', 0),
	(38, 1, 'Carol Kim', 'dolor.elit.pellentesque@yahoo.com', 'HOD63FGR8DT', 2),
	(39, 1, 'Dieter Chen', 'duis.cursus.diam@outlook.ca', 'WRL56DLC0DB', 0),
	(40, 1, 'Isabella Jenkins', 'nascetur@icloud.edu', 'YTV57EOY3ZN', 1),
	(41, 1, 'Xandra Rush', 'vitae.semper@hotmail.com', 'DEH87OKF3CW', 1),
	(42, 1, 'Kaitlin Kramer', 'mauris@yahoo.net', 'KBY12YCD9MQ', 0),
	(43, 1, 'Shelley Terry', 'amet.consectetuer@icloud.couk', 'NWD72CTS4HN', 2),
	(44, 1, 'Caleb Becker', 'phasellus.nulla@icloud.org', 'MPW51CDU3CH', 1),
	(45, 1, 'Nissim Vega', 'tincidunt.pede@yahoo.couk', 'JXR78WID6SX', 0),
	(46, 1, 'Gray Chambers', 'dictum.mi@aol.com', 'DXT78KTN8WQ', 0),
	(47, 1, 'Alma Olsen', 'nunc.in@yahoo.ca', 'BOU49OHI8EA', 0),
	(48, 1, 'Hoyt Garner', 'sed.est.nunc@hotmail.couk', 'SUD57XCC6BH', 0),
	(49, 1, 'Solomon Harris', 'molestie@hotmail.com', 'OMU17QPG7OX', 0),
	(50, 1, 'Cullen Franco', 'ac.mattis.ornare@google.com', 'HXH07UZN4PK', 2),
	(51, 1, 'Fletcher Mcmillan', 'sapien.gravida.non@yahoo.net', 'CAP84HCP0IO', 1),
	(52, 1, 'Ciara Winters', 'montes.nascetur@protonmail.net', 'FWG43HET6WW', 2),
	(53, 1, 'Nicholas Macias', 'vestibulum.accumsan.neque@protonmail.edu', 'OZR70LFN8LL', 0),
	(54, 1, 'James Pickett', 'sit.amet@outlook.edu', 'ZUA21PLM1OI', 1),
	(55, 1, 'Ray Slater', 'sagittis.lobortis@hotmail.net', 'QIH77YVL4SF', 1),
	(56, 1, 'Aristotle Noel', 'sem.magna@hotmail.ca', 'ASI37QDG3IX', 0),
	(57, 1, 'Noble Blevins', 'cursus.diam@hotmail.ca', 'SED28YPX0KK', 1),
	(58, 1, 'Indigo Alexander', 'eget.magna@protonmail.edu', 'EWG79FCG5OO', 1),
	(59, 1, 'Howard Ingram', 'ac.sem.ut@outlook.ca', 'UXT75KAJ6OA', 1),
	(60, 1, 'Xyla Hopkins', 'ac.eleifend.vitae@google.com', 'LTR18ZQS3HH', 1),
	(61, 1, 'Macon Horton', 'eu.odio@google.ca', 'LQI63PSQ8KN', 0),
	(62, 1, 'Florence Howell', 'vel.sapien@aol.edu', 'KVM34XLF1YS', 1),
	(63, 1, 'Naomi Hansen', 'sit.amet@hotmail.ca', 'XSP68XXX8FE', 1),
	(64, 1, 'Ignacia Elliott', 'euismod.mauris@outlook.net', 'DKL13IVF3RJ', 1),
	(65, 1, 'Yoshi Kent', 'aliquam.adipiscing.lacus@icloud.com', 'RNA13MZS8PE', 1),
	(66, 1, 'Sylvia Nelson', 'lacus.varius@hotmail.org', 'AKX56QHT8JO', 1),
	(67, 1, 'Zeph Callahan', 'purus.duis.elementum@yahoo.couk', 'UXK82JMW4FR', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table x.user_role_mapping
CREATE TABLE IF NOT EXISTS `user_role_mapping` (
  `user_id` int(11) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.user_role_mapping: ~5 rows (approximately)
DELETE FROM `user_role_mapping`;
/*!40000 ALTER TABLE `user_role_mapping` DISABLE KEYS */;
INSERT INTO `user_role_mapping` (`user_id`, `role`) VALUES
	(0, 'coach'),
	(2, 'admin'),
	(1, 'referee'),
	(3, 'coachDirector'),
	(4, 'refereeDirectory');
/*!40000 ALTER TABLE `user_role_mapping` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
