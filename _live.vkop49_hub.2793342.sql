-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: vkop49_hub
-- ------------------------------------------------------
-- Server version	5.7.21-20-beget-5.7.21-20-1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cdxam_action_log_config`
--

DROP TABLE IF EXISTS `cdxam_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_action_log_config`
--

LOCK TABLES `cdxam_action_log_config` WRITE;
/*!40000 ALTER TABLE `cdxam_action_log_config` DISABLE KEYS */;
INSERT INTO `cdxam_action_log_config` VALUES (1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `cdxam_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_action_logs`
--

DROP TABLE IF EXISTS `cdxam_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_action_logs`
--

LOCK TABLES `cdxam_action_logs` WRITE;
/*!40000 ALTER TABLE `cdxam_action_logs` DISABLE KEYS */;
INSERT INTO `cdxam_action_logs` VALUES (1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-13 10:04:39','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(2,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":234,\"name\":\"Russian (ru-RU)\",\"extension_name\":\"Russian (ru-RU)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:04:59','com_installer',567,234,'COM_ACTIONLOGS_DISABLED'),(3,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":235,\"name\":\"Russian (ru-RU)\",\"extension_name\":\"Russian (ru-RU)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:04:59','com_installer',567,235,'COM_ACTIONLOGS_DISABLED'),(4,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":236,\"name\":\"Russian (ru-RU)\",\"extension_name\":\"Russian (ru-RU)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:04:59','com_installer',567,236,'COM_ACTIONLOGS_DISABLED'),(5,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":237,\"name\":\"Russian (ru-RU) Language Pack\",\"extension_name\":\"Russian (ru-RU) Language Pack\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:04:59','com_installer',567,237,'COM_ACTIONLOGS_DISABLED'),(6,'PLG_ACTIONLOG_JOOMLA_USER_UPDATE','{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"version\":\"4.4.4\",\"oldversion\":\"Unknown\"}','2024-05-13 10:23:13','com_joomlaupdate',567,567,'COM_ACTIONLOGS_DISABLED'),(7,'PLG_ACTIONLOG_JOOMLA_USER_UPDATE','{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"version\":\"4.4.4\",\"oldversion\":\"4.4.2\"}','2024-05-13 10:23:13','com_joomlaupdate',567,567,'COM_ACTIONLOGS_DISABLED'),(8,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":234,\"name\":\"Russian (ru-RU)\",\"extension_name\":\"Russian (ru-RU)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:26:45','com_installer',567,234,'COM_ACTIONLOGS_DISABLED'),(9,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":235,\"name\":\"Russian (ru-RU)\",\"extension_name\":\"Russian (ru-RU)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:26:45','com_installer',567,235,'COM_ACTIONLOGS_DISABLED'),(10,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":236,\"name\":\"Russian (ru-RU)\",\"extension_name\":\"Russian (ru-RU)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:26:45','com_installer',567,236,'COM_ACTIONLOGS_DISABLED'),(11,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":237,\"name\":\"Russian (ru-RU) Language Pack\",\"extension_name\":\"Russian (ru-RU) Language Pack\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:26:45','com_installer',567,237,'COM_ACTIONLOGS_DISABLED'),(12,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":238,\"name\":\"Package Installer\",\"extension_name\":\"Package Installer\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:34:00','com_installer',567,238,'COM_ACTIONLOGS_DISABLED'),(13,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":247,\"name\":\"Package Installer\",\"extension_name\":\"Package Installer\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:34:43','com_installer',567,247,'COM_ACTIONLOGS_DISABLED'),(14,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":false,\"name\":\"pkg_kunena\",\"extension_name\":\"pkg_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:35:24','com_installer',567,0,'COM_ACTIONLOGS_DISABLED'),(15,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":248,\"name\":\"Kunena Framework\",\"extension_name\":\"Kunena Framework\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,248,'COM_ACTIONLOGS_DISABLED'),(16,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FILE\",\"id\":249,\"name\":\"Kunena Media Files\",\"extension_name\":\"Kunena Media Files\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,249,'COM_ACTIONLOGS_DISABLED'),(17,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":250,\"name\":\"com_kunena\",\"extension_name\":\"com_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,250,'COM_ACTIONLOGS_DISABLED'),(18,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":251,\"name\":\"plg_finder_kunena\",\"extension_name\":\"plg_finder_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,251,'COM_ACTIONLOGS_DISABLED'),(19,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":252,\"name\":\"plg_kunena_finder\",\"extension_name\":\"plg_kunena_finder\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,252,'COM_ACTIONLOGS_DISABLED'),(20,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":253,\"name\":\"plg_kunena_community\",\"extension_name\":\"plg_kunena_community\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,253,'COM_ACTIONLOGS_DISABLED'),(21,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":254,\"name\":\"plg_kunena_comprofiler\",\"extension_name\":\"plg_kunena_comprofiler\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,254,'COM_ACTIONLOGS_DISABLED'),(22,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":255,\"name\":\"plg_kunena_easysocial\",\"extension_name\":\"plg_kunena_easysocial\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,255,'COM_ACTIONLOGS_DISABLED'),(23,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":256,\"name\":\"plg_kunena_gravatar\",\"extension_name\":\"plg_kunena_gravatar\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,256,'COM_ACTIONLOGS_DISABLED'),(24,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":257,\"name\":\"plg_kunena_uddeim\",\"extension_name\":\"plg_kunena_uddeim\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,257,'COM_ACTIONLOGS_DISABLED'),(25,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":258,\"name\":\"plg_kunena_joomla\",\"extension_name\":\"plg_kunena_joomla\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,258,'COM_ACTIONLOGS_DISABLED'),(26,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":259,\"name\":\"plg_kunena_kunena\",\"extension_name\":\"plg_kunena_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,259,'COM_ACTIONLOGS_DISABLED'),(27,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":260,\"name\":\"plg_system_kunena\",\"extension_name\":\"plg_system_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,260,'COM_ACTIONLOGS_DISABLED'),(28,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":261,\"name\":\"plg_quickicon_kunena\",\"extension_name\":\"plg_quickicon_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,261,'COM_ACTIONLOGS_DISABLED'),(29,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":262,\"name\":\"plg_sampledata_kunena\",\"extension_name\":\"plg_sampledata_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,262,'COM_ACTIONLOGS_DISABLED'),(30,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":263,\"name\":\"PLG_PRIVACY_KUNENA\",\"extension_name\":\"PLG_PRIVACY_KUNENA\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,263,'COM_ACTIONLOGS_DISABLED'),(31,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":264,\"name\":\"pkg_kunena\",\"extension_name\":\"pkg_kunena\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:48:29','com_installer',567,264,'COM_ACTIONLOGS_DISABLED'),(32,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FILE\",\"id\":265,\"name\":\"Kunena Language - Russian (Russia)\",\"extension_name\":\"Kunena Language - Russian (Russia)\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:49:26','com_installer',567,265,'COM_ACTIONLOGS_DISABLED'),(33,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FILE\",\"id\":266,\"name\":\"Kunena Language - English\",\"extension_name\":\"Kunena Language - English\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:49:26','com_installer',567,266,'COM_ACTIONLOGS_DISABLED'),(34,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":267,\"name\":\"Kunena Language Pack\",\"extension_name\":\"Kunena Language Pack\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:49:26','com_installer',567,267,'COM_ACTIONLOGS_DISABLED'),(35,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 10:50:00','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(36,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED','{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:50:00','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(37,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 10:50:10','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(38,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED','{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"CB Workflows\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 10:50:10','com_modules.module',567,112,'COM_ACTIONLOGS_DISABLED'),(39,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 10:52:41','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(40,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 10:52:50','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(41,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 10:58:04','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(42,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:00:17','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(43,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:29:39','com_menus.item',567,101,'COM_ACTIONLOGS_DISABLED'),(44,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-13 11:29:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(45,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:30:44','com_menus.item',567,101,'COM_ACTIONLOGS_DISABLED'),(46,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-13 11:30:44','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(47,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:31:09','com_menus.menu',567,1,'COM_ACTIONLOGS_DISABLED'),(48,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-13 11:32:19','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(49,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:32:56','com_menus.menu',567,3,'COM_ACTIONLOGS_DISABLED'),(50,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":138,\"title\":\"\\u0418\\u0437\\u0431\\u0440\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0442\\u0435\\u043c\\u044b\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=138\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:33:31','com_menus.item',567,138,'COM_ACTIONLOGS_DISABLED'),(51,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":139,\"title\":\"\\u041f\\u043e\\u0438\\u0441\\u043a \\u0442\\u0435\\u043c\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=139\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:34:05','com_menus.item',567,139,'COM_ACTIONLOGS_DISABLED'),(52,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 11:35:09','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(53,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__kunena_categories\"}','2024-05-13 11:40:24','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(54,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__kunena_categories\"}','2024-05-13 11:40:26','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(55,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__kunena_categories\"}','2024-05-13 11:40:52','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(56,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__kunena_categories\"}','2024-05-13 11:41:19','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(57,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"extension_name\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:42:32','com_modules.module',567,117,'COM_ACTIONLOGS_DISABLED'),(58,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:42:36','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(59,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"extension_name\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:43:20','com_modules.module',567,117,'COM_ACTIONLOGS_DISABLED'),(60,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:43:20','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(61,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 11:47:56','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(62,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:48:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(63,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:48:39','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(64,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:48:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(65,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:48:55','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(66,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:48:55','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(67,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:49:08','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(68,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:49:08','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(69,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:49:35','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(70,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:50:52','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(71,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED','{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:50:52','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(72,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 11:51:16','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(73,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 11:51:16','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(74,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-13 23:25:40','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(75,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:26:57','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(76,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:27:21','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(77,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:27:21','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(78,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:28:03','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(79,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:28:03','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(80,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:28:26','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(81,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:29:48','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(82,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:29:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(83,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:30:09','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(84,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:30:09','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(85,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:30:36','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(86,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:30:36','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(87,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:30:52','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(88,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:30:52','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(89,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 23:31:02','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(90,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:31:28','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(91,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:32:11','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(92,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:32:11','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(93,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:32:32','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(94,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:32:32','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(95,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:34:50','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(96,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:35:01','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(97,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:35:01','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(98,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:35:35','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(99,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:35:35','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(100,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:35:58','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(101,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:35:58','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(102,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:36:21','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(103,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"extension_name\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:38:18','com_modules.module',567,111,'COM_ACTIONLOGS_DISABLED'),(104,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:42:17','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(105,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-13 23:42:17','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(106,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:42:33','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(107,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 23:42:42','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(108,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-13 23:48:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(109,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"CB Login\",\"extension_name\":\"CB Login\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:54:34','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(110,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:54:34','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(111,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 23:54:44','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(112,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:54:56','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(113,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:55:05','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(114,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:55:05','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(115,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 23:55:08','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(116,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:55:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(117,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-13 23:57:36','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(118,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:58:24','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(119,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:58:24','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(120,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-13 23:58:37','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(121,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-13 23:58:37','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(122,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:07:27','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(123,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:08:02','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(124,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:08:02','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(125,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:09:54','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(126,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:16:35','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(127,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:17:27','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(128,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:19:53','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(129,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":141,\"title\":\"\\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0442\\u0435\\u043c\\u0443\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=141\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:21:11','com_menus.item',567,141,'COM_ACTIONLOGS_DISABLED'),(130,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:21:35','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(131,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 00:23:57','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(132,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED','{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:23:57','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(133,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:25:15','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(134,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:25:15','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(135,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:25:37','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(136,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:25:37','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(137,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:25:41','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(138,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:25:41','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(139,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:25:47','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(140,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:25:59','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(141,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:25:59','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(142,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:26:51','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(143,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"extension_name\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 00:27:05','com_modules.module',567,117,'COM_ACTIONLOGS_DISABLED'),(144,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:27:05','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(145,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:27:26','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(146,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 00:27:35','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(147,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-14 00:38:04','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(148,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:41:36','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(149,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:44:44','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(150,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 00:45:04','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(151,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 01:12:23','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(152,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 01:15:39','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(153,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 01:15:48','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(154,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 01:18:33','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(155,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 01:18:51','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(156,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"254\",\"title\":\"plg_kunena_comprofiler\",\"extension_name\":\"plg_kunena_comprofiler\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=254\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:10:29','com_plugins.plugin',567,254,'COM_ACTIONLOGS_DISABLED'),(157,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:10:29','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(158,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"254\",\"title\":\"plg_kunena_comprofiler\",\"extension_name\":\"plg_kunena_comprofiler\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=254\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:10:32','com_plugins.plugin',567,254,'COM_ACTIONLOGS_DISABLED'),(159,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:10:32','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(160,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 02:11:13','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(161,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:14:01','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(162,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"254\",\"title\":\"plg_kunena_comprofiler\",\"extension_name\":\"plg_kunena_comprofiler\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=254\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:14:43','com_plugins.plugin',567,254,'COM_ACTIONLOGS_DISABLED'),(163,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:14:43','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(164,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:14:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(165,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:15:05','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(166,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:22:19','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(167,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"258\",\"title\":\"plg_kunena_joomla\",\"extension_name\":\"plg_kunena_joomla\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=258\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:22:49','com_plugins.plugin',567,258,'COM_ACTIONLOGS_DISABLED'),(168,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:22:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(169,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:23:14','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(170,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:23:22','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(171,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"260\",\"title\":\"plg_system_kunena\",\"extension_name\":\"plg_system_kunena\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=260\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:30:12','com_plugins.plugin',567,260,'COM_ACTIONLOGS_DISABLED'),(172,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:30:12','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(173,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:30:13','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(174,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"260\",\"title\":\"plg_system_kunena\",\"extension_name\":\"plg_system_kunena\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=260\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:30:49','com_plugins.plugin',567,260,'COM_ACTIONLOGS_DISABLED'),(175,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:30:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(176,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:30:51','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(177,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"254\",\"title\":\"plg_kunena_comprofiler\",\"extension_name\":\"plg_kunena_comprofiler\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=254\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 02:34:26','com_plugins.plugin',567,254,'COM_ACTIONLOGS_DISABLED'),(178,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:34:26','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(179,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:34:33','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(180,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 02:36:27','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(181,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 02:40:06','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(182,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 02:40:27','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(183,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 02:45:47','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(184,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 02:45:53','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(185,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 03:05:15','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(186,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-14 03:11:33','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(187,'PLG_ACTIONLOG_JOOMLA_USER_CACHE','{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"group\":\"all\"}','2024-05-14 03:12:13','com_cache',567,567,'COM_ACTIONLOGS_DISABLED'),(188,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 03:13:50','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(189,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 03:14:23','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(190,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-14 03:21:05','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(191,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 03:33:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(192,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 03:37:50','com_menus.item',567,149,'COM_ACTIONLOGS_DISABLED'),(193,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 03:37:50','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(194,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 03:39:57','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(195,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 03:40:08','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(196,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-14 04:59:28','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(197,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 04:59:50','com_menus.item',567,149,'COM_ACTIONLOGS_DISABLED'),(198,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 04:59:50','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(199,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 04:59:59','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(200,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":149,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=149\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 05:02:12','com_menus.item',567,149,'COM_ACTIONLOGS_DISABLED'),(201,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 05:02:12','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(202,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 05:05:03','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(203,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 05:06:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(204,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"CB Workflows\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 05:06:06','com_modules.module',567,112,'COM_ACTIONLOGS_DISABLED'),(205,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"CB Workflows\",\"extension_name\":\"CB Workflows\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 05:06:15','com_modules.module',567,112,'COM_ACTIONLOGS_DISABLED'),(206,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 05:06:15','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(207,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 05:54:05','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(208,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 05:54:30','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(209,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 06:01:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(210,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 06:04:07','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(211,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 06:04:07','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(212,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:04:11','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(213,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:04:24','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(214,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 06:04:34','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(215,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:07:01','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(216,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:07:07','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(217,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:09:14','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(218,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:09:20','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(219,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:11:13','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(220,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:14:57','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(221,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 06:22:39','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(222,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-14 07:17:27','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(223,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":269,\"name\":\"System - SP Page Builder Lite Updater\",\"extension_name\":\"System - SP Page Builder Lite Updater\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:19:17','com_installer',567,269,'COM_ACTIONLOGS_DISABLED'),(224,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":270,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:19:17','com_installer',567,270,'COM_ACTIONLOGS_DISABLED'),(225,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":268,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:19:17','com_installer',567,268,'COM_ACTIONLOGS_DISABLED'),(226,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:26:48','com_menus.item',567,101,'COM_ACTIONLOGS_DISABLED'),(227,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 07:26:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(228,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__sppagebuilder\"}','2024-05-14 07:38:45','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(229,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":271,\"name\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:57:46','com_installer',567,271,'COM_ACTIONLOGS_DISABLED'),(230,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":272,\"name\":\"System - SimpleForm2\",\"extension_name\":\"System - SimpleForm2\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:57:46','com_installer',567,272,'COM_ACTIONLOGS_DISABLED'),(231,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":273,\"name\":\"Package SimpleForm2\",\"extension_name\":\"Package SimpleForm2\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 07:57:46','com_installer',567,273,'COM_ACTIONLOGS_DISABLED'),(232,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__sppagebuilder\"}','2024-05-14 08:02:15','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(233,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 08:03:54','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(234,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 08:05:29','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(235,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__sppagebuilder\"}','2024-05-14 08:07:58','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(236,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:08:44','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(237,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:08:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(238,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:08:49','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(239,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:09:20','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(240,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:09:20','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(241,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 08:09:35','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(242,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 08:09:42','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(243,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:10:11','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(244,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:11:42','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(245,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:18:05','com_templates.style',567,11,'COM_ACTIONLOGS_DISABLED'),(246,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 08:19:17','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(247,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:19:47','com_templates.style',567,11,'COM_ACTIONLOGS_DISABLED'),(248,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:20:27','com_templates.style',567,11,'COM_ACTIONLOGS_DISABLED'),(249,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__extensions\"}','2024-05-14 08:26:15','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(250,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:33:11','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(251,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:33:11','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(252,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:38:49','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(253,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:38:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(254,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:39:52','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(255,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:39:52','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(256,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:42:44','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(257,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:42:44','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(258,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:43:07','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(259,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:43:07','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(260,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:44:16','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(261,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:44:16','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(262,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:44:26','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(263,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:44:26','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(264,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:47:34','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(265,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:47:34','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(266,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:49:20','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(267,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:49:20','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(268,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:50:06','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(269,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:50:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(270,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:54:44','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(271,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:54:44','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(272,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:55:21','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(273,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:55:21','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(274,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:55:33','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(275,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:55:33','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(276,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:56:00','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(277,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:56:00','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(278,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"SimpleForm2\",\"extension_name\":\"SimpleForm2\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:56:49','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(279,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:56:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(280,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:56:50','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(281,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 08:58:44','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(282,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:58:44','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(283,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 08:58:52','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(284,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"\\u0412\\u0445\\u043e\\u0434\",\"extension_name\":\"\\u0412\\u0445\\u043e\\u0434\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:02:24','com_modules.module',567,120,'COM_ACTIONLOGS_DISABLED'),(285,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"\\u0412\\u0445\\u043e\\u0434\",\"extension_name\":\"\\u0412\\u0445\\u043e\\u0434\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:02:37','com_modules.module',567,120,'COM_ACTIONLOGS_DISABLED'),(286,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:02:37','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(287,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"\\u0412\\u0445\\u043e\\u0434\",\"extension_name\":\"\\u0412\\u0445\\u043e\\u0434\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:03:38','com_modules.module',567,120,'COM_ACTIONLOGS_DISABLED'),(288,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:03:38','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(289,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:04:24','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(290,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:04:30','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(291,'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED','{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"\\u0412\\u0445\\u043e\\u0434\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:04:30','com_modules.module',567,120,'COM_ACTIONLOGS_DISABLED'),(292,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:06:19','com_content.article',567,1,'COM_ACTIONLOGS_DISABLED'),(293,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:06:49','com_menus.item',567,160,'COM_ACTIONLOGS_DISABLED'),(294,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:07:37','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(295,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:07:37','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(296,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:08:01','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(297,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:08:01','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(298,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f (SF2)\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:08:22','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(299,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:08:22','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(300,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:08:42','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(301,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:09:23','com_content.article',567,1,'COM_ACTIONLOGS_DISABLED'),(302,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__content\"}','2024-05-14 09:09:23','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(303,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:09:58','com_content.article',567,1,'COM_ACTIONLOGS_DISABLED'),(304,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__content\"}','2024-05-14 09:09:58','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(305,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:10:17','com_content.article',567,1,'COM_ACTIONLOGS_DISABLED'),(306,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__content\"}','2024-05-14 09:10:17','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(307,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:12:43','com_menus.menu',567,3,'COM_ACTIONLOGS_DISABLED'),(308,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:13:09','com_menus.menu',567,3,'COM_ACTIONLOGS_DISABLED'),(309,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:14:34','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(310,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"extension_name\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:18:55','com_modules.module',567,117,'COM_ACTIONLOGS_DISABLED'),(311,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:18:55','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(312,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:18:56','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(313,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:19:06','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(314,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:19:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(315,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:19:09','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(316,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:19:28','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(317,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:19:28','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(318,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:19:41','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(319,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"extension_name\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:20:07','com_modules.module',567,111,'COM_ACTIONLOGS_DISABLED'),(320,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:20:07','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(321,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:20:12','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(322,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:23:52','com_content.article',567,2,'COM_ACTIONLOGS_DISABLED'),(323,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__content\"}','2024-05-14 09:23:56','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(324,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__content\"}','2024-05-14 09:24:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(325,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":161,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=161\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:25:58','com_menus.item',567,161,'COM_ACTIONLOGS_DISABLED'),(326,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:27:05','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(327,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:27:12','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(328,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:27:12','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(329,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:27:49','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(330,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:27:49','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(331,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:28:25','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(332,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:30:39','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(333,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:30:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(334,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:30:48','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(335,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:30:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(336,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:30:57','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(337,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:30:57','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(338,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:31:08','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(339,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:31:22','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(340,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:31:22','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(341,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:31:30','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(342,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:32:51','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(343,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:32:51','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(344,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:33:11','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(345,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:33:11','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(346,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:33:32','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(347,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:33:32','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(348,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:33:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(349,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:34:34','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(350,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:34:34','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(351,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:34:42','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(352,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:34:53','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(353,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:35:31','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(354,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:35:31','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(355,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:35:35','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(356,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:35:40','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(357,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:37:10','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(358,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":161,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=161\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:37:23','com_menus.item',567,161,'COM_ACTIONLOGS_DISABLED'),(359,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 09:37:23','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(360,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:37:32','com_menus.item',567,160,'COM_ACTIONLOGS_DISABLED'),(361,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 09:37:32','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(362,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"extension_name\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 09:37:56','com_modules.module',567,111,'COM_ACTIONLOGS_DISABLED'),(363,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 09:37:56','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(364,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:39:08','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(365,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 09:39:15','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(366,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 11:33:23','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(367,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":275,\"name\":\"User hooks - Joomdle\",\"extension_name\":\"User hooks - Joomdle\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,275,'COM_ACTIONLOGS_DISABLED'),(368,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":276,\"name\":\"System - Joomdlesession\",\"extension_name\":\"System - Joomdlesession\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,276,'COM_ACTIONLOGS_DISABLED'),(369,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":277,\"name\":\"Search - Joomdle Courses\",\"extension_name\":\"Search - Joomdle Courses\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,277,'COM_ACTIONLOGS_DISABLED'),(370,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":278,\"name\":\"Search - Joomdle Course Categories\",\"extension_name\":\"Search - Joomdle Course Categories\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,278,'COM_ACTIONLOGS_DISABLED'),(371,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":279,\"name\":\"Search - Joomdle Course Topics\",\"extension_name\":\"Search - Joomdle Course Topics\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,279,'COM_ACTIONLOGS_DISABLED'),(372,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":280,\"name\":\"System - Joomdle License\",\"extension_name\":\"System - Joomdle License\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,280,'COM_ACTIONLOGS_DISABLED'),(373,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":281,\"name\":\"Joomdle courses\",\"extension_name\":\"Joomdle courses\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,281,'COM_ACTIONLOGS_DISABLED'),(374,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":282,\"name\":\"Joomdle My Courses\",\"extension_name\":\"Joomdle My Courses\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,282,'COM_ACTIONLOGS_DISABLED'),(375,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":274,\"name\":\"com_joomdle\",\"extension_name\":\"com_joomdle\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 11:53:31','com_installer',567,274,'COM_ACTIONLOGS_DISABLED'),(376,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:45:13','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(377,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:46:29','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(378,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:46:33','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(379,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 12:47:02','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(380,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 12:49:13','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(381,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:49:23','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(382,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 12:51:37','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(383,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:51:42','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(384,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 12:51:47','com_menus.item',567,101,'COM_ACTIONLOGS_DISABLED'),(385,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 12:51:47','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(386,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:52:02','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(387,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:52:04','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(388,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 12:52:48','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(389,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 12:52:48','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(390,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:53:02','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(391,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:53:04','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(392,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 12:53:18','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(393,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 12:53:18','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(394,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:53:29','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(395,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:53:31','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(396,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:54:47','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(397,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:54:57','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(398,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"extension_name\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 12:55:22','com_modules.module',567,110,'COM_ACTIONLOGS_DISABLED'),(399,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 12:55:22','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(400,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:55:29','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(401,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:55:30','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(402,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 12:56:40','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(403,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:01:57','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(404,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:02:22','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(405,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:02:32','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(406,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:03:51','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(407,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:03:51','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(408,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:05:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(409,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:05:54','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(410,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:08:08','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(411,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:08:08','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(412,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:08:17','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(413,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:08:17','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(414,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:08:23','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(415,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:08:23','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(416,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:08:34','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(417,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:08:34','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(418,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:08:36','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(419,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:09:08','com_modules.module',567,16,'COM_ACTIONLOGS_DISABLED'),(420,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:09:08','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(421,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:09:29','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(422,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:09:53','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(423,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:09:53','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(424,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":123,\"title\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"extension_name\":\"\\u0412\\u044b\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=123\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:09:59','com_modules.module',567,123,'COM_ACTIONLOGS_DISABLED'),(425,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:09:59','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(426,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:10:14','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(427,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__sppagebuilder\"}','2024-05-14 13:37:40','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(428,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:42:33','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(429,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:42:33','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(430,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \",\"extension_name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 13:44:09','com_modules.module',567,119,'COM_ACTIONLOGS_DISABLED'),(431,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:44:09','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(432,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:44:10','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(433,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:45:16','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(434,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:47:40','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(435,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:47:47','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(436,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:48:19','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(437,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 13:56:37','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(438,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 13:56:42','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(439,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 20:56:57','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(440,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-14 20:57:26','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(441,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 21:00:06','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(442,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 21:01:44','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(443,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__sppagebuilder\"}','2024-05-14 21:02:35','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(444,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 21:06:10','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(445,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 21:06:18','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(446,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":173,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=173\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 21:17:09','com_menus.item',567,173,'COM_ACTIONLOGS_DISABLED'),(447,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 21:38:49','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(448,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":569,\"title\":\"\\u0415\\u0433\\u043e\\u0440\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:04:24','com_users',567,569,'COM_ACTIONLOGS_DISABLED'),(449,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":568,\"title\":\"\\u041e\\u043b\\u0435\\u0433\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:05:34','com_users',567,568,'COM_ACTIONLOGS_DISABLED'),(450,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:06:08','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(451,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":569,\"title\":\"\\u0415\\u0433\\u043e\\u0440\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:07:03','com_users',567,569,'COM_ACTIONLOGS_DISABLED'),(452,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:07:13','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(453,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:14:02','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(454,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:15:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(455,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:16:26','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(456,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:16:26','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(457,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:17:23','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(458,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:17:23','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(459,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:18:46','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(460,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:18:46','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(461,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:19:05','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(462,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:19:05','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(463,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:21:10','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(464,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:21:10','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(465,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:21:37','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(466,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:21:37','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(467,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:26:06','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(468,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:26:30','com_menus.item',567,160,'COM_ACTIONLOGS_DISABLED'),(469,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:26:30','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(470,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:26:56','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(471,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":161,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=161\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:27:16','com_menus.item',567,161,'COM_ACTIONLOGS_DISABLED'),(472,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:27:16','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(473,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":173,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=173\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:27:25','com_menus.item',567,173,'COM_ACTIONLOGS_DISABLED'),(474,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:27:25','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(475,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:28:51','com_users',569,569,'COM_ACTIONLOGS_DISABLED'),(476,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:29:31','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(477,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":173,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=173\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:30:07','com_menus.item',567,173,'COM_ACTIONLOGS_DISABLED'),(478,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:30:07','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(479,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":160,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=160\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:30:15','com_menus.item',567,160,'COM_ACTIONLOGS_DISABLED'),(480,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:30:15','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(481,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:30:20','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(482,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:30:54','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(483,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:31:26','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(484,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:43:15','com_modules.module',567,1,'COM_ACTIONLOGS_DISABLED'),(485,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:43:15','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(486,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__modules\"}','2024-05-14 22:43:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(487,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:45:04','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(488,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":161,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=161\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:45:17','com_menus.item',567,161,'COM_ACTIONLOGS_DISABLED'),(489,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:45:17','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(490,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":173,\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=173\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:45:39','com_menus.item',567,173,'COM_ACTIONLOGS_DISABLED'),(491,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 22:45:39','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(492,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:45:57','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(493,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":568,\"title\":\"\\u041e\\u043b\\u0435\\u0433\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 22:50:38','com_users',567,568,'COM_ACTIONLOGS_DISABLED'),(494,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:56:46','com_users',569,569,'COM_ACTIONLOGS_DISABLED'),(495,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 22:56:55','com_users',568,0,'COM_ACTIONLOGS_DISABLED'),(496,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 23:00:07','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(497,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":567,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"table\":\"#__menu\"}','2024-05-14 23:00:07','com_checkin',567,567,'COM_ACTIONLOGS_DISABLED'),(498,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 23:00:15','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(499,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":568,\"userid\":568,\"username\":\"oleg_1\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=568\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:00:41','com_users',568,568,'COM_ACTIONLOGS_DISABLED'),(500,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:00:49','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(501,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":140,\"title\":\"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442 Moodle\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 23:01:31','com_menus.item',567,140,'COM_ACTIONLOGS_DISABLED'),(502,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:08:07','com_users',0,569,'COM_ACTIONLOGS_DISABLED'),(503,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:09:14','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(504,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:10:17','com_users',569,569,'COM_ACTIONLOGS_DISABLED'),(505,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:10:24','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(506,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-14 23:12:33','com_users',569,569,'COM_ACTIONLOGS_DISABLED'),(507,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 23:13:58','com_templates.style',567,11,'COM_ACTIONLOGS_DISABLED'),(508,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\"}','2024-05-14 23:14:38','com_templates.style',567,11,'COM_ACTIONLOGS_DISABLED'),(509,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 00:19:30','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(510,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 00:26:56','com_users',569,569,'COM_ACTIONLOGS_DISABLED'),(511,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:29:01','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(512,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:43:58','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(513,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:44:08','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(514,'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED','{\"action\":\"login\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:47:26','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(515,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:47:43','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(516,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:47:44','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(517,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 01:50:46','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(518,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-05-15 01:51:14','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(519,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:04:53','com_users',0,567,'COM_ACTIONLOGS_DISABLED'),(520,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:11:01','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(521,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:12:09','com_users',0,569,'COM_ACTIONLOGS_DISABLED'),(522,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:12:16','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(523,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:12:16','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(524,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:16:19','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(525,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:16:20','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(526,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:19:30','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(527,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:19:31','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(528,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:34:59','com_users',0,567,'COM_ACTIONLOGS_DISABLED'),(529,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:35:18','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(530,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:36:30','com_users',0,569,'COM_ACTIONLOGS_DISABLED'),(531,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:36:39','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(532,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:36:40','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(533,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:37:44','com_users',0,567,'COM_ACTIONLOGS_DISABLED'),(534,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:37:59','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(535,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:38:26','com_users',569,569,'COM_ACTIONLOGS_DISABLED'),(536,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:38:31','com_users',569,0,'COM_ACTIONLOGS_DISABLED'),(537,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":569,\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:40:09','com_users',0,569,'COM_ACTIONLOGS_DISABLED'),(538,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:40:24','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(539,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:40:25','com_users',567,0,'COM_ACTIONLOGS_DISABLED'),(540,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":567,\"userid\":567,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=567\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:46:11','com_users',567,567,'COM_ACTIONLOGS_DISABLED'),(541,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":569,\"username\":\"egor_ka\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=569\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-05-15 02:46:20','com_users',569,0,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `cdxam_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_action_logs_extensions`
--

DROP TABLE IF EXISTS `cdxam_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_action_logs_extensions`
--

LOCK TABLES `cdxam_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `cdxam_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `cdxam_action_logs_extensions` VALUES (1,'com_banners'),(2,'com_cache'),(3,'com_categories'),(4,'com_config'),(5,'com_contact'),(6,'com_content'),(7,'com_installer'),(8,'com_media'),(9,'com_menus'),(10,'com_messages'),(11,'com_modules'),(12,'com_newsfeeds'),(13,'com_plugins'),(14,'com_redirect'),(15,'com_tags'),(16,'com_templates'),(17,'com_users'),(18,'com_checkin'),(19,'com_scheduler');
/*!40000 ALTER TABLE `cdxam_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_action_logs_users`
--

DROP TABLE IF EXISTS `cdxam_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_action_logs_users` (
  `user_id` int(10) unsigned NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_action_logs_users`
