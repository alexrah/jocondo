-- MySQL dump 10.13  Distrib 5.1.67, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: jocondo
-- ------------------------------------------------------
-- Server version	5.1.67

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `i92ks_assets`
--

DROP TABLE IF EXISTS `i92ks_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_assets`
--

LOCK TABLES `i92ks_assets` WRITE;
/*!40000 ALTER TABLE `i92ks_assets` DISABLE KEYS */;
INSERT INTO `i92ks_assets` VALUES (1,0,0,163,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1},\"attachments.delete.own\":{\"6\":1,\"3\":1},\"attachments.edit.state.own\":{\"6\":1,\"4\":1},\"attachments.edit.state.ownparent\":{\"6\":1,\"4\":1},\"attachments.edit.ownparent\":{\"6\":1,\"3\":1},\"attachments.delete.ownparent\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,20,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,21,56,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,57,58,1,'com_cpanel','com_cpanel','{}'),(10,1,59,60,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,61,62,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,63,64,1,'com_login','com_login','{}'),(13,1,65,66,1,'com_mailto','com_mailto','{}'),(14,1,67,68,1,'com_massmail','com_massmail','{}'),(15,1,69,70,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,71,72,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,73,74,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,75,124,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,125,128,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,129,130,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,131,132,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,133,134,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,135,136,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,137,140,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,141,144,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,145,146,1,'com_wrapper','com_wrapper','{}'),(27,8,22,23,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,126,127,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,142,143,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,138,139,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,147,148,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,149,150,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,151,152,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,153,154,1,'com_contenthistory','com_contenthistory','{}'),(37,1,155,156,1,'com_ajax','com_ajax','{}'),(38,1,157,158,1,'com_postinstall','com_postinstall','{}'),(39,18,76,77,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,78,79,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,80,81,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,82,83,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,84,85,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,86,87,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,88,89,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,90,91,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,92,93,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,94,95,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,96,97,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,98,99,2,'com_modules.module.16','Login Form','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(51,18,100,101,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(52,18,102,103,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,104,105,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,57,29,30,3,'com_content.article.1','Homepage pubblica','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,57,25,26,3,'com_content.article.2','Bacheca:','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,57,27,28,3,'com_content.article.3','Homepage condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,8,24,31,2,'com_content.category.8','homepage','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(58,8,32,33,2,'com_content.category.9','schede condo','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(59,8,34,45,2,'com_content.category.10','verbali','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(60,8,46,55,2,'com_content.category.11','fatture','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(61,59,35,36,3,'com_content.article.4','verbale1 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,59,37,38,3,'com_content.article.5','verbale1 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(63,59,39,40,3,'com_content.article.6','verbale2 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(64,60,47,48,3,'com_content.article.7','fattura1 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(65,60,49,50,3,'com_content.article.8','fattura2 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(66,18,106,107,2,'com_modules.module.87','Verbali','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(67,59,41,42,3,'com_content.article.9','verbale2 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(68,60,51,52,3,'com_content.article.10','fattura1 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(69,60,53,54,3,'com_content.article.11','fattura2 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(70,7,16,17,2,'com_contact.category.12','manutentori condo1','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(71,18,108,109,2,'com_modules.module.88','Contact Information Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(72,18,110,111,2,'com_modules.module.89','Manutentori','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(73,7,18,19,2,'com_contact.category.13','manutentori condo 2','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(74,18,112,113,2,'com_modules.module.90','whos online','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(75,1,159,160,1,'com_phocadownload','com_phocadownload','{}'),(76,18,114,115,2,'com_modules.module.91','Bilanci','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(77,18,116,117,2,'com_modules.module.92','Manutentori footer','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(78,1,161,162,1,'com_attachments','com_attachments','{}'),(79,59,43,44,3,'com_content.article.12','verbale3 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(80,18,118,119,2,'com_modules.module.93','Fatture','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(81,18,120,121,2,'com_modules.module.94','Scheda condo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(82,18,122,123,2,'com_modules.module.95','footer','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `i92ks_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_associations`
--

DROP TABLE IF EXISTS `i92ks_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_associations`
--

