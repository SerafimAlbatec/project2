# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38)
# Database: survey
# Generation Time: 2014-10-10 11:38:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;

INSERT INTO `answers` (`id`, `name`, `question_id`, `created_at`, `updated_at`)
VALUES
	(28,'Ellada',47,'2014-10-10 11:21:46','2014-10-10 11:21:46'),
	(29,'Germania',47,'2014-10-10 11:21:54','2014-10-10 11:21:54'),
	(30,'elvetia',47,'2014-10-10 11:22:02','2014-10-10 11:22:02'),
	(31,'Edw',48,'2014-10-10 11:27:53','2014-10-10 11:27:53'),
	(32,'ena',49,'2014-10-10 11:31:48','2014-10-10 11:31:48'),
	(33,'duo',49,'2014-10-10 11:31:54','2014-10-10 11:31:54'),
	(34,'tria',49,'2014-10-10 11:32:00','2014-10-10 11:32:00');

/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table poll_questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `poll_questions`;

CREATE TABLE `poll_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `poll_questions` WRITE;
/*!40000 ALTER TABLE `poll_questions` DISABLE KEYS */;

INSERT INTO `poll_questions` (`id`, `poll_id`, `question_id`, `created_at`, `updated_at`)
VALUES
	(30,12,47,'2014-10-10 11:21:35','2014-10-10 11:21:35'),
	(31,12,48,'2014-10-10 11:27:45','2014-10-10 11:27:45'),
	(32,13,49,'2014-10-10 11:31:42','2014-10-10 11:31:42');

/*!40000 ALTER TABLE `poll_questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table polls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `polls`;

CREATE TABLE `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `question_number` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;

INSERT INTO `polls` (`id`, `name`, `question_number`, `created_at`, `updated_at`, `user_id`)
VALUES
	(12,'Xwra',NULL,'2014-10-10 11:21:20','2014-10-10 11:21:20',6),
	(13,'Autokinita',NULL,'2014-10-10 11:31:32','2014-10-10 11:31:32',6);

/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question_aswers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question_aswers`;

CREATE TABLE `question_aswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `question_aswers` WRITE;
/*!40000 ALTER TABLE `question_aswers` DISABLE KEYS */;

INSERT INTO `question_aswers` (`id`, `question_id`, `answer_id`, `created_at`, `updated_at`)
VALUES
	(27,47,28,'2014-10-10 11:21:46','2014-10-10 11:21:46'),
	(28,47,29,'2014-10-10 11:21:54','2014-10-10 11:21:54'),
	(29,47,30,'2014-10-10 11:22:02','2014-10-10 11:22:02'),
	(30,48,31,'2014-10-10 11:27:53','2014-10-10 11:27:53'),
	(31,49,32,'2014-10-10 11:31:48','2014-10-10 11:31:48'),
	(32,49,33,'2014-10-10 11:31:54','2014-10-10 11:31:54'),
	(33,49,34,'2014-10-10 11:32:00','2014-10-10 11:32:00');

/*!40000 ALTER TABLE `question_aswers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `answer_number` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `name`, `answer_number`, `user_id`, `poll_id`, `created_at`, `updated_at`)
VALUES
	(47,'Apo pou eisai?',NULL,6,12,'2014-10-10 11:21:35','2014-10-10 11:21:35'),
	(48,'Posa autokiita exeis?',NULL,6,12,'2014-10-10 11:27:45','2014-10-10 11:27:45'),
	(49,'Posa autokiita exeis?',NULL,6,13,'2014-10-10 11:31:42','2014-10-10 11:31:42');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `results`;

CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;

INSERT INTO `results` (`id`, `user_id`, `poll_id`, `question_id`, `answer_id`, `created_at`, `updated_at`)
VALUES
	(68,6,12,NULL,NULL,'2014-10-10 11:26:52','2014-10-10 11:26:52'),
	(69,6,12,NULL,NULL,'2014-10-10 11:27:30','2014-10-10 11:27:30'),
	(70,6,12,NULL,NULL,'2014-10-10 11:28:02','2014-10-10 11:28:02'),
	(71,6,12,NULL,NULL,'2014-10-10 11:29:39','2014-10-10 11:29:39'),
	(72,6,12,NULL,NULL,'2014-10-10 11:31:11','2014-10-10 11:31:11'),
	(73,6,13,NULL,NULL,'2014-10-10 11:32:11','2014-10-10 11:32:11');

/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20140929060523'),
	('20140929060724'),
	('20140929061319'),
	('20140929061550'),
	('20140929061728'),
	('20140929062036'),
	('20140929135318'),
	('20140929135505'),
	('20141007070729'),
	('20141010085509');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `admin`)
VALUES
	(6,'serafimntavranis@hotmail.com','$2a$10$mr3jCPExVRXeNIK0W0GdqecpgqVVQujN3wH7vrkMHGvqLHcxQ1drW',NULL,NULL,NULL,25,'2014-10-10 08:39:20','2014-10-08 17:34:33','127.0.0.1','127.0.0.1','2014-09-29 07:56:02','2014-10-10 08:39:20',1),
	(7,'seras@hotmail.com','$2a$10$Nli1pVdHB4UTmQ4DX9YCLu0EBlF7vKPDudZxDDZccZdITRWEBLAqK',NULL,NULL,NULL,8,'2014-10-08 10:14:12','2014-10-08 10:14:01','127.0.0.1','127.0.0.1','2014-09-29 09:22:18','2014-10-08 10:14:12',0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table windows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `windows`;

CREATE TABLE `windows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `windows` WRITE;
/*!40000 ALTER TABLE `windows` DISABLE KEYS */;

INSERT INTO `windows` (`id`, `result_id`, `question_id`, `answer_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(120,73,49,34,NULL,'2014-10-10 11:32:11','2014-10-10 11:32:11');

/*!40000 ALTER TABLE `windows` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
