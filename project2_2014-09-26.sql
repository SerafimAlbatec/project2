# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38)
# Database: project2
# Generation Time: 2014-09-26 07:59:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;

INSERT INTO `admins` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`)
VALUES
	(3,'seras@hotmail.com','$2a$10$wSN7ZTCsWQ9wpJ2Om7iJKe8QzpD7hKbKj9LfTV1G3/4n4uK2dJc.C',NULL,NULL,NULL,4,'2014-09-26 07:33:47','2014-09-26 07:13:44','127.0.0.1','127.0.0.1','2014-09-26 07:11:28','2014-09-26 07:33:47');

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `text` text,
  `short_text` text,
  `help_text` text,
  `weight` int(11) DEFAULT NULL,
  `response_class` varchar(255) DEFAULT NULL,
  `reference_identifier` varchar(255) DEFAULT NULL,
  `data_export_identifier` varchar(255) DEFAULT NULL,
  `common_namespace` varchar(255) DEFAULT NULL,
  `common_identifier` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_exclusive` tinyint(1) DEFAULT NULL,
  `display_length` int(11) DEFAULT NULL,
  `custom_class` varchar(255) DEFAULT NULL,
  `custom_renderer` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `display_type` varchar(255) DEFAULT NULL,
  `input_mask` varchar(255) DEFAULT NULL,
  `input_mask_placeholder` varchar(255) DEFAULT NULL,
  `original_choice` varchar(255) DEFAULT NULL,
  `is_comment` tinyint(1) DEFAULT '0',
  `column_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_answers_api_id` (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;

INSERT INTO `answers` (`id`, `question_id`, `text`, `short_text`, `help_text`, `weight`, `response_class`, `reference_identifier`, `data_export_identifier`, `common_namespace`, `common_identifier`, `display_order`, `is_exclusive`, `display_length`, `custom_class`, `custom_renderer`, `created_at`, `updated_at`, `default_value`, `api_id`, `display_type`, `input_mask`, `input_mask_placeholder`, `original_choice`, `is_comment`, `column_id`)
VALUES
	(1,1,'default','default',NULL,NULL,'string',NULL,'default',NULL,NULL,NULL,0,NULL,NULL,NULL,'2014-09-26 07:56:19','2014-09-26 07:56:19',NULL,'601118b2-7dfe-466c-b737-0af5bc2b5cca','hidden_label',NULL,NULL,'default',0,NULL);

/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table columns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `columns`;

CREATE TABLE `columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_group_id` int(11) DEFAULT NULL,
  `text` text,
  `answers_textbox` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table dependencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dependencies`;

CREATE TABLE `dependencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `question_group_id` int(11) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table dependency_conditions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dependency_conditions`;

CREATE TABLE `dependency_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dependency_id` int(11) DEFAULT NULL,
  `rule_key` varchar(255) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `text_value` text,
  `string_value` varchar(255) DEFAULT NULL,
  `response_other` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table question_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question_groups`;

CREATE TABLE `question_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `help_text` text,
  `reference_identifier` varchar(255) DEFAULT NULL,
  `data_export_identifier` varchar(255) DEFAULT NULL,
  `common_namespace` varchar(255) DEFAULT NULL,
  `common_identifier` varchar(255) DEFAULT NULL,
  `display_type` varchar(255) DEFAULT NULL,
  `custom_class` varchar(255) DEFAULT NULL,
  `custom_renderer` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_question_groups_api_id` (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_section_id` int(11) DEFAULT NULL,
  `question_group_id` int(11) DEFAULT NULL,
  `text` text,
  `short_text` text,
  `help_text` text,
  `pick` varchar(255) DEFAULT NULL,
  `reference_identifier` varchar(255) DEFAULT NULL,
  `data_export_identifier` varchar(255) DEFAULT NULL,
  `common_namespace` varchar(255) DEFAULT NULL,
  `common_identifier` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `display_type` varchar(255) DEFAULT NULL,
  `is_mandatory` tinyint(1) DEFAULT NULL,
  `display_width` int(11) DEFAULT NULL,
  `custom_class` varchar(255) DEFAULT NULL,
  `custom_renderer` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `correct_answer_id` int(11) DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `modifiable` tinyint(1) DEFAULT '1',
  `dynamically_generate` tinyint(1) DEFAULT '0',
  `dummy_blob` varchar(255) DEFAULT NULL,
  `dynamic_source` varchar(255) DEFAULT NULL,
  `report_code` varchar(255) DEFAULT NULL,
  `is_comment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_questions_api_id` (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `survey_section_id`, `question_group_id`, `text`, `short_text`, `help_text`, `pick`, `reference_identifier`, `data_export_identifier`, `common_namespace`, `common_identifier`, `display_order`, `display_type`, `is_mandatory`, `display_width`, `custom_class`, `custom_renderer`, `created_at`, `updated_at`, `correct_answer_id`, `api_id`, `modifiable`, `dynamically_generate`, `dummy_blob`, `dynamic_source`, `report_code`, `is_comment`)
VALUES
	(1,5,NULL,'Poso xrwnwn eisai??','Poso xrwnwn eisai??',NULL,'none',NULL,'poso_xrwnwn_eisai',NULL,NULL,0,'default',0,NULL,NULL,NULL,'2014-09-26 07:56:19','2014-09-26 07:56:19',NULL,'6f7c746a-5c8a-43fa-b57c-784be3c10bad',1,0,NULL,NULL,'',0);

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table response_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `response_sets`;

CREATE TABLE `response_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `access_code` varchar(255) DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `test_data` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `response_sets_ac_idx` (`access_code`),
  UNIQUE KEY `uq_response_sets_api_id` (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `response_sets` WRITE;
/*!40000 ALTER TABLE `response_sets` DISABLE KEYS */;

INSERT INTO `response_sets` (`id`, `user_id`, `survey_id`, `access_code`, `started_at`, `completed_at`, `created_at`, `updated_at`, `api_id`, `test_data`)
VALUES
	(2,NULL,3,'blSXQUsqCw','2014-09-24 10:10:40',NULL,'2014-09-24 10:10:40','2014-09-24 10:10:40','42d2d29c-5b47-479d-a940-c35080b9dbee',0),
	(3,NULL,3,'p6Ycy-UYPg','2014-09-24 10:10:52',NULL,'2014-09-24 10:10:52','2014-09-24 10:10:52','0574b1ac-b31d-44da-bd4e-9e8249f5205c',0),
	(4,NULL,3,'fgnfRVtLeA','2014-09-25 07:55:22',NULL,'2014-09-25 07:55:22','2014-09-25 07:55:22','a9b6a4a2-6a90-45d0-a461-0744bf36485e',0),
	(5,NULL,5,'A24GdpB5qw','2014-09-26 07:56:40','2014-09-26 07:56:44','2014-09-26 07:56:40','2014-09-26 07:56:44','0f399c33-d147-40d9-9af4-85209ff1b899',0);

/*!40000 ALTER TABLE `response_sets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table responses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `responses`;

CREATE TABLE `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_set_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `text_value` text,
  `string_value` varchar(255) DEFAULT NULL,
  `response_other` varchar(255) DEFAULT NULL,
  `response_group` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `survey_section_id` int(11) DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `blob` varchar(255) DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_responses_api_id` (`api_id`),
  KEY `index_responses_on_survey_section_id` (`survey_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;

INSERT INTO `responses` (`id`, `response_set_id`, `question_id`, `answer_id`, `datetime_value`, `integer_value`, `float_value`, `unit`, `text_value`, `string_value`, `response_other`, `response_group`, `created_at`, `updated_at`, `survey_section_id`, `api_id`, `blob`, `column_id`)
VALUES
	(1,5,1,1,NULL,NULL,NULL,NULL,NULL,'12',NULL,NULL,'2014-09-26 07:56:44','2014-09-26 07:56:44',NULL,'0bfc02e5-e6fa-4c01-b707-31278b7e1009',NULL,NULL);

/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rows`;

CREATE TABLE `rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_group_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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
	('20140924073716'),
	('20140924073717'),
	('20140924073718'),
	('20140924073719'),
	('20140924073720'),
	('20140924073721'),
	('20140924073722'),
	('20140924073723'),
	('20140924073724'),
	('20140924073725'),
	('20140924073726'),
	('20140924073727'),
	('20140924073728'),
	('20140924073729'),
	('20140924073730'),
	('20140924073731'),
	('20140924073732'),
	('20140924073733'),
	('20140924073734'),
	('20140924073735'),
	('20140924073736'),
	('20140924073737'),
	('20140924073738'),
	('20140924073739'),
	('20140924073740'),
	('20140924073741'),
	('20140924073742'),
	('20140924073743'),
	('20140924073744'),
	('20140924073745'),
	('20140924073746'),
	('20140924073747'),
	('20140924073748'),
	('20140924073749'),
	('20140924073750'),
	('20140924073751'),
	('20140924073752'),
	('20140924073753'),
	('20140924073754'),
	('20140924073755'),
	('20140924073756'),
	('20140924073757'),
	('20140924073758'),
	('20140924073759'),
	('20140924073760'),
	('20140924073761'),
	('20140924073762'),
	('20140924073763'),
	('20140925115830'),
	('20140925134843'),
	('20140925140020');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table survey_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `survey_sections`;

CREATE TABLE `survey_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `reference_identifier` varchar(255) DEFAULT NULL,
  `data_export_identifier` varchar(255) DEFAULT NULL,
  `common_namespace` varchar(255) DEFAULT NULL,
  `common_identifier` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `custom_class` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `modifiable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `survey_sections` WRITE;
/*!40000 ALTER TABLE `survey_sections` DISABLE KEYS */;

INSERT INTO `survey_sections` (`id`, `survey_id`, `title`, `description`, `reference_identifier`, `data_export_identifier`, `common_namespace`, `common_identifier`, `display_order`, `custom_class`, `created_at`, `updated_at`, `modifiable`)
VALUES
	(3,3,'Section 1',NULL,NULL,'section_1',NULL,NULL,0,NULL,'2014-09-24 10:10:04','2014-09-24 10:10:04',1),
	(5,5,'Section 1',NULL,NULL,'section_1',NULL,NULL,0,NULL,'2014-09-26 07:56:04','2014-09-26 07:56:04',1);

/*!40000 ALTER TABLE `survey_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table survey_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `survey_translations`;

CREATE TABLE `survey_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `translation` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table surveys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surveys`;

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `access_code` varchar(255) DEFAULT NULL,
  `reference_identifier` varchar(255) DEFAULT NULL,
  `data_export_identifier` varchar(255) DEFAULT NULL,
  `common_namespace` varchar(255) DEFAULT NULL,
  `common_identifier` varchar(255) DEFAULT NULL,
  `active_at` datetime DEFAULT NULL,
  `inactive_at` datetime DEFAULT NULL,
  `css_url` varchar(255) DEFAULT NULL,
  `custom_class` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `survey_version` int(11) DEFAULT '0',
  `template` tinyint(1) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `surveys_access_code_version_idx` (`access_code`,`survey_version`),
  UNIQUE KEY `uq_surveys_api_id` (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;

INSERT INTO `surveys` (`id`, `title`, `description`, `access_code`, `reference_identifier`, `data_export_identifier`, `common_namespace`, `common_identifier`, `active_at`, `inactive_at`, `css_url`, `custom_class`, `created_at`, `updated_at`, `display_order`, `api_id`, `survey_version`, `template`, `user_id`)
VALUES
	(3,'asawjgv',NULL,'asawjgv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-09-24 10:10:04','2014-09-24 10:10:35',0,'48e24f76-8da5-4621-9465-731c5513f0c3',1,0,NULL),
	(5,'Mia',NULL,'mia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-09-26 07:56:04','2014-09-26 07:56:04',1,'066d45d0-e892-4b04-a38c-37b53bc82db0',0,0,NULL);

/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
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
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `admin`)
VALUES
	(1,'serafimntavranis@hotmail.com','$2a$10$VKZM1/4yXcGTY0IlCbaChu24UMzAD1X0f92Aj1k6oQS.HnQOky0yq',NULL,NULL,NULL,14,'2014-09-26 07:03:07','2014-09-26 06:24:04','127.0.0.1','127.0.0.1','2014-09-25 13:40:52','2014-09-26 07:03:07',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table validation_conditions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `validation_conditions`;

CREATE TABLE `validation_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `validation_id` int(11) DEFAULT NULL,
  `rule_key` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `text_value` text,
  `string_value` varchar(255) DEFAULT NULL,
  `response_other` varchar(255) DEFAULT NULL,
  `regexp` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table validations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `validations`;

CREATE TABLE `validations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