LOCK TABLES `i92ks_associations` WRITE;
/*!40000 ALTER TABLE `i92ks_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_attachments`
--

DROP TABLE IF EXISTS `i92ks_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(256) NOT NULL,
  `filename_sys` varchar(512) NOT NULL,
  `file_type` varchar(128) NOT NULL,
  `file_size` int(11) unsigned NOT NULL,
  `url` varchar(1024) NOT NULL DEFAULT '',
  `uri_type` enum('file','url') DEFAULT 'file',
  `url_valid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url_relative` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url_verify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_name` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon_filename` varchar(20) NOT NULL,
  `access` int(11) NOT NULL DEFAULT '1',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_field_1` varchar(255) NOT NULL DEFAULT '',
  `user_field_2` varchar(255) NOT NULL DEFAULT '',
  `user_field_3` varchar(255) NOT NULL DEFAULT '',
  `parent_type` varchar(100) NOT NULL DEFAULT 'com_content',
  `parent_entity` varchar(100) NOT NULL DEFAULT 'article',
  `parent_id` int(11) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `download_count` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_attachments`
--

LOCK TABLES `i92ks_attachments` WRITE;
/*!40000 ALTER TABLE `i92ks_attachments` DISABLE KEYS */;
INSERT INTO `i92ks_attachments` VALUES (1,'Leaflet k2 beauty system.pdf','/home/webcondo/public_html/jocondo/attachments/article/4/Leaflet k2 beauty system.pdf','application/pdf',328884,'attachments/article/4/Leaflet k2 beauty system.pdf','file',0,0,0,'scarica verbale','','pdf.gif',2,1,'','','','com_content','article',4,'2014-02-25 18:07:35',431,'2014-02-25 18:07:35',431,0);
/*!40000 ALTER TABLE `i92ks_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_banner_clients`
--

DROP TABLE IF EXISTS `i92ks_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_banner_clients`
--

LOCK TABLES `i92ks_banner_clients` WRITE;
/*!40000 ALTER TABLE `i92ks_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_banner_tracks`
--

DROP TABLE IF EXISTS `i92ks_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_banner_tracks`
--

LOCK TABLES `i92ks_banner_tracks` WRITE;
/*!40000 ALTER TABLE `i92ks_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_banners`
--

DROP TABLE IF EXISTS `i92ks_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_banners`
--

LOCK TABLES `i92ks_banners` WRITE;
/*!40000 ALTER TABLE `i92ks_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_categories`
--

DROP TABLE IF EXISTS `i92ks_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_categories`
--

LOCK TABLES `i92ks_categories` WRITE;
/*!40000 ALTER TABLE `i92ks_categories` DISABLE KEYS */;
INSERT INTO `i92ks_categories` VALUES (1,0,0,0,25,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,57,1,13,14,1,'homepage','com_content','homepage','homepage','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:54:54',0,'0000-00-00 00:00:00',0,'*',1),(9,58,1,15,16,1,'schede-condo','com_content','schede condo','schede-condo','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:55:51',0,'0000-00-00 00:00:00',0,'*',1),(10,59,1,17,18,1,'verbali','com_content','verbali','verbali','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:55:57',0,'0000-00-00 00:00:00',0,'*',1),(11,60,1,19,20,1,'fatture','com_content','fatture','fatture','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:56:07',0,'0000-00-00 00:00:00',0,'*',1),(12,70,1,21,22,1,'manutentori-condo1','com_contact','manutentori condo1','manutentori-condo1','','',1,0,'0000-00-00 00:00:00',7,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 16:31:31',431,'2014-02-25 16:49:05',0,'*',1),(13,73,1,23,24,1,'manutentori-condo-2','com_contact','manutentori condo 2','manutentori-condo-2','','',1,0,'0000-00-00 00:00:00',8,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 16:48:47',431,'2014-02-25 17:00:31',0,'*',1);
/*!40000 ALTER TABLE `i92ks_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_contact_details`
--

DROP TABLE IF EXISTS `i92ks_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_contact_details`
--

LOCK TABLES `i92ks_contact_details` WRITE;
/*!40000 ALTER TABLE `i92ks_contact_details` DISABLE KEYS */;
INSERT INTO `i92ks_contact_details` VALUES (1,'manutentore1','manutentore1','idraulico','via dei mille, 24','Albenga','','','20100','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/789px_spottedquoll_2005_seanmcclean.jpg','idraulico@test.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,12,7,'339.234.23.23','','','','','*','2014-02-25 16:34:15',431,'','2014-02-25 17:03:11',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',3,0),(2,'manutentore2','manutentore1-2','antennista','via dei gazzi, 100','Loano','','','17025','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/180px_koala_ag1.jpg','antennista@test.com',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,12,7,'339.234.23.23','','','','','*','2014-02-25 16:34:21',431,'','2014-02-25 17:03:02',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',3,0),(3,'CONDOMINIO 1','manutentore1','idraulico','via dei mille, 24','Albenga','','','20100','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>','images/sampledata/parks/animals/condo1.png','idraulico@test.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,13,8,'339.234.23.23','','','','','*','2014-02-25 16:34:15',431,'','2014-02-25 18:42:22',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',6,0),(4,'manutentore2','manutentore1-2','antennista','via dei gazzi, 100','Loano','','','17025','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg','antennista@test.com',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,13,8,'339.234.23.23','','','','','*','2014-02-25 16:34:21',431,'','2014-02-25 17:02:39',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',5,0);
/*!40000 ALTER TABLE `i92ks_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_content`
--

DROP TABLE IF EXISTS `i92ks_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_content`
--

LOCK TABLES `i92ks_content` WRITE;
/*!40000 ALTER TABLE `i92ks_content` DISABLE KEYS */;
INSERT INTO `i92ks_content` VALUES (1,54,'Homepage pubblica','homepage-pubblica','<p>homepage pubblica </p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,8,'2014-02-25 15:52:28',431,'','2014-02-25 16:51:33',431,0,'0000-00-00 00:00:00','2014-02-25 15:52:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,2,'','',1,42,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(2,55,'Bacheca:','homepage-condo1','<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}</p>','',1,8,'2014-02-25 15:54:03',431,'','2014-02-25 18:39:44',431,0,'0000-00-00 00:00:00','2014-02-25 15:54:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',14,1,'','',2,92,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(3,56,'Homepage condo2','homepage-condo2','<p>Homepage condo2</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,8,'2014-02-25 15:54:18',431,'','2014-02-25 16:04:07',431,0,'0000-00-00 00:00:00','2014-02-25 15:54:18','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',8,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,61,'verbale1 condo1','verbale1-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:10:22',431,'','2014-02-25 18:11:33',431,0,'0000-00-00 00:00:00','2014-02-25 16:10:22','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,4,'','',7,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,62,'verbale1 condo2','verbale1-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:10:58',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:10:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',8,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,63,'verbale2 condo2','verbale2-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:11:34',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:11:34','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',8,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,64,'fattura1 condo2','fattura1-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:12:40',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:12:40','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',8,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,65,'fattura2 condo2','fattura2-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:12:54',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:12:54','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',8,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,67,'verbale2 condo1','verbale2-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:26:51',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:26:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',7,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,68,'fattura1 condo1','fattura1-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:27:08',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:27:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',7,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,69,'fattura2 condo1','fattura2-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:27:26',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:27:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',7,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,79,'verbale3 condo1','verbale3-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 18:10:32',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 18:10:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',7,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `i92ks_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_content_frontpage`
--

DROP TABLE IF EXISTS `i92ks_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_content_frontpage`
--

LOCK TABLES `i92ks_content_frontpage` WRITE;
/*!40000 ALTER TABLE `i92ks_content_frontpage` DISABLE KEYS */;
INSERT INTO `i92ks_content_frontpage` VALUES (1,2),(2,1);
/*!40000 ALTER TABLE `i92ks_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_content_rating`
--

DROP TABLE IF EXISTS `i92ks_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_content_rating`
--

LOCK TABLES `i92ks_content_rating` WRITE;
/*!40000 ALTER TABLE `i92ks_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_content_types`
--

DROP TABLE IF EXISTS `i92ks_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_content_types`
--

LOCK TABLES `i92ks_content_types` WRITE;
/*!40000 ALTER TABLE `i92ks_content_types` DISABLE KEYS */;
INSERT INTO `i92ks_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `i92ks_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_contentitem_tag_map`
--

DROP TABLE IF EXISTS `i92ks_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_contentitem_tag_map`
--

LOCK TABLES `i92ks_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `i92ks_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_core_log_searches`
--

DROP TABLE IF EXISTS `i92ks_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_core_log_searches`
--

LOCK TABLES `i92ks_core_log_searches` WRITE;
/*!40000 ALTER TABLE `i92ks_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_extensions`
--

DROP TABLE IF EXISTS `i92ks_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_extensions`
--

LOCK TABLES `i92ks_extensions` WRITE;
/*!40000 ALTER TABLE `i92ks_extensions` DISABLE KEYS */;
INSERT INTO `i92ks_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"6e099f01ddeb04f749525ca9ec029177\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2013-12-14\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2013 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.1.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.0.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"February 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Contact Information Module','module','mod_contactinfo','',0,1,0,0,'{\"name\":\"Contact Information Module\",\"type\":\"module\",\"creationDate\":\"February 2013\",\"author\":\"Edward Cupler\",\"copyright\":\"(C) 2013 Digital Greys. All rights reserved.\",\"authorEmail\":\"ecupler@digitalgreys.com\",\"authorUrl\":\"www.digitalgreys.com\",\"version\":\"3.3\",\"description\":\"MOD_CONTACTINFO_XML_DESCRIPTION\",\"group\":\"\"}','{\"layout_style\":\"SeperateLines\",\"separate_code\":\"vert_indent\",\"link_to\":\"1\",\"link_website\":\"1\",\"website_target\":\"0\",\"contact_cid\":\"\",\"show_image\":\"0\",\"link_image\":\"1\",\"thumb_size\":\"100\",\"@spacer\":\"\",\"show_name\":\"0\",\"show_alias\":\"0\",\"con_position\":\"0\",\"show_address\":\"0\",\"show_suburb\":\"0\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"0\",\"show_telephone\":\"0\",\"show_mobile\":\"0\",\"show_fax\":\"0\",\"show_email_to\":\"0\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10001,'com_phocadownload','component','com_phocadownload','',1,1,0,0,'{\"name\":\"com_phocadownload\",\"type\":\"component\",\"creationDate\":\"16\\/11\\/2013\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"3.0.3\",\"description\":\"Phoca Download\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'plg_content_phocadownload','plugin','phocadownload','content',0,1,1,0,'{\"name\":\"plg_content_phocadownload\",\"type\":\"plugin\",\"creationDate\":\"17\\/08\\/2013\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"3.0.1\",\"description\":\"PLG_CONTENT_PHOCADOWNLOAD_DESCRIPTION\",\"group\":\"\"}','{\"icon_size\":\"32\",\"file_icon_mime\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,'plg_content_attachments','plugin','attachments','content',0,1,1,0,'{\"name\":\"plg_content_attachments\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'plg_search_attachments','plugin','attachments','search',0,1,1,0,'{\"name\":\"plg_search_attachments\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_SEARCH_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,'plg_attachments_plugin_framework','plugin','attachments_plugin_framework','attachments',0,1,1,0,'{\"name\":\"plg_attachments_plugin_framework\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2009-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_FOR_COMPONENTS_PLUGIN_FRAMEWORK_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'plg_attachments_for_content','plugin','attachments_for_content','attachments',0,1,1,0,'{\"name\":\"plg_attachments_for_content\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2009-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_FOR_CONTENT_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'plg_system_show_attachments_in_editor','plugin','show_attachments','system',0,1,1,0,'{\"name\":\"plg_system_show_attachments_in_editor\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2011-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_SHOW_ATTACHMENTS_IN_EDITOR_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'plg_editors-xtd_add_attachment_btn','plugin','add_attachment','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_add_attachment_btn\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ADD_ATTACHMENT_BUTTON_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10009,'plg_editors-xtd_insert_attachments_token_btn','plugin','insert_attachments_token','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_insert_attachments_token_btn\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_INSERT_ATTACHMENTS_TOKEN_BUTTON_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10010,'plg_quickicon_attachments','plugin','attachments','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_attachments\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"PLG_QUICKICON_ATTACHMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"context\":\"mod_quickicon\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,'com_attachments','component','com_attachments','',1,1,0,0,'{\"name\":\"com_attachments\",\"type\":\"component\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments3\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_COMPONENT_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10012,'attachments','package','pkg_attachments','',0,1,1,0,'{\"name\":\"pkg_attachments\",\"type\":\"package\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_PACKAGE_ATTACHMENTS_FOR_JOOMLA_16PLUS\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `i92ks_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_filters`
--

DROP TABLE IF EXISTS `i92ks_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_filters`
--

LOCK TABLES `i92ks_finder_filters` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links`
--

DROP TABLE IF EXISTS `i92ks_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links`
--

LOCK TABLES `i92ks_finder_links` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms0`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms0`
--

LOCK TABLES `i92ks_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms1`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms1`
--

LOCK TABLES `i92ks_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms2`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms2`
--

LOCK TABLES `i92ks_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms3`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms3`
--

LOCK TABLES `i92ks_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms4`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms4`
--

LOCK TABLES `i92ks_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms5`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms5`
--

LOCK TABLES `i92ks_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms6`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms6`
--

LOCK TABLES `i92ks_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms7`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms7`
--

LOCK TABLES `i92ks_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms8`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms8`
--

LOCK TABLES `i92ks_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_terms9`
--

DROP TABLE IF EXISTS `i92ks_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_terms9`
--

LOCK TABLES `i92ks_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_termsa`
--

DROP TABLE IF EXISTS `i92ks_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_termsa`
--

LOCK TABLES `i92ks_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_termsb`
--

DROP TABLE IF EXISTS `i92ks_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_termsb`
--

LOCK TABLES `i92ks_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_termsc`
--

DROP TABLE IF EXISTS `i92ks_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_termsc`
--

LOCK TABLES `i92ks_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_termsd`
--

DROP TABLE IF EXISTS `i92ks_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_termsd`
--

LOCK TABLES `i92ks_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_termse`
--

DROP TABLE IF EXISTS `i92ks_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_termse`
--

LOCK TABLES `i92ks_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_links_termsf`
--

DROP TABLE IF EXISTS `i92ks_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_links_termsf`
--

LOCK TABLES `i92ks_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_taxonomy`
--

DROP TABLE IF EXISTS `i92ks_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_taxonomy`
--

LOCK TABLES `i92ks_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `i92ks_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `i92ks_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `i92ks_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_taxonomy_map`
--

LOCK TABLES `i92ks_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_terms`
--

DROP TABLE IF EXISTS `i92ks_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_terms`
--

LOCK TABLES `i92ks_finder_terms` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_terms_common`
--

DROP TABLE IF EXISTS `i92ks_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_terms_common`
--

LOCK TABLES `i92ks_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_terms_common` DISABLE KEYS */;
INSERT INTO `i92ks_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `i92ks_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_tokens`
--

DROP TABLE IF EXISTS `i92ks_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_tokens`
--

LOCK TABLES `i92ks_finder_tokens` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `i92ks_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_tokens_aggregate`
--

LOCK TABLES `i92ks_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_finder_types`
--

DROP TABLE IF EXISTS `i92ks_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_types`
--

LOCK TABLES `i92ks_finder_types` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_languages`
--

DROP TABLE IF EXISTS `i92ks_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_languages`
--

LOCK TABLES `i92ks_languages` WRITE;
/*!40000 ALTER TABLE `i92ks_languages` DISABLE KEYS */;
INSERT INTO `i92ks_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `i92ks_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_menu`
--

DROP TABLE IF EXISTS `i92ks_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_menu`
--

LOCK TABLES `i92ks_menu` WRITE;
/*!40000 ALTER TABLE `i92ks_menu` DISABLE KEYS */;
INSERT INTO `i92ks_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,87,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',39,40,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',43,44,0,'',1),(24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"RivieraHouse Intranet\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,1,'*',0),(102,'mainmenu','privato','condo1','','condo1','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"RivieraHouse Intranet\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'*',0),(103,'mainmenu','condo2','condo2','','condo2','index.php?option=com_content&view=article&id=3','component',0,1,1,22,0,'0000-00-00 00:00:00',0,8,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',51,52,0,'*',0),(104,'main','COM_PHOCADOWNLOAD','com-phocadownload','','com-phocadownload','index.php?option=com_phocadownload','component',0,1,1,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu.png',0,'',53,80,0,'',1),(105,'main','COM_PHOCADOWNLOAD_CONTROLPANEL','com-phocadownload-controlpanel','','com-phocadownload/com-phocadownload-controlpanel','index.php?option=com_phocadownload','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-control-panel.png',0,'',54,55,0,'',1),(106,'main','COM_PHOCADOWNLOAD_FILES','com-phocadownload-files','','com-phocadownload/com-phocadownload-files','index.php?option=com_phocadownload&view=phocadownloadfiles','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-files.png',0,'',56,57,0,'',1),(107,'main','COM_PHOCADOWNLOAD_CATEGORIES','com-phocadownload-categories','','com-phocadownload/com-phocadownload-categories','index.php?option=com_phocadownload&view=phocadownloadcats','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-category.png',0,'',58,59,0,'',1),(108,'main','COM_PHOCADOWNLOAD_LICENSES','com-phocadownload-licenses','','com-phocadownload/com-phocadownload-licenses','index.php?option=com_phocadownload&view=phocadownloadlics','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-lic.png',0,'',60,61,0,'',1),(109,'main','COM_PHOCADOWNLOAD_STATISTICS','com-phocadownload-statistics','','com-phocadownload/com-phocadownload-statistics','index.php?option=com_phocadownload&view=phocadownloadstat','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-stat.png',0,'',62,63,0,'',1),(110,'main','COM_PHOCADOWNLOAD_DOWNLOADS','com-phocadownload-downloads','','com-phocadownload/com-phocadownload-downloads','index.php?option=com_phocadownload&view=phocadownloaddownloads','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-downloads.png',0,'',64,65,0,'',1),(111,'main','COM_PHOCADOWNLOAD_UPLOADS','com-phocadownload-uploads','','com-phocadownload/com-phocadownload-uploads','index.php?option=com_phocadownload&view=phocadownloaduploads','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-uploads.png',0,'',66,67,0,'',1),(112,'main','COM_PHOCADOWNLOAD_FILE_RATING','com-phocadownload-file-rating','','com-phocadownload/com-phocadownload-file-rating','index.php?option=com_phocadownload&view=phocadownloadrafile','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-vote-file.png',0,'',68,69,0,'',1),(113,'main','COM_PHOCADOWNLOAD_TAGS','com-phocadownload-tags','','com-phocadownload/com-phocadownload-tags','index.php?option=com_phocadownload&view=phocadownloadtags','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-tags.png',0,'',70,71,0,'',1),(114,'main','COM_PHOCADOWNLOAD_LAYOUT','com-phocadownload-layout','','com-phocadownload/com-phocadownload-layout','index.php?option=com_phocadownload&view=phocadownloadlayouts','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-layout.png',0,'',72,73,0,'',1),(115,'main','COM_PHOCADOWNLOAD_STYLES','com-phocadownload-styles','','com-phocadownload/com-phocadownload-styles','index.php?option=com_phocadownload&view=phocadownloadstyles','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-style.png',0,'',74,75,0,'',1),(116,'main','COM_PHOCADOWNLOAD_LOGGING','com-phocadownload-logging','','com-phocadownload/com-phocadownload-logging','index.php?option=com_phocadownload&view=phocadownloadlogs','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-logs.png',0,'',76,77,0,'',1),(117,'main','COM_PHOCADOWNLOAD_INFO','com-phocadownload-info','','com-phocadownload/com-phocadownload-info','index.php?option=com_phocadownload&view=phocadownloadinfo','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-info.png',0,'',78,79,0,'',1),(118,'main','ATTACH_ATTACHMENTS','attach-attachments','','attach-attachments','index.php?option=com_attachments','component',0,1,1,10011,0,'0000-00-00 00:00:00',0,1,'../media/com_attachments/images/attachments.png',0,'',81,86,0,'',1),(119,'main','ATTACH_ADD_NEW_ATTACHMENT','attach-add-new-attachment','','attach-attachments/attach-add-new-attachment','index.php?option=com_attachments&task=attachment.add','component',0,118,2,10011,0,'0000-00-00 00:00:00',0,1,'class:newarticle',0,'',82,83,0,'',1),(120,'main','JTOOLBAR_OPTIONS','jtoolbar-options','','attach-attachments/jtoolbar-options','index.php?option=com_attachments&task=params.edit','component',0,118,2,10011,0,'0000-00-00 00:00:00',0,1,'class:config',0,'',84,85,0,'',1);
/*!40000 ALTER TABLE `i92ks_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_menu_types`
--

DROP TABLE IF EXISTS `i92ks_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_menu_types`
--

LOCK TABLES `i92ks_menu_types` WRITE;
/*!40000 ALTER TABLE `i92ks_menu_types` DISABLE KEYS */;
INSERT INTO `i92ks_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `i92ks_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_messages`
--

DROP TABLE IF EXISTS `i92ks_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_messages`
--

LOCK TABLES `i92ks_messages` WRITE;
/*!40000 ALTER TABLE `i92ks_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_messages_cfg`
--

DROP TABLE IF EXISTS `i92ks_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_messages_cfg`
--

LOCK TABLES `i92ks_messages_cfg` WRITE;
/*!40000 ALTER TABLE `i92ks_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_modules`
--

DROP TABLE IF EXISTS `i92ks_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_modules`
--

LOCK TABLES `i92ks_modules` WRITE;
/*!40000 ALTER TABLE `i92ks_modules` DISABLE KEYS */;
INSERT INTO `i92ks_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,56,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,57,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,58,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,59,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,60,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,61,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,62,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,63,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,64,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,65,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',3,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"102\",\"logout\":\"101\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(79,68,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,69,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,66,'Verbali','','',1,'verbali',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"0\",\"show_front\":\"show\",\"count\":\"3\",\"category_filtering_type\":\"1\",\"catid\":[\"10\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"year\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"1\",\"introtext_limit\":\"300\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,71,'Contact Information Module','','',4,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_contactinfo',1,1,'{\"layout_style\":\"OneLine\",\"separate_code\":\"hr\",\"link_to\":\"1\",\"link_website\":\"1\",\"website_target\":\"0\",\"contact_cid\":\"\",\"show_image\":\"1\",\"link_image\":\"0\",\"thumb_size\":\"100\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,72,'Manutentori','','',6,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_contactinfo',2,1,'{\"layout_style\":\"OneLine\",\"separate_code\":\"hr\",\"link_to\":\"0\",\"link_website\":\"0\",\"website_target\":\"0\",\"contact_cid\":\"1, 2\",\"show_image\":\"1\",\"link_image\":\"0\",\"thumb_size\":\"100\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"1\",\"show_country\":\"0\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,74,'whos online','','',2,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',2,1,'{\"showmode\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"filter_groups\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,76,'Bilanci','','<p>{phocadownload view=category|id=1|target=s}</p>',5,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,77,'Manutentori footer','','',1,'manutentori',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_contactinfo',1,1,'{\"layout_style\":\"OneLine\",\"separate_code\":\"br\",\"link_to\":\"0\",\"link_website\":\"0\",\"website_target\":\"0\",\"contact_cid\":\"1, 2, 3, 4, 5, 6, 7, 8, 9, 10\",\"show_image\":\"1\",\"link_image\":\"0\",\"thumb_size\":\"50\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"1\",\"show_country\":\"0\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,80,'Fatture','','',1,'fatture',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"0\",\"show_front\":\"show\",\"count\":\"3\",\"category_filtering_type\":\"1\",\"catid\":[\"11\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"year\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"1\",\"introtext_limit\":\"300\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(94,81,'Scheda condo','','',1,'banner',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_contactinfo',2,0,'{\"layout_style\":\"OneLine\",\"separate_code\":\"div\",\"link_to\":\"0\",\"link_website\":\"0\",\"website_target\":\"0\",\"contact_cid\":\"3\",\"show_image\":\"1\",\"link_image\":\"1\",\"thumb_size\":\"200\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"1\",\"show_country\":\"0\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"1\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"_scheda\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,82,'footer','','<div style=\"background-color: #ccc;\">\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Ufficio: Piazza San Michele 4b, 17031 Albenga (Sv)</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Tel./fax: 0182/543728 - Email: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:info@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">info@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Orari di apertura:</b></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Lunedi\' - sabato dalle 9.00 alle 12.00 e dalle 15.00 al 19.00</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Domenica su appuntamento.</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\"> </p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Amministrazioni condominiali:</b> Responsabile: Cinzia Bettella</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 328/4142556 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:cinzia@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">cinzia@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Email amministrazioni condominiali: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:info@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">info@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Intermediazioni immobiliare:</b> Responsabile: Delfino Dott. Alberto</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 333/9356345 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:alberto@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">alberto@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Email immobiliare: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:immobiliare@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">immobiliare@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Consulenza immobiliare e finanziaria: </b>Responsabile: Fabio Montani</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 347/2536989 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:fabio@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">fabio@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Segreteria e contabilita\':</b> Responsabile: Montani Dott. Stefano</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; font-family: Arial, Helvetica, sans-serif; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 393/9218825 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:stefano@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">stefano@rivierahouse.it</span></a></p>\r\n</div>',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `i92ks_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_modules_menu`
--

DROP TABLE IF EXISTS `i92ks_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_modules_menu`
--

LOCK TABLES `i92ks_modules_menu` WRITE;
/*!40000 ALTER TABLE `i92ks_modules_menu` DISABLE KEYS */;
INSERT INTO `i92ks_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,-101),(79,0),(86,0),(87,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0);
/*!40000 ALTER TABLE `i92ks_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_newsfeeds`
--

DROP TABLE IF EXISTS `i92ks_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_newsfeeds`
--

LOCK TABLES `i92ks_newsfeeds` WRITE;
/*!40000 ALTER TABLE `i92ks_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_overrider`
--

DROP TABLE IF EXISTS `i92ks_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_overrider`
--

LOCK TABLES `i92ks_overrider` WRITE;
/*!40000 ALTER TABLE `i92ks_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload`
--

DROP TABLE IF EXISTS `i92ks_phocadownload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sectionid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `filename_play` varchar(250) NOT NULL DEFAULT '',
  `filename_preview` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `author_url` varchar(255) NOT NULL DEFAULT '',
  `license` varchar(255) NOT NULL DEFAULT '',
  `license_url` varchar(255) NOT NULL DEFAULT '',
  `image_filename` varchar(255) NOT NULL DEFAULT '',
  `image_filename_spec1` varchar(255) NOT NULL DEFAULT '',
  `image_filename_spec2` varchar(255) NOT NULL DEFAULT '',
  `image_download` varchar(255) NOT NULL DEFAULT '',
  `video_filename` varchar(255) NOT NULL DEFAULT '',
  `link_external` varchar(255) NOT NULL DEFAULT '',
  `mirror1link` varchar(255) NOT NULL DEFAULT '',
  `mirror1title` varchar(255) NOT NULL DEFAULT '',
  `mirror1target` varchar(10) NOT NULL DEFAULT '',
  `mirror2link` varchar(255) NOT NULL DEFAULT '',
  `mirror2title` varchar(255) NOT NULL DEFAULT '',
  `mirror2target` varchar(10) NOT NULL DEFAULT '',
  `description` text,
  `features` text,
  `changelog` text,
  `notes` text,
  `userid` int(11) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL DEFAULT '',
  `directlink` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `textonly` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `confirm_license` int(11) NOT NULL DEFAULT '0',
  `unaccessible_file` int(11) NOT NULL DEFAULT '0',
  `token` char(64) DEFAULT NULL,
  `tokenhits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload`
--

LOCK TABLES `i92ks_phocadownload` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload` DISABLE KEYS */;
INSERT INTO `i92ks_phocadownload` VALUES (1,1,0,0,0,'Bilancio 2013','bilancio-2013','investimento k2 beauty system.doc','','',0,'','','','','','','','','','','','','','_self','','','_self','','','','',0,'',0,'2014-02-25 17:43:32','2014-02-25 17:43:32','0000-00-00 00:00:00',0,0,1,1,0,'0000-00-00 00:00:00',1,7,0,0,'',0,NULL,'','',NULL,'*');
/*!40000 ALTER TABLE `i92ks_phocadownload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_categories`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `section` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `uploaduserid` text,
  `accessuserid` text,
  `deleteuserid` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_categories`
--

LOCK TABLES `i92ks_phocadownload_categories` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_categories` DISABLE KEYS */;
INSERT INTO `i92ks_phocadownload_categories` VALUES (1,0,0,'Bilanci','','bilanci','','','',1,0,'0000-00-00 00:00:00',NULL,1,2,'0','0','0','2014-02-25 17:41:32',0,0,NULL,'','',NULL,'*');
/*!40000 ALTER TABLE `i92ks_phocadownload_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_file_votes`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_file_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_file_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_file_votes`
--

LOCK TABLES `i92ks_phocadownload_file_votes` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_file_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_file_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_file_votes_statistics`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_file_votes_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_file_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_file_votes_statistics`
--

LOCK TABLES `i92ks_phocadownload_file_votes_statistics` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_file_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_file_votes_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_layout`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories` text,
  `category` text,
  `file` text,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_layout`
--

LOCK TABLES `i92ks_phocadownload_layout` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_layout` DISABLE KEYS */;
INSERT INTO `i92ks_phocadownload_layout` VALUES (1,'<div class=\"pd-categoriesbox\">\r\n<div class=\"pd-title\">{pdtitle}</div>\r\n{pdsubcategories}\r\n{pdclear}\r\n</div>','<div class=\"pd-filebox\">\r\n{pdfiledesctop}\r\n{pdfile}\r\n<div class=\"pd-buttons\">{pdbuttondownload}</div>\r\n<div class=\"pd-buttons\">{pdbuttondetails}</div>\r\n<div class=\"pd-buttons\">{pdbuttonpreview}</div>\r\n<div class=\"pd-buttons\">{pdbuttonplay}</div>\r\n<div class=\"pd-mirrors\">{pdmirrorlink2} {pdmirrorlink1}</div>\r\n<div class=\"pd-rating\">{pdrating}</div>\r\n<div class=\"pd-tags\">{pdtags}</div>\r\n{pdfiledescbottom}\r\n<div class=\"pd-cb\"></div>\r\n</div>','<div class=\"pd-filebox\">\r\n{pdimage}\r\n{pdfile}\r\n{pdfilesize}\r\n{pdversion}\r\n{pdlicense}\r\n{pdauthor}\r\n{pdauthoremail}\r\n{pdfiledate}\r\n{pddownloads}\r\n{pddescription}\r\n{pdfeatures}\r\n{pdchangelog}\r\n{pdnotes}\r\n<div class=\"pd-mirrors\">{pdmirrorlink2} {pdmirrorlink1}</div>\r\n<div class=\"pd-report\">{pdreportlink}</div>\r\n<div class=\"pd-rating\">{pdrating}</div>\r\n<div class=\"pd-tags\">{pdtags}</div>\r\n<div class=\"pd-cb\"></div>\r\n</div>',0,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `i92ks_phocadownload_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_licenses`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_licenses`
--

LOCK TABLES `i92ks_phocadownload_licenses` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_logging`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_logging` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_logging`
--

LOCK TABLES `i92ks_phocadownload_logging` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_styles`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_styles`
--

LOCK TABLES `i92ks_phocadownload_styles` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_styles` DISABLE KEYS */;
INSERT INTO `i92ks_phocadownload_styles` VALUES (1,'Phocadownload','phocadownload','phocadownload.css',NULL,1,1,0,'0000-00-00 00:00:00',1,NULL,'*'),(2,'Rating','rating','rating.css',NULL,1,1,0,'0000-00-00 00:00:00',2,NULL,'*'),(3,'Button','button','button.css',NULL,1,0,0,'0000-00-00 00:00:00',3,NULL,'*'),(4,'Button (Rounded Corners)','','buttonrc.css',NULL,1,0,0,'0000-00-00 00:00:00',4,NULL,'*'),(5,'Default','default','default.css',NULL,2,1,0,'0000-00-00 00:00:00',1,NULL,'*'),(6,'Bootstrap','','bootstrap.min.css',NULL,1,0,0,'0000-00-00 00:00:00',5,NULL,'*');
/*!40000 ALTER TABLE `i92ks_phocadownload_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_tags`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_tags`
--

LOCK TABLES `i92ks_phocadownload_tags` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_tags_ref`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_tags_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_fileid` (`fileid`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_tags_ref`
--

LOCK TABLES `i92ks_phocadownload_tags_ref` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_tags_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_tags_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_phocadownload_user_stat`
--

DROP TABLE IF EXISTS `i92ks_phocadownload_user_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_phocadownload_user_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_phocadownload_user_stat`
--

LOCK TABLES `i92ks_phocadownload_user_stat` WRITE;
/*!40000 ALTER TABLE `i92ks_phocadownload_user_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_phocadownload_user_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_postinstall_messages`
--

DROP TABLE IF EXISTS `i92ks_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_postinstall_messages`
--

LOCK TABLES `i92ks_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `i92ks_postinstall_messages` DISABLE KEYS */;
INSERT INTO `i92ks_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `i92ks_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_redirect_links`
--

DROP TABLE IF EXISTS `i92ks_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_redirect_links`
--

LOCK TABLES `i92ks_redirect_links` WRITE;
/*!40000 ALTER TABLE `i92ks_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_schemas`
--

DROP TABLE IF EXISTS `i92ks_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_schemas`
--

LOCK TABLES `i92ks_schemas` WRITE;
/*!40000 ALTER TABLE `i92ks_schemas` DISABLE KEYS */;
INSERT INTO `i92ks_schemas` VALUES (700,'3.2.2-2014-01-23'),(10001,'3.0.2'),(10011,'3.1-2013-04-29');
/*!40000 ALTER TABLE `i92ks_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_session`
--

DROP TABLE IF EXISTS `i92ks_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_session`
--

LOCK TABLES `i92ks_session` WRITE;
/*!40000 ALTER TABLE `i92ks_session` DISABLE KEYS */;
INSERT INTO `i92ks_session` VALUES ('lgb42o2fcr7k3tl5jksmhnbrv7',0,0,'1393353826','__default|a:8:{s:15:\"session.counter\";i:37;s:19:\"session.timer.start\";i:1393353188;s:18:\"session.timer.last\";i:1393353743;s:17:\"session.timer.now\";i:1393353826;s:22:\"session.client.browser\";s:81:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:27.0) Gecko/20100101 Firefox/27.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":3:{s:15:\"com_attachments\";O:8:\"stdClass\":1:{s:11:\"current_url\";s:70:\"&return=aHR0cDovL3dlYmNvbmRvLnRrL2pvY29uZG8vaW5kZXgucGhwL2NvbmRvMT8%3D\";}s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":2:{s:6:\"return\";s:20:\"index.php?Itemid=102\";s:4:\"data\";a:0:{}}}}s:13:\"rememberLogin\";b:1;}}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";s:3:\"435\";s:4:\"name\";s:11:\"user2condo2\";s:8:\"username\";s:11:\"user2condo2\";s:5:\"email\";s:34:\"user2condo2@alexrah.otherinbox.com\";s:8:\"password\";s:34:\"$P$DtxnHOpX0rxGHeCX4UBQ3Xsj8Cqtfu/\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"0\";s:12:\"registerDate\";s:19:\"2014-02-25 16:00:28\";s:13:\"lastvisitDate\";s:19:\"2014-02-25 18:33:07\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:92:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:2:{i:2;s:1:\"2\";i:11;s:2:\"11\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}}s:14:\"\\0\\0\\0_authGroups\";a:3:{i:0;i:1;i:1;i:2;i:4;i:11;}s:14:\"\\0\\0\\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:8;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"52abc9c27c076c2975b56bc2210b8aa4\";}',435,'user2condo2'),('vf2kcnn9tanhnvruu17ma2bko2',1,0,'1393353742','__default|a:8:{s:15:\"session.counter\";i:812;s:19:\"session.timer.start\";i:1393343377;s:18:\"session.timer.last\";i:1393353742;s:17:\"session.timer.now\";i:1393353742;s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":15:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"en-GB\";}s:13:\"com_installer\";O:8:\"stdClass\":3:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";s:12:\"redirect_url\";N;}s:11:\"com_content\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}}s:14:\"com_categories\";O:8:\"stdClass\":2:{s:10:\"categories\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_contact\";}}s:4:\"edit\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}}s:9:\"com_users\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":3:{s:5:\"group\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}s:4:\"user\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}s:5:\"level\";O:8:\"stdClass\":1:{s:4:\"data\";N;}}s:6:\"levels\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":1:{s:6:\"search\";s:0:\"\";}s:8:\"ordercol\";s:10:\"a.ordering\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";s:1:\"0\";}}s:11:\"com_modules\";O:8:\"stdClass\":3:{s:7:\"modules\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":8:{s:18:\"client_id_previous\";i:0;s:6:\"search\";s:0:\"\";s:6:\"access\";i:0;s:5:\"state\";s:0:\"\";s:8:\"position\";s:0:\"\";s:6:\"module\";s:0:\"\";s:9:\"client_id\";i:0;s:8:\"language\";s:0:\"\";}s:8:\"ordercol\";s:8:\"ordering\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";s:1:\"0\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}s:3:\"add\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:12:\"extension_id\";N;s:6:\"params\";N;}}}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":5:{s:4:\"type\";N;s:4:\"link\";N;s:4:\"data\";N;s:8:\"menutype\";s:8:\"mainmenu\";s:2:\"id\";a:0:{}}}s:5:\"items\";O:8:\"stdClass\":3:{s:8:\"menutype\";s:8:\"mainmenu\";s:10:\"limitstart\";i:0;s:4:\"list\";a:4:{s:9:\"direction\";s:3:\"asc\";s:5:\"limit\";s:2:\"20\";s:8:\"ordering\";s:5:\"a.lft\";s:5:\"start\";d:0;}}}s:11:\"com_contact\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"contact\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}}s:13:\"com_languages\";O:8:\"stdClass\":1:{s:9:\"installed\";O:8:\"stdClass\":1:{s:8:\"ordercol\";s:6:\"a.name\";}}s:13:\"com_templates\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:5:\"style\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:17:\"com_phocadownload\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":3:{s:16:\"phocadownloadcat\";O:8:\"stdClass\":1:{s:4:\"data\";N;}s:17:\"phocadownloadfile\";O:8:\"stdClass\":1:{s:4:\"data\";N;}s:18:\"phocadownloadstyle\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:11:\"com_plugins\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"plugin\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}s:7:\"plugins\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"search\";s:3:\"pho\";s:6:\"access\";i:0;s:7:\"enabled\";s:0:\"\";s:6:\"folder\";s:0:\"\";}s:8:\"ordercol\";s:6:\"folder\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";i:0;}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}s:6:\"editor\";O:8:\"stdClass\":1:{s:6:\"source\";O:8:\"stdClass\":1:{s:6:\"syntax\";s:3:\"css\";}}s:15:\"com_attachments\";O:8:\"stdClass\":1:{s:11:\"current_url\";s:128:\"&return=aHR0cDovL3dlYmNvbmRvLnRrL2pvY29uZG8vYWRtaW5pc3RyYXRvci9pbmRleC5waHA%2Fb3B0aW9uPWNvbV9jb250YWN0JmxheW91dD1lZGl0JmlkPTM%3D\";}}}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"431\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:20:\"webcondo@webcondo.tk\";s:8:\"password\";s:34:\"$P$DRb2A4jjwasdC8dr/FG3QC8wM/TKj0.\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2014-02-24 09:32:38\";s:13:\"lastvisitDate\";s:19:\"2014-02-24 09:33:49\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"7655c624aa020b14bebb0b628e7bb8f1\";}',431,'admin');
/*!40000 ALTER TABLE `i92ks_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_tags`
--

DROP TABLE IF EXISTS `i92ks_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_tags`
--

LOCK TABLES `i92ks_tags` WRITE;
/*!40000 ALTER TABLE `i92ks_tags` DISABLE KEYS */;
INSERT INTO `i92ks_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `i92ks_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_template_styles`
--

DROP TABLE IF EXISTS `i92ks_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_template_styles`
--

LOCK TABLES `i92ks_template_styles` WRITE;
/*!40000 ALTER TABLE `i92ks_template_styles` DISABLE KEYS */;
INSERT INTO `i92ks_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"images\\/logo_rivierahouse.png\",\"sitetitle\":\"RivieraHouse Intranet\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"1\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `i92ks_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_ucm_base`
--

DROP TABLE IF EXISTS `i92ks_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_ucm_base`
--

LOCK TABLES `i92ks_ucm_base` WRITE;
/*!40000 ALTER TABLE `i92ks_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_ucm_content`
--

DROP TABLE IF EXISTS `i92ks_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_ucm_content`
--

LOCK TABLES `i92ks_ucm_content` WRITE;
/*!40000 ALTER TABLE `i92ks_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_ucm_history`
--

DROP TABLE IF EXISTS `i92ks_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_ucm_history`
--

LOCK TABLES `i92ks_ucm_history` WRITE;
/*!40000 ALTER TABLE `i92ks_ucm_history` DISABLE KEYS */;
INSERT INTO `i92ks_ucm_history` VALUES (1,1,1,'','2014-02-25 15:52:28',431,2967,'3c0b33628f736778519f57e6701b9011dff1cc91','{\"id\":1,\"asset_id\":54,\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>homepage pubblica\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,3,1,'','2014-02-25 15:54:18',431,2955,'ff6cc0c49192012a3d03be41d68924f89ce876a4','{\"id\":3,\"asset_id\":56,\"title\":\"Homepage condo2\",\"alias\":\"homepage-condo2\",\"introtext\":\"<p>Homepage condo2<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-02-25 15:54:18\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 15:54:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,8,6,'','2014-02-25 15:54:54',431,517,'83cf2fa581f98186fd5190cd20232b7f0fac8461','{\"id\":8,\"asset_id\":57,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"homepage\",\"alias\":\"homepage\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:54:54\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(5,9,6,'','2014-02-25 15:55:51',431,525,'a86bdbfe8d11620ffd6821ec16f3b4b99c7495f9','{\"id\":9,\"asset_id\":58,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"schede condo\",\"alias\":\"schede-condo\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:55:51\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(6,10,6,'','2014-02-25 15:55:57',431,516,'84eef7674d4b20a94f55744e5a4ef066fc76a8ae','{\"id\":10,\"asset_id\":59,\"parent_id\":\"1\",\"lft\":\"17\",\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"verbali\",\"alias\":\"verbali\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:55:57\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(7,11,6,'','2014-02-25 15:56:07',431,516,'9d2609f932c8077c0b51ea78ba93d798b194f179','{\"id\":11,\"asset_id\":60,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"fatture\",\"alias\":\"fatture\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:56:07\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(9,3,1,'','2014-02-25 15:56:50',431,2993,'5847edda3096e210e21ee6e38a30f27fbcfd2c19','{\"id\":3,\"asset_id\":\"56\",\"title\":\"Homepage condo2\",\"alias\":\"homepage-condo2\",\"introtext\":\"<p>Homepage condo2<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:18\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 15:56:50\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 15:56:45\",\"publish_up\":\"2014-02-25 15:54:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(10,1,1,'','2014-02-25 15:57:02',431,3005,'c8328d7c577c0446681fbea0740d317ebb404505','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>homepage pubblica\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 15:57:02\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 15:56:58\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,2,1,'','2014-02-25 16:03:55',431,2993,'93ea52f1d5e60f01234406d540819d1ded7af1ee','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage condo1\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>homepage condo1<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:03:55\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:03:47\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(14,3,1,'','2014-02-25 16:04:07',431,2993,'de4a55a08c32cd6a47638d40b71d01b55a98aae9','{\"id\":3,\"asset_id\":\"56\",\"title\":\"Homepage condo2\",\"alias\":\"homepage-condo2\",\"introtext\":\"<p>Homepage condo2<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:18\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:04:07\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:03:58\",\"publish_up\":\"2014-02-25 15:54:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(15,4,1,'','2014-02-25 16:10:22',431,2929,'740321f64fe941b726935cafb7bf4c43f11b065e','{\"id\":4,\"asset_id\":61,\"title\":\"verbale1 condo1\",\"alias\":\"verbale1-condo1\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:22\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:10:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(16,5,1,'','2014-02-25 16:10:58',431,2929,'9c891d159e6e6388465dda7b1b48b1c66b2280b1','{\"id\":5,\"asset_id\":62,\"title\":\"verbale1 condo2\",\"alias\":\"verbale1-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:58\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:10:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(17,6,1,'','2014-02-25 16:11:34',431,2929,'449f7a1b260c0571e0c5f936803416e8cf6a93ac','{\"id\":6,\"asset_id\":63,\"title\":\"verbale2 condo2\",\"alias\":\"verbale2-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:11:34\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:11:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,7,1,'','2014-02-25 16:12:40',431,2929,'94c91be6b25b1c799e0cab3a5bf59d5bf058f9ff','{\"id\":7,\"asset_id\":64,\"title\":\"fattura1 condo2\",\"alias\":\"fattura1-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:12:40\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:12:40\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(19,8,1,'','2014-02-25 16:12:54',431,2929,'53aa6b58451d828899b33efd5f1e6fc418f9c66b','{\"id\":8,\"asset_id\":65,\"title\":\"fattura2 condo2\",\"alias\":\"fattura2-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:12:54\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:12:54\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(20,1,1,'','2014-02-25 16:19:22',431,3387,'c25a9d17d937a288a2f4964b00e9aff581f7e60e','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>homepage pubblica\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">\\u00a0<\\/p>\\r\\n<p>{loadposition verbali}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:19:22\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:19:01\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(21,9,1,'','2014-02-25 16:26:51',431,2635,'e95afa2752c004c9a1c2540f3d21996a17cc81fc','{\"id\":9,\"asset_id\":67,\"title\":\"verbale2 condo1\",\"alias\":\"verbale2-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:26:51\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:26:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(22,10,1,'','2014-02-25 16:27:08',431,2636,'eac0b2d4475ab70c9659f5752a883f1e41656896','{\"id\":10,\"asset_id\":68,\"title\":\"fattura1 condo1\",\"alias\":\"fattura1-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:27:08\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:27:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(23,11,1,'','2014-02-25 16:27:26',431,2636,'934dcf062d2d89df3c63c45006fedd964527bcd9','{\"id\":11,\"asset_id\":69,\"title\":\"fattura2 condo1\",\"alias\":\"fattura2-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:27:26\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:27:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(24,12,7,'','2014-02-25 16:31:31',431,524,'ede04b90fc389102338c2f27053d2ce91898a0ab','{\"id\":12,\"asset_id\":70,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_contact\",\"title\":\"manutentori\",\"alias\":\"manutentori\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(25,1,3,'','2014-02-25 16:34:15',431,1761,'42e1576a07376bdcd903eb68959ae6b1e8fd7372','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0),(26,2,3,'','2014-02-25 16:34:21',431,1765,'8e50c388b296ab44d42d9829e0cdd941a42926b3','{\"id\":2,\"name\":\"manutentore1 (2)\",\"alias\":\"manutentore1-2\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":0,\"checked_out\":null,\"checked_out_time\":null,\"ordering\":2,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0),(27,2,3,'','2014-02-25 16:35:28',431,2766,'7814a94793546cddac10ac948c7757d8dcbd08f1','{\"id\":2,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:34:21\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:28\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"0\"}',0),(28,1,3,'','2014-02-25 16:35:37',431,2783,'2468444c354df9994afb51d4a5d7a4bb52b8bb3f','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:35:31\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:37\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"0\"}',0),(29,12,7,'','2014-02-25 16:48:37',431,581,'6f07689d9a4bfaa2f7576bdea423deae2aa932b0','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"manutentori\",\"extension\":\"com_contact\",\"title\":\"manutentori condo1\",\"alias\":\"manutentori\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:48:26\",\"access\":\"7\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-02-25 16:48:37\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(30,13,7,'','2014-02-25 16:48:47',431,540,'f649611b4a43351f3d5ca1017064c4eeaa8ff5e0','{\"id\":13,\"asset_id\":73,\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":24,\"level\":1,\"path\":null,\"extension\":\"com_contact\",\"title\":\"manutentori condo 2\",\"alias\":\"manutentori-condo-2\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:48:47\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(31,12,7,'','2014-02-25 16:49:05',431,588,'0de5fe7ce7039f968e6efa4b4c3f2d10808b983b','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"manutentori\",\"extension\":\"com_contact\",\"title\":\"manutentori condo1\",\"alias\":\"manutentori-condo1\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:49:00\",\"access\":\"7\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-02-25 16:49:05\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(32,3,3,'','2014-02-25 16:49:38',431,2781,'ef2af080bee32503be29c48cf8877edf2e24684f','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":13,\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:37\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":\"2\",\"hits\":\"0\"}',0),(33,4,3,'','2014-02-25 16:49:38',431,2764,'741e707352548c435b99a985b6c07bc41fdf73cb','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":13,\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:28\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":\"2\",\"hits\":\"0\"}',0),(34,3,3,'','2014-02-25 16:50:10',431,2763,'6eda9cec382dd032b43cb9fe732dd0f4c27e0a6c','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:49:46\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:50:10\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(35,4,3,'','2014-02-25 16:50:23',431,2782,'3e9c4f04f734d047adc641bf9b5e31ebcc08c75a','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:50:14\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:50:23\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(36,2,1,'','2014-02-25 16:51:06',431,2994,'bea2c3cc19c7bc2aead80e5d9781d80109872ad7','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>homepage condo1<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:51:06\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:50:59\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(37,1,1,'','2014-02-25 16:51:33',431,4287,'83b315550d8d22893d25a299841613cfda353e4d','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>homepage pubblica\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:51:33\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:51:13\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"24\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(38,2,1,'','2014-02-25 16:52:01',431,1720,'749d86317ce18f07a73438f1806286923e17214d','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:52:01\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:51:37\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(39,13,7,'','2014-02-25 17:00:31',431,598,'3158203a2bd3557038fef3ccb6517acfd7b9ef79','{\"id\":13,\"asset_id\":\"73\",\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":\"24\",\"level\":\"1\",\"path\":\"manutentori-condo-2\",\"extension\":\"com_contact\",\"title\":\"manutentori condo 2\",\"alias\":\"manutentori-condo-2\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:00:25\",\"access\":\"8\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:48:47\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-02-25 17:00:31\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(40,4,3,'','2014-02-25 17:01:36',431,2782,'2d87493c3a8daa5c17488bdbe34f05c84f9c2c20','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:00:56\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"1\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:01:36\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"0\"}',0),(41,4,3,'','2014-02-25 17:02:39',431,2782,'3ac2a853ac6fd514090f2ff2e38cd8c63925e7b8','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:02:33\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:02:39\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"0\"}',0),(42,3,3,'','2014-02-25 17:02:50',431,2763,'615b5c03cb21e8cbf7a3a73e3565b12e570caeef','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:02:42\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:02:50\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"0\"}',0),(43,2,3,'','2014-02-25 17:03:02',431,2766,'96167ed3d7a66bb7dced7143a5a34ec0249ecc50','{\"id\":2,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:02:55\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:03:02\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(44,1,3,'','2014-02-25 17:03:11',431,2783,'2cb2987249c0b3d5007e4e0d4287f571e2b54cd0','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:03:05\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:03:11\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(45,2,1,'','2014-02-25 17:55:09',431,1748,'072883f4ea246a933a28055559d8d87cd552288c','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition manutentori}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:55:09\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:54:42\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"35\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(46,2,1,'','2014-02-25 18:02:46',431,1792,'c5ba5d0146708a803bedb7e521ee4b7c5349a87b','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {phocadownload view=category|id=1|target=s} {loadposition manutentori}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:02:46\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:02:28\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"49\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(47,4,1,'','2014-02-25 18:07:40',431,2967,'db7fc84a7c5038d47afd55c7c4afacc19f607644','{\"id\":4,\"asset_id\":\"61\",\"title\":\"verbale1 condo1\",\"alias\":\"verbale1-condo1\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:22\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:07:40\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:06:38\",\"publish_up\":\"2014-02-25 16:10:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(48,12,1,'','2014-02-25 18:10:32',431,2636,'8f55a3d47d6cda003182e58a1b208a4167cefc62','{\"id\":12,\"asset_id\":79,\"title\":\"verbale3 condo1\",\"alias\":\"verbale3-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 18:10:32\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 18:10:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(49,4,1,'','2014-02-25 18:11:33',431,2673,'223357d6dd164d124f45dcae886eb992e5a2bacd','{\"id\":4,\"asset_id\":\"61\",\"title\":\"verbale1 condo1\",\"alias\":\"verbale1-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:22\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:11:33\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:11:27\",\"publish_up\":\"2014-02-25 16:10:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(50,2,1,'','2014-02-25 18:14:39',431,1789,'ed8e6a05f4f7d695989bac5b7179eef9abe85f14','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:14:39\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:13:59\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"57\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(51,2,1,'','2014-02-25 18:15:56',431,1781,'282a7c42a2bf1f34bb6370525b27ea1152d76f9f','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Intranet\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:15:56\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:15:50\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"59\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(52,2,1,'','2014-02-25 18:16:28',431,1790,'d4c42a3bfb3b0ca7ce22b5d3c502d7edcc2c3a6b','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:16:28\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:16:12\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"60\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(53,2,1,'','2014-02-25 18:39:00',431,1791,'d75fff43f6329d2e516b1571528adde772653edd','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:39:00\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:38:51\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"85\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(54,2,1,'','2014-02-25 18:39:44',431,1783,'6c408147d8156548ebb4e381b605f705dd7c2c06','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Bacheca:\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:39:44\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:39:00\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"87\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(55,3,3,'','2014-02-25 18:41:33',431,2754,'35da12f412743c87bcb617886e3af91445d988f7','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:41:01\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:41:33\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"0\"}',0),(56,3,3,'','2014-02-25 18:42:22',431,2356,'e3164f45ef6aae05de81f7b817b44bc3fc11f0b0','{\"id\":3,\"name\":\"CONDOMINIO 1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:41:33\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:42:22\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":6,\"hits\":\"0\"}',0);
/*!40000 ALTER TABLE `i92ks_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_update_sites`
--

DROP TABLE IF EXISTS `i92ks_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_update_sites`
--

LOCK TABLES `i92ks_update_sites` WRITE;
/*!40000 ALTER TABLE `i92ks_update_sites` DISABLE KEYS */;
INSERT INTO `i92ks_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1393353656,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1393353656,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1393353656,''),(4,'Attachments Updates','extension','http://jmcameron.net/attachments/updates/updates.xml',1,1393353656,'');
/*!40000 ALTER TABLE `i92ks_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_update_sites_extensions`
--

DROP TABLE IF EXISTS `i92ks_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_update_sites_extensions`
--

LOCK TABLES `i92ks_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `i92ks_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `i92ks_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,10012);
/*!40000 ALTER TABLE `i92ks_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_updates`
--

DROP TABLE IF EXISTS `i92ks_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_updates`
--

LOCK TABLES `i92ks_updates` WRITE;
/*!40000 ALTER TABLE `i92ks_updates` DISABLE KEYS */;
INSERT INTO `i92ks_updates` VALUES (1,3,0,'Malay','','pkg_ms-MY','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(2,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(3,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(4,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(5,3,0,'French','','pkg_fr-FR','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(6,3,0,'German','','pkg_de-DE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(7,3,0,'Greek','','pkg_el-GR','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(8,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(9,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(10,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.1.0.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(11,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.1.0.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(12,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(13,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(14,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(15,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(16,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(17,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(18,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(19,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(20,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(21,3,0,'Danish','','pkg_da-DK','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(22,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(23,3,0,'Estonian','','pkg_et-EE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(24,3,0,'Italian','','pkg_it-IT','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/it-IT_details.xml','',''),(25,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.1.0','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(26,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(27,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(28,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(29,3,0,'Persian','','pkg_fa-IR','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(30,3,0,'Polish','','pkg_pl-PL','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(31,3,0,'Russian','','pkg_ru-RU','package','',0,'3.2.1.5','','http://update.joomla.org/language/details3/ru-RU_details.xml','',''),(32,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(33,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(34,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(35,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(36,3,0,'Thai','','pkg_th-TH','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(37,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(38,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.2.0.6','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(39,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(40,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(41,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(42,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(43,3,0,'Spanish','','pkg_es-ES','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(44,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(45,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(46,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(47,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.1.4.1','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(48,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(49,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(50,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','','');
/*!40000 ALTER TABLE `i92ks_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_user_keys`
--

DROP TABLE IF EXISTS `i92ks_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_user_keys`
--

LOCK TABLES `i92ks_user_keys` WRITE;
/*!40000 ALTER TABLE `i92ks_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_user_notes`
--

DROP TABLE IF EXISTS `i92ks_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_user_notes`
--

LOCK TABLES `i92ks_user_notes` WRITE;
/*!40000 ALTER TABLE `i92ks_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_user_profiles`
--

DROP TABLE IF EXISTS `i92ks_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_user_profiles`
--

LOCK TABLES `i92ks_user_profiles` WRITE;
/*!40000 ALTER TABLE `i92ks_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_user_usergroup_map`
--

DROP TABLE IF EXISTS `i92ks_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_user_usergroup_map`
--

LOCK TABLES `i92ks_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `i92ks_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `i92ks_user_usergroup_map` VALUES (431,8),(432,2),(432,10),(433,2),(433,10),(434,2),(434,11),(435,2),(435,11);
/*!40000 ALTER TABLE `i92ks_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_usergroups`
--

DROP TABLE IF EXISTS `i92ks_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_usergroups`
--

LOCK TABLES `i92ks_usergroups` WRITE;
/*!40000 ALTER TABLE `i92ks_usergroups` DISABLE KEYS */;
INSERT INTO `i92ks_usergroups` VALUES (1,0,1,22,'Public'),(2,1,8,19,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,20,21,'Super Users'),(9,1,2,3,'Guest'),(10,2,15,16,'condo1'),(11,2,17,18,'condo2');
/*!40000 ALTER TABLE `i92ks_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_users`
--

DROP TABLE IF EXISTS `i92ks_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_users`
--

LOCK TABLES `i92ks_users` WRITE;
/*!40000 ALTER TABLE `i92ks_users` DISABLE KEYS */;
INSERT INTO `i92ks_users` VALUES (431,'Super User','admin','webcondo@webcondo.tk','$P$DRb2A4jjwasdC8dr/FG3QC8wM/TKj0.',0,1,'2014-02-24 09:32:38','2014-02-25 15:49:50','0','','0000-00-00 00:00:00',0,'',''),(432,'user1condo1','user1condo1','alexrah@gmail.com','$P$DflR4Ct905HvdBxhwViCgPQubAvkn5/',0,0,'2014-02-25 15:58:27','2014-02-25 18:31:17','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(433,'user2condo1','user2condo1','user2condo1@alexrah.otherinbox.com','$P$DsrbmlHz3KxarKqcguqdGwk4qzVXnd1',0,0,'2014-02-25 15:59:29','0000-00-00 00:00:00','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(434,'user1condo2','user1condo2','user1condo2@alexrah.otherinbox.com','$P$DEpwVoAd5zgjak3XjH9Y5PIOaOgfC5/',0,0,'2014-02-25 16:00:02','2014-02-25 16:25:21','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(435,'user2condo2','user2condo2','user2condo2@alexrah.otherinbox.com','$P$DtxnHOpX0rxGHeCX4UBQ3Xsj8Cqtfu/',0,0,'2014-02-25 16:00:28','2014-02-25 18:35:25','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','');
/*!40000 ALTER TABLE `i92ks_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_viewlevels`
--

DROP TABLE IF EXISTS `i92ks_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_viewlevels`
--

LOCK TABLES `i92ks_viewlevels` WRITE;
/*!40000 ALTER TABLE `i92ks_viewlevels` DISABLE KEYS */;
INSERT INTO `i92ks_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(5,'Guest',0,'[9]'),(6,'Super Users',0,'[8]'),(7,'condo1',0,'[10]'),(8,'condo2',0,'[11]');
/*!40000 ALTER TABLE `i92ks_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_weblinks`
--

DROP TABLE IF EXISTS `i92ks_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_weblinks`
--

LOCK TABLES `i92ks_weblinks` WRITE;
/*!40000 ALTER TABLE `i92ks_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-25 19:45:47
