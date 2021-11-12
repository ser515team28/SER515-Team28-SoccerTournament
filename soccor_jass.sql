-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


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
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `dept_id`, `name`, `priority`) VALUES
	(1, 1, 'Fees', 1),
	(2, 1, 'Rechecking', 0),
	(3, 1, 'Remedial', 1),
	(4, 1, 'Holidays', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

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
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;

-- Dumping structure for table x.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.departments: ~1 rows (approximately)
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
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` (`id`, `question`, `answer`, `user_id`, `created`) VALUES
	(1, 'What are the set up fees to start a TourneyCentral site?', '$0.00, nothing', 4, '2021-10-31'),
	(2, 'How do I sign up my team?', 'You should register as coach first then you can register your team.', 4, '2021-10-31');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

-- Dumping structure for table x.player_mst
CREATE TABLE IF NOT EXISTS `player_mst` (
  `playerId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`playerId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table x.player_mst: ~1 rows (approximately)
/*!40000 ALTER TABLE `player_mst` DISABLE KEYS */;
INSERT INTO `player_mst` (`playerId`, `name`, `email`, `age`, `TeamID`, `position`) VALUES
	(5, 'Ronaldo', 'ronaldo@abc.com', 35, NULL, 'Forward');
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

-- Dumping data for table x.sponsor: ~1 rows (approximately)
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` (`id`, `business_name`, `person_name`, `email`, `phone_number`, `interest`) VALUES
	(101, 'Adidas', 'Jack Micheal', 'jm@jm@gmail.com', '4806691963', 'N/A');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;

-- Dumping structure for table x.team_mst
CREATE TABLE IF NOT EXISTS `team_mst` (
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(50) DEFAULT NULL,
  `TeamCode` varchar(50) DEFAULT NULL,
  `ClubCode` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `TeamLOGO` varchar(255) DEFAULT 'logo.png',
  `coachId` int(11) DEFAULT NULL,
  `isActive` int(1) NOT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.team_mst: ~3 rows (approximately)
/*!40000 ALTER TABLE `team_mst` DISABLE KEYS */;
INSERT INTO `team_mst` (`TeamID`, `TeamName`, `TeamCode`, `ClubCode`, `City`, `TeamLOGO`, `coachId`, `isActive`) VALUES
	(102, 'Super Kings', 'CSK', 'CS100', 'Chennai', 'logo.png', 10, 0),
	(103, 'Super Kings', 'CSK', 'CS100', 'Chennai', 'logo.png', 11, 0),
	(104, 'Super Kings', 'CSK', 'CS100', 'Chennai', 'logo.png', 12, 0);
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

-- Dumping data for table x.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `dept_id`, `name`, `email`, `password`, `user_type`) VALUES
	(4, 1, 'Administrative dept.', 'admin@ddu.ac.in', 'admin', 2),
	(7, 1, 'Harsh', 'harsh@gmail.com', 'bankim', 1),
	(9, 1, 'Jashmin', 'jass@gmail.com', 'jass123', 0),
	(10, 2, 'Parth', 'parth@gmail.com', 'parth123', 0),
	(11, 2, 'pankti', 'pankti@gmail.com', 'pankti123', 0),
	(12, 2, 'Coach', 'coach@gmail.com', 'coach123', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table x.user_role_mapping
CREATE TABLE IF NOT EXISTS `user_role_mapping` (
  `user_id` int(11) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table x.user_role_mapping: ~5 rows (approximately)
/*!40000 ALTER TABLE `user_role_mapping` DISABLE KEYS */;
INSERT INTO `user_role_mapping` (`user_id`, `role`) VALUES
	(0, 'coach'),
	(2, 'admin'),
	(1, 'referee'),
	(3, 'coachDirector'),
	(4, 'refereeDirectory');
/*!40000 ALTER TABLE `user_role_mapping` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