--

LOCK TABLES `cdxam_action_logs_users` WRITE;
/*!40000 ALTER TABLE `cdxam_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_assets`
--

DROP TABLE IF EXISTS `cdxam_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_assets`
--

LOCK TABLES `cdxam_assets` WRITE;
/*!40000 ALTER TABLE `cdxam_assets` DISABLE KEYS */;
INSERT INTO `cdxam_assets` VALUES (1,0,0,227,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(8,1,17,42,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),(9,1,43,44,1,'com_cpanel','com_cpanel','{}'),(10,1,45,46,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,47,52,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),(12,11,48,49,2,'com_languages.language.1','English (en-GB)','{}'),(13,1,53,54,1,'com_login','com_login','{}'),(14,1,55,56,1,'com_mails','com_mails','{}'),(15,1,57,58,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,59,68,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),(17,1,69,70,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,71,172,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),(19,1,173,176,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(20,1,177,178,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),(21,1,179,180,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),(23,1,181,182,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),(24,1,187,190,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),(26,1,191,192,1,'com_wrapper','com_wrapper','{}'),(27,8,18,23,2,'com_content.category.2','Uncategorised','{}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),(30,19,174,175,2,'com_newsfeeds.category.5','Uncategorised','{}'),(32,24,188,189,2,'com_users.category.7','Uncategorised','{}'),(33,1,193,194,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,195,196,1,'com_joomlaupdate','com_joomlaupdate','{}'),(35,1,197,198,1,'com_tags','com_tags','{}'),(36,1,199,200,1,'com_contenthistory','com_contenthistory','{}'),(37,1,201,202,1,'com_ajax','com_ajax','{}'),(38,1,203,204,1,'com_postinstall','com_postinstall','{}'),(39,18,72,73,2,'com_modules.module.1','Главное меню','{}'),(40,18,74,75,2,'com_modules.module.2','Login','{}'),(41,18,76,77,2,'com_modules.module.3','Popular Articles','{}'),(42,18,78,79,2,'com_modules.module.4','Recently Added Articles','{}'),(43,18,80,81,2,'com_modules.module.8','Toolbar','{}'),(44,18,82,83,2,'com_modules.module.9','Notifications','{}'),(45,18,84,85,2,'com_modules.module.10','Logged-in Users','{}'),(46,18,86,87,2,'com_modules.module.12','Admin Menu','{}'),(49,18,92,93,2,'com_modules.module.15','Title','{}'),(50,18,94,95,2,'com_modules.module.16','Войти','{}'),(51,18,96,97,2,'com_modules.module.17','Breadcrumbs','{}'),(52,18,98,99,2,'com_modules.module.79','Multilanguage status','{}'),(53,18,102,103,2,'com_modules.module.86','Joomla Version','{}'),(54,16,60,61,2,'com_menus.menu.1','Главное меню','{}'),(55,18,106,107,2,'com_modules.module.87','Sample Data','{}'),(56,8,24,41,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}'),(57,56,25,26,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}'),(58,56,27,28,3,'com_content.transition.1','Unpublish','{}'),(59,56,29,30,3,'com_content.transition.2','Publish','{}'),(60,56,31,32,3,'com_content.transition.3','Trash','{}'),(61,56,33,34,3,'com_content.transition.4','Archive','{}'),(62,56,35,36,3,'com_content.transition.5','Feature','{}'),(63,56,37,38,3,'com_content.transition.6','Unfeature','{}'),(64,56,39,40,3,'com_content.transition.7','Publish & Feature','{}'),(65,1,183,184,1,'com_privacy','com_privacy','{}'),(66,1,185,186,1,'com_actionlogs','com_actionlogs','{}'),(67,18,88,89,2,'com_modules.module.88','Latest Actions','{}'),(68,18,90,91,2,'com_modules.module.89','Privacy Dashboard','{}'),(70,18,100,101,2,'com_modules.module.103','Site','{}'),(71,18,104,105,2,'com_modules.module.104','System','{}'),(72,18,108,109,2,'com_modules.module.91','System Dashboard','{}'),(73,18,110,111,2,'com_modules.module.92','Content Dashboard','{}'),(74,18,112,113,2,'com_modules.module.93','Menus Dashboard','{}'),(75,18,114,115,2,'com_modules.module.94','Components Dashboard','{}'),(76,18,116,117,2,'com_modules.module.95','Users Dashboard','{}'),(77,18,118,119,2,'com_modules.module.99','Frontend Link','{}'),(78,18,120,121,2,'com_modules.module.100','Messages','{}'),(79,18,122,123,2,'com_modules.module.101','Post Install Messages','{}'),(80,18,124,125,2,'com_modules.module.102','User Status','{}'),(82,18,126,127,2,'com_modules.module.105','3rd Party','{}'),(83,18,128,129,2,'com_modules.module.106','Help Dashboard','{}'),(84,18,130,131,2,'com_modules.module.107','Privacy Requests','{}'),(85,18,132,133,2,'com_modules.module.108','Privacy Status','{}'),(86,18,134,135,2,'com_modules.module.96','Popular Articles','{}'),(87,18,136,137,2,'com_modules.module.97','Recently Added Articles','{}'),(88,18,138,139,2,'com_modules.module.98','Logged-in Users','{}'),(89,18,140,141,2,'com_modules.module.90','Login Support','{}'),(90,1,205,206,1,'com_scheduler','com_scheduler','{}'),(91,1,207,208,1,'com_associations','com_associations','{}'),(92,1,209,210,1,'com_categories','com_categories','{}'),(93,1,211,212,1,'com_fields','com_fields','{}'),(94,1,213,214,1,'com_workflow','com_workflow','{}'),(95,1,215,216,1,'com_guidedtours','com_guidedtours','{}'),(96,18,142,143,2,'com_modules.module.109','Guided Tours','{}'),(97,11,50,51,2,'com_languages.language.2','Russian (ru-RU)','{}'),(99,1,217,218,1,'com_comprofiler','comprofiler','{}'),(100,16,62,63,2,'com_menus.menu.2','Community Builder','{}'),(101,18,144,145,2,'com_modules.module.110','Профиль','{}'),(102,18,146,147,2,'com_modules.module.111','Пользователи онлайн','{}'),(103,18,148,149,2,'com_modules.module.112','CB Workflows','{}'),(104,18,150,151,2,'com_modules.module.113','CB Admin Dropdown Menu','{}'),(105,18,152,153,2,'com_modules.module.114','Community Builder News','{}'),(106,18,154,155,2,'com_modules.module.115','Community Builder Updates','{}'),(107,18,156,157,2,'com_modules.module.116','CB Admin Version Checker','{}'),(109,1,219,220,1,'com_kunena','com_kunena','{}'),(110,16,64,65,2,'com_menus.menu.3','Форум','{}'),(111,18,158,159,2,'com_modules.module.117','Форум','{}'),(112,16,66,67,2,'com_menus.menu.4','Kunena меню','{}'),(113,1,221,224,1,'com_sppagebuilder','SP Page Builder','{}'),(114,18,160,161,2,'com_modules.module.118','SP Page Builder','{}'),(115,113,222,223,2,'com_sppagebuilder.page.1','IT-хаб для студентов - инновационное идейное пространство для всех!','{}'),(116,18,162,163,2,'com_modules.module.119','Регистрация ','{}'),(117,18,164,165,2,'com_modules.module.120','Вход','{}'),(118,27,19,20,3,'com_content.article.1','Регистрация','{}'),(119,27,21,22,3,'com_content.article.2','Войти','{}'),(120,18,166,167,2,'com_modules.module.121','Joomdle courses','{}'),(121,18,168,169,2,'com_modules.module.122','Joomdle My Courses','{}'),(122,1,225,226,1,'com_joomdle','com_joomdle','{}'),(123,18,170,171,2,'com_modules.module.123','Выйти','{}');
/*!40000 ALTER TABLE `cdxam_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_associations`
--

DROP TABLE IF EXISTS `cdxam_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_associations`
--

LOCK TABLES `cdxam_associations` WRITE;
/*!40000 ALTER TABLE `cdxam_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_banner_clients`
--

DROP TABLE IF EXISTS `cdxam_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_banner_clients`
--

LOCK TABLES `cdxam_banner_clients` WRITE;
/*!40000 ALTER TABLE `cdxam_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_banner_tracks`
--

DROP TABLE IF EXISTS `cdxam_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_banner_tracks`
--

LOCK TABLES `cdxam_banner_tracks` WRITE;
/*!40000 ALTER TABLE `cdxam_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_banners`
--

DROP TABLE IF EXISTS `cdxam_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_banners`
--

LOCK TABLES `cdxam_banners` WRITE;
/*!40000 ALTER TABLE `cdxam_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_categories`
--

DROP TABLE IF EXISTS `cdxam_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_categories`
--

LOCK TABLES `cdxam_categories` WRITE;
/*!40000 ALTER TABLE `cdxam_categories` DISABLE KEYS */;
INSERT INTO `cdxam_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',567,'2024-05-13 10:02:58',567,'2024-05-13 10:02:58',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',567,'2024-05-13 10:02:58',567,'2024-05-13 10:02:58',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',567,'2024-05-13 10:02:58',567,'2024-05-13 10:02:58',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',567,'2024-05-13 10:02:58',567,'2024-05-13 10:02:58',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',567,'2024-05-13 10:02:58',567,'2024-05-13 10:02:58',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',567,'2024-05-13 10:02:58',567,'2024-05-13 10:02:58',0,'*',1);
/*!40000 ALTER TABLE `cdxam_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler`
--

DROP TABLE IF EXISTS `cdxam_comprofiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler` (
  `id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT '0',
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `avatarapproved` tinyint(4) NOT NULL DEFAULT '1',
  `canvas` text COLLATE utf8mb4_unicode_ci,
  `canvasapproved` tinyint(4) NOT NULL DEFAULT '1',
  `canvasposition` tinyint(4) NOT NULL DEFAULT '50',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cbactivation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext COLLATE utf8mb4_unicode_ci,
  `acceptedterms` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `acceptedtermsconsent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cb_cours` text COLLATE utf8mb4_unicode_ci,
  `cb_gruppa` text COLLATE utf8mb4_unicode_ci,
  `cb_resume` text COLLATE utf8mb4_unicode_ci,
  `cb_yzik_prog` mediumtext COLLATE utf8mb4_unicode_ci,
  `cb_zanytost` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `alias` (`alias`),
  KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`(48)),
  KEY `lastupdatedate` (`lastupdatedate`),
  KEY `avatar` (`avatar`(48),`avatarapproved`),
  KEY `canvas` (`canvas`(48),`canvasapproved`,`canvasposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler`
--

LOCK TABLES `cdxam_comprofiler` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler` VALUES (567,567,NULL,'','','Георгий',2,'0000-00-00 00:00:00',0,'gallery/octopus.png',1,'gallery/abstract_05.jpg',1,50,1,1,'2024-05-13 11:36:52','','',0,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL),(568,568,'','','','Олег',3,'0000-00-00 00:00:00',0,'gallery/monkey.png',1,'gallery/abstract_07.jpg',1,50,1,1,'2024-05-14 21:44:51','','',0,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','3','ПИБ-11','_6643d371952f9.txt','C++|*|C#|*|PHP|*|Python','Готов к новым проектам!'),(569,569,NULL,'Егор','','Карпов',2,'0000-00-00 00:00:00',0,NULL,1,NULL,1,50,1,1,'2024-05-15 00:21:36','','reg3bc51f6b429477cbaf8452915ae0118301a1e708',0,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00','2','ПИБ-21',NULL,'C++|*|C#','Занят проектом');
/*!40000 ALTER TABLE `cdxam_comprofiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_field_values`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_field_values` (
  `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(246) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldlabel` varchar(246) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldgroup` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldvalueid`),
  KEY `fieldid_ordering` (`fieldid`,`ordering`),
  KEY `fieldtitle_id` (`fieldtitle`(50),`fieldid`),
  KEY `fieldlabel_id` (`fieldlabel`(50),`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_field_values`
--

LOCK TABLES `cdxam_comprofiler_field_values` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_field_values` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_field_values` VALUES (16,58,'C++','',0,1,0),(17,58,'C#','',0,2,0),(18,58,'Ruby','',0,3,0),(19,58,'PHP','',0,4,0),(20,58,'Python','',0,5,0),(21,58,'Java','',0,6,0),(22,59,'Занят проектом','',0,1,0),(23,59,'Готов к новым проектам!','',0,2,0);
/*!40000 ALTER TABLE `cdxam_comprofiler_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_fields`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablecolumns` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `table` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#__comprofiler',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `tabid` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `profile` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `pluginid` int(11) NOT NULL DEFAULT '0',
  `cssclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`fieldid`),
  KEY `tabid_pub_prof_order` (`tabid`,`published`,`profile`,`ordering`),
  KEY `readonly_published_tabid` (`readonly`,`published`,`tabid`),
  KEY `registration_published_order` (`registration`,`published`,`ordering`),
  KEY `type_required_edit` (`type`,`required`,`published`,`edit`,`readonly`),
  KEY `published_ordering` (`published`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_fields`
--

LOCK TABLES `cdxam_comprofiler_fields` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_fields` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_fields` VALUES (17,'canvas','canvas,canvasapproved,canvasposition','#__comprofiler','USER_CANVAS_IMAGE_TITLE','','image',NULL,NULL,0,7,1,NULL,NULL,NULL,NULL,1,0,1,4,0,0,1,1,1,NULL,NULL),(24,'connections','','#__comprofiler','_UE_CONNECTION','','connections',NULL,NULL,0,6,1,NULL,NULL,NULL,NULL,1,0,0,2,1,0,1,1,1,NULL,NULL),(25,'hits','hits','#__comprofiler','_UE_HITS','_UE_HITS_DESC','counter',NULL,NULL,0,6,2,NULL,NULL,NULL,NULL,1,0,0,2,1,0,1,1,1,NULL,NULL),(26,'onlinestatus','','#__comprofiler','_UE_ONLINESTATUS','','status',NULL,NULL,0,20,2,NULL,NULL,NULL,NULL,1,0,0,4,0,0,1,1,1,NULL,NULL),(27,'lastvisitDate','lastvisitDate','#__users','_UE_LASTONLINE','','datetime',NULL,NULL,0,21,2,NULL,NULL,NULL,NULL,1,0,0,2,1,0,1,1,1,NULL,'field_display_by=2'),(28,'registerDate','registerDate','#__users','_UE_MEMBERSINCE','','datetime',NULL,NULL,0,21,1,NULL,NULL,NULL,NULL,1,0,0,2,1,0,1,1,1,NULL,'field_display_by=6'),(29,'avatar','avatar,avatarapproved','#__comprofiler','_UE_IMAGE','','image',NULL,NULL,0,20,1,NULL,NULL,NULL,NULL,1,0,1,4,0,0,1,1,1,NULL,NULL),(41,'name','name','#__users','_UE_NAME','_UE_REGWARN_NAME','predefined',NULL,NULL,1,11,4,NULL,NULL,NULL,NULL,1,1,1,0,0,1,1,1,1,NULL,NULL),(42,'username','username','#__users','_UE_UNAME','_UE_VALID_UNAME','predefined',NULL,NULL,1,11,9,NULL,NULL,NULL,NULL,1,1,1,0,0,1,1,1,1,NULL,NULL),(44,'acceptedterms','acceptedterms,acceptedtermsconsent','#__comprofiler','USER_TERMS_AND_CONDITIONS_TITLE','','terms',NULL,NULL,0,11,15,NULL,NULL,NULL,NULL,1,0,0,0,0,0,1,1,1,NULL,NULL),(45,'formatname','','#__comprofiler','_UE_FORMATNAME','','formatname',NULL,0,0,11,5,NULL,NULL,NULL,'',1,1,1,1,1,0,1,1,1,'','{\"fieldLayout\":\"\",\"fieldLayoutEdit\":\"\",\"fieldLayoutList\":\"\",\"fieldLayoutSearch\":\"\",\"fieldLayoutRegister\":\"\",\"fieldLayoutContentPlugins\":\"0\",\"fieldLayoutIcons\":\"\",\"fieldLayoutInputDesc\":\"1\",\"fieldHoverCanvas\":\"0\"}'),(46,'firstname','firstname','#__comprofiler','_UE_YOUR_FNAME','_UE_REGWARN_FNAME','predefined',NULL,NULL,1,11,6,NULL,NULL,NULL,NULL,0,1,1,0,0,0,1,1,1,NULL,NULL),(47,'middlename','middlename','#__comprofiler','_UE_YOUR_MNAME','_UE_REGWARN_MNAME','predefined',NULL,NULL,0,11,7,NULL,NULL,NULL,NULL,0,1,1,0,0,0,1,1,1,NULL,NULL),(48,'lastname','lastname','#__comprofiler','_UE_YOUR_LNAME','_UE_REGWARN_LNAME','predefined',NULL,NULL,1,11,8,NULL,NULL,NULL,NULL,0,1,1,0,0,0,1,1,1,NULL,NULL),(49,'lastupdatedate','lastupdatedate','#__comprofiler','_UE_LASTUPDATEDON','','datetime',NULL,0,0,21,3,NULL,NULL,NULL,'',1,0,0,0,1,0,1,1,1,'','{\"fieldLayout\":\"\",\"fieldLayoutEdit\":\"\",\"fieldLayoutList\":\"\",\"fieldLayoutSearch\":\"\",\"fieldLayoutRegister\":\"\",\"fieldLayoutContentPlugins\":\"0\",\"fieldLayoutIcons\":\"\",\"fieldLayoutInputDesc\":\"1\",\"field_edit_format\":\"0\",\"field_display_by\":\"2\",\"date_offset\":\"1\",\"field_search_by\":\"0\",\"duration_title\":\"\",\"calendar_type\":\"\",\"year_min\":\"-110\",\"year_max\":\"+25\"}'),(50,'email','email','#__users','_UE_EMAIL','_UE_REGWARN_MAIL','primaryemailaddress',NULL,NULL,1,11,11,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,1,1,NULL,NULL),(51,'password','password','#__users','_UE_PASS','_UE_VALID_PASS','password',50,NULL,1,11,12,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,1,1,NULL,NULL),(52,'params','params','#__users','_UE_USERPARAMS','','userparams',NULL,NULL,0,11,13,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,1,1,NULL,NULL),(53,'pm','','#__comprofiler','_UE_PM','','pm',NULL,NULL,0,11,14,NULL,NULL,NULL,NULL,1,0,0,0,0,0,1,1,1,NULL,NULL),(54,'alias','alias','#__comprofiler','YOUR_PROFILE_URL','YOUR_PROFILE_URL_DESC','predefined',NULL,NULL,0,11,10,NULL,NULL,NULL,NULL,1,0,0,0,0,0,1,1,1,NULL,NULL),(55,'cb_cours','cb_cours','#__comprofiler','Курс обучения','','text',0,0,1,11,3,NULL,NULL,NULL,'',1,1,1,1,0,1,0,0,1,'','{\"fieldLayout\":\"\",\"fieldLayoutEdit\":\"\",\"fieldLayoutList\":\"\",\"fieldLayoutSearch\":\"\",\"fieldLayoutRegister\":\"\",\"fieldLayoutContentPlugins\":\"0\",\"fieldLayoutIcons\":\"\",\"fieldLayoutInputDesc\":\"1\",\"fieldPlaceholder\":\"\",\"fieldInputMask\":\"\",\"fieldMinLength\":\"0\",\"fieldValidateExpression\":\"\",\"fieldValidateForbiddenList_register\":\"http:,https:,mailto:,\\/\\/.[url],&amp;lt;a,&amp;lt;\\/a&amp;gt;,&amp;amp;#\",\"fieldValidateForbiddenList_edit\":\"\"}'),(56,'cb_gruppa','cb_gruppa','#__comprofiler','Группа','','text',0,0,1,11,2,NULL,NULL,NULL,'',1,1,1,1,0,1,0,0,1,'',NULL),(57,'cb_resume','cb_resume','#__comprofiler','Резюме','','file',NULL,0,0,23,3,NULL,NULL,NULL,'',1,1,1,1,0,1,0,0,1,'','{\"fieldLayout\":\"\",\"fieldLayoutEdit\":\"\",\"fieldLayoutList\":\"\",\"fieldLayoutSearch\":\"\",\"fieldLayoutRegister\":\"\",\"fieldLayoutContentPlugins\":\"0\",\"fieldLayoutIcons\":\"\",\"fieldLayoutInputDesc\":\"1\",\"fieldFile_filename\":\"resume\",\"fieldFile_force\":\"0\",\"fieldValidateFile_types\":\"zip,rar,doc,pdf,txt,xls,docx\",\"fieldValidateFile_sizeMax\":\"5120\",\"fieldValidateFile_sizeMin\":\"0\",\"fieldFile_terms\":\"1\",\"terms_output\":\"url\",\"terms_type\":\"TERMS_AND_CONDITIONS\",\"terms_url\":\"\",\"terms_display\":\"modal\",\"terms_width\":\"400\",\"terms_height\":\"200\"}'),(58,'cb_yzik_prog','cb_yzik_prog','#__comprofiler','Языки программирования','','multicheckbox',0,NULL,0,23,2,0,0,NULL,'',1,1,1,1,0,1,0,0,1,'','{\"fieldLayout\":\"\",\"fieldLayoutEdit\":\"\",\"fieldLayoutList\":\"\",\"fieldLayoutSearch\":\"\",\"fieldLayoutRegister\":\"\",\"fieldLayoutContentPlugins\":\"0\",\"fieldLayoutIcons\":\"\",\"fieldLayoutInputDesc\":\"1\",\"field_edit_style\":\"0\",\"field_display_style\":\"0\",\"fieldMinLength\":\"0\"}'),(59,'cb_zanytost','cb_zanytost','#__comprofiler','Занятость','','radio',NULL,0,1,23,1,0,0,NULL,'',1,1,1,1,0,1,0,0,1,'.cb_field.col-sm-9 > .form-control-plaintext{ font-weight: bold; }','{\"fieldLayout\":\"\",\"fieldLayoutEdit\":\"\",\"fieldLayoutList\":\"\",\"fieldLayoutSearch\":\"\",\"fieldLayoutRegister\":\"\",\"fieldLayoutContentPlugins\":\"0\",\"fieldLayoutIcons\":\"\",\"fieldLayoutInputDesc\":\"1\",\"field_edit_style\":\"0\"}');
/*!40000 ALTER TABLE `cdxam_comprofiler_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_lists`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_lists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `usergroupids` text COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`listid`),
  KEY `pub_ordering` (`published`,`ordering`),
  KEY `default_published` (`default`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_lists`
--

LOCK TABLES `cdxam_comprofiler_lists` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_lists` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_lists` VALUES (4,'Поиск пользователей','',1,1,1,'2',0,'{\"sort_mode\":\"0\",\"sort_basic\":[{\"column\":\"username\",\"direction\":\"ASC\"}],\"filter_mode\":\"1\",\"filter_advanced\":\"\",\"columns\":[{\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\",\"size\":\"4\",\"cssclass\":\"\",\"fields\":[{\"field\":\"29\",\"display\":\"3\"},{\"field\":\"45\",\"display\":\"3\"}]},{\"title\":\"\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441\",\"size\":\"4\",\"cssclass\":\".cbListFieldCont.cbUserListFC_cb_zanytost{font-weight: bold;}\",\"fields\":[{\"field\":\"26\",\"display\":\"1\"},{\"field\":\"59\",\"display\":\"1\"}]},{\"title\":\"\\u041d\\u0430\\u0432\\u044b\\u043a\\u0438\",\"size\":\"4\",\"cssclass\":\"\",\"fields\":[{\"field\":\"58\",\"display\":\"1\"},{\"field\":\"57\",\"display\":\"1\"}]}],\"list_search\":\"1\",\"list_compare_types\":\"0\",\"list_search_empty\":\"0\",\"list_search_collapse\":\"0\",\"list_show_selector\":\"1\",\"list_show_in_selector\":\"1\",\"list_show_blocked\":\"0\",\"list_show_banned\":\"1\",\"list_show_unapproved\":\"0\",\"list_show_unconfirmed\":\"0\",\"list_grid_layout\":\"0\",\"list_limit\":\"30\",\"list_paging\":\"1\",\"allow_profilelink\":\"1\",\"profilelink_target\":\"0\",\"hotlink_protection\":\"0\"}');
/*!40000 ALTER TABLE `cdxam_comprofiler_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_members`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_members` (
  `referenceid` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '1',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `membersince` date NOT NULL DEFAULT '0000-00-00',
  `reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`referenceid`,`memberid`),
  KEY `pamr` (`pending`,`accepted`,`memberid`,`referenceid`),
  KEY `aprm` (`accepted`,`pending`,`referenceid`,`memberid`),
  KEY `membrefid` (`memberid`,`referenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_members`
--

LOCK TABLES `cdxam_comprofiler_members` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_members` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_members` VALUES (568,569,1,0,'2024-05-14','','','Friend'),(569,568,1,0,'2024-05-14','',NULL,NULL);
/*!40000 ALTER TABLE `cdxam_comprofiler_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_plugin`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `backend_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `element` (`element`),
  KEY `folder` (`folder`),
  KEY `idx_folder` (`published`,`client_id`,`viewaccesslevel`,`folder`),
  KEY `type_pub_order` (`type`,`published`,`ordering`),
  KEY `published_ordering` (`published`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_plugin`
--

LOCK TABLES `cdxam_comprofiler_plugin` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_plugin` VALUES (1,'CB Core','cb.core','user','plug_cbcore',1,'',1,1,1,0,0,'0000-00-00 00:00:00','{\"name_style\":\"1\",\"name_format\":\"3\",\"date_format\":\"m\\/d\\/Y\",\"time_format\":\"H:i:s\",\"calendar_type\":\"2\",\"allow_email_display\":\"3\",\"allow_email_public\":\"0\",\"allow_email_replyto\":\"3\",\"allow_email\":\"1\",\"allow_website\":\"1\",\"allow_onlinestatus\":\"1\",\"icons_display\":\"3\",\"login_type\":\"0\",\"reg_admin_allowcbregistration\":\"1\",\"emailpass\":\"0\",\"reg_admin_approval\":\"0\",\"reg_confirmation\":\"1\",\"reg_username_checker\":\"1\",\"reg_ipaddress\":\"1\",\"reg_email_name\":\"REGISTRATION_EMAIL_FROM_NAME\",\"reg_email_from\":\"\",\"reg_email_replyto\":\"\",\"reg_email_html\":\"0\",\"reg_pend_appr_sub\":\"YOUR_REGISTRATION_IS_PENDING_APPROVAL_SUBJECT\",\"reg_pend_appr_msg\":\"YOUR_REGISTRATION_IS_PENDING_APPROVAL_MESSAGE\",\"reg_welcome_sub\":\"YOUR_REGISTRATION_IS_APPROVED_SUBJECT\",\"reg_welcome_msg\":\"YOUR_REGISTRATION_IS_APPROVED_MESSAGE\",\"reg_first_visit_url\":\"index.php?option=com_comprofiler&view=userprofile\",\"usernameedit\":\"1\",\"usernamefallback\":\"name\",\"adminrequiredfields\":\"1\",\"profile_viewaccesslevel\":\"2\",\"maxEmailsPerHr\":\"10\",\"profile_recordviews\":\"1\",\"minHitsInterval\":\"60\",\"templatedir\":\"default\",\"showEmptyTabs\":\"1\",\"showEmptyFields\":\"1\",\"emptyFieldsText\":\"-\",\"frontend_userparams\":\"1\",\"html_filter_allowed_tags\":\"\",\"conversiontype\":\"0\",\"avatarResizeAlways\":\"1\",\"avatarHeight\":\"500\",\"avatarWidth\":\"200\",\"avatarSize\":\"2000\",\"thumbHeight\":\"86\",\"thumbWidth\":\"60\",\"avatarMaintainRatio\":\"1\",\"moderator_viewaccesslevel\":\"3\",\"allowModUserApproval\":\"1\",\"moderatorEmail\":\"1\",\"allowUserReports\":\"1\",\"avatarUploadApproval\":\"1\",\"allowModeratorsUserEdit\":\"0\",\"allowUserBanning\":\"1\",\"allowConnections\":\"1\",\"connectionDisplay\":\"0\",\"connectionPath\":\"1\",\"useMutualConnections\":\"1\",\"conNotifyType\":\"0\",\"autoAddConnections\":\"1\",\"connection_categories\":\"Friend\\r\\nCo Worker\\r\\nFamily\",\"translations_debug\":\"0\",\"enableSpoofCheck\":\"1\",\"anonymize_ip_addresses\":\"0\",\"updateChannel\":\"\",\"versionCheckInterval\":\"+12 HOURS\",\"pluginVersionCheck\":\"1\",\"installFromWeb\":\"1\",\"installFromWebKey\":\"\",\"installFromWebToken\":\"\",\"unsupportedVersionsCheck\":\"php|*|database|*|joomla\",\"sendemails\":\"1\",\"templateBootstrap4\":\"1\",\"templateFontawesme\":\"1\",\"jsJquery\":\"1\",\"jsJqueryMigrate\":\"0\"}'),(2,'CB Connections','cb.connections','user','plug_cbconnections',1,'',3,1,1,0,0,'0000-00-00 00:00:00',''),(7,'Default','default','templates','default',1,'',1,1,1,0,0,'0000-00-00 00:00:00',''),(13,'Default language (English)','default_language','language','default_language',1,'',1,1,1,0,0,'0000-00-00 00:00:00',''),(14,'CB Menu','cb.menu','user','plug_cbmenu',1,'',2,1,1,0,0,'0000-00-00 00:00:00',''),(15,'Private Message System','pms.mypmspro','user','plug_pms_mypmspro',1,'',8,1,1,0,0,'0000-00-00 00:00:00','{\"general_model\":\"internal\"}'),(17,'CB Articles','cbarticles','user','plug_cbarticles',1,'',8,1,1,0,0,'0000-00-00 00:00:00',''),(18,'CB Forums','cbforums','user','plug_cbforums',1,'',9,1,1,0,0,'0000-00-00 00:00:00',''),(19,'CB Blogs','cbblogs','user','plug_cbblogs',1,'',10,1,1,0,0,'0000-00-00 00:00:00',''),(500,'ru-RU','ru-RU','language','ru-ru',1,'',2,1,0,0,0,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_plugin_blogs`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_plugin_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_plugin_blogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_intro` text COLLATE utf8mb4_unicode_ci,
  `blog_full` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '99999',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `user` (`user`),
  KEY `access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_plugin_blogs`
--

LOCK TABLES `cdxam_comprofiler_plugin_blogs` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_plugin_messages`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_plugin_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_plugin_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL DEFAULT '0',
  `from_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_system` tinyint(1) NOT NULL DEFAULT '0',
  `to_user` int(11) NOT NULL DEFAULT '0',
  `reply_to` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `from_user_delete` tinyint(1) NOT NULL DEFAULT '0',
  `to_user_delete` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `to_messages` (`to_user`,`to_user_delete`,`date`),
  KEY `from_messages` (`from_user`,`from_user_delete`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_plugin_messages`
--

LOCK TABLES `cdxam_comprofiler_plugin_messages` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin_messages` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_plugin_messages` VALUES (1,567,NULL,NULL,0,568,0,'<p>Привет, Олег!</p>',0,0,'2024-05-14 06:09:11'),(2,568,NULL,NULL,0,567,1,'<p> И вам привет, админ!</p>',0,0,'2024-05-14 06:10:55');
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_plugin_messages_read`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_plugin_messages_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_plugin_messages_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `to_user` int(11) NOT NULL DEFAULT '0',
  `message` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `read` (`to_user`,`message`),
  KEY `message` (`message`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_plugin_messages_read`
--

LOCK TABLES `cdxam_comprofiler_plugin_messages_read` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin_messages_read` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_plugin_messages_read` VALUES (1,568,1,'2024-05-14 06:09:34'),(2,567,2,'2024-05-14 12:49:30');
/*!40000 ALTER TABLE `cdxam_comprofiler_plugin_messages_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_ratings`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'field',
  `item` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_ratings`
--

LOCK TABLES `cdxam_comprofiler_ratings` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_comprofiler_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_sessions`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_sessions` (
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ui` tinyint(4) NOT NULL DEFAULT '0',
  `incoming_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `session_id` varchar(33) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `session_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_time` int(14) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `expiry_time` (`expiry_time`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_sessions`
--

LOCK TABLES `cdxam_comprofiler_sessions` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_comprofiler_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_tabs`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_tabs` (
  `tabid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `ordering_edit` int(11) NOT NULL DEFAULT '10',
  `ordering_register` int(11) NOT NULL DEFAULT '10',
  `width` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.5',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `pluginclass` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pluginid` int(11) DEFAULT NULL,
  `fields` tinyint(1) NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `displaytype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cssclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tabid`),
  KEY `pluginclass` (`pluginclass`(50)),
  KEY `enabled_position_ordering` (`enabled`,`position`(25),`ordering`),
  KEY `orderedit_enabled_pos_order` (`enabled`,`ordering_edit`,`position`(25),`ordering`),
  KEY `orderreg_enabled_pos_order` (`enabled`,`ordering_register`,`position`(25),`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_tabs`
--

LOCK TABLES `cdxam_comprofiler_tabs` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_tabs` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_tabs` VALUES (6,'USER_STATISTICS_TITLE','',3,10,10,'.5',1,'getStatsTab',1,1,NULL,1,'html','canvas_stats',1,NULL),(7,'USER_CANVAS_TITLE','',6,11,11,'1',1,'getCanvasTab',1,1,NULL,1,'html','canvas_background',1,NULL),(8,'BLOGS_TITLE','',5,10,10,'1',0,'cbblogsTab',19,0,NULL,1,'menu','canvas_main_middle',1,NULL),(9,'FORUMS_TITLE','',7,10,10,'1',1,'cbforumsTab',18,0,NULL,1,'menu','canvas_main_middle',1,NULL),(10,'ARTICLES_TITLE','',4,10,10,'1',0,'cbarticlesTab',17,0,NULL,1,'menu','canvas_main_middle',1,NULL),(11,'_UE_CONTACT_INFO_HEADER','',2,10,10,'1',1,'getContactTab',1,1,NULL,1,'menu','canvas_main_middle',1,NULL),(15,'_UE_CONNECTION','',9,10,10,'1',1,'getConnectionTab',2,0,'{\"con_ShowSummary\":\"0\",\"con_SummaryEntries\":\"4\",\"con_PagingEnabled\":\"1\",\"con_EntriesPerPage\":\"10\"}',1,'menu','canvas_main_middle',1,''),(17,'_UE_MENU','',10,10,10,'1',1,'getMenuTab',14,0,NULL,1,'html','canvas_menu',1,NULL),(18,'_UE_CONNECTIONPATHS','',11,10,10,'1',1,'getConnectionPathsTab',2,0,NULL,1,'html','cb_head',1,NULL),(19,'_UE_PROFILE_PAGE_TITLE','',12,10,10,'1',1,'getPageTitleTab',1,1,NULL,1,'html','canvas_title',1,NULL),(20,'_UE_PORTRAIT','',13,11,11,'1',1,'getPortraitTab',1,1,NULL,1,'html','canvas_photo',1,NULL),(21,'_UE_USER_STATUS','',14,10,10,'.5',1,'getStatusTab',14,1,NULL,1,'html','canvas_main_right',1,NULL),(22,'_UE_PMSTAB','',8,10,10,'.5',0,'getmypmsproTab',15,0,NULL,1,'menunested','canvas_main_middle',1,NULL),(23,'Навыки','',1,10,10,'.5',1,'',NULL,1,NULL,0,'menu','canvas_main_middle',1,'');
/*!40000 ALTER TABLE `cdxam_comprofiler_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_userreports`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_userreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_userreports` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT,
  `reporteduser` int(11) NOT NULL DEFAULT '0',
  `reportedbyuser` int(11) NOT NULL DEFAULT '0',
  `reportedondate` date NOT NULL DEFAULT '0000-00-00',
  `reportexplaination` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reportedstatus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportid`),
  KEY `status_user_date` (`reportedstatus`,`reporteduser`,`reportedondate`),
  KEY `reportedbyuser_ondate` (`reportedbyuser`,`reportedondate`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_userreports`
--

LOCK TABLES `cdxam_comprofiler_userreports` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_userreports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_comprofiler_userreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_comprofiler_views`
--

DROP TABLE IF EXISTS `cdxam_comprofiler_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_comprofiler_views` (
  `viewer_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastview` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewscount` int(11) NOT NULL DEFAULT '0',
  `vote` tinyint(3) DEFAULT NULL,
  `lastvote` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`viewer_id`,`profile_id`,`lastip`),
  KEY `lastview` (`lastview`),
  KEY `profile_id_lastview` (`profile_id`,`lastview`,`viewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_comprofiler_views`
--

LOCK TABLES `cdxam_comprofiler_views` WRITE;
/*!40000 ALTER TABLE `cdxam_comprofiler_views` DISABLE KEYS */;
INSERT INTO `cdxam_comprofiler_views` VALUES (567,568,'195.82.143.111','2024-05-14 06:36:12',2,NULL,'0000-00-00 00:00:00'),(567,569,'195.82.143.111','2024-05-15 01:29:20',2,NULL,'0000-00-00 00:00:00'),(568,567,'212.14.222.97','2024-05-14 02:41:29',2,NULL,'0000-00-00 00:00:00'),(569,568,'212.14.222.97','2024-05-14 22:56:22',1,NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cdxam_comprofiler_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_contact_details`
--

DROP TABLE IF EXISTS `cdxam_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_contact_details`
--

LOCK TABLES `cdxam_contact_details` WRITE;
/*!40000 ALTER TABLE `cdxam_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_content`
--

DROP TABLE IF EXISTS `cdxam_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_content`
--

LOCK TABLES `cdxam_content` WRITE;
/*!40000 ALTER TABLE `cdxam_content` DISABLE KEYS */;
INSERT INTO `cdxam_content` VALUES (1,118,'Регистрация','registratsiya','','',1,2,'2024-05-14 09:06:19',567,'','2024-05-14 09:10:17',567,NULL,NULL,'2024-05-14 09:06:19',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,1,'','',1,28,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*',''),(2,119,'Войти','vojti','','',1,2,'2024-05-14 09:23:52',567,'','2024-05-14 09:23:52',567,NULL,NULL,'2024-05-14 09:23:52',NULL,'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',5,59,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `cdxam_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_content_frontpage`
--

DROP TABLE IF EXISTS `cdxam_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_content_frontpage`
--

LOCK TABLES `cdxam_content_frontpage` WRITE;
/*!40000 ALTER TABLE `cdxam_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_content_rating`
--

DROP TABLE IF EXISTS `cdxam_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_content_rating`
--

LOCK TABLES `cdxam_content_rating` WRITE;
/*!40000 ALTER TABLE `cdxam_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_content_types`
--

DROP TABLE IF EXISTS `cdxam_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_content_types`
--

LOCK TABLES `cdxam_content_types` WRITE;
/*!40000 ALTER TABLE `cdxam_content_types` DISABLE KEYS */;
INSERT INTO `cdxam_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `cdxam_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_contentitem_tag_map`
--

DROP TABLE IF EXISTS `cdxam_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_contentitem_tag_map`
--

LOCK TABLES `cdxam_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `cdxam_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_extensions`
--

DROP TABLE IF EXISTS `cdxam_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_extensions`
--

LOCK TABLES `cdxam_extensions` WRITE;
/*!40000 ALTER TABLE `cdxam_extensions` DISABLE KEYS */;
INSERT INTO `cdxam_extensions` VALUES (1,0,'com_wrapper','component','com_wrapper',NULL,'',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL),(2,0,'com_admin','component','com_admin',NULL,'',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL),(3,0,'com_banners','component','com_banners',NULL,'',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL),(4,0,'com_cache','component','com_cache',NULL,'',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL),(5,0,'com_categories','component','com_categories',NULL,'',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL),(6,0,'com_checkin','component','com_checkin',NULL,'',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL),(7,0,'com_contact','component','com_contact',NULL,'',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL),(8,0,'com_cpanel','component','com_cpanel',NULL,'',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL),(9,0,'com_installer','component','com_installer',NULL,'',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL),(10,0,'com_languages','component','com_languages',NULL,'',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','',NULL,NULL,0,0,NULL),(11,0,'com_login','component','com_login',NULL,'',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL),(12,0,'com_media','component','com_media',NULL,'',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL),(13,0,'com_menus','component','com_menus',NULL,'',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL),(14,0,'com_messages','component','com_messages',NULL,'',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL),(15,0,'com_modules','component','com_modules',NULL,'',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL),(16,0,'com_newsfeeds','component','com_newsfeeds',NULL,'',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL),(17,0,'com_plugins','component','com_plugins',NULL,'',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL),(18,0,'com_templates','component','com_templates',NULL,'',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}','',NULL,NULL,0,0,NULL),(19,0,'com_content','component','com_content',NULL,'',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL),(20,0,'com_config','component','com_config',NULL,'',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL),(21,0,'com_redirect','component','com_redirect',NULL,'',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL),(22,0,'com_users','component','com_users',NULL,'',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL),(23,0,'com_finder','component','com_finder',NULL,'',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL),(24,0,'com_joomlaupdate','component','com_joomlaupdate',NULL,'',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','',NULL,NULL,0,0,NULL),(25,0,'com_tags','component','com_tags',NULL,'',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL),(26,0,'com_contenthistory','component','com_contenthistory',NULL,'',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL),(27,0,'com_ajax','component','com_ajax',NULL,'',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL),(28,0,'com_postinstall','component','com_postinstall',NULL,'',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL),(29,0,'com_fields','component','com_fields',NULL,'',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL),(30,0,'com_associations','component','com_associations',NULL,'',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL),(31,0,'com_privacy','component','com_privacy',NULL,'',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL),(32,0,'com_actionlogs','component','com_actionlogs',NULL,'',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL),(33,0,'com_workflow','component','com_workflow',NULL,'',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL),(34,0,'com_mails','component','com_mails',NULL,'',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','','',NULL,NULL,0,0,NULL),(35,0,'com_scheduler','component','com_scheduler',NULL,'',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL),(36,0,'com_guidedtours','component','com_guidedtours',NULL,'',1,1,0,0,1,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL),(37,0,'lib_joomla','library','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL),(38,0,'lib_phpass','library','phpass',NULL,'',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL),(39,0,'mod_articles_archive','module','mod_articles_archive',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL),(40,0,'mod_articles_latest','module','mod_articles_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL),(41,0,'mod_articles_popular','module','mod_articles_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL),(42,0,'mod_banners','module','mod_banners',NULL,'',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL),(43,0,'mod_breadcrumbs','module','mod_breadcrumbs',NULL,'',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL),(44,0,'mod_custom','module','mod_custom',NULL,'',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),(45,0,'mod_feed','module','mod_feed',NULL,'',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),(46,0,'mod_footer','module','mod_footer',NULL,'',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL),(47,0,'mod_login','module','mod_login',NULL,'',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),(48,0,'mod_menu','module','mod_menu',NULL,'',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),(49,0,'mod_articles_news','module','mod_articles_news',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL),(50,0,'mod_random_image','module','mod_random_image',NULL,'',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL),(51,0,'mod_related_items','module','mod_related_items',NULL,'',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL),(52,0,'mod_stats','module','mod_stats',NULL,'',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL),(53,0,'mod_syndicate','module','mod_syndicate',NULL,'',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL),(54,0,'mod_users_latest','module','mod_users_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL),(55,0,'mod_whosonline','module','mod_whosonline',NULL,'',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL),(56,0,'mod_wrapper','module','mod_wrapper',NULL,'',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL),(57,0,'mod_articles_category','module','mod_articles_category',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL),(58,0,'mod_articles_categories','module','mod_articles_categories',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL),(59,0,'mod_languages','module','mod_languages',NULL,'',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL),(60,0,'mod_finder','module','mod_finder',NULL,'',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL),(61,0,'mod_custom','module','mod_custom',NULL,'',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),(62,0,'mod_feed','module','mod_feed',NULL,'',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),(63,0,'mod_latest','module','mod_latest',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL),(64,0,'mod_logged','module','mod_logged',NULL,'',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL),(65,0,'mod_login','module','mod_login',NULL,'',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),(66,0,'mod_loginsupport','module','mod_loginsupport',NULL,'',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL),(67,0,'mod_menu','module','mod_menu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),(68,0,'mod_popular','module','mod_popular',NULL,'',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL),(69,0,'mod_quickicon','module','mod_quickicon',NULL,'',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL),(70,0,'mod_frontend','module','mod_frontend',NULL,'',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL),(71,0,'mod_messages','module','mod_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL),(72,0,'mod_post_installation_messages','module','mod_post_installation_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL),(73,0,'mod_user','module','mod_user',NULL,'',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL),(74,0,'mod_title','module','mod_title',NULL,'',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL),(75,0,'mod_toolbar','module','mod_toolbar',NULL,'',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL),(76,0,'mod_multilangstatus','module','mod_multilangstatus',NULL,'',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(77,0,'mod_version','module','mod_version',NULL,'',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(78,0,'mod_stats_admin','module','mod_stats_admin',NULL,'',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(79,0,'mod_tags_popular','module','mod_tags_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),(80,0,'mod_tags_similar','module','mod_tags_similar',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),(81,0,'mod_sampledata','module','mod_sampledata',NULL,'',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL),(82,0,'mod_latestactions','module','mod_latestactions',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL),(83,0,'mod_privacy_dashboard','module','mod_privacy_dashboard',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL),(84,0,'mod_submenu','module','mod_submenu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL),(85,0,'mod_privacy_status','module','mod_privacy_status',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL),(86,0,'mod_guidedtours','module','mod_guidedtours',NULL,'',1,1,1,0,1,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL),(87,0,'plg_actionlog_joomla','plugin','joomla',NULL,'actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL),(88,0,'plg_api-authentication_basic','plugin','basic',NULL,'api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL),(89,0,'plg_api-authentication_token','plugin','token',NULL,'api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL),(90,0,'plg_authentication_cookie','plugin','cookie',NULL,'authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL),(91,0,'plg_authentication_joomla','plugin','joomla',NULL,'authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),(92,0,'plg_authentication_ldap','plugin','ldap',NULL,'authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL),(93,0,'plg_behaviour_compat','plugin','compat',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}','{}','',NULL,NULL,1,0,NULL),(94,0,'plg_behaviour_taggable','plugin','taggable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,2,0,NULL),(95,0,'plg_behaviour_versionable','plugin','versionable',NULL,'behaviour',0,1,1,1,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,3,0,NULL),(96,0,'plg_captcha_recaptcha','plugin','recaptcha',NULL,'captcha',0,0,1,0,1,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\ReCaptcha\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','',NULL,NULL,1,0,NULL),(97,0,'plg_captcha_recaptcha_invisible','plugin','recaptcha_invisible',NULL,'captcha',0,0,1,0,1,'{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"2017-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\InvisibleReCaptcha\",\"filename\":\"recaptcha_invisible\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','',NULL,NULL,2,0,NULL),(98,0,'plg_content_confirmconsent','plugin','confirmconsent',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL),(99,0,'plg_content_contact','plugin','contact',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),(100,0,'plg_content_emailcloak','plugin','emailcloak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL),(101,0,'plg_content_fields','plugin','fields',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL),(102,0,'plg_content_finder','plugin','finder',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL),(103,0,'plg_content_joomla','plugin','joomla',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL),(104,0,'plg_content_loadmodule','plugin','loadmodule',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL),(105,0,'plg_content_pagebreak','plugin','pagebreak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL),(106,0,'plg_content_pagenavigation','plugin','pagenavigation',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL),(107,0,'plg_content_vote','plugin','vote',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL),(108,0,'plg_editors-xtd_article','plugin','article',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL),(109,0,'plg_editors-xtd_contact','plugin','contact',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),(110,0,'plg_editors-xtd_fields','plugin','fields',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL),(111,0,'plg_editors-xtd_image','plugin','image',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL),(112,0,'plg_editors-xtd_menu','plugin','menu',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL),(113,0,'plg_editors-xtd_module','plugin','module',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL),(114,0,'plg_editors-xtd_pagebreak','plugin','pagebreak',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL),(115,0,'plg_editors-xtd_readmore','plugin','readmore',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL),(116,0,'plg_editors_codemirror','plugin','codemirror',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.65.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL),(117,0,'plg_editors_none','plugin','none',NULL,'editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL),(118,0,'plg_editors_tinymce','plugin','tinymce',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"5.10.9\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL),(119,0,'plg_extension_finder','plugin','finder',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL),(120,0,'plg_extension_joomla','plugin','joomla',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),(121,0,'plg_extension_namespacemap','plugin','namespacemap',NULL,'extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,3,0,NULL),(122,0,'plg_fields_calendar','plugin','calendar',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL),(123,0,'plg_fields_checkboxes','plugin','checkboxes',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL),(124,0,'plg_fields_color','plugin','color',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL),(125,0,'plg_fields_editor','plugin','editor',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"JComponentHelper::filterText\"}','',NULL,NULL,4,0,NULL),(126,0,'plg_fields_imagelist','plugin','imagelist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL),(127,0,'plg_fields_integer','plugin','integer',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL),(128,0,'plg_fields_list','plugin','list',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL),(129,0,'plg_fields_media','plugin','media',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL),(130,0,'plg_fields_radio','plugin','radio',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,9,0,NULL),(131,0,'plg_fields_sql','plugin','sql',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,10,0,NULL),(132,0,'plg_fields_subform','plugin','subform',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,11,0,NULL),(133,0,'plg_fields_text','plugin','text',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,12,0,NULL),(134,0,'plg_fields_textarea','plugin','textarea',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"JComponentHelper::filterText\"}','',NULL,NULL,13,0,NULL),(135,0,'plg_fields_url','plugin','url',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,14,0,NULL),(136,0,'plg_fields_user','plugin','user',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,15,0,NULL),(137,0,'plg_fields_usergrouplist','plugin','usergrouplist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,16,0,NULL),(138,0,'plg_filesystem_local','plugin','local',NULL,'filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL),(139,0,'plg_finder_categories','plugin','categories',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL),(140,0,'plg_finder_contacts','plugin','contacts',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL),(141,0,'plg_finder_content','plugin','content',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL),(142,0,'plg_finder_newsfeeds','plugin','newsfeeds',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL),(143,0,'plg_finder_tags','plugin','tags',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL),(144,0,'plg_installer_folderinstaller','plugin','folderinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL),(145,0,'plg_installer_override','plugin','override',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL),(146,0,'plg_installer_packageinstaller','plugin','packageinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL),(147,0,'plg_installer_urlinstaller','plugin','urlinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL),(148,0,'plg_installer_webinstaller','plugin','webinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL),(149,0,'plg_media-action_crop','plugin','crop',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL),(150,0,'plg_media-action_resize','plugin','resize',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL),(151,0,'plg_media-action_rotate','plugin','rotate',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL),(152,0,'plg_privacy_actionlogs','plugin','actionlogs',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL),(153,0,'plg_privacy_consents','plugin','consents',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL),(154,0,'plg_privacy_contact','plugin','contact',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),(155,0,'plg_privacy_content','plugin','content',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),(156,0,'plg_privacy_message','plugin','message',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL),(157,0,'plg_privacy_user','plugin','user',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL),(158,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,1,0,NULL),(159,0,'plg_quickicon_extensionupdate','plugin','extensionupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,2,0,NULL),(160,0,'plg_quickicon_overridecheck','plugin','overridecheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,3,0,NULL),(161,0,'plg_quickicon_downloadkey','plugin','downloadkey',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,4,0,NULL),(162,0,'plg_quickicon_privacycheck','plugin','privacycheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,5,0,NULL),(163,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,6,0,NULL),(164,0,'plg_quickicon_eos','plugin','eos',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,7,0,NULL),(165,0,'plg_sampledata_blog','plugin','blog',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL),(166,0,'plg_sampledata_multilang','plugin','multilang',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL),(167,0,'plg_system_accessibility','plugin','accessibility',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL),(168,0,'plg_system_actionlogs','plugin','actionlogs',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL),(169,0,'plg_system_cache','plugin','cache',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL),(170,0,'plg_system_debug','plugin','debug',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL),(171,0,'plg_system_fields','plugin','fields',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL),(172,0,'plg_system_highlight','plugin','highlight',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL),(173,0,'plg_system_httpheaders','plugin','httpheaders',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL),(174,0,'plg_system_jooa11y','plugin','jooa11y',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL),(175,0,'plg_system_languagecode','plugin','languagecode',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL),(176,0,'plg_system_languagefilter','plugin','languagefilter',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL),(177,0,'plg_system_log','plugin','log',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL),(178,0,'plg_system_logout','plugin','logout',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL),(179,0,'plg_system_logrotation','plugin','logrotation',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LogRotation\",\"filename\":\"logrotation\"}','{\"lastrun\":1715594663}','',NULL,NULL,13,0,NULL),(180,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL),(181,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL),(182,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL),(183,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL),(184,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','','',NULL,NULL,18,0,NULL),(185,0,'plg_system_sessiongc','plugin','sessiongc',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2018-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\SessionGC\",\"filename\":\"sessiongc\"}','','',NULL,NULL,19,0,NULL),(186,0,'plg_system_shortcut','plugin','shortcut',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,0,0,NULL),(187,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,20,0,NULL),(188,0,'plg_system_stats','plugin','stats',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"e2580e0486e6cce838730a034f61823f4d385142\",\"interval\":12}','',NULL,NULL,21,0,NULL),(189,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,22,0,NULL),(190,0,'plg_system_updatenotification','plugin','updatenotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2015-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{\"lastrun\":1715727893}','',NULL,NULL,23,0,NULL),(191,0,'plg_system_webauthn','plugin','webauthn',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,24,0,NULL),(192,0,'plg_task_check_files','plugin','checkfiles',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL),(193,0,'plg_task_demo_tasks','plugin','demotasks',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_demo_tasks\",\"type\":\"plugin\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_DEMO_TASKS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DemoTasks\",\"filename\":\"demotasks\"}','{}','',NULL,NULL,2,0,NULL),(194,0,'plg_task_requests','plugin','requests',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,3,0,NULL),(195,0,'plg_task_site_status','plugin','sitestatus',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,4,0,NULL),(196,0,'plg_multifactorauth_totp','plugin','totp',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL),(197,0,'plg_multifactorauth_yubikey','plugin','yubikey',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL),(198,0,'plg_multifactorauth_webauthn','plugin','webauthn',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL),(199,0,'plg_multifactorauth_email','plugin','email',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL),(200,0,'plg_multifactorauth_fixed','plugin','fixed',NULL,'multifactorauth',0,0,1,0,1,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL),(201,0,'plg_user_contactcreator','plugin','contactcreator',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL),(202,0,'plg_user_joomla','plugin','joomla',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL),(203,0,'plg_user_profile','plugin','profile',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL),(204,0,'plg_user_terms','plugin','terms',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL),(205,0,'plg_user_token','plugin','token',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL),(206,0,'plg_webservices_banners','plugin','banners',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL),(207,0,'plg_webservices_config','plugin','config',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL),(208,0,'plg_webservices_contact','plugin','contact',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),(209,0,'plg_webservices_content','plugin','content',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),(210,0,'plg_webservices_installer','plugin','installer',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL),(211,0,'plg_webservices_languages','plugin','languages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,6,0,NULL),(212,0,'plg_webservices_media','plugin','media',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,7,0,NULL),(213,0,'plg_webservices_menus','plugin','menus',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,7,0,NULL),(214,0,'plg_webservices_messages','plugin','messages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,8,0,NULL),(215,0,'plg_webservices_modules','plugin','modules',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,9,0,NULL),(216,0,'plg_webservices_newsfeeds','plugin','newsfeeds',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,10,0,NULL),(217,0,'plg_webservices_plugins','plugin','plugins',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,11,0,NULL),(218,0,'plg_webservices_privacy','plugin','privacy',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,12,0,NULL),(219,0,'plg_webservices_redirect','plugin','redirect',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,13,0,NULL),(220,0,'plg_webservices_tags','plugin','tags',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,14,0,NULL),(221,0,'plg_webservices_templates','plugin','templates',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,15,0,NULL),(222,0,'plg_webservices_users','plugin','users',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,16,0,NULL),(223,0,'plg_workflow_featuring','plugin','featuring',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL),(224,0,'plg_workflow_notification','plugin','notification',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL),(225,0,'plg_workflow_publishing','plugin','publishing',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL),(226,0,'plg_system_guidedtours','plugin','guidedtours',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,15,0,NULL),(227,0,'atum','template','atum',NULL,'',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL),(228,0,'cassiopeia','template','cassiopeia',NULL,'',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}','',NULL,NULL,0,0,NULL),(229,0,'files_joomla','file','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2024-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(230,0,'English (en-GB) Language Pack','package','pkg_en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL),(231,230,'English (en-GB)','language','en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.4\",\"description\":\"en-GB site language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(232,230,'English (en-GB)','language','en-GB',NULL,'',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(233,230,'English (en-GB)','language','en-GB',NULL,'',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.4\",\"description\":\"en-GB api language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(234,237,'Russian (ru-RU)','language','ru-RU','','',1,1,0,0,0,'{\"name\":\"Russian (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2024-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2024 Open Source Matters, Inc.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"https:\\/\\/joomlaportal.ru\",\"version\":\"4.4.4\",\"description\":\"<p>Russian language pack (administrator) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}','{}','',NULL,NULL,0,0,NULL),(235,237,'Russian (ru-RU)','language','ru-RU','','',3,1,0,0,0,'{\"name\":\"Russian (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2024-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2024 Open Source Matters, Inc.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"https:\\/\\/joomlaportal.ru\",\"version\":\"4.4.4\",\"description\":\"<p>Russian language pack (api) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}','{}','',NULL,NULL,0,0,NULL),(236,237,'Russian (ru-RU)','language','ru-RU','','',0,1,0,0,0,'{\"name\":\"Russian (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2024-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2024 Open Source Matters, Inc.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"https:\\/\\/joomlaportal.ru\",\"version\":\"4.4.4\",\"description\":\"<p>Russian language pack (site) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}','{}','',NULL,NULL,0,0,NULL),(237,0,'Russian (ru-RU) Language Pack','package','pkg_ru-RU','','',0,1,1,0,0,'{\"name\":\"Russian (ru-RU) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2024 Open Source Matters, Inc.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"https:\\/\\/joomlaportal.ru\",\"version\":\"4.4.4.3\",\"description\":\"<h3 style=\'font-weight: 400\'>Joomla 4.4.4 Russian Language Pack<\\/h3><div style=\'font-weight: 400\'><p>\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043b\\u043e\\u043a\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f Joomla, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u044f\\u0437\\u044b\\u0447\\u043d\\u044b\\u043c \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c.<br>\\u041c\\u044b \\u0440\\u0430\\u0434\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u043c \\u0438 \\u043f\\u043e\\u043c\\u043e\\u0449\\u0438 \\u0432 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 Joomla. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u043e\\u0431\\u043d\\u0430\\u0440\\u0443\\u0436\\u0438\\u043b\\u0438 \\u043e\\u0448\\u0438\\u0431\\u043a\\u0443 \\u0438\\u043b\\u0438 \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0432\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0438\\u0441\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0441\\u043e\\u0437\\u0434\\u0430\\u0439\\u0442\\u0435 <a href=\'https:\\/\\/github.com\\/JPathRu\\/localisation\\/issues\\/new\' target=\'_blank\'>Issue<\\/a> \\u043d\\u0430 Github.<\\/p><ul><li><a href=\'https:\\/\\/joomlaportal.ru\' target=\'_blank\'>\\u041f\\u043e\\u0440\\u0442\\u0430\\u043b Joomla \\u043f\\u043e-\\u0440\\u0443\\u0441\\u0441\\u043a\\u0438<\\/a>,<\\/li><li><a href=\'https:\\/\\/joomlaforum.ru\' target=\'_blank\'>\\u0424\\u043e\\u0440\\u0443\\u043c \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438 Joomla<\\/a>,<\\/li><li><a href=\'https:\\/\\/forum.joomla.org\\/viewforum.php?f=26\' target=\'_blank\'>\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u043e\\u0440\\u0443\\u043c \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438 \\u043d\\u0430 Joomla.org<\\/a>,<\\/li><li><a href=\'https:\\/\\/joomlaportal.ru\\/russian-joomla\' target=\'_blank\'>\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438<\\/a>,<\\/li><li><a href=\'https:\\/\\/t.me\\/joomlafeed\' target=\'_blank\'>\\u041a\\u0430\\u043d\\u0430\\u043b \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0435\\u0439 Joomla \\u0432 Telegram<\\/a>,<\\/li><li><a href=\'https:\\/\\/t.me\\/joomlaru\' target=\'_blank\'>\\u0427\\u0430\\u0442 Joomla \\u043f\\u043e-\\u0440\\u0443\\u0441\\u0441\\u043a\\u0438 \\u0432 Telegram<\\/a>,<\\/li><li><a href=\'https:\\/\\/t.me\\/projoomla\' target=\'_blank\'>\\u0427\\u0430\\u0442 Joomla \\u0434\\u043b\\u044f \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432 \\u0432 Telegram<\\/a>,<\\/li><li><a href=\'https:\\/\\/t.me\\/yoothemepro_joomla\' target=\'_blank\'>\\u0427\\u0430\\u0442 Joomla YOOtheme Pro \\u0432 Telegram<\\/a>.<\\/li><\\/ul><\\/div>\",\"group\":\"\",\"filename\":\"pkg_ru-RU\"}','{}','',NULL,NULL,0,0,NULL),(239,246,'Community Builder Library','library','CBLib','','',0,1,1,0,0,'{\"name\":\"Community Builder Library\",\"type\":\"library\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"(C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Community Builder Library\",\"group\":\"\",\"filename\":\"CBLib\"}','{}','',NULL,NULL,0,0,NULL),(240,246,'Community Builder System plugin','plugin','communitybuilder','','system',0,1,1,0,0,'{\"name\":\"Community Builder System plugin\",\"type\":\"plugin\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"Copyright (C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Community Builder System Plugin for Joomla!\",\"group\":\"\",\"filename\":\"communitybuilder\"}','{\"redirect_urls\":\"1\",\"rewrite_urls\":\"1\",\"verify_consent\":\"0\",\"verify_consent_msg\":\"Your consent is required.\",\"verify_consent_msg_type\":\"error\"}','',NULL,NULL,0,0,NULL),(241,246,'comprofiler','component','com_comprofiler','','',1,1,0,0,0,'{\"name\":\"comprofiler\",\"type\":\"component\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"Copyright (C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Community Builder for Joomla!\",\"group\":\"\",\"filename\":\"comprofiler\"}','{}','',NULL,NULL,0,0,NULL),(242,246,'Community Builder Login module','module','mod_cblogin','','',0,1,0,0,0,'{\"name\":\"Community Builder Login module\",\"type\":\"module\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"(C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved2 License\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Login module to be used with Community Builder instead of the Login module.\",\"group\":\"\",\"filename\":\"mod_cblogin\"}','{\"show_buttons_icons\":\"0\",\"https_post\":\"0\",\"cb_plugins\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"name_label\":\"5\",\"name_length\":\"14\",\"pass_label\":\"5\",\"pass_length\":\"14\",\"key_label\":\"5\",\"key_length\":\"14\",\"remember_enabled\":\"1\",\"show_lostpass\":\"1\",\"show_newaccount\":\"1\",\"login_message\":\"0\",\"logoutpretext\":\"\",\"logoutposttext\":\"\",\"logout\":\"index.php\",\"greeting\":\"1\",\"show_avatar\":\"1\",\"text_show_profile\":\"\",\"icon_show_profile\":\"0\",\"text_edit_profile\":\"\",\"icon_edit_profile\":\"0\",\"show_pms\":\"0\",\"show_pms_icon\":\"0\",\"show_connection_notifications\":\"0\",\"show_connection_notifications_icon\":\"0\",\"logout_message\":\"0\",\"reg_layout\":\"flat\",\"style_username_cssclass\":\"\",\"style_password_cssclass\":\"\",\"style_secretkey_cssclass\":\"\",\"style_login_cssclass\":\"\",\"style_logout_cssclass\":\"\",\"style_forgotlogin_cssclass\":\"\",\"style_register_cssclass\":\"\",\"style_profile_cssclass\":\"\",\"style_profileedit_cssclass\":\"\",\"style_connrequests_cssclass\":\"\",\"style_privatemsgs_cssclass\":\"\",\"layout\":\"_:bootstrap\",\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(243,246,'Community Builder Online module','module','mod_comprofileronline','','',0,1,0,0,0,'{\"name\":\"Community Builder Online module\",\"type\":\"module\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"(C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved2 License\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Displays a list of users logged in with a link to their profile.\",\"group\":\"\",\"filename\":\"mod_comprofileronline\"}','{\"mode\":\"1\",\"pretext\":\"\",\"posttext\":\"\",\"usertext\":\"\",\"limit\":\"30\",\"exclude\":\"\",\"exclude_self\":\"0\",\"cb_plugins\":\"0\",\"custom_field\":\"username\",\"custom_direction\":\"ASC\",\"label\":\"1\",\"separator\":\",\",\"layout\":\"_:default\",\"cache\":\"0\",\"cache_time\":\"0\"}','',NULL,NULL,0,0,NULL),(244,246,'Community Builder Workflows module','module','mod_comprofilermoderator','','',0,1,0,0,0,'{\"name\":\"Community Builder Workflows module\",\"type\":\"module\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"(C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved2 License\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Displays Notifications of pending actions for the moderator and connections functionality of Community Builder.\",\"group\":\"\",\"filename\":\"mod_comprofilermoderator\"}','{\"pretext\":\"\",\"posttext\":\"\",\"show_banned\":\"1\",\"show_image_approval\":\"1\",\"show_user_reports\":\"1\",\"show_uban_requests\":\"1\",\"show_user_approval\":\"1\",\"show_pms\":\"1\",\"show_connections\":\"1\",\"cb_plugins\":\"0\",\"layout\":\"_:default\",\"cache\":\"0\",\"cache_time\":\"0\"}','',NULL,NULL,0,0,NULL),(245,246,'Community Builder Admin module','module','mod_cbadmin','','',1,1,2,0,0,'{\"name\":\"Community Builder Admin module\",\"type\":\"module\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"Copyright (C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\",\"version\":\"2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"description\":\"Community Builder Admin Module for Joomla!\",\"group\":\"\",\"filename\":\"mod_cbadmin\"}','{\"mode\":\"1\",\"menu_cb\":\"1\",\"menu_plugins\":\"1\",\"menu_compact\":\"1\",\"feed_entries\":\"5\",\"feed_duration\":\"12\",\"modal_display\":\"1\",\"modal_width\":\"90%\",\"modal_height\":\"90vh\"}','',NULL,NULL,0,0,NULL),(246,0,'Community Builder Package','package','pkg_communitybuilder','','',0,1,1,0,0,'{\"name\":\"Community Builder Package\",\"type\":\"package\",\"creationDate\":\"2024-02-09\",\"author\":\"CB Team\",\"copyright\":\"Copyright (C) 2004-2023 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"https:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.9.1\",\"description\":\"Community Builder 2.9.1+build.2024.02.09.12.14.46.83d67ccd3\",\"group\":\"\",\"filename\":\"pkg_communitybuilder\"}','{}','',NULL,NULL,0,0,NULL),(248,264,'Kunena Framework','library','kunena','https://update.kunena.org/changelog/6.3.0.xml','',0,1,1,0,0,'{\"name\":\"Kunena Framework\",\"type\":\"library\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"Kunena Framework.\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Libraries\",\"filename\":\"kunena\"}','{}','',NULL,NULL,0,0,NULL),(249,264,'Kunena Media Files','file','kunena_media','https://update.kunena.org/changelog/6.3.0.xml','',0,1,0,0,0,'{\"name\":\"Kunena Media Files\",\"type\":\"file\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"Kunena media files.\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(250,264,'com_kunena','component','com_kunena','https://update.kunena.org/changelog/6.3.0.xml','',1,1,0,0,0,'{\"name\":\"com_kunena\",\"type\":\"component\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"COM_KUNENA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\",\"filename\":\"kunena\"}','{}','',NULL,NULL,0,0,NULL),(251,264,'plg_finder_kunena','plugin','kunena','https://update.kunena.org/changelog/6.3.0.xml','finder',0,1,1,0,0,'{\"name\":\"plg_finder_kunena\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_FINDER_KUNENA_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Kunena\",\"filename\":\"kunena\"}','{}','',NULL,NULL,0,0,NULL),(252,264,'plg_kunena_finder','plugin','finder','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,1,1,0,0,'{\"name\":\"plg_kunena_finder\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_FINDER_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Finder\",\"filename\":\"finder\"}','{}','',NULL,NULL,0,0,NULL),(253,264,'plg_kunena_community','plugin','community','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,0,1,0,0,'{\"name\":\"plg_kunena_community\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_COMMUNITY_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Community\",\"filename\":\"community\"}','{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\",\"activity_points_limit\":\"0\",\"activity_stream_limit\":\"0\"}','',NULL,NULL,0,0,NULL),(254,264,'plg_kunena_comprofiler','plugin','comprofiler','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,0,1,0,0,'{\"name\":\"plg_kunena_comprofiler\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_COMPROFILER_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Comprofiler\",\"filename\":\"comprofiler\"}','{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\"}','',NULL,NULL,0,0,''),(255,264,'plg_kunena_easysocial','plugin','easysocial','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,0,1,0,0,'{\"name\":\"plg_kunena_easysocial\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"StackIdeas\",\"copyright\":\"https:\\/\\/stackideas.com\",\"authorEmail\":\"support@stackideas.com\",\"authorUrl\":\"https:\\/\\/stackideas.com\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_EASYSOCIAL_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Easysocial\",\"filename\":\"easysocial\"}','{\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\",\"activity_badge_limit\":\"0\",\"activity_points_limit\":\"0\"}','',NULL,NULL,0,0,NULL),(256,264,'plg_kunena_gravatar','plugin','gravatar','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,0,1,0,0,'{\"name\":\"plg_kunena_gravatar\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_GRAVATAR_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Gravatar\",\"filename\":\"gravatar\"}','{\"avatar\":\"1\"}','',NULL,NULL,0,0,NULL),(257,264,'plg_kunena_uddeim','plugin','uddeim','','kunena',0,0,1,0,0,'{\"name\":\"plg_kunena_uddeim\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_UDDEIM_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Uddeim\",\"filename\":\"uddeim\"}','{\"private\":\"1\"}','',NULL,NULL,0,0,NULL),(258,264,'plg_kunena_joomla','plugin','joomla','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,1,1,0,0,'{\"name\":\"plg_kunena_joomla\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_JOOMLA_INTEGRATION_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Joomla\",\"filename\":\"joomla\"}','{\"access\":\"1\",\"login\":\"1\"}','',NULL,NULL,0,0,''),(259,264,'plg_kunena_kunena','plugin','kunena','https://update.kunena.org/changelog/6.3.0.xml','kunena',0,1,1,0,0,'{\"name\":\"plg_kunena_kunena\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_KUNENA_KUNENA_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Kunena\\\\Kunena\",\"filename\":\"kunena\"}','{\"avatar\":\"1\",\"profile\":\"1\"}','',NULL,NULL,0,0,NULL),(260,264,'plg_system_kunena','plugin','kunena','https://update.kunena.org/changelog/6.3.0.xml','system',0,1,1,0,0,'{\"name\":\"plg_system_kunena\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_SYSTEM_KUNENA_DESC\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\System\\\\Kunena\",\"filename\":\"kunena\"}','{\"jcontentevents\":\"0\"}','',NULL,NULL,0,0,''),(261,264,'plg_quickicon_kunena','plugin','kunena','https://update.kunena.org/changelog/6.3.0.xml','quickicon',0,1,1,0,0,'{\"name\":\"plg_quickicon_kunena\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_QUICKICON_KUNENA_DESC\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Quickicon\\\\Kunena\",\"filename\":\"kunena\"}','{\"context\":\"update_quickicon\"}','',NULL,NULL,0,0,NULL),(262,264,'plg_sampledata_kunena','plugin','kunena','https://update.kunena.org/changelog/6.3.0.xml','sampledata',0,1,1,0,0,'{\"name\":\"plg_sampledata_kunena\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_SAMPLEDATA_KUNENA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Sampledata\\\\Kunena\",\"filename\":\"kunena\"}','{}','',NULL,NULL,0,0,NULL),(263,264,'PLG_PRIVACY_KUNENA','plugin','kunena','https://update.kunena.org/changelog/6.3.0.xml','privacy',0,1,1,0,0,'{\"name\":\"PLG_PRIVACY_KUNENA\",\"type\":\"plugin\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"PLG_PRIVACY_KUNENA_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Kunena\\\\Forum\\\\Plugin\\\\Privacy\\\\Kunena\",\"filename\":\"kunena\"}','{}','',NULL,NULL,0,0,NULL),(264,0,'pkg_kunena','package','pkg_kunena','https://update.kunena.org/changelog/6.3.0.xml','',0,1,1,0,0,'{\"name\":\"pkg_kunena\",\"type\":\"package\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"Kunena Forum Package.\",\"group\":\"\",\"filename\":\"pkg_kunena\"}','{}','',NULL,NULL,0,0,NULL),(265,267,'Kunena Language - Russian (Russia)','file','com_kunena_ru-RU','','',0,1,0,0,0,'{\"name\":\"Kunena Language - Russian (Russia)\",\"type\":\"file\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"translations@kunena.org\",\"authorUrl\":\"https:\\/\\/www.transifex.com\\/projects\\/p\\/Kunena\\/team\\/ru_RU\\/\",\"version\":\"6.3.0\",\"description\":\"Russian (Russia) language file for Kunena Forum Component\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(266,267,'Kunena Language - English','file','com_kunena_en-GB','','',0,1,0,0,0,'{\"name\":\"Kunena Language - English\",\"type\":\"file\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"English language file for Kunena Forum Component\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(267,0,'Kunena Language Pack','package','pkg_kunena_languages','','',0,1,1,0,0,'{\"name\":\"Kunena Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-04-22\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2024 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"6.3.0\",\"description\":\"Language pack for Kunena forum component.\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL),(268,0,'SP Page Builder','component','com_sppagebuilder','','',1,1,0,0,0,'{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (c) 2010 - 2022 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"3.8.10\",\"description\":\"\",\"group\":\"\",\"filename\":\"sppagebuilder\"}','{}','',NULL,NULL,0,0,NULL),(269,0,'System - SP Page Builder Lite Updater','plugin','sppagebuilderliteupdater','','system',0,1,1,0,0,'{\"name\":\"System - SP Page Builder Lite Updater\",\"type\":\"plugin\",\"creationDate\":\"Jul 2022\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (c) 2010 - 2022 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"3.8.10\",\"description\":\"SP Page Builder Lite Updater Plugin\",\"group\":\"\",\"filename\":\"sppagebuilderliteupdater\"}','{}','',NULL,NULL,0,0,NULL),(270,0,'SP Page Builder','module','mod_sppagebuilder','','',0,1,0,0,0,'{\"name\":\"SP Page Builder\",\"type\":\"module\",\"creationDate\":\"Oct 2016\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (c) 2010 - 2021 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"3.8.10\",\"description\":\"Module to display content from SP Page Builder\",\"group\":\"\",\"filename\":\"mod_sppagebuilder\"}','{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','',NULL,NULL,0,0,NULL),(271,273,'SimpleForm2','module','mod_simpleform2','','',0,1,0,0,0,'{\"name\":\"SimpleForm2\",\"type\":\"module\",\"creationDate\":\"Jan 2010\",\"author\":\"ZyX\",\"copyright\":\"Copyright (c) 2024 Oleg Micriucov\",\"authorEmail\":\"info@maxiolab.com\",\"authorUrl\":\"https:\\/\\/maxiolab.com\",\"version\":\"4.1.0\",\"description\":\"MOD_SIMPLEFORM2_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_simpleform2\"}','{\"sfMailSubj\":\"\",\"sfMailTo\":\"admin@yoursite.com\",\"sfMailReply\":\"\",\"simpleCode\":\"{form title=\'Contact form\' description=\'Please fill all the fields\'}<div class=\'sf2-form-group\'>{element label=\'Your name\' type=\'text\' required=\'required\' error=\'Please enter your name\'\\/}<\\/div><div class=\'sf2-form-group\'>{element label=\'Your e-mail\' type=\'email\' required=\'required\' error=\'Please enter your e-mail\'\\/}<\\/div><div class=\'sf2-form-group\'>{element label=\'Message\' type=\'textarea\' required=\'required\' error=\'Please enter the message\'\\/}<\\/div><div class=\'sf2-form-group\'>{element  type=\'checkbox\' required=\'required\' error=\'Please agree for the data processing\' send-in-email=\'no\'}{option label=\'I agree for the data processing\' value=\'ok\'\\/}{\\/element}<\\/div><div class=\'sf2-form-group\'>{element type=\'submit\' value=\'Send\'\\/}<\\/div>{\\/form}\",\"sfLayout\":\"blocks\",\"sfStyle\":\"default\",\"sfLayoutMode\":\"full-width\",\"okText\":\"<b>Thank you for your message!<\\/b><p>We will contact you soon.<\\/p>\",\"userCheckFunc\":\"\",\"userResultFunc\":\"\",\"cachemode\":\"itemid\",\"ip_detect_method\":\"REMOTE_ADDR\",\"recordForms\":\"0\"}','',NULL,NULL,0,0,NULL),(272,273,'System - SimpleForm2','plugin','simpleform2','','system',0,1,1,0,0,'{\"name\":\"System - SimpleForm2\",\"type\":\"plugin\",\"creationDate\":\"2019\",\"author\":\"Oleg Micriucov (ZyX)\",\"copyright\":\"Copyright (c) 2024 Oleg Micriucov\",\"authorEmail\":\"info@maxiolab.com\",\"authorUrl\":\"https:\\/\\/maxiolab.com\",\"version\":\"4.1.0\",\"description\":\"PLG_SYSTEM_SIMPLEFORM2_DESCR\",\"group\":\"\",\"filename\":\"simpleform2\"}','{\"scriptsLoadMode\":\"all_pages\"}','',NULL,NULL,0,0,NULL),(273,0,'Package SimpleForm2','package','pkg_simpleform2','','',0,1,1,0,0,'{\"name\":\"Package SimpleForm2\",\"type\":\"package\",\"creationDate\":\"2019\",\"author\":\"Oleg Micriucov (ZyX)\",\"copyright\":\"Copyright (c) 2024 Oleg Micriucov\",\"authorEmail\":\"info@allforjoomla.com\",\"authorUrl\":\"https:\\/\\/allforjoomla.com\\/simpleform2\",\"version\":\"4.1.0\",\"description\":\"SimpleForm2 Installation Package\",\"group\":\"\",\"filename\":\"pkg_simpleform2\"}','{}','',NULL,NULL,0,0,NULL),(274,0,'com_joomdle','component','com_joomdle','','',1,1,0,0,0,'{\"name\":\"com_joomdle\",\"type\":\"component\",\"creationDate\":\"04\\/02\\/2010\",\"author\":\"Qontori Pte Ltd\",\"copyright\":\"Copyright (C) 2014 Qontori Pte Ltd\",\"authorEmail\":\"development@qontori.com\",\"authorUrl\":\"\",\"version\":\"2.3.1\",\"description\":\"Tools for Joomla - Moodle integration\",\"group\":\"\",\"filename\":\"joomdle\"}','{\"MOODLE_URL\":\"https:\\/\\/studentshub-edu.ru\\/\",\"auth_token\":\"e3025e447685516bae776f565680c9cc\",\"connection_method\":\"fgc\",\"ws_protocol\":\"rest\",\"joomla_auth_token\":\"E0mDXA21fcYVfrfdfleEshffMz9nrfWo\",\"redirectless_sso\":0,\"redirectless_logout\":0,\"cookie_path\":\"\\/\",\"auto_create_users\":1,\"auto_delete_users\":1,\"linkstarget\":\"wrapper\",\"scrolling\":\"auto\",\"width\":\"\",\"height\":\"\",\"autoheight\":1,\"min_height\":\"\",\"crossdomain_autoheight\":0,\"crossdomain_autoheight_calculation_method\":\"bodyOffset\",\"theme\":\"\",\"default_itemid\":\"\",\"joomdle_itemid\":\"\",\"shop_itemid\":\"\",\"courseview_itemid\":\"\",\"free_courses_button\":\"enrol\",\"paid_courses_button\":\"buy\",\"goto_course_button\":\"moodle\",\"show_detail_category\":1,\"show_detail_summary\":1,\"show_detail_language\":0,\"show_detail_startdate\":1,\"show_detail_enroldates\":0,\"show_detail_enrolperiod\":0,\"show_detail_topicsnumber\":1,\"show_detail_cost\":1,\"show_contents_link\":1,\"show_top\\u00eccs_link\":1,\"show_grading_system_link\":0,\"show_teachers_link\":0,\"topics_show_numbers\":0,\"coursecategory_show_category_info\":1,\"coursecategory_show_buttons\":0,\"course_show_numbers\":1,\"course_show_summary\":0,\"use_page_view\":1,\"coursesabc_show_buttons\":0,\"show_back_links\":0,\"shop_integration\":\"no\",\"courses_category\":\"no\",\"buy_for_children\":0,\"assign_courses_include_parent\":0,\"send_enrol_emails\":1,\"enrol_email_subject\":\"\",\"enrol_email_text\":\"\",\"send_bundle_emails\":\"0\",\"bundle_email_subject\":\"\",\"bundle_email_text\":\"\",\"additional_data_source\":\"no\",\"use_profiletypes\":\"0\",\"children_profiletype\":\"0\",\"joomlagroups_teachers\":\"1\",\"joomlagroups_students\":\"1\",\"activities\":\"no\",\"user_points\":\"no\",\"socialgroups\":\"no\",\"jomsocial_groups_category\":0,\"mailing_list_integration\":\"no\",\"use_pdf_integration\":0,\"use_kunena_forums\":0,\"courses_forum_category\":0,\"applications_max\":\"\",\"show_detail_application_motivation\":\"no\",\"show_detail_application_experience\":\"no\",\"license_key\":\"\",\"tags\":[]}','',NULL,NULL,0,0,NULL),(275,0,'User hooks - Joomdle','plugin','joomdlehooks','','user',0,1,1,0,0,'{\"name\":\"User hooks - Joomdle\",\"type\":\"plugin\",\"creationDate\":\"February 2009\",\"author\":\"Qontori\",\"copyright\":\"\",\"authorEmail\":\"development@joomdle.com\",\"authorUrl\":\"www.joomdle.com\",\"version\":\"1.0\",\"description\":\"Performs user sync and Single Sign On\",\"group\":\"\",\"filename\":\"joomdlehooks\"}','{\"login_event_to_hook\":\"onUserAfterLogin\"}','',NULL,NULL,100,0,NULL),(276,0,'System - Joomdlesession','plugin','joomdlesession','','system',0,0,1,0,0,'{\"name\":\"System - Joomdlesession\",\"type\":\"plugin\",\"creationDate\":\"January 2010\",\"author\":\"Joomdle\",\"copyright\":\"Copyright (C) 2010 Antonio Duran Terres.\",\"authorEmail\":\"antonio.duran.terres@gmail.com\",\"authorUrl\":\"www.joomdle.com\",\"version\":\"1.0\",\"description\":\"Provides Moodle\\/Joomla session synchronization\",\"group\":\"\",\"filename\":\"joomdlesession\"}','{}','',NULL,NULL,0,0,NULL),(277,0,'Search - Joomdle Courses','plugin','courses','','search',0,1,1,0,0,'{\"name\":\"Search - Joomdle Courses\",\"type\":\"plugin\",\"creationDate\":\"February 2009\",\"author\":\"Antonio Duran Terres\",\"copyright\":\"Copyright (C) 2009 - 2010 Antonio Duran Terres\",\"authorEmail\":\"antonio.duran.terres@gmail.com\",\"authorUrl\":\"joomdle.com\",\"version\":\"1.0\",\"description\":\"COM_JOOMDLE_PLG_SEARCH_COURSES_DESCRIPTION\",\"group\":\"\",\"filename\":\"courses\"}','{\"search_limit\":\"50\",\"linkstarget\":\"detail\"}','',NULL,NULL,0,0,NULL),(278,0,'Search - Joomdle Course Categories','plugin','coursecategories','','search',0,1,1,0,0,'{\"name\":\"Search - Joomdle Course Categories\",\"type\":\"plugin\",\"creationDate\":\"February 2009\",\"author\":\"Antonio Duran Terres\",\"copyright\":\"Copyright (C) 2009 - 2010 Antonio Duran Terres\",\"authorEmail\":\"antonio.duran.terres@gmail.com\",\"authorUrl\":\"joomdle.com\",\"version\":\"1.0\",\"description\":\"COM_JOOMDLE_PLG_SEARCH_COURSECATEGORIES_DESCRIPTION\",\"group\":\"\",\"filename\":\"coursecategories\"}','{\"search_limit\":\"50\",\"linkstarget\":\"category\"}','',NULL,NULL,0,0,NULL),(279,0,'Search - Joomdle Course Topics','plugin','coursetopics','','search',0,1,1,0,0,'{\"name\":\"Search - Joomdle Course Topics\",\"type\":\"plugin\",\"creationDate\":\"February 2009\",\"author\":\"Antonio Duran Terres\",\"copyright\":\"Copyright (C) 2009 - 2010 Antonio Duran Terres\",\"authorEmail\":\"antonio.duran.terres@gmail.com\",\"authorUrl\":\"joomdle.com\",\"version\":\"1.0\",\"description\":\"COM_JOOMDLE_PLG_SEARCH_COURSE_TOPICS_DESCRIPTION\",\"group\":\"\",\"filename\":\"coursetopics\"}','{\"search_limit\":\"50\",\"linkstarget\":\"topics\"}','',NULL,NULL,0,0,NULL),(280,0,'System - Joomdle License','plugin','joomdlelicense','','system',0,1,1,0,0,'{\"name\":\"System - Joomdle License\",\"type\":\"plugin\",\"creationDate\":\"January 2018\",\"author\":\"Joomdle\",\"copyright\":\"Copyright (C)  Qontori Pte Ltd\",\"authorEmail\":\"development@qontori.com\",\"authorUrl\":\"www.qontori.com\",\"version\":\"1.0.0\",\"description\":\"Provides Joomdle license services\",\"group\":\"\",\"filename\":\"joomdlelicense\"}','{}','',NULL,NULL,0,0,NULL),(281,0,'Joomdle courses','module','mod_joomdle_courses','','',0,1,0,0,0,'{\"name\":\"Joomdle courses\",\"type\":\"module\",\"creationDate\":\"October 2009\",\"author\":\"Antonio Duran\",\"copyright\":\"\",\"authorEmail\":\"antonio.duran.terres@gmail.com\",\"authorUrl\":\"www.joomdle.com\",\"version\":\"1.2.0\",\"description\":\"Joomdle courses\",\"group\":\"\",\"filename\":\"mod_joomdle_courses\"}','{\"linkto\":\"description\",\"guest courses only\":\"0\",\"free courses only\":\"0\",\"sort_by\":\"name\",\"latest courses only\":\"\",\"courses_shown\":\"\",\"categories_shown\":\"\"}','',NULL,NULL,0,0,NULL),(282,0,'Joomdle My Courses','module','mod_joomdle_my_courses','','',0,1,0,0,0,'{\"name\":\"Joomdle My Courses\",\"type\":\"module\",\"creationDate\":\"October 2009\",\"author\":\"Antonio Duran\",\"copyright\":\"\",\"authorEmail\":\"antonio.duran.terres@gmail.com\",\"authorUrl\":\"www.joomldle.com\",\"version\":\"1.2.0\",\"description\":\"Shows Moodle courses the user is in\",\"group\":\"\",\"filename\":\"mod_joomdle_my_courses\"}','{\"group_by_category\":\"0\",\"linkto\":\"moodle\",\"nocourses_text\":\"\",\"show_unenrol_link\":\"0\"}','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `cdxam_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_fields`
--

DROP TABLE IF EXISTS `cdxam_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_fields`
--

LOCK TABLES `cdxam_fields` WRITE;
/*!40000 ALTER TABLE `cdxam_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_fields_categories`
--

DROP TABLE IF EXISTS `cdxam_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_fields_categories`
--

LOCK TABLES `cdxam_fields_categories` WRITE;
/*!40000 ALTER TABLE `cdxam_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_fields_groups`
--

DROP TABLE IF EXISTS `cdxam_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_fields_groups`
--

LOCK TABLES `cdxam_fields_groups` WRITE;
/*!40000 ALTER TABLE `cdxam_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_fields_values`
--

DROP TABLE IF EXISTS `cdxam_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_fields_values`
--

LOCK TABLES `cdxam_fields_values` WRITE;
/*!40000 ALTER TABLE `cdxam_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_filters`
--

DROP TABLE IF EXISTS `cdxam_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_filters`
--

LOCK TABLES `cdxam_finder_filters` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_links`
--

DROP TABLE IF EXISTS `cdxam_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `state` int(11) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_links`
--

LOCK TABLES `cdxam_finder_links` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_links` DISABLE KEYS */;
INSERT INTO `cdxam_finder_links` VALUES (1,'index.php?option=com_content&view=article&id=1','index.php?option=com_content&view=article&id=1:registratsiya&catid=2','Регистрация','','2024-05-14 09:10:17','e20b603d2698b151a4a4825c402012d5',1,1,1,'*','2024-05-14 09:06:19',NULL,'2024-05-14 09:06:19',NULL,0,0,3,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"ru-RU\";i:2;s:0:\"\";i:3;a:25:{s:2:\"id\";i:1;s:5:\"alias\";s:13:\"registratsiya\";s:7:\"summary\";s:0:\"\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:567;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2024-05-14 09:10:17\";s:11:\"modified_by\";i:567;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"0\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"0\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"0\";s:20:\"show_item_navigation\";s:1:\"0\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"0\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"0\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:4;s:8:\"ordering\";i:0;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:15:\"1:registratsiya\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:14:\"Георгий\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-05-14 09:06:19\";i:10;N;i:11;s:68:\"index.php?option=com_content&view=article&id=1:registratsiya&catid=2\";i:12;N;i:13;s:19:\"2024-05-14 09:06:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:14:\"Георгий\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:22:\"Регистрация\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=1\";}'),(2,'index.php?option=com_content&view=article&id=2','index.php?option=com_content&view=article&id=2:vojti&catid=2','Войти','','2024-05-14 09:23:52','102c7cf1b3cad01823a42434fed7502d',1,1,5,'*','2024-05-14 09:23:52',NULL,'2024-05-14 09:23:52',NULL,0,0,3,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:5;i:1;s:5:\"ru-RU\";i:2;s:0:\"\";i:3;a:25:{s:2:\"id\";i:2;s:5:\"alias\";s:5:\"vojti\";s:7:\"summary\";s:0:\"\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:567;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2024-05-14 09:23:52\";s:11:\"modified_by\";i:567;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:7:\"2:vojti\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:14:\"Георгий\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-05-14 09:23:52\";i:10;N;i:11;s:60:\"index.php?option=com_content&view=article&id=2:vojti&catid=2\";i:12;N;i:13;s:19:\"2024-05-14 09:23:52\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:14:\"Георгий\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:10:\"Войти\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=2\";}');
/*!40000 ALTER TABLE `cdxam_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_links_terms`
--

DROP TABLE IF EXISTS `cdxam_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_links_terms`
--

LOCK TABLES `cdxam_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_links_terms` DISABLE KEYS */;
INSERT INTO `cdxam_finder_links_terms` VALUES (1,1,0.17),(1,2,1.7334),(1,3,0.56004),(2,3,0.56004),(1,4,1.24661),(2,8,0.17),(2,9,0.6666),(2,10,0.56661);
/*!40000 ALTER TABLE `cdxam_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_logging`
--

DROP TABLE IF EXISTS `cdxam_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_logging` (
  `searchterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `results` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_logging`
--

LOCK TABLES `cdxam_finder_logging` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_taxonomy`
--

DROP TABLE IF EXISTS `cdxam_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_taxonomy`
--

LOCK TABLES `cdxam_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `cdxam_finder_taxonomy` VALUES (1,0,0,17,0,'','ROOT','root',1,1,'*'),(2,1,1,4,1,'type','Type','type',1,1,''),(3,2,2,3,2,'type/article','Article','article',1,1,''),(4,1,5,8,1,'author','Author','author',1,1,''),(5,4,6,7,2,'author/georgij','Георгий','georgij',1,1,''),(6,1,9,12,1,'category','Category','category',1,1,''),(7,6,10,11,2,'category/uncategorised','Uncategorised','uncategorised',1,1,'*'),(8,1,13,16,1,'language','Language','language',1,1,''),(9,8,14,15,2,'language/faef360113599eb6a0282d981cc199d8','*','faef360113599eb6a0282d981cc199d8',1,1,'');
/*!40000 ALTER TABLE `cdxam_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `cdxam_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_taxonomy_map`
--

LOCK TABLES `cdxam_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_taxonomy_map` DISABLE KEYS */;
INSERT INTO `cdxam_finder_taxonomy_map` VALUES (1,3),(1,5),(1,7),(1,9),(2,3),(2,5),(2,7),(2,9);
/*!40000 ALTER TABLE `cdxam_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_terms`
--

DROP TABLE IF EXISTS `cdxam_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_terms`
--

LOCK TABLES `cdxam_finder_terms` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_terms` DISABLE KEYS */;
INSERT INTO `cdxam_finder_terms` VALUES (1,'1','1',0,0,0.1,'',4,'*'),(2,'registratsiya','registratsiya',0,0,0.8667,'R23632',4,'*'),(3,'георгий','георгий',0,0,0.4667,'г000',5,'*'),(4,'регистрация','регистрация',0,0,0.7333,'р000',4,'*'),(8,'2','2',0,0,0.1,'',1,'*'),(9,'vojti','vojti',0,0,0.3333,'V230',1,'*'),(10,'войти','войти',0,0,0.3333,'в000',1,'*');
/*!40000 ALTER TABLE `cdxam_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_terms_common`
--

DROP TABLE IF EXISTS `cdxam_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_terms_common`
--

LOCK TABLES `cdxam_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_terms_common` DISABLE KEYS */;
INSERT INTO `cdxam_finder_terms_common` VALUES ('a','en',0),('about','en',0),('above','en',0),('after','en',0),('again','en',0),('against','en',0),('all','en',0),('am','en',0),('an','en',0),('and','en',0),('any','en',0),('are','en',0),('aren\'t','en',0),('as','en',0),('at','en',0),('be','en',0),('because','en',0),('been','en',0),('before','en',0),('being','en',0),('below','en',0),('between','en',0),('both','en',0),('but','en',0),('by','en',0),('can\'t','en',0),('cannot','en',0),('could','en',0),('couldn\'t','en',0),('did','en',0),('didn\'t','en',0),('do','en',0),('does','en',0),('doesn\'t','en',0),('doing','en',0),('don\'t','en',0),('down','en',0),('during','en',0),('each','en',0),('few','en',0),('for','en',0),('from','en',0),('further','en',0),('had','en',0),('hadn\'t','en',0),('has','en',0),('hasn\'t','en',0),('have','en',0),('haven\'t','en',0),('having','en',0),('he','en',0),('he\'d','en',0),('he\'ll','en',0),('he\'s','en',0),('her','en',0),('here','en',0),('here\'s','en',0),('hers','en',0),('herself','en',0),('him','en',0),('himself','en',0),('his','en',0),('how','en',0),('how\'s','en',0),('href','ru',0),('i','en',0),('i\'d','en',0),('i\'ll','en',0),('i\'m','en',0),('i\'ve','en',0),('if','en',0),('in','en',0),('into','en',0),('is','en',0),('isn\'t','en',0),('it','en',0),('it\'s','en',0),('its','en',0),('itself','en',0),('let\'s','en',0),('lol','ru',0),('me','en',0),('more','en',0),('most','en',0),('mustn\'t','en',0),('my','en',0),('myself','en',0),('no','en',0),('nor','en',0),('not','en',0),('of','en',0),('off','en',0),('on','en',0),('once','en',0),('only','en',0),('or','en',0),('other','en',0),('ought','en',0),('our','en',0),('ours','en',0),('ourselves','en',0),('out','en',0),('over','en',0),('own','en',0),('same','en',0),('shan\'t','en',0),('she','en',0),('she\'d','en',0),('she\'ll','en',0),('she\'s','en',0),('should','en',0),('shouldn\'t','en',0),('so','en',0),('some','en',0),('such','en',0),('than','en',0),('that','en',0),('that\'s','en',0),('the','en',0),('their','en',0),('theirs','en',0),('them','en',0),('themselves','en',0),('then','en',0),('there','en',0),('there\'s','en',0),('these','en',0),('they','en',0),('they\'d','en',0),('they\'ll','en',0),('they\'re','en',0),('they\'ve','en',0),('this','en',0),('those','en',0),('through','en',0),('to','en',0),('too','en',0),('under','en',0),('until','en',0),('up','en',0),('very','en',0),('was','en',0),('wasn\'t','en',0),('we','en',0),('we\'d','en',0),('we\'ll','en',0),('we\'re','en',0),('we\'ve','en',0),('were','en',0),('weren\'t','en',0),('what','en',0),('what\'s','en',0),('when','en',0),('when\'s','en',0),('where','en',0),('where\'s','en',0),('which','en',0),('while','en',0),('who','en',0),('who\'s','en',0),('whom','en',0),('why','en',0),('why\'s','en',0),('with','en',0),('won\'t','en',0),('would','en',0),('wouldn\'t','en',0),('www','ru',0),('you','en',0),('you\'d','en',0),('you\'ll','en',0),('you\'re','en',0),('you\'ve','en',0),('your','en',0),('yours','en',0),('yourself','en',0),('yourselves','en',0),('а','ru',0),('без','ru',0),('благодарю','ru',0),('благодаря','ru',0),('близко','ru',0),('более','ru',0),('более-менее','ru',0),('большая','ru',0),('больше','ru',0),('большие','ru',0),('большое','ru',0),('большой','ru',0),('будет','ru',0),('будут','ru',0),('будучи','ru',0),('был','ru',0),('была','ru',0),('были','ru',0),('было','ru',0),('быть','ru',0),('в','ru',0),('вам','ru',0),('вами','ru',0),('вас','ru',0),('ваш','ru',0),('ваша','ru',0),('ваше','ru',0),('вашего','ru',0),('вашей','ru',0),('вашем','ru',0),('вашему','ru',0),('ваши','ru',0),('вашим','ru',0),('вашими','ru',0),('ваших','ru',0),('вашу','ru',0),('вблизи','ru',0),('ведь','ru',0),('везде','ru',0),('великолепно','ru',0),('вне','ru',0),('внутри','ru',0),('во','ru',0),('возле','ru',0),('вот','ru',0),('временами','ru',0),('временем','ru',0),('времени','ru',0),('время','ru',0),('все','ru',0),('все-таки','ru',0),('всегда','ru',0),('всего','ru',0),('всеми','ru',0),('всех','ru',0),('всякая','ru',0),('всякие','ru',0),('всякий','ru',0),('всяким','ru',0),('всякими','ru',0),('всяких','ru',0),('всякого','ru',0),('всякое','ru',0),('всякой','ru',0),('всяком','ru',0),('всякому','ru',0),('всякую','ru',0),('всё','ru',0),('всё-таки','ru',0),('выглядит','ru',0),('выглядят','ru',0),('где','ru',0),('да','ru',0),('далеко','ru',0),('действительно','ru',0),('день','ru',0),('для','ru',0),('дне','ru',0),('дней','ru',0),('днем','ru',0),('дни','ru',0),('дню','ru',0),('дня','ru',0),('дням','ru',0),('днями','ru',0),('днях','ru',0),('днём','ru',0),('до','ru',0),('дом','ru',0),('дома','ru',0),('доме','ru',0),('домом','ru',0),('дому','ru',0),('его','ru',0),('ее','ru',0),('если','ru',0),('есть','ru',0),('еще','ru',0),('её','ru',0),('же','ru',0),('за','ru',0),('затем','ru',0),('затем-то','ru',0),('захотел','ru',0),('захотела','ru',0),('захотели','ru',0),('захочу','ru',0),('зачем','ru',0),('зачем-то','ru',0),('знает','ru',0),('знал','ru',0),('знала','ru',0),('знали','ru',0),('знало','ru',0),('знаю','ru',0),('и','ru',0),('и т.д','ru',0),('и т.п','ru',0),('ибо','ru',0),('из','ru',0),('из-под','ru',0),('или','ru',0),('им','ru',0),('имхо','ru',0),('иначе','ru',0),('иногда','ru',0),('искал','ru',0),('искала','ru',0),('искали','ru',0),('искало','ru',0),('искать','ru',0),('итак','ru',0),('их','ru',0),('к','ru',0),('каждый','ru',0),('как','ru',0),('какая','ru',0),('какие','ru',0),('каким','ru',0),('каких','ru',0),('какого','ru',0),('какое','ru',0),('какой','ru',0),('каком','ru',0),('какому','ru',0),('какую','ru',0),('кем','ru',0),('когда','ru',0),('когда-нибудь','ru',0),('кого','ru',0),('ком','ru',0),('кому','ru',0),('которая','ru',0),('которого','ru',0),('которое','ru',0),('которой','ru',0),('котором','ru',0),('которому','ru',0),('которую','ru',0),('которые','ru',0),('который','ru',0),('которым','ru',0),('которых','ru',0),('кстати','ru',0),('кто','ru',0),('кто-то','ru',0),('куда','ru',0),('ли','ru',0),('либо','ru',0),('лол','ru',0),('лучшая','ru',0),('лучшее','ru',0),('лучшие','ru',0),('лучший','ru',0),('любая','ru',0),('любого','ru',0),('любое','ru',0),('любой','ru',0),('любому','ru',0),('любую','ru',0),('любые','ru',0),('любым','ru',0),('любыми','ru',0),('любых','ru',0),('маленькая','ru',0),('маленький','ru',0),('маленьким','ru',0),('маленького','ru',0),('маленькое','ru',0),('маленькой','ru',0),('маленьком','ru',0),('маленькому','ru',0),('маленькую','ru',0),('между','ru',0),('менее','ru',0),('меньше','ru',0),('меня','ru',0),('мир','ru',0),('мне','ru',0),('много','ru',0),('мной','ru',0),('мог','ru',0),('могла','ru',0),('могли','ru',0),('могло','ru',0),('могу','ru',0),('мое','ru',0),('можем','ru',0),('может','ru',0),('мои','ru',0),('мой','ru',0),('моя','ru',0),('моё','ru',0),('мы','ru',0),('на','ru',0),('над','ru',0),('назад','ru',0),('наиболее','ru',0),('наименее','ru',0),('нам','ru',0),('нами','ru',0),('напишет','ru',0),('напишу','ru',0),('напишут','ru',0),('например','ru',0),('нас','ru',0),('наш','ru',0),('наша','ru',0),('наше','ru',0),('нашего','ru',0),('нашей','ru',0),('нашем','ru',0),('нашему','ru',0),('наши','ru',0),('нашим','ru',0),('нашими','ru',0),('наших','ru',0),('нашу','ru',0),('не','ru',0),('него','ru',0),('недавно','ru',0),('нее','ru',0),('немного','ru',0),('нет','ru',0),('неужели','ru',0),('неё','ru',0),('ни','ru',0),('никогда','ru',0),('никто','ru',0),('ним','ru',0),('ничего','ru',0),('ничто','ru',0),('но','ru',0),('новая','ru',0),('нового','ru',0),('новое','ru',0),('новой','ru',0),('новом','ru',0),('новому','ru',0),('новостей','ru',0),('новости','ru',0),('новость','ru',0),('новостями','ru',0),('новую','ru',0),('новый','ru',0),('новым','ru',0),('новых','ru',0),('ну','ru',0),('нужен','ru',0),('нужна','ru',0),('нужно','ru',0),('нужны','ru',0),('о','ru',0),('об','ru',0),('однако','ru',0),('около','ru',0),('он','ru',0),('она','ru',0),('они','ru',0),('оно','ru',0),('от','ru',0),('ответ','ru',0),('ответил','ru',0),('ответила','ru',0),('ответили','ru',0),('ответило','ru',0),('откуда','ru',0),('отнюдь','ru',0),('перед','ru',0),('писал','ru',0),('писала','ru',0),('писали','ru',0),('писало','ru',0),('пишет','ru',0),('пишу','ru',0),('пишут','ru',0),('плохо','ru',0),('по','ru',0),('поблизости','ru',0),('под','ru',0),('пожалуйста','ru',0),('получала','ru',0),('получали','ru',0),('получало','ru',0),('получать','ru',0),('получил','ru',0),('получила','ru',0),('получили','ru',0),('получило','ru',0),('получить','ru',0),('пор','ru',0),('пора','ru',0),('порам','ru',0),('порами','ru',0),('поре','ru',0),('порой','ru',0),('пору','ru',0),('поры','ru',0),('после','ru',0),('потому','ru',0),('почему','ru',0),('почти','ru',0),('пошли','ru',0),('правда','ru',0),('прежде','ru',0),('примерно','ru',0),('про','ru',0),('просто','ru',0),('прошел','ru',0),('прошла','ru',0),('прошли','ru',0),('прошло','ru',0),('прошёл','ru',0),('пускай','ru',0),('пусть','ru',0),('раз','ru',0),('раза','ru',0),('разве','ru',0),('реже','ru',0),('с','ru',0),('сам','ru',0),('сама','ru',0),('самая','ru',0),('сами','ru',0),('самим','ru',0),('самими','ru',0),('самих','ru',0),('само','ru',0),('самого','ru',0),('самое','ru',0),('самой','ru',0),('самом','ru',0),('самому','ru',0),('саму','ru',0),('самую','ru',0),('самые','ru',0),('самый','ru',0),('самым','ru',0),('самыми','ru',0),('самых','ru',0),('сделал','ru',0),('сделала','ru',0),('сделали','ru',0),('сделало','ru',0),('сейчас','ru',0),('сквозь','ru',0),('скорее','ru',0),('скоро','ru',0),('случае','ru',0),('случаем','ru',0),('случай','ru',0),('случаю','ru',0),('случая','ru',0),('смотря','ru',0),('со','ru',0),('совсем','ru',0),('спасибо','ru',0),('старая','ru',0),('старого','ru',0),('старое','ru',0),('старой','ru',0),('старом','ru',0),('старому','ru',0),('старую','ru',0),('старый','ru',0),('старым','ru',0),('старых','ru',0),('так','ru',0),('также','ru',0),('твое','ru',0),('твоего','ru',0),('твои','ru',0),('твой','ru',0),('твою','ru',0),('твоя','ru',0),('твоё','ru',0),('те','ru',0),('тебя','ru',0),('тем','ru',0),('теми','ru',0),('теперь','ru',0),('тех','ru',0),('тобой','ru',0),('тогда','ru',0),('того','ru',0),('тоже','ru',0),('той','ru',0),('только','ru',0),('туда','ru',0),('у','ru',0),('ужасно','ru',0),('уже','ru',0),('узнает','ru',0),('узнают','ru',0),('ушел','ru',0),('ушла','ru',0),('ушли','ru',0),('ушло','ru',0),('ушёл','ru',0),('ходил','ru',0),('ходила','ru',0),('ходили','ru',0),('ходило','ru',0),('ходит','ru',0),('ходить','ru',0),('ходят','ru',0),('хорошо','ru',0),('хотел','ru',0),('хотела','ru',0),('хотели','ru',0),('хотело','ru',0),('хотя','ru',0),('хочу','ru',0),('чаще','ru',0),('чего','ru',0),('чем','ru',0),('чем-то','ru',0),('чему','ru',0),('через','ru',0),('что','ru',0),('чтоб','ru',0),('чтобы','ru',0),('чье','ru',0),('чьей','ru',0),('чьему','ru',0),('чьи','ru',0),('чьим','ru',0),('чьими','ru',0),('чьих','ru',0),('чья','ru',0),('чьё','ru',0),('чём','ru',0),('чём-то','ru',0),('шел','ru',0),('шла','ru',0),('шли','ru',0),('шло','ru',0),('шёл','ru',0),('эта','ru',0),('эти','ru',0),('этим','ru',0),('этих','ru',0),('это','ru',0),('этой','ru',0),('этому','ru',0),('этот','ru',0),('эту','ru',0),('я','ru',0),('является','ru',0),('являются','ru',0);
/*!40000 ALTER TABLE `cdxam_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_tokens`
--

DROP TABLE IF EXISTS `cdxam_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_tokens`
--

LOCK TABLES `cdxam_finder_tokens` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `cdxam_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL DEFAULT '0',
  `total_weight` float unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_tokens_aggregate`
--

LOCK TABLES `cdxam_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_finder_types`
--

DROP TABLE IF EXISTS `cdxam_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_finder_types`
--

LOCK TABLES `cdxam_finder_types` WRITE;
/*!40000 ALTER TABLE `cdxam_finder_types` DISABLE KEYS */;
INSERT INTO `cdxam_finder_types` VALUES (1,'Category',''),(2,'Contact',''),(3,'Article',''),(4,'News Feed',''),(5,'Tag',''),(6,'Forum Post','txt');
/*!40000 ALTER TABLE `cdxam_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_guidedtour_steps`
--

DROP TABLE IF EXISTS `cdxam_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_guidedtour_steps`
--

LOCK TABLES `cdxam_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `cdxam_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `cdxam_guidedtour_steps` VALUES (1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',6,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',7,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(8,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',8,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',9,'bottom','.button-new',2,1,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',10,'bottom','#jform_title',2,2,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',11,'bottom','#jform_description,#jform_description_ifr',2,3,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',12,'bottom','#jform_published',2,3,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',13,'top','#jform_position',2,3,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',14,'top','#jform_target',2,3,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',15,'top','#jform_type',2,3,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',16,'bottom','#save-group-children-save .button-save',2,1,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',17,'bottom','',0,1,'','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(18,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',18,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',19,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',20,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',21,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',22,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',23,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',24,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',25,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',26,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',27,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',28,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',29,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',30,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(31,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',31,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',32,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',33,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',34,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',35,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',36,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',37,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',38,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',39,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',40,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',41,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',42,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(43,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',43,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',44,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',45,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',46,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',47,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',48,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(49,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',49,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',50,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',51,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',52,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',53,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',54,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',55,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',56,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',57,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',58,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',59,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(60,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',60,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',61,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',62,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',63,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',64,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',65,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',66,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',67,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',68,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',69,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(70,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',70,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',71,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',72,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',73,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',74,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',75,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',76,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',77,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',78,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',79,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',80,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',81,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(82,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',82,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',83,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',84,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',85,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',86,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',87,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',88,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',89,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',90,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',91,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',92,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',93,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(94,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',94,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',95,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',96,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',97,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',98,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',99,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',100,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(101,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',101,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',102,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',103,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',104,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',105,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',106,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',107,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',108,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',109,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',110,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*',''),(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',111,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,'*','');
/*!40000 ALTER TABLE `cdxam_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_guidedtours`
--

DROP TABLE IF EXISTS `cdxam_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_guidedtours`
--

LOCK TABLES `cdxam_guidedtours` WRITE;
/*!40000 ALTER TABLE `cdxam_guidedtours` DISABLE KEYS */;
INSERT INTO `cdxam_guidedtours` VALUES (1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"*\"]','administrator/index.php?option=com_content&view=articles','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"*\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"*\"]','administrator/index.php?option=com_menus&view=menus','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"*\"]','administrator/index.php?option=com_tags&view=tags','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"*\"]','administrator/index.php?option=com_banners&view=banners','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"*\"]','administrator/index.php?option=com_contact&view=contacts','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"*\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"*\"]','administrator/index.php?option=com_finder&view=filters','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1),(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"*\"]','administrator/index.php?option=com_users&view=users','2024-05-13 10:02:58',0,'2024-05-13 10:02:58',0,NULL,NULL,1,'*','',1);
/*!40000 ALTER TABLE `cdxam_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_history`
--

DROP TABLE IF EXISTS `cdxam_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_history`
--

LOCK TABLES `cdxam_history` WRITE;
/*!40000 ALTER TABLE `cdxam_history` DISABLE KEYS */;
INSERT INTO `cdxam_history` VALUES (1,'com_content.article.1','','2024-05-14 09:06:19',567,1638,'60062aab64bd666b7d731f1549883c5c59f38af5','{\"id\":1,\"asset_id\":118,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"alias\":\"registratsiya\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-05-14 09:06:19\",\"created_by\":567,\"created_by_alias\":\"\",\"modified\":\"2024-05-14 09:06:19\",\"modified_by\":567,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-05-14 09:06:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),(2,'com_content.article.1','','2024-05-14 09:09:23',567,1660,'fdcf82637a9991d705b8fc29a4810506aa978820','{\"id\":\"1\",\"asset_id\":118,\"title\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\",\"alias\":\"registratsiya\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-05-14 09:06:19\",\"created_by\":\"567\",\"created_by_alias\":\"\",\"modified\":\"2024-05-14 09:09:23\",\"modified_by\":567,\"checked_out\":567,\"checked_out_time\":\"2024-05-14 09:08:47\",\"publish_up\":\"2024-05-14 09:06:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":2,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0),(3,'com_content.article.2','','2024-05-14 09:23:52',567,1594,'4cbc50a072315308eb56ed0d6264003dc7ce6253','{\"id\":2,\"asset_id\":119,\"title\":\"\\u0412\\u043e\\u0439\\u0442\\u0438\",\"alias\":\"vojti\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-05-14 09:23:52\",\"created_by\":567,\"created_by_alias\":\"\",\"modified\":\"2024-05-14 09:23:52\",\"modified_by\":567,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-05-14 09:23:52\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":5,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',0);
/*!40000 ALTER TABLE `cdxam_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_bundles`
--

DROP TABLE IF EXISTS `cdxam_joomdle_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_bundles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses` text NOT NULL,
  `cost` float NOT NULL,
  `currency` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_bundles`
--

LOCK TABLES `cdxam_joomdle_bundles` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_bundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_course_applications`
--

DROP TABLE IF EXISTS `cdxam_joomdle_course_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_course_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `application_date` datetime DEFAULT NULL,
  `confirmation_date` datetime DEFAULT NULL,
  `motivation` text NOT NULL,
  `experience` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_course_applications`
--

LOCK TABLES `cdxam_joomdle_course_applications` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_course_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_course_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_course_forums`
--

DROP TABLE IF EXISTS `cdxam_joomdle_course_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_course_forums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moodle_forum_id` int(11) NOT NULL,
  `kunena_forum_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_course_forums`
--

LOCK TABLES `cdxam_joomdle_course_forums` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_course_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_course_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_course_groups`
--

DROP TABLE IF EXISTS `cdxam_joomdle_course_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_course_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_course_groups`
--

LOCK TABLES `cdxam_joomdle_course_groups` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_course_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_course_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_field_mappings`
--

DROP TABLE IF EXISTS `cdxam_joomdle_field_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_field_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomla_app` varchar(45) NOT NULL,
  `joomla_field` varchar(45) NOT NULL,
  `moodle_field` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_field_mappings`
--

LOCK TABLES `cdxam_joomdle_field_mappings` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_field_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_field_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_mailinglists`
--

DROP TABLE IF EXISTS `cdxam_joomdle_mailinglists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_mailinglists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_mailinglists`
--

LOCK TABLES `cdxam_joomdle_mailinglists` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_mailinglists` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_mailinglists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_products`
--

DROP TABLE IF EXISTS `cdxam_joomdle_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_products`
--

LOCK TABLES `cdxam_joomdle_products` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_profiletypes`
--

DROP TABLE IF EXISTS `cdxam_joomdle_profiletypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_profiletypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiletype_id` int(11) NOT NULL,
  `create_on_moodle` int(11) NOT NULL,
  `moodle_role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_profiletypes`
--

LOCK TABLES `cdxam_joomdle_profiletypes` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_profiletypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_profiletypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_joomdle_purchased_courses`
--

DROP TABLE IF EXISTS `cdxam_joomdle_purchased_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_joomdle_purchased_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_joomdle_purchased_courses`
--

LOCK TABLES `cdxam_joomdle_purchased_courses` WRITE;
/*!40000 ALTER TABLE `cdxam_joomdle_purchased_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_joomdle_purchased_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_aliases`
--

DROP TABLE IF EXISTS `cdxam_kunena_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_aliases` (
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `alias` (`alias`),
  KEY `state` (`state`),
  KEY `item` (`item`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_aliases`
--

LOCK TABLES `cdxam_kunena_aliases` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_aliases` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_aliases` VALUES ('interesnye-resursy','catid','3',0),('it-khab','catid','1',0),('poisk-edinomyshlennikov','catid','2',0);
/*!40000 ALTER TABLE `cdxam_kunena_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_announcement`
--

DROP TABLE IF EXISTS `cdxam_kunena_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_announcement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_announcement`
--

LOCK TABLES `cdxam_kunena_announcement` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_attachments`
--

DROP TABLE IF EXISTS `cdxam_kunena_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `hash` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filetype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename_real` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Filename for downloads',
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inline` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mesid` (`mesid`),
  KEY `userid` (`userid`),
  KEY `hash` (`hash`),
  KEY `filename` (`filename`),
  KEY `filename_real` (`filename_real`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_attachments`
--

LOCK TABLES `cdxam_kunena_attachments` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_categories`
--

DROP TABLE IF EXISTS `cdxam_kunena_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT '0',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pubAccess` int(11) NOT NULL DEFAULT '1',
  `pubRecurse` tinyint(4) DEFAULT '1',
  `adminAccess` int(11) NOT NULL DEFAULT '0',
  `adminRecurse` tinyint(4) DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text COLLATE utf8mb4_unicode_ci,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allowAnonymous` tinyint(4) NOT NULL DEFAULT '0',
  `postAnonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headerdesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topictemplate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_sfx` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowPolls` tinyint(4) NOT NULL DEFAULT '0',
  `topicOrdering` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowRatings` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `category_access` (`accesstype`,`access`),
  KEY `published_pubaccess_id` (`published`,`pubAccess`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_categories`
--

LOCK TABLES `cdxam_kunena_categories` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_categories` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_categories` VALUES (1,0,'IT-хаб','it-khab','',0,0,'joomla.group',1,1,1,8,1,1,1,'THIS',0,'0000-00-00 00:00:00',0,0,0,0,'','','','',0,'lastpost','default',0,0,0,0,0,'{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}',0),(2,1,'Поиск единомышленников','poisk-edinomyshlennikov','',0,0,'joomla.level',1,1,1,8,1,1,1,'THIS',567,'2024-05-14 00:59:16',0,0,0,0,'','','','',0,'lastpost','default',2,4,1,4,1715666889,'{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}',0),(3,1,'Интересные ресурсы','interesnye-resursy','',0,0,'joomla.level',1,1,1,8,1,2,1,'THIS',0,'0000-00-00 00:00:00',0,0,0,0,'','','','',0,'lastpost','default',0,0,0,0,0,'{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}',0);
/*!40000 ALTER TABLE `cdxam_kunena_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_configuration`
--

DROP TABLE IF EXISTS `cdxam_kunena_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_configuration`
--

LOCK TABLES `cdxam_kunena_configuration` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_configuration` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_configuration` VALUES (1,'{\"boardTitle\":\"Kunena\",\"email\":\"\",\"boardOffline\":\"0\",\"offlineMessage\":\"The Forum is currently offline for maintenance.\\r\\nCheck back soon!\",\"enableRss\":\"0\",\"threadsPerPage\":\"20\",\"messagesPerPage\":\"6\",\"messagesPerPageSearch\":\"15\",\"showHistory\":\"1\",\"historyLimit\":\"6\",\"showNew\":\"1\",\"disableEmoticons\":0,\"template\":\"aurelia\",\"showAnnouncement\":\"1\",\"avatarOnCategory\":\"1\",\"showChildCatIcon\":\"1\",\"rteWidth\":450,\"rteHeight\":300,\"enableForumJump\":\"1\",\"reportMsg\":\"1\",\"username\":\"1\",\"askEmail\":\"0\",\"showEmail\":\"0\",\"showUserStats\":\"1\",\"showKarma\":\"1\",\"userEdit\":\"1\",\"userEditTime\":\"0\",\"userEditTimeGrace\":\"600\",\"editMarkup\":\"1\",\"allowSubscriptions\":\"1\",\"subscriptionsChecked\":\"1\",\"allowFavorites\":\"1\",\"maxSig\":\"300\",\"regOnly\":\"0\",\"pubWrite\":\"0\",\"floodProtection\":\"0\",\"mailModerators\":\"0\",\"mailAdministrators\":\"0\",\"captcha\":\"0\",\"mailFull\":\"1\",\"allowAvatarUpload\":\"1\",\"allowAvatarGallery\":\"1\",\"avatarQuality\":\"75\",\"avatarSize\":\"2048\",\"imageHeight\":\"800\",\"imageWidth\":\"800\",\"imageSize\":\"150\",\"fileTypes\":\"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2\",\"fileSize\":\"120\",\"showRanking\":\"1\",\"rankImages\":\"1\",\"userlistRows\":\"30\",\"userlistOnline\":\"1\",\"userlistAvatar\":\"1\",\"userlistPosts\":\"1\",\"userlistKarma\":\"1\",\"userlistEmail\":\"0\",\"userlistJoinDate\":\"1\",\"userlistLastVisitDate\":\"1\",\"userlistUserHits\":\"1\",\"latestCategory\":\"0\",\"showStats\":\"1\",\"showWhoIsOnline\":\"1\",\"showGenStats\":\"1\",\"showPopUserStats\":\"1\",\"popUserCount\":\"5\",\"showPopSubjectStats\":\"1\",\"popSubjectCount\":\"5\",\"showSpoilerTag\":1,\"showVideoTag\":1,\"showEbayTag\":1,\"trimLongUrls\":\"1\",\"trimLongUrlsFront\":\"40\",\"trimLongUrlsBack\":\"20\",\"autoEmbedYoutube\":\"1\",\"autoEmbedEbay\":\"0\",\"ebayLanguageCode\":\"en-us\",\"sessionTimeOut\":\"1800\",\"highlightCode\":\"0\",\"rssType\":\"topic\",\"rssTimeLimit\":\"1 month\",\"rssLimit\":\"100\",\"rssIncludedCategories\":\"0\",\"rssExcludedCategories\":\"0\",\"rssSpecification\":\"rss2.0\",\"rssAllowHtml\":\"1\",\"rssAuthorFormat\":\"name\",\"rssAuthorInTitle\":\"1\",\"rssWordCount\":\"0\",\"rssOldTitles\":\"1\",\"rssCache\":\"900\",\"defaultPage\":\"recent\",\"defaultSort\":\"asc\",\"sef\":\"0\",\"showImgForGuest\":\"1\",\"showFileForGuest\":\"1\",\"pollNbOptions\":\"4\",\"pollAllowVoteOne\":\"1\",\"pollEnabled\":\"1\",\"popPollsCount\":\"5\",\"showPopPollStats\":\"1\",\"pollTimeBtVotes\":\"00:15:00\",\"pollNbVotesByUser\":\"100\",\"pollResultsUserslist\":\"1\",\"allowUserEditPoll\":0,\"maxPersonalText\":50,\"orderingSystem\":\"mesid\",\"postDateFormat\":\"ago\",\"postDateFormatHover\":\"datetime\",\"hideIp\":\"1\",\"imageTypes\":\"jpg,jpeg,gif,png\",\"checkMimeTypes\":\"1\",\"imageMimeTypes\":\"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png\",\"imageQuality\":\"50\",\"thumbHeight\":\"32\",\"thumbWidth\":\"32\",\"hideUserProfileInfo\":\"put_empty\",\"boxGhostMessage\":\"0\",\"userDeleteMessage\":\"2\",\"latestCategoryIn\":\"1\",\"topicIcons\":\"1\",\"debug\":\"0\",\"catsAutoSubscribed\":0,\"showBannedReason\":\"0\",\"showThankYou\":\"1\",\"showPopThankYouStats\":\"1\",\"popThanksCount\":\"5\",\"modSeeDeleted\":\"0\",\"bbcodeImgSecure\":\"text\",\"listCatShowModerators\":\"1\",\"lightbox\":\"1\",\"showListTime\":\"720\",\"showSessionType\":\"2\",\"showSessionStartTime\":\"1800\",\"userlistAllowed\":\"1\",\"userlistCountUsers\":\"1\",\"enableThreadedLayouts\":0,\"categorySubscriptions\":\"post\",\"topicSubscriptions\":\"every\",\"pubProfile\":\"1\",\"thankYouMax\":\"10\",\"emailRecipientCount\":\"0\",\"emailRecipientPrivacy\":\"bcc\",\"emailVisibleAddress\":\"\",\"captchaPostLimit\":\"0\",\"imageUpload\":\"everybody\",\"fileUpload\":\"registered\",\"topicLayout\":\"flat\",\"timeToCreatePage\":\"1\",\"showImgFilesManageProfile\":\"1\",\"holdNewUsersPosts\":\"0\",\"holdGuestPosts\":\"0\",\"attachmentLimit\":\"8\",\"pickupCategory\":\"0\",\"articleDisplay\":\"intro\",\"sendEmails\":\"1\",\"fallbackEnglish\":\"1\",\"cache\":\"0\",\"cacheTime\":\"60\",\"ebayAffiliateId\":\"5337089937\",\"ipTracking\":\"1\",\"rssFeedBurnerUrl\":\"\",\"autoLink\":\"1\",\"accessComponent\":\"1\",\"statsLinkAllowed\":\"1\",\"superAdminUserlist\":\"0\",\"attachmentProtection\":\"0\",\"categoryIcons\":1,\"avatarCrop\":\"0\",\"userReport\":\"1\",\"searchTime\":\"365\",\"teaser\":\"0\",\"ebayLanguage\":\"0\",\"ebayApiKey\":\"\",\"ebayCertId\":\"\",\"twitterConsumerKey\":\"\",\"twitterConsumerSecret\":\"\",\"allowChangeSubject\":\"1\",\"maxLinks\":\"6\",\"readOnly\":\"0\",\"ratingEnabled\":\"0\",\"urlSubjectTopic\":\"0\",\"logModeration\":\"0\",\"attachStart\":\"0\",\"attachEnd\":\"14\",\"googleMapApiKey\":\"\",\"attachmentUtf8\":\"1\",\"autoEmbedSoundcloud\":\"0\",\"emailHeader\":\"media\\/kunena\\/email\\/hero-wide.png\",\"userStatus\":\"1\",\"signature\":\"1\",\"personal\":\"1\",\"social\":\"1\",\"plainEmail\":\"0\",\"moderatorPermDelete\":\"0\",\"avatarTypes\":\"gif,jpeg,jpg,png\",\"smartLinking\":\"0\",\"defaultAvatar\":\"nophoto.png\",\"defaultAvatarSmall\":\"s_nophoto.png\",\"stopForumSpamKey\":\"\",\"quickReply\":\"1\",\"avatarEdit\":\"0\",\"activeMenuItem\":\"\",\"mainMenuId\":\"\",\"homeId\":\"\",\"indexId\":\"\",\"moderatorsId\":\"\",\"topicListId\":\"\",\"miscId\":\"\",\"profileId\":\"\",\"searchId\":\"\",\"custom_id\":\"\",\"avatarType\":\"0\",\"sefRedirect\":\"0\",\"allowEditPoll\":\"1\",\"useSystemEmails\":\"0\",\"autoEmbedInstagram\":\"0\",\"disableRe\":\"0\",\"email_sender_name\":\"\",\"display_filename_attachment\":\"0\",\"new_users_prevent_post_url_images\":\"0\",\"minimal_user_posts_add_url_image\":\"10\",\"utmSource\":\"0\",\"plugins\":[],\"emailHeaderSizeY\":\"560\",\"emailHeaderSizeX\":\"560\",\"moderator_id\":null,\"profiler\":\"0\",\"pickup_category\":null,\"privateMessage\":\"0\",\"datePickerFormat\":\"mm\\/dd\\/yyyy\",\"sendMailUserBanned\":\"0\",\"mailBodyUserBanned\":\"\"}');
/*!40000 ALTER TABLE `cdxam_kunena_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_karma`
--

DROP TABLE IF EXISTS `cdxam_kunena_karma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_karma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `target_userid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_karma`
--

LOCK TABLES `cdxam_kunena_karma` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_karma` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_karma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_logs`
--

DROP TABLE IF EXISTS `cdxam_kunena_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `target_user` int(11) DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `operation` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `category_id` (`category_id`),
  KEY `topic_id` (`topic_id`),
  KEY `target_user` (`target_user`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_logs`
--

LOCK TABLES `cdxam_kunena_logs` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_messages`
--

DROP TABLE IF EXISTS `cdxam_kunena_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext COLLATE utf8mb4_unicode_ci,
  `subject` tinytext COLLATE utf8mb4_unicode_ci,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `ip` (`ip`),
  KEY `userid` (`userid`),
  KEY `locked` (`locked`),
  KEY `parent_hits` (`parent`,`hits`),
  KEY `catid_parent` (`catid`,`parent`),
  KEY `time_hold` (`time`,`hold`),
  KEY `hold` (`hold`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_messages`
--

LOCK TABLES `cdxam_kunena_messages` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_messages` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_messages` VALUES (1,0,1,2,'oleg_1',568,NULL,'Ищу команду для разработки на Unity!',1715646757,'212.14.222.97',0,0,0,0,0,0,NULL,NULL,NULL),(3,0,3,2,'admin',567,NULL,'Нужен программист на Unity!',1715647458,'195.82.143.111',0,0,0,0,0,0,NULL,NULL,NULL),(4,1,1,2,'admin',567,NULL,'Ищу команду для разработки на Unity!',1715666889,'212.14.222.97',0,0,0,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cdxam_kunena_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_messages_text`
--

DROP TABLE IF EXISTS `cdxam_kunena_messages_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_messages_text`
--

LOCK TABLES `cdxam_kunena_messages_text` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_messages_text` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_messages_text` VALUES (1,'Ищу заинтересованных в разработке проектов на Unity! Есть идея оцифровать экспонаты Музея информатики и сделать в Unity копию музея для проведения виртуальных экскурсий.\r\nНужны:\r\n1. C# программист с опытом (или без) в разработке на Unity\r\n2. 3D моделлер'),(3,'Ищем программиста на Unity'),(4,'Готов присоединиться в качестве 3d-моделлера!');
/*!40000 ALTER TABLE `cdxam_kunena_messages_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_polls`
--

DROP TABLE IF EXISTS `cdxam_kunena_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `threadid` (`threadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_polls`
--

LOCK TABLES `cdxam_kunena_polls` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_polls_options`
--

DROP TABLE IF EXISTS `cdxam_kunena_polls_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_polls_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_polls_options`
--

LOCK TABLES `cdxam_kunena_polls_options` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_polls_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_polls_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_polls_users`
--

DROP TABLE IF EXISTS `cdxam_kunena_polls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `lastvote` int(11) DEFAULT NULL,
  UNIQUE KEY `pollid` (`pollid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_polls_users`
--

LOCK TABLES `cdxam_kunena_polls_users` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_polls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_polls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_private`
--

DROP TABLE IF EXISTS `cdxam_kunena_private`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_private` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `attachments` tinyint(4) NOT NULL DEFAULT '0',
  `subject` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `author_id` (`author_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_private`
--

LOCK TABLES `cdxam_kunena_private` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_private` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_private` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_private_attachment_map`
--

DROP TABLE IF EXISTS `cdxam_kunena_private_attachment_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_private_attachment_map` (
  `private_id` int(11) NOT NULL,
  `attachment_id` int(11) NOT NULL,
  PRIMARY KEY (`private_id`,`attachment_id`),
  KEY `attachment_id` (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_private_attachment_map`
--

LOCK TABLES `cdxam_kunena_private_attachment_map` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_private_attachment_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_private_attachment_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_private_post_map`
--

DROP TABLE IF EXISTS `cdxam_kunena_private_post_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_private_post_map` (
  `private_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`private_id`,`message_id`),
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_private_post_map`
--

LOCK TABLES `cdxam_kunena_private_post_map` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_private_post_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_private_post_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_private_user_map`
--

DROP TABLE IF EXISTS `cdxam_kunena_private_user_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_private_user_map` (
  `private_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `replied_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`private_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_private_user_map`
--

LOCK TABLES `cdxam_kunena_private_user_map` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_private_user_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_private_user_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_ranks`
--

DROP TABLE IF EXISTS `cdxam_kunena_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_ranks` (
  `rankId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rankTitle` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rankMin` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rankSpecial` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rankImage` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`rankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_ranks`
--

LOCK TABLES `cdxam_kunena_ranks` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_rate`
--

DROP TABLE IF EXISTS `cdxam_kunena_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `rate` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_rate`
--

LOCK TABLES `cdxam_kunena_rate` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_sessions`
--

DROP TABLE IF EXISTS `cdxam_kunena_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text COLLATE utf8mb4_unicode_ci,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text COLLATE utf8mb4_unicode_ci,
  `currvisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `currvisit` (`currvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_sessions`
--

LOCK TABLES `cdxam_kunena_sessions` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_sessions` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_sessions` VALUES (567,'na',1715679477,'0',1715695439),(568,'na',1715670389,'0',1715723820),(569,'na',1715732776,'0',1715741202);
/*!40000 ALTER TABLE `cdxam_kunena_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_smileys`
--

DROP TABLE IF EXISTS `cdxam_kunena_smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_smileys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `greylocation` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_smileys`
--

LOCK TABLES `cdxam_kunena_smileys` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_smileys` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_smileys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_thankyou`
--

DROP TABLE IF EXISTS `cdxam_kunena_thankyou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  UNIQUE KEY `postid` (`postid`,`userid`),
  KEY `userid` (`userid`),
  KEY `targetuserid` (`targetuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_thankyou`
--

LOCK TABLES `cdxam_kunena_thankyou` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_thankyou` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_thankyou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_topics`
--

DROP TABLE IF EXISTS `cdxam_kunena_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext COLLATE utf8mb4_unicode_ci,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `label_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text COLLATE utf8mb4_unicode_ci,
  `first_post_guest_name` tinytext COLLATE utf8mb4_unicode_ci,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text COLLATE utf8mb4_unicode_ci,
  `last_post_guest_name` tinytext COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(6) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `locked` (`locked`),
  KEY `hold` (`hold`),
  KEY `posts` (`posts`),
  KEY `hits` (`hits`),
  KEY `first_post_userid` (`first_post_userid`),
  KEY `last_post_userid` (`last_post_userid`),
  KEY `first_post_time` (`first_post_time`),
  KEY `last_post_time` (`last_post_time`),
  KEY `last_post_id` (`last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_topics`
--

LOCK TABLES `cdxam_kunena_topics` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_topics` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_topics` VALUES (1,2,'Ищу команду для разработки на Unity!',0,0,0,0,0,2,14,0,0,0,1,1715646757,568,'Ищу заинтересованных в разработке проектов на Unity! Есть идея оцифровать экспонаты Музея информатики и сделать в Unity копию музея для проведения виртуальных экскурсий.\r\nНужны:\r\n1. C# программист с опытом (или без) в разработке на Unity\r\n2. 3D моделлер','oleg_1',4,1715666889,567,'Готов присоединиться в качестве 3d-моделлера!','admin',0,''),(3,2,'Нужен программист на Unity!',0,0,0,0,0,1,14,0,0,0,3,1715647458,567,'Ищем программиста на Unity','admin',3,1715647458,567,'Ищем программиста на Unity','admin',0,'');
/*!40000 ALTER TABLE `cdxam_kunena_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_user_categories`
--

DROP TABLE IF EXISTS `cdxam_kunena_user_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` int(11) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_subscribed` (`category_id`,`subscribed`),
  KEY `role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_user_categories`
--

LOCK TABLES `cdxam_kunena_user_categories` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_user_categories` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_user_categories` VALUES (567,0,0,1714391004,0,''),(568,0,0,1714436865,0,''),(569,0,0,1714522919,0,'');
/*!40000 ALTER TABLE `cdxam_kunena_user_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_user_read`
--

DROP TABLE IF EXISTS `cdxam_kunena_user_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `category_user_id` (`category_id`,`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_user_read`
--

LOCK TABLES `cdxam_kunena_user_read` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_user_read` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_user_read` VALUES (567,1,2,4,1715695416),(567,3,2,3,1715666054),(568,1,2,4,1715722457),(568,3,2,3,1715648205),(569,1,2,4,1715741202),(569,3,2,3,1715732559);
/*!40000 ALTER TABLE `cdxam_kunena_user_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_user_topics`
--

DROP TABLE IF EXISTS `cdxam_kunena_user_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `posts` (`posts`),
  KEY `owner` (`owner`),
  KEY `favorite` (`favorite`),
  KEY `subscribed` (`subscribed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_user_topics`
--

LOCK TABLES `cdxam_kunena_user_topics` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_user_topics` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_user_topics` VALUES (567,1,2,1,4,0,0,1,NULL),(567,3,2,1,3,1,0,1,NULL),(568,1,2,1,1,1,1,1,NULL),(569,1,2,0,0,0,1,0,NULL),(569,3,2,0,0,0,1,0,NULL);
/*!40000 ALTER TABLE `cdxam_kunena_user_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_users`
--

DROP TABLE IF EXISTS `cdxam_kunena_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `view` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `signature` text COLLATE utf8mb4_unicode_ci,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT '1000-01-01 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT '0',
  `karma` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext COLLATE utf8mb4_unicode_ci,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icq` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bebo` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digg` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vk` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `microsoft` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x_social` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myspace` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_company` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delicious` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qqsocial` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogspot` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reddit` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsky_app` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flickr` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qzone` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vimeo` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weibo` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechat` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yim` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ok` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `websitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `websiteurl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `canSubscribe` tinyint(1) NOT NULL DEFAULT '-1',
  `userListtime` int(11) DEFAULT '-2',
  `thankyou` int(11) DEFAULT '0',
  `ip` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialshare` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userid`),
  KEY `group_id` (`group_id`),
  KEY `posts` (`posts`),
  KEY `uhits` (`uhits`),
  KEY `banned` (`banned`),
  KEY `moderator` (`moderator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_users`
--

LOCK TABLES `cdxam_kunena_users` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_users` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_users` VALUES (567,0,'','',NULL,0,'1000-01-01 00:00:00',0,2,NULL,0,0,1,11,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,-1,-2,0,'212.14.222.97',1),(568,0,'','',NULL,0,'1000-01-01 00:00:00',0,1,NULL,0,0,1,6,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,-1,-2,0,'212.14.222.97',1),(569,0,'','',NULL,0,'1000-01-01 00:00:00',0,0,NULL,0,0,1,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,-1,-2,0,NULL,1);
/*!40000 ALTER TABLE `cdxam_kunena_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_users_banned`
--

DROP TABLE IF EXISTS `cdxam_kunena_users_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_users_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text COLLATE utf8mb4_unicode_ci,
  `reason_public` text COLLATE utf8mb4_unicode_ci,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`),
  KEY `expiration` (`expiration`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_users_banned`
--

LOCK TABLES `cdxam_kunena_users_banned` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_users_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_kunena_users_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_kunena_version`
--

DROP TABLE IF EXISTS `cdxam_kunena_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_kunena_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versionname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sampleData` tinyint(1) NOT NULL DEFAULT '1',
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_kunena_version`
--

LOCK TABLES `cdxam_kunena_version` WRITE;
/*!40000 ALTER TABLE `cdxam_kunena_version` DISABLE KEYS */;
INSERT INTO `cdxam_kunena_version` VALUES (1,'6.3.0','2024-04-22','2024-05-13','6.3.0','Roncegno',0,'');
/*!40000 ALTER TABLE `cdxam_kunena_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_languages`
--

DROP TABLE IF EXISTS `cdxam_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_languages`
--

LOCK TABLES `cdxam_languages` WRITE;
/*!40000 ALTER TABLE `cdxam_languages` DISABLE KEYS */;
INSERT INTO `cdxam_languages` VALUES (1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',0,1,2),(2,97,'ru-RU','Russian (ru-RU)','Русский (Россия)','ru','ru_ru','',NULL,'','',1,1,1);
/*!40000 ALTER TABLE `cdxam_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_mail_templates`
--

DROP TABLE IF EXISTS `cdxam_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_mail_templates`
--

LOCK TABLES `cdxam_mail_templates` WRITE;
/*!40000 ALTER TABLE `cdxam_mail_templates` DISABLE KEYS */;
INSERT INTO `cdxam_mail_templates` VALUES ('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),('com_kunena.reply','com_kunena','','COM_KUNENA_SENDMAIL_REPLY_SUBJECT','COM_KUNENA_SENDMAIL_BODY','','','{\"tags\":[\"mail\", \"subject\", \"message\", \"messageUrl\", \"once\"]}'),('com_kunena.replymoderator','com_kunena','','COM_KUNENA_SENDMAIL_REPLYMODERATOR_SUBJECT','COM_KUNENA_SENDMAIL_BODY','','','{tags\":[\"mail\", \"subject\", \"message\", \"messageUrl\", \"once\"]}'),('com_kunena.report','com_kunena','','COM_KUNENA_SENDMAIL_REPORT_SUBJECT','COM_KUNENA_SENDMAIL_BODY_REPORTMODERATOR','','','{\"tags\":[\"mail\", \"subject\", \"message\", \"messageUrl\", \"once\"]}'),('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),('plg_system_privacyconsent.request.reminder','plg_system_privacyconsent','','PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),('plg_system_updatenotification.mail','plg_system_updatenotification','','PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `cdxam_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_menu`
--

DROP TABLE IF EXISTS `cdxam_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_menu`
--

LOCK TABLES `cdxam_menu` WRITE;
/*!40000 ALTER TABLE `cdxam_menu` DISABLE KEYS */;
INSERT INTO `cdxam_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,187,0,'*',0,NULL,NULL),(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL),(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL),(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL),(10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL),(11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL),(12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL),(13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL),(14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL),(15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL),(16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL),(17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL),(18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL),(19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL),(20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL),(21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL),(101,'mainmenu','Главная','home','','home','index.php?option=com_sppagebuilder&view=page&id=1','component',1,1,1,268,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL),(102,'main','COM_COMPROFILER','com-comprofiler','','com-comprofiler','index.php?option=com_comprofiler','component',1,1,1,241,NULL,NULL,0,1,'../components/com_comprofiler/images/icon-16-cb.png',0,'{}',43,60,0,'',1,NULL,NULL),(103,'main','COM_COMPROFILER_CONTROLPANEL','com-comprofiler-controlpanel','','com-comprofiler/com-comprofiler-controlpanel','index.php?option=com_comprofiler','component',1,102,2,241,NULL,NULL,0,1,'class:cpanel',0,'{}',44,45,0,'',1,NULL,NULL),(104,'main','COM_COMPROFILER_SHOWUSERS','com-comprofiler-showusers','','com-comprofiler/com-comprofiler-showusers','index.php?option=com_comprofiler&task=showusers&view=showusers','component',1,102,2,241,NULL,NULL,0,1,'class:user',0,'{}',46,47,0,'',1,NULL,NULL),(105,'main','COM_COMPROFILER_SHOWTAB','com-comprofiler-showtab','','com-comprofiler/com-comprofiler-showtab','index.php?option=com_comprofiler&task=showTab&view=showTab','component',1,102,2,241,NULL,NULL,0,1,'class:themes',0,'{}',48,49,0,'',1,NULL,NULL),(106,'main','COM_COMPROFILER_SHOWFIELD','com-comprofiler-showfield','','com-comprofiler/com-comprofiler-showfield','index.php?option=com_comprofiler&task=showField&view=showField','component',1,102,2,241,NULL,NULL,0,1,'class:content',0,'{}',50,51,0,'',1,NULL,NULL),(107,'main','COM_COMPROFILER_SHOWLISTS','com-comprofiler-showlists','','com-comprofiler/com-comprofiler-showlists','index.php?option=com_comprofiler&task=showLists&view=showLists','component',1,102,2,241,NULL,NULL,0,1,'class:search',0,'{}',52,53,0,'',1,NULL,NULL),(108,'main','COM_COMPROFILER_SHOWPLUGINS','com-comprofiler-showplugins','','com-comprofiler/com-comprofiler-showplugins','index.php?option=com_comprofiler&task=showPlugins&view=showPlugins','component',1,102,2,241,NULL,NULL,0,1,'class:plugin',0,'{}',54,55,0,'',1,NULL,NULL),(109,'main','COM_COMPROFILER_TOOLS','com-comprofiler-tools','','com-comprofiler/com-comprofiler-tools','index.php?option=com_comprofiler&task=tools&view=tools','component',1,102,2,241,NULL,NULL,0,1,'class:maintenance',0,'{}',56,57,0,'',1,NULL,NULL),(110,'main','COM_COMPROFILER_SHOWCONFIG','com-comprofiler-showconfig','','com-comprofiler/com-comprofiler-showconfig','index.php?option=com_comprofiler&task=showconfig&view=showconfig','component',1,102,2,241,NULL,NULL,0,1,'class:config',0,'{}',58,59,0,'',1,NULL,NULL),(111,'communitybuilder','CB Profile','cb-profile','','cb-profile','index.php?option=com_comprofiler&view=userprofile','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',61,62,0,'*',0,NULL,NULL),(112,'communitybuilder','CB Profile Edit','cb-profile-edit','','cb-profile-edit','index.php?option=com_comprofiler&view=userdetails','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',63,64,0,'*',0,NULL,NULL),(113,'communitybuilder','CB Registration','cb-registration','','cb-registration','index.php?option=com_comprofiler&view=registers','component',1,1,1,241,567,'2024-05-13 11:31:55',0,1,' ',0,'{}',65,66,0,'*',0,NULL,NULL),(114,'communitybuilder','CB Login','cb-login','','cb-login','index.php?option=com_comprofiler&view=login','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',67,68,0,'*',0,NULL,NULL),(115,'communitybuilder','CB Logout','cb-logout','','cb-logout','index.php?option=com_comprofiler&view=logout','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',69,70,0,'*',0,NULL,NULL),(116,'communitybuilder','CB Forgot Login','cb-forgot-login','','cb-forgot-login','index.php?option=com_comprofiler&view=lostpassword','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',71,72,0,'*',0,NULL,NULL),(117,'communitybuilder','CB Userlist','cb-userlist','','cb-userlist','index.php?option=com_comprofiler&view=userslist','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',73,74,0,'*',0,NULL,NULL),(118,'communitybuilder','CB Manage Connections','cb-manage-connections','','cb-manage-connections','index.php?option=com_comprofiler&view=manageconnections','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',75,76,0,'*',0,NULL,NULL),(119,'communitybuilder','CB Moderate Bans','cb-moderate-bans','','cb-moderate-bans','index.php?option=com_comprofiler&view=moderatebans','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',77,78,0,'*',0,NULL,NULL),(120,'communitybuilder','CB Moderate Images','cb-moderate-images','','cb-moderate-images','index.php?option=com_comprofiler&view=moderateimages','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',79,80,0,'*',0,NULL,NULL),(121,'communitybuilder','CB Moderate Reports','cb-moderate-reports','','cb-moderate-reports','index.php?option=com_comprofiler&view=moderatereports','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',81,82,0,'*',0,NULL,NULL),(122,'communitybuilder','CB Moderate User Approvals','cb-moderate-user-approvals','','cb-moderate-user-approvals','index.php?option=com_comprofiler&view=pendingapprovaluser','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',83,84,0,'*',0,NULL,NULL),(123,'communitybuilder','CB Private Messages','cb-private-messages','','cb-private-messages','index.php?option=com_comprofiler&view=pluginclass&plugin=pms.mypmspro&action=messages','component',1,1,1,241,NULL,NULL,0,1,' ',0,'{}',85,86,0,'*',0,NULL,NULL),(124,'main','COM_KUNENA','com-kunena','','com-kunena','index.php?option=com_kunena&view=cpanel','component',1,1,1,250,NULL,NULL,0,1,'components/com_kunena/media/icons/favicons/kunena-logo-white.png',0,'{}',87,114,0,'',1,NULL,NULL),(125,'main','COM_KUNENA_DASHBOARD','com-kunena-dashboard','','com-kunena/com-kunena-dashboard','index.php?option=com_kunena&view=cpanel','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',88,89,0,'',1,NULL,NULL),(126,'main','COM_KUNENA_CATEGORY_MANAGER','com-kunena-category-manager','','com-kunena/com-kunena-category-manager','index.php?option=com_kunena&view=categories','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',90,91,0,'',1,NULL,NULL),(127,'main','COM_KUNENA_USER_MANAGER','com-kunena-user-manager','','com-kunena/com-kunena-user-manager','index.php?option=com_kunena&view=users','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',92,93,0,'',1,NULL,NULL),(128,'main','COM_KUNENA_FILE_MANAGER','com-kunena-file-manager','','com-kunena/com-kunena-file-manager','index.php?option=com_kunena&view=attachments','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',94,95,0,'',1,NULL,NULL),(129,'main','COM_KUNENA_EMOTICON_MANAGER','com-kunena-emoticon-manager','','com-kunena/com-kunena-emoticon-manager','index.php?option=com_kunena&view=smilies','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',96,97,0,'',1,NULL,NULL),(130,'main','COM_KUNENA_RANK_MANAGER','com-kunena-rank-manager','','com-kunena/com-kunena-rank-manager','index.php?option=com_kunena&view=ranks','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',98,99,0,'',1,NULL,NULL),(131,'main','COM_KUNENA_TEMPLATE_MANAGER','com-kunena-template-manager','','com-kunena/com-kunena-template-manager','index.php?option=com_kunena&view=templates','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',100,101,0,'',1,NULL,NULL),(132,'main','COM_KUNENA_CONFIGURATION','com-kunena-configuration','','com-kunena/com-kunena-configuration','index.php?option=com_kunena&view=config','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',102,103,0,'',1,NULL,NULL),(133,'main','COM_KUNENA_MENU_STATISTICS','com-kunena-menu-statistics','','com-kunena/com-kunena-menu-statistics','index.php?option=com_kunena&view=stats','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',104,105,0,'',1,NULL,NULL),(134,'main','COM_KUNENA_PLUGIN_MANAGER','com-kunena-plugin-manager','','com-kunena/com-kunena-plugin-manager','index.php?option=com_kunena&view=plugins','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',106,107,0,'',1,NULL,NULL),(135,'main','COM_KUNENA_LOG_MANAGER','com-kunena-log-manager','','com-kunena/com-kunena-log-manager','index.php?option=com_kunena&view=logs','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',108,109,0,'',1,NULL,NULL),(136,'main','COM_KUNENA_FORUM_TOOLS','com-kunena-forum-tools','','com-kunena/com-kunena-forum-tools','index.php?option=com_kunena&view=tools','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',110,111,0,'',1,NULL,NULL),(137,'main','COM_KUNENA_TRASH_MANAGER','com-kunena-trash-manager','','com-kunena/com-kunena-trash-manager','index.php?option=com_kunena&view=trashs','component',1,124,2,250,NULL,NULL,0,1,'class:component',0,'{}',112,113,0,'',1,NULL,NULL),(138,'forum','Избранные темы','izbrannye-temy','','izbrannye-temy','index.php?option=com_kunena&view=topics&layout=user&mode=default','component',1,1,1,250,567,'2024-05-13 11:35:24',0,1,' ',0,'{\"header\":\"\",\"topics_catselection\":\"1\",\"topics_deletedtopics\":\"0\",\"topics_categories\":[\"0\"],\"topics_time\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',115,116,0,'*',0,NULL,NULL),(139,'forum','Поиск тем','poisk-tem','','poisk-tem','index.php?option=com_kunena&view=search','component',1,1,1,250,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',117,118,0,'*',0,NULL,NULL),(140,'mainmenu','Личный кабинет Moodle','lichnyj-kabinet','','lichnyj-kabinet','https://studentshub-edu.ru/my','url',1,1,1,0,NULL,NULL,0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',119,120,0,'*',0,NULL,NULL),(141,'forum','Создать тему','sozdat-temu','','sozdat-temu','index.php?option=com_kunena&view=topic&layout=create','component',1,1,1,250,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',121,122,0,'*',0,NULL,NULL),(142,'kunenamenu','Форум','forum','','forum','index.php?option=com_kunena&view=home&defaultmenu=144','component',1,1,1,250,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0,\"catids\":0}',123,142,0,'*',0,NULL,NULL),(143,'kunenamenu','Оглавление','index','','forum/index','index.php?option=com_kunena&view=category&layout=list','component',1,142,2,250,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0}',124,125,0,'ru-RU',0,NULL,NULL),(144,'kunenamenu','Последнее','recent','','forum/recent','index.php?option=com_kunena&view=topics&mode=replies','component',1,142,2,250,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":\"\"}',126,127,0,'ru-RU',0,NULL,NULL),(145,'kunenamenu','Не прочитанные','ne-prochitano','','forum/ne-prochitano','index.php?option=com_kunena&view=topics&layout=unread','component',1,142,2,250,NULL,NULL,0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0}',128,129,0,'ru-RU',0,NULL,NULL),(146,'kunenamenu','Новая тема','newtopic','','forum/newtopic','index.php?option=com_kunena&view=topic&layout=create','component',1,142,2,250,NULL,NULL,0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0}',130,131,0,'ru-RU',0,NULL,NULL),(147,'kunenamenu','Без ответов','noreplies','','forum/noreplies','index.php?option=com_kunena&view=topics&mode=noreplies','component',1,142,2,250,NULL,NULL,0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":\"\"}',132,133,0,'ru-RU',0,NULL,NULL),(148,'kunenamenu','Мои темы','mylatest','','forum/mylatest','index.php?option=com_kunena&view=topics&layout=user&mode=default','component',1,142,2,250,NULL,NULL,0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"2\",\"topics_categories\":\"0\",\"topics_time\":\"\"}',134,135,0,'ru-RU',0,NULL,NULL),(149,'kunenamenu','Профиль','profile','','forum/profile','index.php?option=com_kunena&view=user','component',1,142,2,250,NULL,NULL,0,2,' ',0,'{\"integration\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',136,137,0,'ru-RU',0,NULL,NULL),(150,'kunenamenu','Помощь','help','','forum/help','index.php?option=com_kunena&view=misc','component',1,142,2,250,NULL,NULL,0,3,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0,\"body\":\"\\u042d\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u0438\\u0439 \\u043f\\u0443\\u043d\\u043a\\u0442 \\u043c\\u0435\\u043d\\u044e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\u043f\\u043e\\u043c\\u043e\\u0449\\u0438 \\u0432 [b]Kunena \\u043c\\u0435\\u043d\\u044e[\\/b], \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0449\\u0438\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0442\\u044c\\u0441\\u044f \\u043f\\u043e \\u0444\\u043e\\u0440\\u0443\\u043c\\u0443. \\n\\n \\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043c\\u0435\\u043d\\u044e Joomla, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0440\\u0435\\u0434\\u0430\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043f\\u0443\\u043d\\u043a\\u0442\\u044b \\u0432 \\u044d\\u0442\\u043e\\u043c \\u043c\\u0435\\u043d\\u044e. \\u041f\\u0435\\u0440\\u0435\\u0439\\u0434\\u0438\\u0442\\u0435 \\u0432 [b]\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f[\\/b] >> [b]\\u041c\\u0435\\u043d\\u044e[\\/b] >> [b]Kunena \\u043c\\u0435\\u043d\\u044e[\\/b] >> [b]\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c[\\/b] \\u0434\\u043b\\u044f \\u0440\\u0435\\u0434\\u0430\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0438\\u043b\\u0438 \\u0443\\u0434\\u0430\\u043b\\u0435\\u043d\\u0438\\u044f \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0443\\u043d\\u043a\\u0442\\u0430 \\u043c\\u0435\\u043d\\u044e. \\n\\n \\u0412 \\u044d\\u0442\\u043e\\u043c \\u043f\\u0443\\u043d\\u043a\\u0442\\u0435 \\u043c\\u0435\\u043d\\u044e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0442\\u0435\\u043a\\u0441\\u0442, BBCode \\u0438\\u043b\\u0438 HTML \\u043a\\u043e\\u0434. \\u0415\\u0441\\u043b\\u0438 \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u043f\\u0440\\u0438\\u0432\\u044f\\u0437\\u0430\\u0442\\u044c \\u0441\\u0442\\u0430\\u0442\\u044c\\u044e \\u043a \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435, \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c BBCode \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 (\\u0441 id \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438): [code][article=full]123[\\/article][\\/code] \\n\\n \\u0415\\u0441\\u043b\\u0438 \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442\\u0435 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0451 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e \\u0434\\u043b\\u044f Kunena, \\u043d\\u0430\\u0447\\u043d\\u0438\\u0442\\u0435 \\u0441 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f [b]\\u041e\\u0433\\u043b\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435[\\/b] (\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430). \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u043f\\u0443\\u043d\\u043a\\u0442 \\u043c\\u0435\\u043d\\u044e \\u043f\\u043e \\u0443\\u043c\\u043e\\u043b\\u0447\\u0430\\u043d\\u0438\\u044e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438 \\u0432\\u0432\\u043e\\u0434\\u0435 \\u0432 Kunena.\",\"body_format\":\"bbcode\"}',138,139,0,'ru-RU',0,NULL,NULL),(151,'kunenamenu','Поиск','search','','forum/search','index.php?option=com_kunena&view=search','component',1,142,2,250,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"secure\":0}',140,141,0,'ru-RU',0,NULL,NULL),(152,'mainmenu','Форум','kunena-2024-05-14','','kunena-2024-05-14','index.php?Itemid=142','alias',0,1,1,0,NULL,NULL,0,1,' ',0,'{\"aliasoptions\":\"142\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',143,144,0,'*',0,NULL,NULL),(153,'main','COM_SPPAGEBUILDER','com-sppagebuilder','','com-sppagebuilder','index.php?option=com_sppagebuilder','component',1,1,1,268,NULL,NULL,0,1,'class:component',0,'{}',145,158,0,'',1,NULL,NULL),(154,'main','COM_SPPAGEBUILDER_PAGES','com-sppagebuilder-pages','','com-sppagebuilder/com-sppagebuilder-pages','index.php?option=com_sppagebuilder&view=pages','component',1,153,2,268,NULL,NULL,0,1,'class:component',0,'{}',146,147,0,'',1,NULL,NULL),(155,'main','COM_SPPAGEBUILDER_MEDIA','com-sppagebuilder-media','','com-sppagebuilder/com-sppagebuilder-media','index.php?option=com_sppagebuilder&view=media','component',1,153,2,268,NULL,NULL,0,1,'class:component',0,'{}',148,149,0,'',1,NULL,NULL),(156,'main','COM_SPPAGEBUILDER_CATEGORIES','com-sppagebuilder-categories','','com-sppagebuilder/com-sppagebuilder-categories','index.php?option=com_categories&extension=com_sppagebuilder','component',1,153,2,268,NULL,NULL,0,1,'class:component',0,'{}',150,151,0,'',1,NULL,NULL),(157,'main','COM_SPPAGEBUILDER_INTEGRATIONS','com-sppagebuilder-integrations','','com-sppagebuilder/com-sppagebuilder-integrations','index.php?option=com_sppagebuilder&view=integrations','component',1,153,2,268,NULL,NULL,0,1,'class:component',0,'{}',152,153,0,'',1,NULL,NULL),(158,'main','COM_SPPAGEBUILDER_LANGUAGES','com-sppagebuilder-languages','','com-sppagebuilder/com-sppagebuilder-languages','index.php?option=com_sppagebuilder&view=languages','component',1,153,2,268,NULL,NULL,0,1,'class:component',0,'{}',154,155,0,'',1,NULL,NULL),(159,'main','COM_SPPAGEBUILDER_ABOUT','com-sppagebuilder-about','','com-sppagebuilder/com-sppagebuilder-about','index.php?option=com_sppagebuilder&view=about','component',1,153,2,268,NULL,NULL,0,1,'class:component',0,'{}',156,157,0,'',1,NULL,NULL),(160,'mainmenu','Регистрация','registratsiya','','registratsiya','index.php?option=com_content&view=article&id=1','component',1,1,1,19,NULL,NULL,0,5,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',183,184,0,'*',0,NULL,NULL),(161,'mainmenu','Войти','vojti','','vojti','index.php?option=com_content&view=article&id=2','component',1,1,1,19,NULL,NULL,0,5,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',185,186,0,'*',0,NULL,NULL),(162,'main','COM_JOOMDLE','com-joomdle','','com-joomdle','index.php?option=com_joomdle','component',1,1,1,274,NULL,NULL,0,1,'class:component',0,'{}',159,180,0,'',1,NULL,NULL),(163,'main','COM_JOOMDLE_CONTROL_PANEL','com-joomdle-control-panel','','com-joomdle/com-joomdle-control-panel','index.php?option=com_joomdle','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-cpanel.png',0,'{}',160,161,0,'',1,NULL,NULL),(164,'main','COM_JOOMDLE_CONFIGURATION','com-joomdle-configuration','','com-joomdle/com-joomdle-configuration','index.php?option=com_joomdle&view=config','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-config.png',0,'{}',162,163,0,'',1,NULL,NULL),(165,'main','COM_JOOMDLE_USERS','com-joomdle-users','','com-joomdle/com-joomdle-users','index.php?option=com_joomdle&view=users','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-users.png',0,'{}',164,165,0,'',1,NULL,NULL),(166,'main','COM_JOOMDLE_MAPPINGS','com-joomdle-mappings','','com-joomdle/com-joomdle-mappings','index.php?option=com_joomdle&view=mappings','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-mappings.png',0,'{}',166,167,0,'',1,NULL,NULL),(167,'main','COM_JOOMDLE_CUSTOM_PROFILES','com-joomdle-custom-profiles','','com-joomdle/com-joomdle-custom-profiles','index.php?option=com_joomdle&view=customprofiletypes','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-profiletypes.png',0,'{}',168,169,0,'',1,NULL,NULL),(168,'main','COM_JOOMDLE_APPLICATIONS','com-joomdle-applications','','com-joomdle/com-joomdle-applications','index.php?option=com_joomdle&view=courseapplications','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-applications.png',0,'{}',170,171,0,'',1,NULL,NULL),(169,'main','COM_JOOMDLE_SHOP','com-joomdle-shop','','com-joomdle/com-joomdle-shop','index.php?option=com_joomdle&view=shop','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-vmart.png',0,'{}',172,173,0,'',1,NULL,NULL),(170,'main','COM_JOOMDLE_MAILING_LIST','com-joomdle-mailing-list','','com-joomdle/com-joomdle-mailing-list','index.php?option=com_joomdle&view=mailinglist','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-lists.png',0,'{}',174,175,0,'',1,NULL,NULL),(171,'main','COM_JOOMDLE_FORUMS','com-joomdle-forums','','com-joomdle/com-joomdle-forums','index.php?option=com_joomdle&view=forums','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-forum.png',0,'{}',176,177,0,'',1,NULL,NULL),(172,'main','COM_JOOMDLE_SYSTEM_CHECK','com-joomdle-system-check','','com-joomdle/com-joomdle-system-check','index.php?option=com_joomdle&view=check','component',1,162,2,274,NULL,NULL,0,1,'components/com_joomdle/assets/images/icon-16-info.png',0,'{}',178,179,0,'',1,NULL,NULL),(173,'mainmenu','Пользователи','polzovateli','','polzovateli','index.php?option=com_comprofiler&view=userslist&searchmode=0','component',1,1,1,241,NULL,NULL,0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',181,182,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `cdxam_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_menu_types`
--

DROP TABLE IF EXISTS `cdxam_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_menu_types`
--

LOCK TABLES `cdxam_menu_types` WRITE;
/*!40000 ALTER TABLE `cdxam_menu_types` DISABLE KEYS */;
INSERT INTO `cdxam_menu_types` VALUES (1,54,'mainmenu','Главное меню','The main menu for the site',0),(2,100,'communitybuilder','Community Builder','',0),(3,110,'forum','Форум','',0),(4,112,'kunenamenu','Kunena меню','Это меню Kunena по умолчанию. Оно используется в качестве верхней навигации для Kunena. Можно опубликовать в любой позиции модуля. Просто снимите с публикации пункты, которые не требуются.',0);
/*!40000 ALTER TABLE `cdxam_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_messages`
--

DROP TABLE IF EXISTS `cdxam_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_messages`
--

LOCK TABLES `cdxam_messages` WRITE;
/*!40000 ALTER TABLE `cdxam_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_messages_cfg`
--

DROP TABLE IF EXISTS `cdxam_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_messages_cfg`
--

LOCK TABLES `cdxam_messages_cfg` WRITE;
/*!40000 ALTER TABLE `cdxam_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_modules`
--

DROP TABLE IF EXISTS `cdxam_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_modules`
--

LOCK TABLES `cdxam_modules` WRITE;
/*!40000 ALTER TABLE `cdxam_modules` DISABLE KEYS */;
INSERT INTO `cdxam_modules` VALUES (1,39,'Главное меню','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',6,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),(16,50,'Войти','','',1,'main-top',NULL,NULL,'2024-05-14 09:27:12',NULL,1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"111\",\"logout\":\"\",\"customRegLinkMenu\":\"\",\"greeting\":0,\"name\":0,\"profilelink\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,55,'Sample Data','','',1,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(88,67,'Latest Actions','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(89,68,'Privacy Dashboard','','',5,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),(100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),(101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),(102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),(103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(109,96,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*'),(110,101,'Профиль','','',1,'sidebar-right',NULL,NULL,'2024-05-13 23:27:21',NULL,1,'mod_cblogin',2,1,'{\"show_buttons_icons\":\"0\",\"https_post\":\"0\",\"cb_plugins\":\"1\",\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"name_label\":\"5\",\"name_length\":\"14\",\"pass_label\":\"5\",\"pass_length\":\"14\",\"key_label\":\"5\",\"key_length\":\"14\",\"remember_enabled\":\"1\",\"show_lostpass\":\"1\",\"show_newaccount\":\"1\",\"login_message\":\"0\",\"logoutpretext\":\"\",\"logoutposttext\":\"\",\"logout\":\"https:\\/\\/studentshub.ru\\/index.php\",\"greeting\":\"1\",\"show_avatar\":\"1\",\"text_show_profile\":\"\",\"icon_show_profile\":\"0\",\"text_edit_profile\":\"\",\"icon_edit_profile\":\"0\",\"show_pms\":\"0\",\"show_pms_icon\":\"0\",\"show_connection_notifications\":\"1\",\"show_connection_notifications_icon\":\"0\",\"logout_message\":\"0\",\"reg_layout\":\"flat\",\"style_username_cssclass\":\"\",\"style_password_cssclass\":\"\",\"style_secretkey_cssclass\":\"\",\"style_login_cssclass\":\"\",\"style_logout_cssclass\":\"\",\"style_forgotlogin_cssclass\":\"\",\"style_register_cssclass\":\"\",\"style_profile_cssclass\":\"\",\"style_profileedit_cssclass\":\"\",\"style_connrequests_cssclass\":\"\",\"style_privatemsgs_cssclass\":\"\",\"layout\":\"_:bootstrap\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(111,102,'Пользователи онлайн','','',5,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_comprofileronline',2,1,'{\"mode\":\"1\",\"pretext\":\"\",\"posttext\":\"\",\"usertext\":\"\",\"limit\":\"30\",\"exclude\":\"\",\"exclude_self\":\"0\",\"cb_plugins\":\"0\",\"custom_field\":\"username\",\"custom_direction\":\"ASC\",\"label\":\"1\",\"separator\":\",\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":0,\"cache_time\":0,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(112,103,'CB Workflows','','',1,'',NULL,NULL,'2024-05-14 05:06:06',NULL,1,'mod_comprofilermoderator',2,1,'{\"pretext\":\"\",\"posttext\":\"\",\"show_banned\":\"1\",\"show_image_approval\":\"1\",\"show_user_reports\":\"1\",\"show_uban_requests\":\"1\",\"show_user_approval\":\"1\",\"show_pms\":\"1\",\"show_connections\":\"1\",\"cb_plugins\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":0,\"cache_time\":0,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(113,104,'CB Admin Dropdown Menu','','',99,'menu',NULL,NULL,NULL,NULL,1,'mod_cbadmin',1,0,'{\"mode\":\"1\",\"menu_cb\":\"1\",\"menu_plugins\":\"1\",\"menu_compact\":\"1\",\"feed_entries\":\"5\",\"feed_duration\":\"12\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(114,105,'Community Builder News','',NULL,99,'cpanel',NULL,NULL,NULL,NULL,1,'mod_cbadmin',1,1,'{\"mode\":\"3\",\"menu_cb\":\"1\",\"menu_plugins\":\"1\",\"menu_compact\":\"1\",\"feed_entries\":\"5\",\"feed_duration\":\"12\",\"modal_display\":\"1\",\"modal_width\":\"800\",\"modal_height\":\"500\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(115,106,'Community Builder Updates','',NULL,99,'cpanel',NULL,NULL,NULL,NULL,1,'mod_cbadmin',1,1,'{\"mode\":\"4\",\"menu_cb\":\"1\",\"menu_plugins\":\"1\",\"menu_compact\":\"1\",\"feed_entries\":\"5\",\"feed_duration\":\"12\",\"modal_display\":\"1\",\"modal_width\":\"800\",\"modal_height\":\"500\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(116,107,'CB Admin Version Checker','',NULL,99,'cpanel',NULL,NULL,NULL,NULL,1,'mod_cbadmin',1,0,'{\"mode\":\"5\",\"menu_cb\":\"1\",\"menu_plugins\":\"1\",\"menu_compact\":\"1\",\"feed_entries\":\"5\",\"feed_duration\":\"12\",\"modal_display\":\"1\",\"modal_width\":\"800\",\"modal_height\":\"500\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(117,111,'Форум','',NULL,4,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',2,1,'{\"menutype\":\"forum\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(118,114,'SP Page Builder','','',2,'',NULL,NULL,NULL,NULL,0,'mod_sppagebuilder',1,1,'',0,'*'),(119,116,'Регистрация ','','',1,'main-top',NULL,NULL,'2024-05-14 08:08:49',NULL,1,'mod_simpleform2',1,1,'{\"sfMailSubj\":\"\",\"sfMailTo\":\"admin@yoursite.com\",\"sfMailReply\":\"\",\"simpleCode\":\"{form title=\'\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e\' description=\'\'}\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u0418\\u043c\\u044f\' type=\'text\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0451 \\u0438\\u043c\\u044f!\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\' type=\'text\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u044e \\u0444\\u0430\\u043c\\u0438\\u043b\\u0438\\u044e!\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u041e\\u0442\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\' type=\'text\' \\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u0414\\u0430\\u0442\\u0430 \\u0440\\u043e\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f\' type=\'date\' required=\'required\'  \\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u0413\\u043e\\u0440\\u043e\\u0434\' type=\'text\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0433\\u043e\\u0440\\u043e\\u0434!\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u041c\\u0435\\u0441\\u0442\\u043e \\u0443\\u0447\\u0451\\u0431\\u044b\' type=\'text\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043c\\u0435\\u0441\\u0442\\u043e \\u0443\\u0447\\u0451\\u0431\\u044b!\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u041a\\u0443\\u0440\\u0441\' type=\'text\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u043a\\u0443\\u0440\\u0441\\u0430\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u041d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0438\' type=\'text\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0438\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\' type=\'tel\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430!\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'E-mail\' type=\'email\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 e-mail\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u0424\\u043e\\u0442\\u043e \\u0441\\u043e \\u0441\\u0442\\u0443\\u0434\\u0435\\u043d\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u043c \\u0432 \\u0440\\u0443\\u043a\\u0430\\u0445\' type=\'file\' maxsize = \\\"2Mb\\\" maxfiles = \\\"1\\\"\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element  type=\'checkbox\' required=\'required\' error=\'Please agree for the data processing\' send-in-email=\'no\'}{option label=\'\\u0412\\u044b \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u044b \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445?\' value=\'ok\'\\/}{\\/element}<\\/div><div class=\'sf2-form-group\'>{element type=\'submit\' value=\'\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c\'\\/}<\\/div>{\\/form}\",\"sfLayout\":\"blocks\",\"sfStyle\":\"default\",\"sfLayoutMode\":\"full-width\",\"okText\":\"<b>Thank you for your message!<\\/b><p>We will contact you soon.<\\/p>\",\"moduleclass_sfx\":\"\",\"userCheckFunc\":\"\",\"userResultFunc\":\"\",\"layout\":\"_:default\",\"cachemode\":\"itemid\",\"ip_detect_method\":\"REMOTE_ADDR\",\"recordForms\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(120,117,'Вход','',NULL,1,'sidebar-right',NULL,NULL,'2024-05-14 09:04:30',NULL,-2,'mod_simpleform2',1,1,'{\"sfMailSubj\":\"\",\"sfMailTo\":\"admin@yoursite.com\",\"sfMailReply\":\"\",\"simpleCode\":\"{form title=\'Contact form\' description=\'Please fill all the fields\'}<div class=\'sf2-form-group\'>{element label=\'Your name\' type=\'text\' required=\'required\' error=\'Please enter your name\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u041b\\u043e\\u0433\\u0438\\u043d\' type=\'email\' required=\'required\' error=\'\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043b\\u043e\\u0433\\u0438\\u043d\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element label=\'\\u041f\\u0430\\u0440\\u043e\\u043b\\u044c\' type=\'password\' required=\'required\' error=\'Please enter your e-mail\'\\/}<\\/div>\\r\\n<div class=\'sf2-form-group\'>{element type=\'submit\' value=\'Send\'\\/}<\\/div>{\\/form}\",\"sfLayout\":\"blocks\",\"sfStyle\":\"default\",\"sfLayoutMode\":\"full-width\",\"okText\":\"<p>\\u0412\\u0430\\u0448\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430, \\u043e\\u0436\\u0438\\u0434\\u0430\\u0439\\u0442\\u0435 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430 \\u043f\\u043e\\u0447\\u0442\\u0443!.<\\/p>\",\"moduleclass_sfx\":\"\",\"userCheckFunc\":\"\",\"userResultFunc\":\"\",\"layout\":\"_:default\",\"cachemode\":\"itemid\",\"ip_detect_method\":\"REMOTE_ADDR\",\"recordForms\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(121,120,'Joomdle courses','','',3,'',NULL,NULL,NULL,NULL,0,'mod_joomdle_courses',1,1,'',0,'*'),(122,121,'Joomdle My Courses','','',4,'',NULL,NULL,NULL,NULL,0,'mod_joomdle_my_courses',1,1,'',0,'*'),(123,123,'Выйти','',NULL,1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_login',2,0,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"101\",\"customRegLinkMenu\":\"\",\"greeting\":0,\"name\":0,\"profilelink\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `cdxam_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_modules_menu`
--

DROP TABLE IF EXISTS `cdxam_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_modules_menu`
--

LOCK TABLES `cdxam_modules_menu` WRITE;
/*!40000 ALTER TABLE `cdxam_modules_menu` DISABLE KEYS */;
INSERT INTO `cdxam_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(14,0),(15,0),(16,161),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,101),(110,111),(110,112),(110,117),(110,118),(110,119),(110,120),(110,121),(110,122),(110,123),(110,138),(110,139),(110,140),(110,141),(110,142),(110,143),(110,144),(110,145),(110,146),(110,147),(110,148),(110,149),(110,150),(111,0),(112,0),(113,0),(114,0),(115,0),(116,0),(117,0),(119,160),(120,0),(123,111),(123,112);
/*!40000 ALTER TABLE `cdxam_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_newsfeeds`
--

DROP TABLE IF EXISTS `cdxam_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_newsfeeds`
--

LOCK TABLES `cdxam_newsfeeds` WRITE;
/*!40000 ALTER TABLE `cdxam_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_overrider`
--

DROP TABLE IF EXISTS `cdxam_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_overrider`
--

LOCK TABLES `cdxam_overrider` WRITE;
/*!40000 ALTER TABLE `cdxam_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_postinstall_messages`
--

DROP TABLE IF EXISTS `cdxam_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_postinstall_messages`
--

LOCK TABLES `cdxam_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `cdxam_postinstall_messages` DISABLE KEYS */;
INSERT INTO `cdxam_postinstall_messages` VALUES (1,229,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(2,229,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(3,229,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),(4,229,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),(5,229,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1),(6,229,'COM_ADMIN_POSTINSTALL_MSG_HTACCESS_BROTLI_TITLE','COM_ADMIN_POSTINSTALL_MSG_HTACCESS_BROTLI_DESCRIPTION','','com_admin',1,'message','','','admin://components/com_admin/postinstall/htaccessbrotli.php','admin_postinstall_htaccessbrotli_condition','4.4.4',1);
/*!40000 ALTER TABLE `cdxam_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_privacy_consents`
--

DROP TABLE IF EXISTS `cdxam_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_privacy_consents`
--

LOCK TABLES `cdxam_privacy_consents` WRITE;
/*!40000 ALTER TABLE `cdxam_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_privacy_requests`
--

DROP TABLE IF EXISTS `cdxam_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_privacy_requests`
--

LOCK TABLES `cdxam_privacy_requests` WRITE;
/*!40000 ALTER TABLE `cdxam_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_redirect_links`
--

DROP TABLE IF EXISTS `cdxam_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_redirect_links`
--

LOCK TABLES `cdxam_redirect_links` WRITE;
/*!40000 ALTER TABLE `cdxam_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_scheduler_tasks`
--

DROP TABLE IF EXISTS `cdxam_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `last_exit_code` int(11) NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_scheduler_tasks`
--

LOCK TABLES `cdxam_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `cdxam_scheduler_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_schemas`
--

DROP TABLE IF EXISTS `cdxam_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_schemas`
--

LOCK TABLES `cdxam_schemas` WRITE;
/*!40000 ALTER TABLE `cdxam_schemas` DISABLE KEYS */;
INSERT INTO `cdxam_schemas` VALUES (229,'4.4.4-2024-03-28'),(268,'3.8.10'),(274,'2.1.0');
/*!40000 ALTER TABLE `cdxam_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_session`
--

DROP TABLE IF EXISTS `cdxam_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_session`
--

LOCK TABLES `cdxam_session` WRITE;
/*!40000 ALTER TABLE `cdxam_session` DISABLE KEYS */;
INSERT INTO `cdxam_session` VALUES (_binary '0c815f8b911949956a3c677cfc6e8234',0,1,1715741181,'joomla|s:628:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzE1NzQxMTgxO3M6NDoibGFzdCI7aToxNzE1NzQxMTgxO3M6Mzoibm93IjtpOjE3MTU3NDExODE7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),(_binary '5c680a31baa0d79b7a94dfd8fc3e0424',1,0,1715743017,'joomla|s:3104:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzE1NzIwMjA3O3M6NDoibGFzdCI7aToxNzE1NzQyMTc3O3M6Mzoibm93IjtpOjE3MTU3NDMwMTc7fXM6NToidG9rZW4iO3M6MzI6IjQ0YTRhOTRmN2FjODUzMDU3MzM3YjVjN2Q5ZjY5ZjhmIjtzOjc6ImNvdW50ZXIiO2k6NTQ1O31zOjE5OiJwbGdfc3lzdGVtX3dlYmF1dGhuIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6InJldHVyblVybCI7czo0NjoiaHR0cHM6Ly9zdHVkZW50c2h1Yi5ydS9hZG1pbmlzdHJhdG9yL2luZGV4LnBocCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjo2OntzOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjE6IjAiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnBvc2l0aW9uIjtzOjU6InN0YXJ0IjtkOjA7fX19czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO3M6MjoiaWQiO2E6MDp7fX1zOjQ6Im1lbnUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjk6InRlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6OToiYS5lbGVtZW50IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjY6InN0eWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO3M6MToiMCI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnRlbXBsYXRlIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6InVzZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjE6e2k6MTtpOjU2ODt9fX19czoxMDoiY29tX2t1bmVuYSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMjoidXNlcjU2N19yZWFkIjtOO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NTY3O31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";cb|a:1:{s:5:\"state\";a:1:{s:13:\"fieldsbrowser\";a:23:{s:6:\"search\";s:0:\"\";s:7:\"orderby\";s:12:\"ordering_asc\";s:5:\"limit\";i:20;s:10:\"limitstart\";i:0;s:11:\"filter_type\";s:0:\"\";s:12:\"filter_tabid\";s:0:\"\";s:15:\"filter_required\";s:0:\"\";s:14:\"filter_profile\";s:0:\"\";s:19:\"filter_registration\";s:0:\"\";s:11:\"filter_edit\";s:0:\"\";s:17:\"filter_searchable\";s:0:\"\";s:16:\"filter_published\";s:0:\"\";s:10:\"batch_type\";s:0:\"\";s:11:\"batch_tabid\";s:0:\"\";s:14:\"batch_required\";s:0:\"\";s:13:\"batch_profile\";s:0:\"\";s:18:\"batch_registration\";s:0:\"\";s:10:\"batch_edit\";s:0:\"\";s:16:\"batch_searchable\";s:0:\"\";s:15:\"import_override\";s:1:\"3\";s:8:\"ordering\";a:20:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:1:\"4\";i:7;s:1:\"5\";i:8;s:1:\"6\";i:9;s:1:\"7\";i:10;s:1:\"8\";i:11;s:1:\"9\";i:12;s:2:\"10\";i:13;s:2:\"11\";i:14;s:2:\"12\";i:15;s:2:\"13\";i:16;s:2:\"14\";i:17;s:2:\"15\";i:18;s:1:\"1\";i:19;s:1:\"2\";}s:5:\"idcid\";a:1:{i:0;s:2:\"45\";}s:7:\"subtask\";s:18:\"setfield/profile/1\";}}}',567,'admin'),(_binary 'c6e10c9e9a89b8f4b90691a9cdd4d774',1,0,1715743034,'joomla|s:1072:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcxNTczNzg3MTtzOjQ6Imxhc3QiO2k6MTcxNTc0MjE5NDtzOjM6Im5vdyI7aToxNzE1NzQzMDM0O31zOjU6InRva2VuIjtzOjMyOiI0NGJkZTdmZmY3NTMxZWVmZmUwY2RiMzdmZjAzZDZlNCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fam9vbWRsZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImNvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo1Njc7fXM6MTk6InBsZ19zeXN0ZW1fd2ViYXV0aG4iO086ODoic3RkQ2xhc3MiOjE6e3M6OToicmV0dXJuVXJsIjtzOjM3OiJodHRwczovL3N0dWRlbnRzaHViLnJ1L2FkbWluaXN0cmF0b3IvIjt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',567,'admin'),(_binary 'e61f132a0a174dfd96b5f8b35091a108',0,0,1715743396,'joomla|s:1104:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzE1NzQxMTcxO3M6NDoibGFzdCI7aToxNzE1NzQyNTU1O3M6Mzoibm93IjtpOjE3MTU3NDMzOTY7fXM6NzoiY291bnRlciI7aToxNjtzOjU6InRva2VuIjtzOjMyOiIzYzE2N2U2NjI3NGY2MDliZjY5ZmIyOTBlMTMzMDU5OSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjb21fa3VuZW5hIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJ1c2VyNTY5X3JlYWQiO2E6Mzp7aToxO2k6MTtpOjI7aToyO2k6MztpOjM7fXM6NToidG9waWMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoibGFzdGhpdCI7aToxO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjU2OTt9czoxOToicGxnX3N5c3RlbV93ZWJhdXRobiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJyZXR1cm5VcmwiO3M6Mzg6Imh0dHBzOi8vc3R1ZGVudHNodWIucnUvaW5kZXgucGhwL3ZvanRpIjt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',569,'egor_ka'),(_binary 'e7184843f324d6cbf5d4f7989ddc228c',0,1,1715741181,'joomla|s:628:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzE1NzQxMTgxO3M6NDoibGFzdCI7aToxNzE1NzQxMTgxO3M6Mzoibm93IjtpOjE3MTU3NDExODE7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',0,'');
/*!40000 ALTER TABLE `cdxam_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_sf2_records`
--

DROP TABLE IF EXISTS `cdxam_sf2_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_sf2_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) unsigned NOT NULL,
  `subject` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `uri` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `ip` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_sf2_records`
--

LOCK TABLES `cdxam_sf2_records` WRITE;
/*!40000 ALTER TABLE `cdxam_sf2_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_sf2_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_spmedia`
--

DROP TABLE IF EXISTS `cdxam_spmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_spmedia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(2048) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `media_attr` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `extension` varchar(100) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_spmedia`
--

LOCK TABLES `cdxam_spmedia` WRITE;
/*!40000 ALTER TABLE `cdxam_spmedia` DISABLE KEYS */;
INSERT INTO `cdxam_spmedia` VALUES (1,'1','images/2024/05/14/1.png','images/2024/05/14/_spmedia_thumbs/1.png','1','','','image','{\"full\":{\"height\":1146,\"width\":1600},\"thumbnail\":{\"height\":300,\"width\":300}}','com_sppagebuilder','2024-05-14 07:23:51',567,'0000-00-00 00:00:00',0),(2,'3','images/2024/05/14/3.png','images/2024/05/14/_spmedia_thumbs/3.png','3','','','image','{\"full\":{\"height\":1094,\"width\":1500},\"thumbnail\":{\"height\":300,\"width\":300}}','com_sppagebuilder','2024-05-14 07:24:33',567,'0000-00-00 00:00:00',0),(3,'2','images/2024/05/14/2.jpg','images/2024/05/14/_spmedia_thumbs/2.jpg','2','','','image','{\"full\":{\"height\":3200,\"width\":4400},\"thumbnail\":{\"height\":300,\"width\":300}}','com_sppagebuilder','2024-05-14 07:25:29',567,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `cdxam_spmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_sppagebuilder`
--

DROP TABLE IF EXISTS `cdxam_sppagebuilder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_sppagebuilder` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `catid` int(10) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attribs` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_image` varchar(255) NOT NULL DEFAULT '',
  `og_description` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `css` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_sppagebuilder`
--

LOCK TABLES `cdxam_sppagebuilder` WRITE;
/*!40000 ALTER TABLE `cdxam_sppagebuilder` DISABLE KEYS */;
INSERT INTO `cdxam_sppagebuilder` VALUES (1,115,'IT-хаб для студентов - инновационное идейное пространство для всех!','[{\"id\":1715671173820,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"4,4,4\",\"columns\":[{\"id\":1715671173817,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1715671173823,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\\u0412\\u0441\\u0451, \\u0447\\u0442\\u043e \\u043d\\u0443\\u0436\\u043d\\u043e - \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0440\\u0435\\u0441\\u0443\\u0440\\u0441\\u0435!\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"title_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"title_position\":\"top\",\"image\":\"images\\/2024\\/05\\/14\\/1.png\",\"border_radius\":0,\"alt_text\":\"Image\",\"position\":\"sppb-text-center\",\"open_lightbox\":0,\"overlay_color\":\"rgba(119, 219, 31, .5)\",\"link\":\"\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0}}]},{\"id\":1715671173818,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1715671173826,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0447\\u0451\\u0431\\u0430 - \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0438!\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"title_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"title_position\":\"top\",\"image\":\"images\\/2024\\/05\\/14\\/3.png\",\"border_radius\":0,\"alt_text\":\"Image\",\"position\":\"sppb-text-center\",\"open_lightbox\":0,\"overlay_color\":\"rgba(119, 219, 31, .5)\",\"link\":\"\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0}}]},{\"id\":1715671173819,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1715671173829,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\\u041b\\u0435\\u0433\\u043a\\u043e \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0435 \\u0435\\u0434\\u0438\\u043d\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043e\\u0431\\u0449\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u0438 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u0432\\u043f\\u0435\\u0440\\u0451\\u0434 \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435!\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"title_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"title_position\":\"top\",\"image\":\"images\\/2024\\/05\\/14\\/2.jpg\",\"border_radius\":0,\"alt_text\":\"Image\",\"position\":\"sppb-text-center\",\"open_lightbox\":0,\"overlay_color\":\"rgba(119, 219, 31, .5)\",\"link\":\"\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0}}]}]},{\"id\":1715671661723,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1715671661722,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1715671661726,\"name\":\"accordion\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\\u041e \\u0447\\u0451\\u043c \\u043d\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442?\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"style\":\"panel-modern\",\"openitem\":\"\",\"class\":\"\",\"sp_accordion_item\":[{\"title\":\"\\u0427\\u0442\\u043e \\u0434\\u0430\\u0451\\u0442 \\u043c\\u043d\\u0435 \\u0432\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442?\",\"icon\":\"\",\"content\":[{\"id\":1715671661732,\"name\":\"text_block\",\"settings\":{\"text\":\"\\u0412\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f \\u043a \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u043e\\u043c\\u0443 \\u0438\\u0434\\u0435\\u0439\\u043d\\u043e\\u043c\\u0443 \\u0441\\u0442\\u0443\\u0434\\u0435\\u043d\\u0447\\u0435\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0432 \\u043a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438 \\u0441 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u043c \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0435\\u0434\\u0438\\u043d\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0432\\u043e\\u0438\\u0445 IT-\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432, \\u0431\\u0443\\u0434\\u044c \\u0442\\u043e \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0430, \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0441 \\u0438\\u0441\\u043a\\u0443\\u0441\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u043c \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u043e\\u043c \\u0438\\u043b\\u0438 \\u0434\\u0430\\u0436\\u0435 \\u0431\\u0435\\u0441\\u043f\\u0438\\u043b\\u043e\\u0442\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c!\",\"dropcap\":0,\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0}}]},{\"title\":\"\\u0410 \\u0435\\u0441\\u0442\\u044c \\u043b\\u0438 \\u0443 \\u0412\\u0430\\u0441 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0432\\u0438\\u0434\\u0435\\u043e\\u0441\\u043e\\u0437\\u0432\\u043e\\u043d\\u0430?\",\"content\":[{\"id\":1715671661726,\"name\":\"text_block\",\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"text\":\"\\u0420\\u0430\\u0437\\u0443\\u043c\\u0435\\u0435\\u0442\\u0441\\u044f! \\u041d\\u0430\\u0448\\u0430 \\u043f\\u043b\\u0430\\u0442\\u0444\\u043e\\u0440\\u043c\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0441 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439 \\u0432\\u0438\\u0434\\u0435\\u043e\\u043a\\u043e\\u043d\\u0444\\u0435\\u0440\\u0435\\u043d\\u0446\\u0441\\u0432\\u044f\\u0437\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u0442 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0430\\u0442\\u044c \\u0433\\u0440\\u0443\\u043f\\u043f\\u043e\\u0432\\u044b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0447\\u043b\\u0435\\u043d\\u0430\\u043c\\u0438 \\u0412\\u0430\\u0448\\u0435\\u0439 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b, \\u043f\\u0440\\u0438\\u0447\\u0451\\u043c \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c \\u0412\\u0430\\u043c \\u0432\\u0441\\u0435 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0434\\u0430\\u044e\\u0442 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b - \\u0434\\u0435\\u043c\\u043e\\u043d\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430, \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438 \\u0438 \\u0434\\u0430\\u0436\\u0435 \\u0434\\u043e\\u0441\\u043a\\u0443 \\u0434\\u043b\\u044f \\u0441\\u043e\\u0432\\u043c\\u0435\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b!\",\"alignment\":\"\",\"text_fontsize\":\"\",\"text_lineheight\":\"\",\"text_fontweight\":\"\",\"dropcap\":0,\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0}}]},{\"title\":\"\\u041a\\u0430\\u043a \\u043c\\u043d\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u043c?\",\"content\":[{\"id\":1715671661727,\"name\":\"text_block\",\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"text\":\"\\u041e\\u0441\\u0442\\u0430\\u0432\\u044c\\u0442\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443 \\u043d\\u0430 <a href=\\\"registration\\\">\\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438<\\/a>, \\u043c\\u044b \\u0441 \\u0412\\u0430\\u043c\\u0438 \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f, \\u0443\\u0431\\u0435\\u0434\\u0438\\u043c\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e \\u044d\\u0442\\u043e \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0412\\u044b \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0434\\u0438\\u043c \\u0412\\u0430\\u043c \\u0430\\u043a\\u043a\\u0430\\u0443\\u043d\\u0442!\",\"alignment\":\"\",\"text_fontsize\":\"\",\"text_lineheight\":\"\",\"text_fontweight\":\"\",\"dropcap\":0,\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0}}]}],\"item_bg\":\"\",\"item_margin\":\"\",\"item_padding\":\"\",\"item_title_bg_color\":\"\",\"item_title_text_color\":\"\",\"item_title_fontsize\":\"\",\"item_title_lineheight\":\"\",\"item_title_letterspace\":\"0px\",\"item_title_padding\":\"\",\"icon_position\":\"\",\"icon_text_color\":\"\",\"icon_fontsize\":\"\",\"icon_margin\":\"\",\"item_content_padding\":\"\",\"active_title_bg_color\":\"\",\"active_title_text_color\":\"\",\"active_icon_rotate\":0,\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"instFormId\":1715671661726}}]}]}]','com_sppagebuilder','page',0,0,1,0,1,0,'2024-05-14 07:26:17',567,'2024-05-14 21:06:05',567,569,'2024-05-14 22:18:50','[]','','','','*',275,'');
/*!40000 ALTER TABLE `cdxam_sppagebuilder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_sppagebuilder_addons`
--

DROP TABLE IF EXISTS `cdxam_sppagebuilder_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_sppagebuilder_addons` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` mediumtext NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_sppagebuilder_addons`
--

LOCK TABLES `cdxam_sppagebuilder_addons` WRITE;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_sppagebuilder_integrations`
--

DROP TABLE IF EXISTS `cdxam_sppagebuilder_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_sppagebuilder_integrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL DEFAULT '',
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_sppagebuilder_integrations`
--

LOCK TABLES `cdxam_sppagebuilder_integrations` WRITE;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_integrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_sppagebuilder_languages`
--

DROP TABLE IF EXISTS `cdxam_sppagebuilder_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_sppagebuilder_languages` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_sppagebuilder_languages`
--

LOCK TABLES `cdxam_sppagebuilder_languages` WRITE;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_sppagebuilder_sections`
--

DROP TABLE IF EXISTS `cdxam_sppagebuilder_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_sppagebuilder_sections` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `section` mediumtext NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_sppagebuilder_sections`
--

LOCK TABLES `cdxam_sppagebuilder_sections` WRITE;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_sppagebuilder_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_tags`
--

DROP TABLE IF EXISTS `cdxam_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_tags`
--

LOCK TABLES `cdxam_tags` WRITE;
/*!40000 ALTER TABLE `cdxam_tags` DISABLE KEYS */;
INSERT INTO `cdxam_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',567,'2024-05-13 10:02:57','',567,'2024-05-13 10:02:57','','',0,'*',1,NULL,NULL);
/*!40000 ALTER TABLE `cdxam_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_template_overrides`
--

DROP TABLE IF EXISTS `cdxam_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_template_overrides`
--

LOCK TABLES `cdxam_template_overrides` WRITE;
/*!40000 ALTER TABLE `cdxam_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_template_styles`
--

DROP TABLE IF EXISTS `cdxam_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT '0',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_template_styles`
--

LOCK TABLES `cdxam_template_styles` WRITE;
/*!40000 ALTER TABLE `cdxam_template_styles` DISABLE KEYS */;
INSERT INTO `cdxam_template_styles` VALUES (10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),(11,'cassiopeia',0,'1','Cassiopeia - Default',1,'','{\"brand\":true,\"logoFile\":\"\",\"siteTitle\":\"\\u0412\\u0441\\u0435\\u0440\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0435\\u043d\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 IT-\\u0445\\u0430\\u0431\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":1}');
/*!40000 ALTER TABLE `cdxam_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_ucm_base`
--

DROP TABLE IF EXISTS `cdxam_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_ucm_base`
--

LOCK TABLES `cdxam_ucm_base` WRITE;
/*!40000 ALTER TABLE `cdxam_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_ucm_content`
--

DROP TABLE IF EXISTS `cdxam_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint(4) NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_ucm_content`
--

LOCK TABLES `cdxam_ucm_content` WRITE;
/*!40000 ALTER TABLE `cdxam_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_update_sites`
--

DROP TABLE IF EXISTS `cdxam_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_update_sites`
--

LOCK TABLES `cdxam_update_sites` WRITE;
/*!40000 ALTER TABLE `cdxam_update_sites` DISABLE KEYS */;
INSERT INTO `cdxam_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1715737876,'',NULL,NULL),(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_4.xml',1,1715737876,'',NULL,NULL),(3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1715737876,'',NULL,NULL),(4,'Community Builder Package Update Site','collection','https://update.joomlapolis.net/versions/pkg-communitybuilder-list.xml',1,1715737877,'',NULL,NULL),(5,'Kunena 6.1 Update Site','collection','https://update.kunena.org/6.1/list.xml',1,1715737877,'',NULL,NULL),(6,'Kunena 6.3 Update Site','collection','https://update.kunena.org/6.3/list.xml',1,1715737877,'',NULL,NULL),(7,'SP Page Builder','extension','https://www.joomshaper.com/updates/com-sp-page-builder-free.xml',1,1715737878,'',NULL,NULL),(8,'SimpleForm2','extension','http://update.allforjoomla.com/mod_simpleform2.xml',1,1715737878,'',NULL,NULL),(9,'Joomdle','extension','http://www.joomdle.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=1',1,1715737880,'',NULL,NULL);
/*!40000 ALTER TABLE `cdxam_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_update_sites_extensions`
--

DROP TABLE IF EXISTS `cdxam_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_update_sites_extensions`
--

LOCK TABLES `cdxam_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `cdxam_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `cdxam_update_sites_extensions` VALUES (1,229),(2,230),(2,237),(3,24),(4,246),(6,264),(7,268),(8,273),(9,274);
/*!40000 ALTER TABLE `cdxam_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_updates`
--

DROP TABLE IF EXISTS `cdxam_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(4) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=844 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_updates`
--

LOCK TABLES `cdxam_updates` WRITE;
/*!40000 ALTER TABLE `cdxam_updates` DISABLE KEYS */;
INSERT INTO `cdxam_updates` VALUES (788,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'4.4.2.2','','https://update.joomla.org/language/details4/af-ZA_details.xml','','',''),(789,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'4.0.2.1','','https://update.joomla.org/language/details4/ar-AA_details.xml','','',''),(790,2,0,'Basque','','pkg_eu-ES','package','',0,'4.4.3.5','','https://update.joomla.org/language/details4/eu-ES_details.xml','','',''),(791,2,0,'Belarusian','','pkg_be-BY','package','',0,'4.4.2.1','','https://update.joomla.org/language/details4/be-BY_details.xml','','',''),(792,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'4.3.3.1','','https://update.joomla.org/language/details4/bg-BG_details.xml','','',''),(793,2,0,'Catalan','','pkg_ca-ES','package','',0,'4.0.4.2','','https://update.joomla.org/language/details4/ca-ES_details.xml','','',''),(794,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'4.3.0.2','','https://update.joomla.org/language/details4/zh-CN_details.xml','','',''),(795,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'4.4.2.1','','https://update.joomla.org/language/details4/zh-TW_details.xml','','',''),(796,2,0,'Croatian','','pkg_hr-HR','package','',0,'4.3.1.1','','https://update.joomla.org/language/details4/hr-HR_details.xml','','',''),(797,2,0,'Czech','','pkg_cs-CZ','package','',0,'4.4.0.1','','https://update.joomla.org/language/details4/cs-CZ_details.xml','','',''),(798,2,0,'Danish','','pkg_da-DK','package','',0,'4.4.3.1','','https://update.joomla.org/language/details4/da-DK_details.xml','','',''),(799,2,0,'Dutch','','pkg_nl-NL','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/nl-NL_details.xml','','',''),(800,2,0,'English, Australia','','pkg_en-AU','package','',0,'4.4.3.1','','https://update.joomla.org/language/details4/en-AU_details.xml','','',''),(801,2,0,'English, Canada','','pkg_en-CA','package','',0,'4.4.3.1','','https://update.joomla.org/language/details4/en-CA_details.xml','','',''),(802,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'4.4.3.2','','https://update.joomla.org/language/details4/en-NZ_details.xml','','',''),(803,2,0,'English, USA','','pkg_en-US','package','',0,'4.4.3.1','','https://update.joomla.org/language/details4/en-US_details.xml','','',''),(804,2,0,'Estonian','','pkg_et-EE','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/et-EE_details.xml','','',''),(805,2,0,'Finnish','','pkg_fi-FI','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/fi-FI_details.xml','','',''),(806,2,0,'Flemish','','pkg_nl-BE','package','',0,'4.4.0.1','','https://update.joomla.org/language/details4/nl-BE_details.xml','','',''),(807,2,0,'French','','pkg_fr-FR','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/fr-FR_details.xml','','',''),(808,2,0,'French, Canada','','pkg_fr-CA','package','',0,'4.4.3.1','','https://update.joomla.org/language/details4/fr-CA_details.xml','','',''),(809,2,0,'Georgian','','pkg_ka-GE','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/ka-GE_details.xml','','',''),(810,2,0,'German','','pkg_de-DE','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/de-DE_details.xml','','',''),(811,2,0,'German, Austria','','pkg_de-AT','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/de-AT_details.xml','','',''),(812,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/de-LI_details.xml','','',''),(813,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/de-LU_details.xml','','',''),(814,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/de-CH_details.xml','','',''),(815,2,0,'Greek','','pkg_el-GR','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/el-GR_details.xml','','',''),(816,2,0,'Hungarian','','pkg_hu-HU','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/hu-HU_details.xml','','',''),(817,2,0,'Irish','','pkg_ga-IE','package','',0,'4.2.8.1','','https://update.joomla.org/language/details4/ga-IE_details.xml','','',''),(818,2,0,'Italian','','pkg_it-IT','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/it-IT_details.xml','','',''),(819,2,0,'Japanese','','pkg_ja-JP','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/ja-JP_details.xml','','',''),(820,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'4.4.0.3','','https://update.joomla.org/language/details4/kk-KZ_details.xml','','',''),(821,2,0,'Korean','','pkg_ko-KR','package','',0,'4.4.2.1','','https://update.joomla.org/language/details4/ko-KR_details.xml','','',''),(822,2,0,'Latvian','','pkg_lv-LV','package','',0,'4.4.1.1','','https://update.joomla.org/language/details4/lv-LV_details.xml','','',''),(823,2,0,'Lithuanian','','pkg_lt-LT','package','',0,'4.3.4.1','','https://update.joomla.org/language/details4/lt-LT_details.xml','','',''),(824,2,0,'Macedonian','','pkg_mk-MK','package','',0,'4.2.4.1','','https://update.joomla.org/language/details4/mk-MK_details.xml','','',''),(825,2,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'4.0.1.1','','https://update.joomla.org/language/details4/nb-NO_details.xml','','',''),(826,2,0,'Pashto Afghanistan','','pkg_ps-AF','package','',0,'4.3.4.1','','https://update.joomla.org/language/details4/ps-AF_details.xml','','',''),(827,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/fa-IR_details.xml','','',''),(828,2,0,'Polish','','pkg_pl-PL','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/pl-PL_details.xml','','',''),(829,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'4.4.4.3','','https://update.joomla.org/language/details4/pt-BR_details.xml','','',''),(830,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'4.0.0-rc4.2','','https://update.joomla.org/language/details4/pt-PT_details.xml','','',''),(831,2,0,'Romanian','','pkg_ro-RO','package','',0,'4.3.1.1','','https://update.joomla.org/language/details4/ro-RO_details.xml','','',''),(832,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'4.3.2.1','','https://update.joomla.org/language/details4/sr-RS_details.xml','','',''),(833,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'4.4.4.3','','https://update.joomla.org/language/details4/sr-YU_details.xml','','',''),(834,2,0,'Slovak','','pkg_sk-SK','package','',0,'4.4.1.1','','https://update.joomla.org/language/details4/sk-SK_details.xml','','',''),(835,2,0,'Slovenian','','pkg_sl-SI','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/sl-SI_details.xml','','',''),(836,2,0,'Spanish','','pkg_es-ES','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/es-ES_details.xml','','',''),(837,2,0,'Swedish','','pkg_sv-SE','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/sv-SE_details.xml','','',''),(838,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/ta-IN_details.xml','','',''),(839,2,0,'Thai','','pkg_th-TH','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/th-TH_details.xml','','',''),(840,2,0,'Turkish','','pkg_tr-TR','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/tr-TR_details.xml','','',''),(841,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'4.4.1.1','','https://update.joomla.org/language/details4/uk-UA_details.xml','','',''),(842,2,0,'Vietnamese','','pkg_vi-VN','package','',0,'4.2.2.1','','https://update.joomla.org/language/details4/vi-VN_details.xml','','',''),(843,2,0,'Welsh','','pkg_cy-GB','package','',0,'4.4.4.1','','https://update.joomla.org/language/details4/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `cdxam_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_user_keys`
--

DROP TABLE IF EXISTS `cdxam_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_user_keys`
--

LOCK TABLES `cdxam_user_keys` WRITE;
/*!40000 ALTER TABLE `cdxam_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_user_mfa`
--

DROP TABLE IF EXISTS `cdxam_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0',
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT '0',
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_user_mfa`
--

LOCK TABLES `cdxam_user_mfa` WRITE;
/*!40000 ALTER TABLE `cdxam_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_user_notes`
--

DROP TABLE IF EXISTS `cdxam_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_user_notes`
--

LOCK TABLES `cdxam_user_notes` WRITE;
/*!40000 ALTER TABLE `cdxam_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_user_profiles`
--

DROP TABLE IF EXISTS `cdxam_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_user_profiles`
--

LOCK TABLES `cdxam_user_profiles` WRITE;
/*!40000 ALTER TABLE `cdxam_user_profiles` DISABLE KEYS */;
INSERT INTO `cdxam_user_profiles` VALUES (567,'joomlatoken.enabled','1',2),(567,'joomlatoken.token','ShyEC0t4q/sfHjA4wIJFNLWQZttigFThWvFpK9/zQ6s=',1);
/*!40000 ALTER TABLE `cdxam_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_user_usergroup_map`
--

DROP TABLE IF EXISTS `cdxam_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_user_usergroup_map`
--

LOCK TABLES `cdxam_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `cdxam_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `cdxam_user_usergroup_map` VALUES (567,8),(568,2),(569,2);
/*!40000 ALTER TABLE `cdxam_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_usergroups`
--

DROP TABLE IF EXISTS `cdxam_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_usergroups`
--

LOCK TABLES `cdxam_usergroups` WRITE;
/*!40000 ALTER TABLE `cdxam_usergroups` DISABLE KEYS */;
INSERT INTO `cdxam_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `cdxam_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_users`
--

DROP TABLE IF EXISTS `cdxam_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_users`
--

LOCK TABLES `cdxam_users` WRITE;
/*!40000 ALTER TABLE `cdxam_users` DISABLE KEYS */;
INSERT INTO `cdxam_users` VALUES (567,'Георгий','admin','zhoraloktionov345@gmail.com','$2y$10$6a210sVOdVcfu3AgqrwnsuyiabVqys0Vb152ivOsErQ4kqAugaEDe',0,1,'2024-05-13 10:02:59','2024-05-15 02:46:11','0','{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"\",\"webauthn_webauthn\":null}',NULL,0,'','',0,''),(568,'Олег','oleg_1','oleg_1@gmail.com','$2y$10$zK/f1BwR/TrizfV7SqolTeoyNEBZ/cupZBq2OWlc4gAR46Eea1MKm',0,0,'2024-05-13 23:57:22','2024-05-14 23:00:41','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"webauthn_webauthn\":null,\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}',NULL,0,'','',0,''),(569,'Егор Карпов','egor_ka','egor-ka@gmail.com','$2y$10$qMxxlQx304bArrJupx7kl.0YmSymKs9/8re6aYLzk/Ngqr8K9oa8C',0,0,'2024-05-14 22:04:24','2024-05-15 02:46:20','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\",\"webauthn_webauthn\":null}',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `cdxam_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_viewlevels`
--

DROP TABLE IF EXISTS `cdxam_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_viewlevels`
--

LOCK TABLES `cdxam_viewlevels` WRITE;
/*!40000 ALTER TABLE `cdxam_viewlevels` DISABLE KEYS */;
INSERT INTO `cdxam_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `cdxam_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_webauthn_credentials`
--

DROP TABLE IF EXISTS `cdxam_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_webauthn_credentials`
--

LOCK TABLES `cdxam_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `cdxam_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdxam_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_workflow_associations`
--

DROP TABLE IF EXISTS `cdxam_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_workflow_associations`
--

LOCK TABLES `cdxam_workflow_associations` WRITE;
/*!40000 ALTER TABLE `cdxam_workflow_associations` DISABLE KEYS */;
INSERT INTO `cdxam_workflow_associations` VALUES (1,1,'com_content.article'),(2,1,'com_content.article');
/*!40000 ALTER TABLE `cdxam_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_workflow_stages`
--

DROP TABLE IF EXISTS `cdxam_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_workflow_stages`
--

LOCK TABLES `cdxam_workflow_stages` WRITE;
/*!40000 ALTER TABLE `cdxam_workflow_stages` DISABLE KEYS */;
INSERT INTO `cdxam_workflow_stages` VALUES (1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL);
/*!40000 ALTER TABLE `cdxam_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_workflow_transitions`
--

DROP TABLE IF EXISTS `cdxam_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_workflow_transitions`
--

LOCK TABLES `cdxam_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `cdxam_workflow_transitions` DISABLE KEYS */;
INSERT INTO `cdxam_workflow_transitions` VALUES (1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),(2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),(3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),(4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),(5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),(6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),(7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `cdxam_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdxam_workflows`
--

DROP TABLE IF EXISTS `cdxam_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdxam_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdxam_workflows`
--

LOCK TABLES `cdxam_workflows` WRITE;
/*!40000 ALTER TABLE `cdxam_workflows` DISABLE KEYS */;
INSERT INTO `cdxam_workflows` VALUES (1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2024-05-13 10:02:57',567,'2024-05-13 10:02:57',567,NULL,NULL);
/*!40000 ALTER TABLE `cdxam_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vkop49_hub'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15  6:27:56
