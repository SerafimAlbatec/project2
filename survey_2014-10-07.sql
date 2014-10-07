# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38)
# Database: survey
# Generation Time: 2014-10-07 09:07:24 +0000
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
	(1,'1',38,'2014-09-30 13:06:04','2014-09-30 13:06:04'),
	(3,'2',38,'2014-09-30 13:09:13','2014-09-30 13:09:13'),
	(4,'3',38,'2014-09-30 13:09:24','2014-09-30 13:09:24'),
	(5,'1',39,'2014-09-30 13:10:52','2014-09-30 13:10:52'),
	(6,'2',39,'2014-09-30 13:11:00','2014-09-30 13:11:00'),
	(7,'3',39,'2014-09-30 13:11:06','2014-09-30 13:11:06'),
	(8,'1',40,'2014-10-01 08:23:34','2014-10-01 08:23:34'),
	(9,'2',40,'2014-10-01 08:23:40','2014-10-01 08:23:40'),
	(10,'3',40,'2014-10-01 08:23:46','2014-10-01 08:23:46'),
	(11,'1',41,'2014-10-01 10:53:13','2014-10-01 10:53:13'),
	(12,'2',41,'2014-10-01 10:53:19','2014-10-01 10:53:19'),
	(13,'3',41,'2014-10-01 10:53:24','2014-10-01 10:53:24'),
	(14,'1',42,'2014-10-04 18:14:05','2014-10-04 18:14:05'),
	(15,'2',42,'2014-10-04 18:14:10','2014-10-04 18:14:10'),
	(16,'3',42,'2014-10-04 18:14:14','2014-10-04 18:14:14'),
	(17,'1',43,'2014-10-04 18:14:32','2014-10-04 18:14:32'),
	(18,'1',44,'2014-10-04 18:15:51','2014-10-04 18:15:51'),
	(19,'1',44,'2014-10-04 18:15:55','2014-10-04 18:15:55'),
	(20,'1',44,'2014-10-04 18:15:59','2014-10-04 18:15:59');

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
	(11,6,28,'2014-09-30 07:43:30','2014-09-30 07:43:30'),
	(15,7,32,'2014-09-30 07:57:54','2014-09-30 07:57:54'),
	(16,8,33,'2014-09-30 07:59:20','2014-09-30 07:59:20'),
	(17,7,34,'2014-09-30 08:00:02','2014-09-30 08:00:02'),
	(18,7,35,'2014-09-30 08:03:29','2014-09-30 08:03:29'),
	(19,7,36,'2014-09-30 08:04:00','2014-09-30 08:04:00'),
	(20,7,37,'2014-09-30 08:04:34','2014-09-30 08:04:34'),
	(21,9,38,'2014-09-30 12:54:35','2014-09-30 12:54:35'),
	(22,10,39,'2014-09-30 13:10:44','2014-09-30 13:10:44'),
	(23,9,40,'2014-10-01 08:23:24','2014-10-01 08:23:24'),
	(24,9,41,'2014-10-01 09:15:38','2014-10-01 09:15:38'),
	(25,11,42,'2014-10-04 18:13:57','2014-10-04 18:13:57'),
	(26,11,43,'2014-10-04 18:14:26','2014-10-04 18:14:26'),
	(27,11,44,'2014-10-04 18:15:46','2014-10-04 18:15:46');

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
	(9,'Autokinita',NULL,'2014-09-30 12:53:11','2014-09-30 12:53:11',NULL),
	(10,'Spiti',NULL,'2014-09-30 13:10:31','2014-09-30 13:10:31',NULL),
	(11,'xcb',NULL,'2014-10-04 18:13:49','2014-10-04 18:13:49',NULL);

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
	(1,38,2,'2014-09-30 13:07:16','2014-09-30 13:07:16'),
	(2,38,3,'2014-09-30 13:09:13','2014-09-30 13:09:13'),
	(3,38,4,'2014-09-30 13:09:24','2014-09-30 13:09:24'),
	(4,39,5,'2014-09-30 13:10:52','2014-09-30 13:10:52'),
	(5,39,6,'2014-09-30 13:11:00','2014-09-30 13:11:00'),
	(6,39,7,'2014-09-30 13:11:06','2014-09-30 13:11:06'),
	(7,40,8,'2014-10-01 08:23:34','2014-10-01 08:23:34'),
	(8,40,9,'2014-10-01 08:23:40','2014-10-01 08:23:40'),
	(9,40,10,'2014-10-01 08:23:46','2014-10-01 08:23:46'),
	(10,41,11,'2014-10-01 10:53:13','2014-10-01 10:53:13'),
	(11,41,12,'2014-10-01 10:53:19','2014-10-01 10:53:19'),
	(12,41,13,'2014-10-01 10:53:24','2014-10-01 10:53:24'),
	(13,42,14,'2014-10-04 18:14:05','2014-10-04 18:14:05'),
	(14,42,15,'2014-10-04 18:14:10','2014-10-04 18:14:10'),
	(15,42,16,'2014-10-04 18:14:14','2014-10-04 18:14:14'),
	(16,43,17,'2014-10-04 18:14:32','2014-10-04 18:14:32'),
	(17,44,18,'2014-10-04 18:15:51','2014-10-04 18:15:51'),
	(18,44,19,'2014-10-04 18:15:55','2014-10-04 18:15:55'),
	(19,44,20,'2014-10-04 18:15:59','2014-10-04 18:15:59');

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
	(38,'Posa autokiita exeis?',NULL,6,9,'2014-09-30 12:54:35','2014-09-30 12:54:35'),
	(39,'Poses mixanes exeis?',NULL,6,10,'2014-09-30 13:10:44','2014-09-30 13:10:44'),
	(40,'Poses mixanes exeis?',NULL,6,9,'2014-10-01 08:23:24','2014-10-01 08:23:24'),
	(41,'Posa spitia exeis',NULL,6,9,'2014-10-01 09:15:38','2014-10-01 09:15:38'),
	(42,'Posa autokiita exeis?',NULL,6,11,'2014-10-04 18:13:57','2014-10-04 18:13:57'),
	(43,'Poses mixanes exeis?',NULL,6,11,'2014-10-04 18:14:26','2014-10-04 18:14:26'),
	(44,'Poses mixanes exeis?',NULL,6,11,'2014-10-04 18:15:46','2014-10-04 18:15:46');

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
	(13,6,10,NULL,5,'2014-10-06 10:04:07','2014-10-06 10:04:07'),
	(14,6,9,NULL,11,'2014-10-07 07:00:52','2014-10-07 07:00:52'),
	(15,6,9,NULL,13,'2014-10-07 07:41:11','2014-10-07 07:41:11'),
	(16,6,9,NULL,12,'2014-10-07 08:45:01','2014-10-07 08:45:01'),
	(17,6,9,NULL,11,'2014-10-07 08:57:30','2014-10-07 08:57:30'),
	(18,6,11,NULL,18,'2014-10-07 08:57:38','2014-10-07 08:57:38');

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
	('20141007070729');

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
	(6,'serafimntavranis@hotmail.com','$2a$10$mr3jCPExVRXeNIK0W0GdqecpgqVVQujN3wH7vrkMHGvqLHcxQ1drW',NULL,NULL,NULL,17,'2014-10-07 08:58:08','2014-10-07 07:55:41','127.0.0.1','127.0.0.1','2014-09-29 07:56:02','2014-10-07 08:58:08',1),
	(7,'seras@hotmail.com','$2a$10$Nli1pVdHB4UTmQ4DX9YCLu0EBlF7vKPDudZxDDZccZdITRWEBLAqK',NULL,NULL,NULL,6,'2014-10-07 07:55:25','2014-10-07 06:06:04','127.0.0.1','127.0.0.1','2014-09-29 09:22:18','2014-10-07 07:55:25',0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
