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
-- Table structure for table `i92ks_acymailing_config`
--

DROP TABLE IF EXISTS `i92ks_acymailing_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_config`
--

LOCK TABLES `i92ks_acymailing_config` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_config` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_config` VALUES ('level','Starter'),('version','4.6.0'),('from_name','Riviera House'),('from_email','webcondo@webcondo.tk'),('mailer_method','mail'),('sendmail_path','/usr/sbin/sendmail'),('smtp_secured',''),('smtp_auth','0'),('smtp_username',''),('smtp_password',''),('reply_name','Riviera House'),('reply_email','webcondo@webcondo.tk'),('cron_sendto','webcondo@webcondo.tk'),('bounce_email',''),('add_names','1'),('encoding_format','8bit'),('charset','UTF-8'),('word_wrapping','150'),('hostname',''),('embed_images','0'),('embed_files','1'),('editor','0'),('multiple_part','1'),('smtp_host','localhost'),('smtp_port',''),('queue_nbmail','40'),('queue_nbmail_auto','70'),('queue_type','auto'),('queue_try','3'),('queue_pause','120'),('allow_visitor','1'),('require_confirmation','0'),('priority_newsletter','3'),('allowedfiles','zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),('uploadfolder','media/com_acymailing/upload'),('confirm_redirect',''),('subscription_message','1'),('notification_unsuball',''),('cron_next','1251990901'),('confirmation_message','1'),('welcome_message','1'),('unsub_message','1'),('cron_last','0'),('cron_fromip',''),('cron_report',''),('cron_frequency','900'),('cron_sendreport','2'),('cron_fullreport','1'),('cron_savereport','2'),('cron_savepath','media/com_acymailing/logs/report792932897.log'),('notification_created',''),('notification_accept',''),('notification_refuse',''),('forward','0'),('description_starter','Joomla!™ E-mail Marketing'),('description_essential','Joomla!™ Mailing Extension'),('description_business','Joomla!™ E-mail Marketing'),('description_enterprise','Joomla!™ Newsletter Extension'),('priority_followup','2'),('unsub_redirect',''),('show_footer','1'),('use_sef','0'),('itemid','0'),('css_module','default'),('css_frontend','default'),('css_backend','default'),('menu_position','above'),('unsub_reasons','a:2:{i:0;s:21:\"UNSUB_SURVEY_FREQUENT\";i:1;s:21:\"UNSUB_SURVEY_RELEVANT\";}'),('installcomplete','1'),('Starter','0'),('Essential','1'),('Business','2'),('Enterprise','3'),('website','http://webcondo.tk/jocondo/');
/*!40000 ALTER TABLE `i92ks_acymailing_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_fields`
--

DROP TABLE IF EXISTS `i92ks_acymailing_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_fields`
--

LOCK TABLES `i92ks_acymailing_fields` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_fields` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_fields` VALUES (1,'NAMECAPTION','name','text','',1,1,'',1,1,1,1,'',1,1,0,0,0),(2,'EMAILCAPTION','email','text','',1,2,'',1,1,1,1,'',1,1,0,0,0),(3,'RECEIVE','html','radio','0::JOOMEXT_TEXT\n1::HTML',1,3,'',1,1,1,1,'1',1,0,0,0,0);
/*!40000 ALTER TABLE `i92ks_acymailing_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_filter`
--

DROP TABLE IF EXISTS `i92ks_acymailing_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_filter`
--

LOCK TABLES `i92ks_acymailing_filter` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_geolocation`
--

DROP TABLE IF EXISTS `i92ks_acymailing_geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_geolocation`
--

LOCK TABLES `i92ks_acymailing_geolocation` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_geolocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_history`
--

DROP TABLE IF EXISTS `i92ks_acymailing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_history`
--

LOCK TABLES `i92ks_acymailing_history` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_history` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_history` VALUES (6,1393879490,'151.16.148.34','created','EXECUTED_BY::431 ( admin )','HTTP_REFERER::http://webcondo.tk/jocondo/administrator/index.php?option=com_users&view=user&layout=edit\nHTTP_USER_AGENT::Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36\nHTTP_HOST::webcondo.tk\nSERVER_ADDR::193.183.99.15\nREMOTE_ADDR::151.16.148.34\nREQUEST_URI::/jocondo/administrator/index.php?option=com_users&layout=edit&id=0\nQUERY_STRING::option=com_users&layout=edit&id=0',0),(7,1393879743,'151.16.148.34','created','EXECUTED_BY::431 ( admin )','HTTP_REFERER::http://webcondo.tk/jocondo/administrator/index.php?option=com_users&view=user&layout=edit\nHTTP_USER_AGENT::Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36\nHTTP_HOST::webcondo.tk\nSERVER_ADDR::193.183.99.15\nREMOTE_ADDR::151.16.148.34\nREQUEST_URI::/jocondo/administrator/index.php?option=com_users&layout=edit&id=0\nQUERY_STRING::option=com_users&layout=edit&id=0',0);
/*!40000 ALTER TABLE `i92ks_acymailing_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_list`
--

DROP TABLE IF EXISTS `i92ks_acymailing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_list`
--

LOCK TABLES `i92ks_acymailing_list` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_list` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_list` VALUES ('Newsletter Condo1','<p>Receive our latest news</p>',2,1,1,431,'mailing-list','#3366ff',1,NULL,0,'list','all','none','all','0'),('Newsletter condo2','',1,2,1,431,'newsletter-condo2','#7240A4',1,NULL,0,'list','all','none','all','0');
/*!40000 ALTER TABLE `i92ks_acymailing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_listcampaign`
--

DROP TABLE IF EXISTS `i92ks_acymailing_listcampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_listcampaign`
--

LOCK TABLES `i92ks_acymailing_listcampaign` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_listcampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_listcampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_listmail`
--

DROP TABLE IF EXISTS `i92ks_acymailing_listmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_listmail`
--

LOCK TABLES `i92ks_acymailing_listmail` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_listmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_listmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_listsub`
--

DROP TABLE IF EXISTS `i92ks_acymailing_listsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_listsub`
--

LOCK TABLES `i92ks_acymailing_listsub` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_listsub` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_listsub` VALUES (1,2,1393852708,NULL,1),(1,3,1393852708,NULL,1),(2,5,1393854249,NULL,1),(2,4,1393854249,NULL,1);
/*!40000 ALTER TABLE `i92ks_acymailing_listsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_mail`
--

DROP TABLE IF EXISTS `i92ks_acymailing_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_mail`
--

LOCK TABLES `i92ks_acymailing_mail` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_mail` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_mail` VALUES (1,'New Subscriber on your website : {user:email}','<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_created',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'A User unsubscribed from all your lists : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsuball',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'A User unsubscribed : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsub',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'A User refuses to receive e-mails from your website : {user:email}','<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_refuse',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'New contact from your website : {user:email}','<p>Hello {subtag:name},</p><p>A user has contacted you : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_contact',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'A user confirm his subscription : {user:email}','<p>Hello {subtag:name},</p><p>A user has confirmed his subscription in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_confirm',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}','<div style=\"text-align: center; width: 100%; background-color: #ffffff;\">\r\n			<table style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\" bgcolor=\"#ebebeb\">\r\n			<tbody>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"38px\"><img src=\"media/com_acymailing/templates/newsletter-4/top.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style=\"text-align:center\" width=\"600\">\r\n			<table style=\"margin:auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"520\">\r\n			<tbody>\r\n			<tr>\r\n			<td style=\"background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;\">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"40px\"><img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'confirmation',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'AcyMailing Cron Report {mainreport}','<p>{report}</p><p>{detailreport}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'report',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'A Newsletter has been generated : \"{subject}\"','<p>The Newsletter issue {issuenb} has been generated : </p><p>Subject : {subject}</p><p>{body}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_autonews',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Modify your subscription','<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'modif',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `i92ks_acymailing_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_queue`
--

DROP TABLE IF EXISTS `i92ks_acymailing_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_queue`
--

LOCK TABLES `i92ks_acymailing_queue` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_rules`
--

DROP TABLE IF EXISTS `i92ks_acymailing_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_rules`
--

LOCK TABLES `i92ks_acymailing_rules` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_stats`
--

DROP TABLE IF EXISTS `i92ks_acymailing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_stats`
--

LOCK TABLES `i92ks_acymailing_stats` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_subscriber`
--

DROP TABLE IF EXISTS `i92ks_acymailing_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_subscriber`
--

LOCK TABLES `i92ks_acymailing_subscriber` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_subscriber` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_subscriber` VALUES (1,'webcondo@webcondo.tk',431,'Super User',1393230758,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0),(2,'alexrah@gmail.com',432,'user1condo1',1393340307,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0),(3,'user2condo1@alexrah.otherinbox.com',433,'user2condo1',1393340369,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0),(4,'user1condo2@alexrah.otherinbox.com',434,'user1condo2',1393340402,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0),(5,'user2condo2@alexrah.otherinbox.com',435,'user2condo2',1393340428,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0),(6,'gestore_webcondo@alexrah.otherinbox.com',436,'amministratore',1393879490,1,0,1,'151.16.148.34',1,'jLZ4ovjhRyt80q',0,NULL,0,NULL,0,0),(7,'autore_webcondo@alexrah.otherinbox.com',437,'gestore',1393879743,1,1,1,'151.16.148.34',1,'lj8J27Dvqceojp',0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `i92ks_acymailing_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_template`
--

DROP TABLE IF EXISTS `i92ks_acymailing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) DEFAULT 'all',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_template`
--

LOCK TABLES `i92ks_acymailing_template` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_template` DISABLE KEYS */;
INSERT INTO `i92ks_acymailing_template` VALUES (1,'Notification template','','<div style=\"text-align: center; width: 100%; background-color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\" style=\"text-align:center\">{readonline}This email contains graphics, so if you don\'t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"text-align: justify; margin: auto; width:600px\">\r\n	<tbody>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color: #69b4c0;\" valign=\"bottom\" width=\"600\"><img alt=\" - - - \" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-4/images/top.png\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"acyeditor_text w520\" colspan=\"3\" height=\"80\" style=\"text-align: left; background-color: rgb(235, 235, 235);\" width=\"520\"><img alt=\"-\" src=\"media/com_acymailing/templates/newsletter-4/images/message_icon.png\" style=\"float:left; margin-right:10px;\" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class=\"acyeditor_picture w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"acyeditor_text w480 pict\" style=\"background-color:#fff; text-align: left;\" width=\"480\">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color:#ebebeb;\" width=\"600\"><img alt=\" - - - \" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-4/images/bottom.png\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acyeditor_delete acyeditor_text\" style=\"text-align:center\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>','',NULL,1,0,1,'newsletter-4','a:10:{s:6:\"tag_h1\";s:76:\"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;\";s:6:\"tag_h2\";s:106:\"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;\";s:6:\"tag_h3\";s:144:\"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;\";s:6:\"tag_h4\";s:117:\"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;\";s:5:\"tag_a\";s:71:\"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;\";s:19:\"acymailing_readmore\";s:90:\"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;\";s:17:\"acymailing_online\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:16:\"acymailing_unsub\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:8:\"color_bg\";s:7:\"#ffffff\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}',NULL,'div,table,p{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (max-width:450px){\r\n	table[class=w600], td[class=w600],  table[class=w520], td[class=w520], table[class=w480], td[class=w480], img[class=w600]{ width:100% !important; }\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.pict img {max-width:240px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:450px) and (max-width:600px){\r\n	table[class=w600], td[class=w600],  table[class=w520], td[class=w520], table[class=w480], td[class=w480], img[class=w600]{ width:100% !important; }\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.pict img {max-width:390px;  height:auto !important;}\r\n}\r\n@media (min-width:600px){\r\n	.pict img {max-width:480px !important;  height:auto !important;}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-4/newsletter-4.png','','all'),(2,'Newspaper','','<div align=\"center\" style=\"width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#454545;\" width=\"600\">\r\n		<tr>\r\n			<td class=\"w600\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n					<tr class=\"acyeditor_delete\" >\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n						<td class=\"acyeditor_text w540\" style=\"font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left\" width=\"540\">&nbsp;\r\n						<h1><img alt=\"logo\" src=\"media/com_acymailing/templates/newsletter-5/images/logo.png\" style=\"float: right; width: 107px; height: 70px;\" /></h1>\r\n\r\n						<h1>Your title here</h1>\r\n\r\n						<h3>your subtitle</h3>\r\n						</td>\r\n						<td class=\"w30\" style=\"line-height:0px; background-color:#ffffff\" width=\"30\"></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#e4e4e4\" valign=\"top\" width=\"600\"><img alt=\"---\" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-5/images/header.png\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#ffffff\" valign=\"top\" width=\"600\"><img alt=\"banner\" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-5/images/banner.png\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"---\" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-5/images/separator.png\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n						<td class=\"acyeditor_text  pict w540\" style=\"text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff\" width=\"540\">\r\n						<h2>Interviews and reports</h2>\r\n						<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br />\r\n						consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href=\"#\">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br />\r\n						<br />\r\n						cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n						<br />\r\n						<span class=\"acymailing_readmore\">Read More</span><br />\r\n						&nbsp;\r\n						<h2>Journalism around the world</h2>\r\n						<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi.<br />\r\n						Vivamus elementum.<a href=\"#\">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />\r\n						<br />\r\n						<span class=\"acymailing_readmore\">Read More</span></td>\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n					</tr>\r\n					<tr style=\"line-height: 0px;\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"background-color:#ffffff\" width=\"600\"><img alt=\"--\" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-5/images/footer1.png\" width=\"600\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"acyfooter acyeditor_text w600\" colspan=\"3\" height=\"25\" style=\"text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px\" width=\"600\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">contact</a> | <a href=\"#\">Facebook</a> | <a href=\"#\">Twitter</a></td>\r\n					</tr>\r\n					<tr style=\"line-height: 0px;\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"background-color:#454545;\" width=\"600\"><img alt=\"--\" class=\"w600\" src=\"media/com_acymailing/templates/newsletter-5/images/footer2.png\" width=\"600\" /></td>\r\n					</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\">{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n','',NULL,1,0,2,'newsletter-5','a:10:{s:6:\"tag_h1\";s:71:\"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;\";s:6:\"tag_h2\";s:145:\"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;\";s:6:\"tag_h3\";s:76:\"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;\";s:6:\"tag_h4\";s:67:\"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#9d0000; text-decoration:none; border:none;\";s:19:\"acymailing_readmore\";s:152:\"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;\";s:17:\"acymailing_online\";s:148:\"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;\";s:8:\"color_bg\";s:7:\"#454545\";s:18:\"acymailing_content\";s:0:\"\";s:16:\"acymailing_unsub\";s:131:\"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px\";}',NULL,'.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p{font-family:\"Times New Roman\", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (max-width:450px){\r\n	table[class=w600], td[class=w600], table[class=w540], td[class=w540], img[class=w600]{ width:100% !important; }\r\n	td[class=w30] { width:20px !important; }\r\n	.pict img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width: 450px) and (max-width: 600px){\r\n	table[class=w600], td[class=w600], table[class=w540], td[class=w540], img[class=w600] { width:100% !important; }\r\n	td[class=w30] { width:20px !important; }\r\n	.pict img {max-width:410px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.pict img {max-width:540px !important;  height:auto !important;}\r\n}',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-5/newsletter-5.png','','all'),(3,'Build Bio','','<div align=\"center\" style=\"width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#575757;\" width=\"600\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#eeeeee\" valign=\"bottom\" width=\"600\"><img alt=\"mail\" class=\"w600\" height=\"41\" src=\"media/com_acymailing/templates/newsletter-6/images/header.png\" width=\"600\" /></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w30\" style=\"color:#ffffff;\" width=\"30\"></td>\r\n					<td class=\"acyeditor_picture w540 pict\" style=\"line-height:0px; background-color:#ffffff; text-align:center\" width=\"540\"><img alt=\"\" src=\"media/com_acymailing/templates/newsletter-6/images/banner.png\" style=\"width: 540px; height: 122px;\" /></td>\r\n					<td class=\"w30\" height=\"122\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n					<td class=\"acyeditor_text w540\" height=\"25\" style=\"text-align:right; background-color:#b9cf00; color:#ffffff;\" width=\"540\"><span class=\"hide\">Newsletter</span> {date:3}</td>\r\n					<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w600\" colspan=\"3\" height=\"25\" style=\"background-color:#ffffff\" width=\"600\"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n					<td class=\"acyeditor_text pict w540\" style=\"text-align:justify; color:#575757; background-color:#ffffff\" width=\"540\"><span class=\"intro\">Hello {subtag:name},</span><br />\r\n					<br />\r\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n					<h2>Day One</h2>\r\n					<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\n					consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class=\"acymailing_readmore\">Read More</span>\r\n\r\n					<h2>How to build a green house</h2>\r\n					<img alt=\"picture\" height=\"160\" src=\"media/com_acymailing/templates/newsletter-6/images/picture.png\" style=\"float:left;\" width=\"193\" /> <strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class=\"acymailing_readmore\">Read More</span></td>\r\n					<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n				<tr style=\"line-height: 0px;\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#efefef;\" valign=\"top\" width=\"600\"><img alt=\"--\" class=\"w600\" height=\"18\" src=\"media/com_acymailing/templates/newsletter-6/images/footer1.png\" width=\"600\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n					<td class=\"acyfooter acyeditor_text w540\" style=\"text-align:right; background-color:#efefef; color:#575757;\" width=\"540\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">Contact</a><a href=\"#\"><img alt=\"message\" class=\"hide\" src=\"media/com_acymailing/templates/newsletter-6/images/mail.png\" style=\"border: medium none; width: 35px; height: 20px;\" /></a></td>\r\n					<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n				</tr>\r\n				<tr style=\"line-height: 0px;\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"background-color:#efefef; line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"--\" class=\"w600\" height=\"24\" src=\"media/com_acymailing/templates/newsletter-6/images/footer2.png\" width=\"600\" /></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\" >{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>','',NULL,1,0,3,'newsletter-6','a:9:{s:6:\"tag_h1\";s:69:\"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;\";s:6:\"tag_h2\";s:129:\"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;\";s:6:\"tag_h3\";s:149:\"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;\";s:6:\"tag_h4\";s:84:\"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;\";s:8:\"color_bg\";s:7:\"#3c3c3c\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#a2b500; text-decoration:none; border:none;\";s:17:\"acymailing_online\";s:91:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px\";s:16:\"acymailing_unsub\";s:88:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px\";s:19:\"acymailing_readmore\";s:73:\"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;\";}',NULL,'table, div, p{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (max-width: 450px){\r\n	table[class=w600], td[class=w600], table[class=w540], td[class=w540], img[class=w600]{ width:100% !important; }\r\n	table[class=w30], td[class=w30]{ width:20px !important; }\r\n	.pict img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width: 450px) and (max-width: 600px){\r\n	table[class=w600], td[class=w600], table[class=w540], td[class=w540], img[class=w600]{ width:100% !important; }\r\n	table[class=w30], td[class=w30]{ width:20px !important; }\r\n	.pict img {max-width:410px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.pict img {max-width:540px !important;  height:auto !important;}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-6/newsletter-6.png','','all'),(4,'Technology','','<div align=\"center\" style=\"width:100%; background-color:#575757; padding-bottom:20px; color:#999999;\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"background-color:#fff; color:#999999; margin:auto\" width=\"600\">\r\n	<tbody>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_online\">{readonline}If you can\'t see this e-mail properly, <span style=\"text-decoration:underline\">view it online</span>{/readonline}</span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" class=\"w600\" src=\"media/com_acymailing/templates/technology_resp/images/shadowtop.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" class=\"w600\" src=\"media/com_acymailing/templates/technology_resp/images/top.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text links w540\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab\" width=\"540\"><a href=\"#\"><img alt=\"mail\" src=\"media/com_acymailing/templates/technology_resp/images/mail.jpg\" style=\"float:right; border:none\" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href=\"#\">www.acyba.com</a> |</td>\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540 pict\" width=\"540\"><img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic1.jpg\" style=\"float:right\" />\r\n			<h1>Fresh and technologic news !</h1>\r\n\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.</td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" class=\"w540\" src=\"media/com_acymailing/templates/technology_resp/images/separator1.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540 pict\" style=\"background-color:#fafafa; color:#999999\" width=\"540\">\r\n			<h2>Choose your smartphone</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic2.jpg\" style=\"float:left\" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec<a href=\"#\"> scelerisque quam</a>. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Choose your device</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic3.jpg\" style=\"float:right\" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" class=\"w540\" src=\"media/com_acymailing/templates/technology_resp/images/separator2.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text special w540 pict\" style=\"color:#999999\" width=\"540\">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt=\"read more\" src=\"media/com_acymailing/templates/technology_resp/images/readmore.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab\" valign=\"bottom\" width=\"540\">Follow us | <img alt=\"facebook\" src=\"media/com_acymailing/templates/technology_resp/images/facebook.jpg\" style=\"border:none\" /> <img alt=\"twitter\" src=\"media/com_acymailing/templates/technology_resp/images/twitter.jpg\" style=\"border:none\" /> <img alt=\"pinterest\" src=\"media/com_acymailing/templates/technology_resp/images/pinterest.jpg\" style=\"border:none\" /> <img alt=\"rss\" src=\"media/com_acymailing/templates/technology_resp/images/rss.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" class=\"w600\" src=\"media/com_acymailing/templates/technology_resp/images/bottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" class=\"w600\" src=\"media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_unsub\">{unsubscribe}If you don\'t want to receive our news anymore, <span style=\"text-decoration:underline\">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>','',NULL,1,0,4,'technology_resp','a:9:{s:6:\"tag_h1\";s:104:\"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;\";s:6:\"tag_h2\";s:165:\"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;\";s:6:\"tag_h3\";s:104:\"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;\";s:6:\"tag_h4\";s:0:\"\";s:8:\"color_bg\";s:7:\"#575757\";s:5:\"tag_a\";s:62:\"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;\";s:17:\"acymailing_online\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:16:\"acymailing_unsub\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:19:\"acymailing_readmore\";s:88:\"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;\";}',NULL,'table, div, p {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (max-width:450px){\r\n	table[class=w600], td[class=w600], table[class=w540], td[class=w540], img[class=\"w600\"], img[class=\"w540\"]{ width:100% !important;}\r\n	td[class=w30] { width:20px !important;}\r\n	.pict img {max-width:260px}\r\n}\r\n\r\n@media (min-width: 450px) and (max-width: 600px){\r\n	table[class=w600], td[class=w600], table[class=w540], td[class=w540], img[class=\"w600\"], img[class=\"w540\"]{ width:100% !important;}\r\n	td[class=w30] { width:20px !important;}\r\n	.pict img {max-width:460px}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.pict img {max-width:540px !important;  height:auto !important;}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/technology_resp/thumb.jpg','','all');
/*!40000 ALTER TABLE `i92ks_acymailing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_url`
--

DROP TABLE IF EXISTS `i92ks_acymailing_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_url`
--

LOCK TABLES `i92ks_acymailing_url` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_urlclick`
--

DROP TABLE IF EXISTS `i92ks_acymailing_urlclick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_urlclick`
--

LOCK TABLES `i92ks_acymailing_urlclick` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_urlclick` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_urlclick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_acymailing_userstats`
--

DROP TABLE IF EXISTS `i92ks_acymailing_userstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_acymailing_userstats`
--

LOCK TABLES `i92ks_acymailing_userstats` WRITE;
/*!40000 ALTER TABLE `i92ks_acymailing_userstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_acymailing_userstats` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_assets`
--

LOCK TABLES `i92ks_assets` WRITE;
/*!40000 ALTER TABLE `i92ks_assets` DISABLE KEYS */;
INSERT INTO `i92ks_assets` VALUES (1,0,0,209,0,'root.1','Root Asset','{\"core.login.site\":{\"2\":1,\"6\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1,\"6\":0},\"core.manage\":{\"7\":1},\"core.create\":{\"3\":1,\"6\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"4\":1,\"6\":1},\"core.edit.state\":{\"5\":1,\"6\":1},\"core.edit.own\":{\"3\":1,\"6\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,8,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),(4,1,9,10,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,11,12,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,13,14,1,'com_config','com_config','{}'),(7,1,15,22,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,23,58,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,59,60,1,'com_cpanel','com_cpanel','{}'),(10,1,61,62,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,63,64,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,65,66,1,'com_login','com_login','{}'),(13,1,67,68,1,'com_mailto','com_mailto','{}'),(14,1,69,70,1,'com_massmail','com_massmail','{}'),(15,1,71,72,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":0},\"core.create\":[],\"core.delete\":[]}'),(16,1,73,74,1,'com_menus','com_menus','{\"core.admin\":{\"6\":0,\"7\":1},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),(17,1,75,76,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,77,154,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,155,158,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0},\"core.edit.own\":{\"6\":0}}'),(20,1,159,160,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,161,162,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,163,164,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),(23,1,165,166,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,167,170,1,'com_users','com_users','{\"core.admin\":{\"6\":1,\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,171,174,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"6\":0,\"7\":1},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0,\"3\":1},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0,\"4\":1},\"core.edit.state\":{\"6\":0,\"5\":1},\"core.edit.own\":{\"6\":0}}'),(26,1,175,176,1,'com_wrapper','com_wrapper','{}'),(27,8,24,25,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,16,17,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,156,157,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,172,173,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,168,169,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,177,178,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),(34,1,179,180,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,181,182,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,183,184,1,'com_contenthistory','com_contenthistory','{}'),(37,1,185,186,1,'com_ajax','com_ajax','{}'),(38,1,187,188,1,'com_postinstall','com_postinstall','{}'),(39,18,78,79,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,80,81,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,82,83,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,84,85,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,86,87,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,88,89,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,90,91,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,92,93,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,94,95,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,96,97,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,98,99,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,100,101,2,'com_modules.module.16','Area Riservata','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(51,18,102,103,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(52,18,104,105,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,106,107,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,57,31,32,3,'com_content.article.1','Homepage pubblica','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,57,27,28,3,'com_content.article.2','Bacheca:','{\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),(56,57,29,30,3,'com_content.article.3','Homepage condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,8,26,33,2,'com_content.category.8','homepage','{\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0},\"core.edit.own\":{\"6\":0}}'),(58,8,34,35,2,'com_content.category.9','schede condo','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(59,8,36,47,2,'com_content.category.10','verbali','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(60,8,48,57,2,'com_content.category.11','fatture','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(61,59,37,38,3,'com_content.article.4','verbale1 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,59,39,40,3,'com_content.article.5','verbale1 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(63,59,41,42,3,'com_content.article.6','verbale2 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(64,60,49,50,3,'com_content.article.7','fattura1 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(65,60,51,52,3,'com_content.article.8','fattura2 condo2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(66,18,108,109,2,'com_modules.module.87','Verbali','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(67,59,43,44,3,'com_content.article.9','verbale2 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(68,60,53,54,3,'com_content.article.10','fattura1 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(69,60,55,56,3,'com_content.article.11','fattura2 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(70,7,18,19,2,'com_contact.category.12','condomini','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(71,18,110,111,2,'com_modules.module.88','Contact Information Module','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(72,18,112,113,2,'com_modules.module.89','Manutentori','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(73,7,20,21,2,'com_contact.category.13','manutentori','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(74,18,114,115,2,'com_modules.module.90','Utenti online','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1},\"core.edit.state\":{\"6\":1}}'),(75,1,189,190,1,'com_phocadownload','com_phocadownload','{\"core.admin\":[],\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(76,18,116,117,2,'com_modules.module.91','Bilanci','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(77,18,118,119,2,'com_modules.module.92','Manutentori footer','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(78,1,191,192,1,'com_attachments','com_attachments','{}'),(79,59,45,46,3,'com_content.article.12','verbale3 condo1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(80,18,120,121,2,'com_modules.module.93','Fatture','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(81,18,122,123,2,'com_modules.module.94','Scheda condo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(82,18,124,125,2,'com_modules.module.95','footer','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(83,18,126,127,2,'com_modules.module.96','Masters Contact Info','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(84,18,128,129,2,'com_modules.module.97','Masters Contact Info','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(85,18,130,131,2,'com_modules.module.98','scheda Condominio','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(86,1,193,194,1,'com_djimageslider','com_djimageslider','{}'),(87,18,132,133,2,'com_modules.module.99','Homepage-ImageSlider','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(88,18,134,135,2,'com_modules.module.100','Scheda condomini','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(89,18,136,137,2,'com_modules.module.101','Manutentori','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(90,3,6,7,2,'com_banners.category.14','avvisi','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(91,1,195,196,1,'com_acymailing','acymailing','{\"core.admin\":{\"6\":1},\"core.manage\":{\"6\":1}}'),(92,1,197,208,1,'com_jevents','jevents','{\"core.manage\":{\"6\":1},\"core.create\":[],\"core.edit.own\":[],\"core.edit\":[],\"core.edit.state\":{\"6\":1},\"core.deleteall\":[],\"core.admin\":[]}'),(93,18,138,139,2,'com_modules.module.103','JEvents Calendar',''),(94,18,140,141,2,'com_modules.module.104','JEvents Legend',''),(95,18,142,143,2,'com_modules.module.105','JEvents Latest Events',''),(96,18,144,145,2,'com_modules.module.106','JEvents Filter',''),(97,18,146,147,2,'com_modules.module.107','JEvents CustomModule',''),(98,18,148,149,2,'com_modules.module.108','JEvents View Switcher',''),(99,92,198,199,2,'com_jevents.category.15','DEFAULT','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(100,92,200,201,2,'com_jevents.category.16','condo1','{\"core.create\":{\"3\":1,\"6\":1},\"core.edit\":{\"4\":1,\"6\":1},\"core.edit.state\":{\"5\":1,\"6\":1},\"core.deleteall\":[],\"core.edit.own\":{\"3\":1,\"6\":1}}'),(101,92,202,203,2,'com_jevents.category.17','condo2','{\"core.create\":{\"3\":1,\"6\":1},\"core.edit\":{\"4\":1,\"6\":1},\"core.edit.state\":{\"5\":1,\"6\":1},\"core.deleteall\":[],\"core.edit.own\":{\"3\":1,\"6\":1}}'),(102,18,150,151,2,'com_modules.module.109','Scadenziario','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1},\"core.edit.state\":{\"6\":1}}'),(103,18,152,153,2,'com_modules.module.102','AcyMailing Module',''),(104,92,204,205,2,'com_jevents.category.18','eventi_condo1','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(105,92,206,207,2,'com_jevents.category.19','eventi_condo2','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_banners`
--

LOCK TABLES `i92ks_banners` WRITE;
/*!40000 ALTER TABLE `i92ks_banners` DISABLE KEYS */;
INSERT INTO `i92ks_banners` VALUES (1,0,1,'Banner prova 1','banner-prova-1',0,0,0,'',1,3,'','test banner prova 1',0,1,'','{\"imageurl\":\"\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2014-03-03 13:15:43','*',0,'','0000-00-00 00:00:00',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_categories`
--

LOCK TABLES `i92ks_categories` WRITE;
/*!40000 ALTER TABLE `i92ks_categories` DISABLE KEYS */;
INSERT INTO `i92ks_categories` VALUES (1,0,0,0,37,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,57,1,13,14,1,'homepage','com_content','homepage','homepage','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:54:54',431,'2014-03-03 23:14:06',0,'*',1),(9,58,1,15,16,1,'schede-condo','com_content','schede condo','schede-condo','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:55:51',0,'0000-00-00 00:00:00',0,'*',1),(10,59,1,17,18,1,'verbali','com_content','verbali','verbali','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:55:57',0,'0000-00-00 00:00:00',0,'*',1),(11,60,1,19,20,1,'fatture','com_content','fatture','fatture','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 15:56:07',0,'0000-00-00 00:00:00',0,'*',1),(12,70,1,21,22,1,'condomini','com_contact','condomini','condomini','','',1,0,'0000-00-00 00:00:00',2,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 16:31:31',431,'2014-03-03 00:24:03',0,'*',1),(13,73,1,23,24,1,'manutentori','com_contact','manutentori','manutentori','','',1,0,'0000-00-00 00:00:00',2,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-02-25 16:48:47',431,'2014-03-03 00:24:39',0,'*',1),(14,90,1,25,26,1,'avvisi','com_banners','avvisi','avvisi','','',1,0,'0000-00-00 00:00:00',2,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',431,'2014-03-03 13:15:59',0,'0000-00-00 00:00:00',0,'*',1),(15,99,1,27,28,1,'','com_jevents','DEFAULT','','','',1,0,'0000-00-00 00:00:00',1,'{\"catcolor\":\"#CCCCFF\",\"admin\":0,\"overlaps\":0,\"image\":\"\"}','','','',431,'2014-03-03 13:24:57',0,'0000-00-00 00:00:00',0,'*',1),(16,100,1,29,30,1,'condo1','com_jevents','condo1','condo1','','',1,0,'0000-00-00 00:00:00',7,'{\"category_layout\":\"\",\"image\":\"\",\"catcolour\":\"\",\"overlaps\":\"0\",\"admin\":\"431\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2014-03-03 13:25:23',431,'2014-03-03 21:34:28',0,'*',1),(17,101,1,31,32,1,'condo2','com_jevents','condo2','condo2','','',1,0,'0000-00-00 00:00:00',8,'{\"category_layout\":\"\",\"image\":\"\",\"catcolour\":\"\",\"overlaps\":\"0\",\"admin\":\"431\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2014-03-03 13:25:32',431,'2014-03-03 21:34:54',0,'*',1),(18,104,1,33,34,1,'eventi-condo1','com_jevents','eventi_condo1','eventi-condo1','','',-2,0,'0000-00-00 00:00:00',7,'{\"category_layout\":\"\",\"image\":\"\",\"catcolour\":\"\",\"overlaps\":\"0\",\"admin\":\"436\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2014-03-03 21:41:04',0,'0000-00-00 00:00:00',0,'*',1),(19,105,1,35,36,1,'eventi-condo2','com_jevents','eventi_condo2','eventi-condo2','','',-2,0,'0000-00-00 00:00:00',8,'{\"category_layout\":\"\",\"image\":\"\",\"catcolour\":\"\",\"overlaps\":\"0\",\"admin\":\"436\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2014-03-03 21:41:19',0,'0000-00-00 00:00:00',0,'*',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_contact_details`
--

LOCK TABLES `i92ks_contact_details` WRITE;
/*!40000 ALTER TABLE `i92ks_contact_details` DISABLE KEYS */;
INSERT INTO `i92ks_contact_details` VALUES (1,'manutentore1condo1','manutentore1-1','idraulico','via dei mille, 24','Albenga','','','20100','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/789px_spottedquoll_2005_seanmcclean.jpg','idraulico@test.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,13,7,'339.234.23.23','','','','','*','2014-02-25 16:34:15',431,'','2014-03-03 00:08:39',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',6,0),(2,'manutentore2condo1','manutentore2-1','antennista','via dei gazzi, 100','Loano','','','17025','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/180px_koala_ag1.jpg','antennista@test.com',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,13,7,'339.234.23.23','','','','','*','2014-02-25 16:34:21',431,'','2014-03-03 00:07:39',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',4,3),(3,'CONDOMINIO 2','manutentore1','idraulico','via dei mille, 24','Albenga','','','20100','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>','images/sampledata/parks/animals/condo1.png','idraulico@test.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,12,8,'339.234.23.23','','','','','*','2014-02-25 16:34:15',431,'','2014-03-03 00:05:05',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',8,5),(4,'manutentore2condo2','manutentore1-2','antennista','via dei gazzi, 100','Loano','','','17025','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg','antennista@test.com',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,13,8,'339.234.23.23','','','','','*','2014-02-25 16:34:21',431,'','2014-03-03 00:02:51',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',6,1),(5,'manutentore1condo2','manutentore1-3','antennista','via dei gazzi, 100','Loano','','','17025','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg','antennista@test.com',0,1,0,'0000-00-00 00:00:00',3,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,13,8,'339.234.23.23','','','','','*','2014-03-03 00:03:27',431,'','2014-03-03 00:03:46',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',2,1),(6,'CONDOMINIO 1','condo1','idraulico','via dei mille, 24','Albenga','','','20100','0182.23.23.23','','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>','images/sampledata/parks/animals/condo1.png','idraulico@test.com',0,1,0,'0000-00-00 00:00:00',4,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,12,7,'339.234.23.23','','','','','*','2014-03-03 00:05:16',437,'','2014-03-03 21:49:37',431,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',3,2),(7,'condo3','condo3','','via dei milla 213','Albenga','SV','','20100','01820211212','','','images/gallery-img3.jpg','test@test.com',0,-2,0,'0000-00-00 00:00:00',5,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,12,2,'','','','','','*','2014-03-03 21:51:16',437,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0);
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
INSERT INTO `i92ks_content` VALUES (1,54,'Homepage pubblica','homepage-pubblica','<p>{loadposition homepage}</p>','',1,8,'2014-02-25 15:52:28',431,'','2014-02-28 00:01:54',431,0,'0000-00-00 00:00:00','2014-02-25 15:52:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"left\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,2,'','',1,240,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(2,55,'Bacheca:','homepage-condo1','<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}</p>','',1,8,'2014-02-25 15:54:03',431,'','2014-03-03 23:13:18',431,0,'0000-00-00 00:00:00','2014-02-25 15:54:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,1,'','',2,307,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(3,56,'Homepage condo2','homepage-condo2','<p>Homepage condo2</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',-2,8,'2014-02-25 15:54:18',431,'','2014-02-25 16:04:07',431,0,'0000-00-00 00:00:00','2014-02-25 15:54:18','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',8,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,61,'verbale1 condo1','verbale1-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:10:22',431,'','2014-02-25 18:11:33',431,0,'0000-00-00 00:00:00','2014-02-25 16:10:22','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,4,'','',7,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,62,'verbale1 condo2','verbale1-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:10:58',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:10:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',8,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,63,'verbale2 condo2','verbale2-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:11:34',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:11:34','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',8,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,64,'fattura1 condo2','fattura1-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:12:40',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:12:40','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',8,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,65,'fattura2 condo2','fattura2-condo2','<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p style=\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:12:54',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:12:54','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',8,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,67,'verbale2 condo1','verbale2-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 16:26:51',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:26:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',7,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,68,'fattura1 condo1','fattura1-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:27:08',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:27:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',7,18,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,69,'fattura2 condo1','fattura2-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,11,'2014-02-25 16:27:26',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 16:27:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',7,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,79,'verbale3 condo1','verbale3-condo1','<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.</p>\r\n<p> </p>\r\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.</p>','',1,10,'2014-02-25 18:10:32',431,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-02-25 18:10:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',7,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
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
-- Table structure for table `i92ks_djimageslider`
--

DROP TABLE IF EXISTS `i92ks_djimageslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_djimageslider`
--

LOCK TABLES `i92ks_djimageslider` WRITE;
/*!40000 ALTER TABLE `i92ks_djimageslider` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_djimageslider` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10058 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_extensions`
--

LOCK TABLES `i92ks_extensions` WRITE;
/*!40000 ALTER TABLE `i92ks_extensions` DISABLE KEYS */;
INSERT INTO `i92ks_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"it-IT\",\"site\":\"it-IT\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"11\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"db9d07e5888569181b068853690e145e\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2013-12-14\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2013 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.1.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.0.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"February 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Contact Information Module','module','mod_contactinfo','',0,1,0,0,'{\"name\":\"Contact Information Module\",\"type\":\"module\",\"creationDate\":\"February 2013\",\"author\":\"Edward Cupler\",\"copyright\":\"(C) 2013 Digital Greys. All rights reserved.\",\"authorEmail\":\"ecupler@digitalgreys.com\",\"authorUrl\":\"www.digitalgreys.com\",\"version\":\"3.3\",\"description\":\"MOD_CONTACTINFO_XML_DESCRIPTION\",\"group\":\"\"}','{\"layout_style\":\"SeperateLines\",\"separate_code\":\"vert_indent\",\"link_to\":\"1\",\"link_website\":\"1\",\"website_target\":\"0\",\"contact_cid\":\"\",\"show_image\":\"0\",\"link_image\":\"1\",\"thumb_size\":\"100\",\"@spacer\":\"\",\"show_name\":\"0\",\"show_alias\":\"0\",\"con_position\":\"0\",\"show_address\":\"0\",\"show_suburb\":\"0\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"0\",\"show_telephone\":\"0\",\"show_mobile\":\"0\",\"show_fax\":\"0\",\"show_email_to\":\"0\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10001,'com_phocadownload','component','com_phocadownload','',1,1,0,0,'{\"name\":\"com_phocadownload\",\"type\":\"component\",\"creationDate\":\"16\\/11\\/2013\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"3.0.3\",\"description\":\"Phoca Download\",\"group\":\"\"}','{\"filename_or_name\":\"filename\",\"display_downloads\":\"0\",\"display_description\":\"3\",\"display_main_cat_desc\":\"0\",\"display_detail\":\"1\",\"display_new\":\"0\",\"display_hot\":\"0\",\"display_most_download\":\"1\",\"display_file_view\":\"0\",\"display_date_type\":\"0\",\"download_external_link\":\"_self\",\"download_metadesc\":\"\",\"download_metakey\":\"\",\"category_ordering\":\"1\",\"file_ordering\":\"1\",\"default_pagination\":\"20\",\"pagination\":\"5,10,15,20,50\",\"display_num_doc_secs\":\"0\",\"display_num_doc_secs_header\":\"1\",\"display_up_icon\":\"1\",\"display_mirror_links\":\"0\",\"display_report_link\":\"0\",\"report_link_guestbook_id\":\"\",\"tags_links\":\"0\",\"display_tags_links\":\"0\",\"license_box_height\":\"300\",\"display_category_comments\":\"0\",\"display_file_comments\":\"0\",\"fb_comment_app_id\":\"\",\"fb_comment_width\":\"550\",\"fb_comment_lang\":\"en_US\",\"fb_comment_count\":\"\",\"display_rating_file\":\"0\",\"file_icon_size\":\"16\",\"file_icon_size_md\":\"16\",\"file_icon_mime\":\"1\",\"display_specific_layout\":\"0\",\"display_play\":\"0\",\"player_width\":\"328\",\"player_height\":\"200\",\"player_mp3_height\":\"30\",\"play_popup_window\":\"0\",\"html5_play\":\"0\",\"display_preview\":\"0\",\"preview_width\":\"640\",\"preview_height\":\"480\",\"preview_popup_window\":\"0\",\"youtube_height_cv\":\"240\",\"youtube_width_cv\":\"320\",\"youtube_height_dv\":\"360\",\"youtube_width_dv\":\"480\",\"ignore_file_types_check\":\"2\",\"allowed_file_types_download\":\"{hqx=application\\/mac-binhex40} {cpt=application\\/mac-compactpro} {csv=text\\/x-comma-separated-values} {bin=application\\/macbinary} {dms=application\\/octet-stream} {lha=application\\/octet-stream} {lzh=application\\/octet-stream} {exe=application\\/octet-stream} {class=application\\/octet-stream} {psd=application\\/x-photoshop} {so=application\\/octet-stream} {sea=application\\/octet-stream} {dll=application\\/octet-stream} {oda=application\\/oda} {pdf=application\\/pdf} {ai=application\\/postscript} {eps=application\\/postscript} {ps=application\\/postscript} {smi=application\\/smil} {smil=application\\/smil} {mif=application\\/vnd.mif} {xls=application\\/vnd.ms-excel} {ppt=application\\/powerpoint} {wbxml=application\\/wbxml} {wmlc=application\\/wmlc} {dcr=application\\/x-director} {dir=application\\/x-director} {dxr=application\\/x-director} {dvi=application\\/x-dvi} {gtar=application\\/x-gtar} {gz=application\\/x-gzip} {php=application\\/x-httpd-php} {php4=application\\/x-httpd-php} {php3=application\\/x-httpd-php} {phtml=application\\/x-httpd-php} {phps=application\\/x-httpd-php-source} {js=application\\/x-javascript} {swf=application\\/x-shockwave-flash} {sit=application\\/x-stuffit} {tar=application\\/x-tar} {tgz=application\\/x-tar} {xhtml=application\\/xhtml+xml} {xht=application\\/xhtml+xml} {zip=application\\/x-zip} {mid=audio\\/midi} {midi=audio\\/midi} {mpga=audio\\/mpeg} {mp2=audio\\/mpeg} {mp3=audio\\/mpeg} {aif=audio\\/x-aiff} {aiff=audio\\/x-aiff} {aifc=audio\\/x-aiff} {ram=audio\\/x-pn-realaudio} {rm=audio\\/x-pn-realaudio} {rpm=audio\\/x-pn-realaudio-plugin} {ra=audio\\/x-realaudio} {rv=video\\/vnd.rn-realvideo} {wav=audio\\/x-wav} {bmp=image\\/bmp} {gif=image\\/gif} {jpeg=image\\/jpeg} {jpg=image\\/jpeg} {jpe=image\\/jpeg} {png=image\\/png} {tiff=image\\/tiff} {tif=image\\/tiff} {css=text\\/css} {html=text\\/html} {htm=text\\/html} {shtml=text\\/html} {txt=text\\/plain} {text=text\\/plain} {log=text\\/plain} {rtx=text\\/richtext} {rtf=text\\/rtf} {xml=text\\/xml} {xsl=text\\/xml} {mpeg=video\\/mpeg} {mpg=video\\/mpeg} {mpe=video\\/mpeg} {qt=video\\/quicktime} {mov=video\\/quicktime} {avi=video\\/x-msvideo} {flv=video\\/x-flv} {movie=video\\/x-sgi-movie} {doc=application\\/msword} {xl=application\\/excel} {eml=message\\/rfc822} {pptx=application\\/vnd.openxmlformats-officedocument.presentationml.presentation} {xlsx=application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet} {docx=application\\/vnd.openxmlformats-officedocument.wordprocessingml.document} {rar=application\\/x-rar-compressed} {odb=application\\/vnd.oasis.opendocument.database} {odc=application\\/vnd.oasis.opendocument.chart} {odf=application\\/vnd.oasis.opendocument.formula} {odg=application\\/vnd.oasis.opendocument.graphics} {odi=application\\/vnd.oasis.opendocument.image} {odm=application\\/vnd.oasis.opendocument.text-master} {odp=application\\/vnd.oasis.opendocument.presentation} {ods=application\\/vnd.oasis.opendocument.spreadsheet} {odt=application\\/vnd.oasis.opendocument.text} {sxc=application\\/vnd.sun.xml.calc} {sxd=application\\/vnd.sun.xml.draw} {sxg=application\\/vnd.sun.xml.writer.global} {sxi=application\\/vnd.sun.xml.impress} {sxm=application\\/vnd.sun.xml.math} {sxw=application\\/vnd.sun.xml.writer} {ogv=video\\/ogg} {ogg=audio\\/ogg}\",\"allowed_file_types_upload\":\"{pdf=application\\/pdf} {ppt=application\\/powerpoint} {gz=application\\/x-gzip} {tar=application\\/x-tar} {tgz=application\\/x-tar} {zip=application\\/x-zip} {bmp=image\\/bmp} {gif=image\\/gif} {jpeg=image\\/jpeg} {jpg=image\\/jpeg} {jpe=image\\/jpeg} {png=image\\/png} {tiff=image\\/tiff} {tif=image\\/tiff} {txt=text\\/plain} {mpeg=video\\/mpeg} {mpg=video\\/mpeg} {mpe=video\\/mpeg} {qt=video\\/quicktime} {mov=video\\/quicktime} {avi=video\\/x-msvideo} {flv=video\\/x-flv} {doc=application\\/msword} {ogv=video\\/ogg} {ogg=audio\\/ogg}\",\"disallowed_file_types_download\":\"\",\"disallowed_file_types_upload\":\"\",\"send_mail_download\":\"0\",\"user_files_max_count_download\":\"0\",\"enable_token_download\":\"0\",\"token_files_max_count_download\":\"0\",\"enable_user_cp\":\"0\",\"user_files_max_count\":\"5\",\"user_files_max_size\":\"20971520\",\"user_file_upload_size\":\"3145728\",\"enable_user_upload_approve\":\"0\",\"user_ucp_lang\":\"1\",\"send_mail_upload\":\"0\",\"overwrite_existing_files\":\"0\",\"pap_copy\":\"0\",\"upload_maxsize\":\"3145728\",\"enable_multiple_upload_admin\":\"1\",\"enable_user_statistics\":\"1\",\"enable_logging\":\"0\",\"delete_existing_files\":\"0\",\"description\":\"\",\"download_folder\":\"phocadownload\",\"download_folder_pap\":\"phocadownloadpap\",\"absolute_path\":\"\",\"enable_plugin_query\":\"0\",\"enable_cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10002,'plg_content_phocadownload','plugin','phocadownload','content',0,1,1,0,'{\"name\":\"plg_content_phocadownload\",\"type\":\"plugin\",\"creationDate\":\"17\\/08\\/2013\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"3.0.1\",\"description\":\"PLG_CONTENT_PHOCADOWNLOAD_DESCRIPTION\",\"group\":\"\"}','{\"icon_size\":\"32\",\"file_icon_mime\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,'plg_content_attachments','plugin','attachments','content',0,1,1,0,'{\"name\":\"plg_content_attachments\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'plg_search_attachments','plugin','attachments','search',0,1,1,0,'{\"name\":\"plg_search_attachments\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_SEARCH_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,'plg_attachments_plugin_framework','plugin','attachments_plugin_framework','attachments',0,1,1,0,'{\"name\":\"plg_attachments_plugin_framework\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2009-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_FOR_COMPONENTS_PLUGIN_FRAMEWORK_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'plg_attachments_for_content','plugin','attachments_for_content','attachments',0,1,1,0,'{\"name\":\"plg_attachments_for_content\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2009-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_FOR_CONTENT_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'plg_system_show_attachments_in_editor','plugin','show_attachments','system',0,1,1,0,'{\"name\":\"plg_system_show_attachments_in_editor\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2011-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_SHOW_ATTACHMENTS_IN_EDITOR_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'plg_editors-xtd_add_attachment_btn','plugin','add_attachment','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_add_attachment_btn\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ADD_ATTACHMENT_BUTTON_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10009,'plg_editors-xtd_insert_attachments_token_btn','plugin','insert_attachments_token','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_insert_attachments_token_btn\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_INSERT_ATTACHMENTS_TOKEN_BUTTON_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10010,'plg_quickicon_attachments','plugin','attachments','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_attachments\",\"type\":\"plugin\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"PLG_QUICKICON_ATTACHMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"context\":\"mod_quickicon\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,'com_attachments','component','com_attachments','',1,1,0,0,'{\"name\":\"com_attachments\",\"type\":\"component\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments3\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_ATTACHMENTS_COMPONENT_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10012,'attachments','package','pkg_attachments','',0,1,1,0,'{\"name\":\"pkg_attachments\",\"type\":\"package\",\"creationDate\":\"November 15, 2013\",\"author\":\"Jonathan M. Cameron\",\"copyright\":\"(C) 2007-2013 Jonathan M. Cameron. All rights reserved.\",\"authorEmail\":\"jmcameron@jmcameron.net\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/attachments\\/\",\"version\":\"3.1.3\",\"description\":\"ATTACH_PACKAGE_ATTACHMENTS_FOR_JOOMLA_16PLUS\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10013,'ItalianItaly','language','it-IT','',0,1,0,0,'{\"name\":\"Italian (Italy)\",\"type\":\"language\",\"creationDate\":\"2014-02-06\",\"author\":\"Italian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.2.2.1\",\"description\":\"Italian site language pack for Joomla! 3.2\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10014,'ItalianItaly','language','it-IT','',1,1,0,0,'{\"name\":\"Italian (Italy)\",\"type\":\"language\",\"creationDate\":\"2014-02-06\",\"author\":\"Italian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.2.2.1\",\"description\":\"Italian administration language pack for Joomla! 3.2\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10015,'it-IT','package','pkg_it-IT','',0,1,1,0,'{\"name\":\"Italian Language Pack\",\"type\":\"package\",\"creationDate\":\"06 febbraio 2014\",\"author\":\"Italian translation team : joomla.it\",\"copyright\":\"Copyright (C) 2005 - 2013 joomla.it e Open Source Matters. Tutti i diritti riservati\",\"authorEmail\":\"info@joomla.it\",\"authorUrl\":\"www.joomla.it\",\"version\":\"3.2.2.1\",\"description\":\"Joomla! 3.2 Full Italian (it-IT) Language Package - Version 3.2.2v1\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10021,'com_djimageslider','component','com_djimageslider','',1,1,0,0,'{\"name\":\"com_djimageslider\",\"type\":\"component\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.2.2\",\"description\":\"DJ-ImageSlider component\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10022,'DJ-ImageSlider','module','mod_djimageslider','',0,1,0,0,'{\"name\":\"DJ-ImageSlider\",\"type\":\"module\",\"creationDate\":\"March 2013\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.2.2\",\"description\":\"DJ-ImageSlider Module\",\"group\":\"\"}','{\"slider_source\":\"0\",\"slider_type\":\"0\",\"link_image\":\"1\",\"image_folder\":\"images\\/sampledata\\/fruitshop\",\"link\":\"\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"image_width\":\"240\",\"image_height\":\"180\",\"fit_to\":\"0\",\"visible_images\":\"3\",\"space_between_images\":\"10\",\"max_images\":\"20\",\"sort_by\":\"1\",\"effect\":\"Expo\",\"autoplay\":\"1\",\"show_buttons\":\"1\",\"show_arrows\":\"1\",\"show_custom_nav\":\"0\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"30\",\"arrows_horizontal\":\"5\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10023,'dj-imageslider','package','pkg_dj-imageslider','',0,1,1,0,'{\"name\":\"DJ-ImageSlider Package\",\"type\":\"package\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.2.2\",\"description\":\"\\n\\t\\t<style> #right-text {font-family:Arial, Helvetica, sans-serif;\\tfont-size:11px;\\t} #right-text a:link, #right-text a:visited {color:#4991c1;font-weight:bold; font-size: 13px;} #right-text a:hover {text-decoration:underline;}\\t#right-text h2 {color:#fa9539;text-transform:uppercase;\\tfont-size:16px;\\tpadding:0;\\tmargin:2px 0;}\\t#right-text p {padding:0;margin:4px 0;}\\t#left-logo {float:left;width:270px;height:120px;display:block;} #left-logo img {margin: 40px 20px;} #right-text {float:left;width:400px;}<\\/style>\\n\\t\\n\\t\\t<div id=\\\"left-logo\\\">\\n\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\"><img src=\\\"http:\\/\\/new.dj-extensions.com\\/templates\\/dj-extensions\\/images\\/logo.png\\\" alt=\\\"DJ-Extensions.com\\\" \\/><\\/a>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<div id=\\\"right-text\\\">\\n\\t\\t\\t<h2>Thank you for installing DJ-ImageSlider!<\\/h2>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display image slides with title and short description linked to any menu item, article or custom url address.<\\/p>\\n\\t\\t\\t<p>If you want to learn how to use DJ-ImageSlider please read <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/documentation\\\">Documentation<\\/a> and search our <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/forum\\\">Support Forum<\\/a><br \\/><br \\/>Check out our other extensions at <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t<\\/div>\\n\\t\\n\\t\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10024,'Italian language pack for DJ-ImageSlider','file','install','',0,1,0,0,'{\"name\":\"Italian language pack for DJ-ImageSlider\",\"type\":\"file\",\"creationDate\":\"Aprile 2013\",\"author\":\"Peppe-73 Staff Joomla.it\",\"copyright\":\"2010 Blue Constant Media LTD\",\"authorEmail\":\"\",\"authorUrl\":\"www.mypcdoktor.it\",\"version\":\"2.0.0\",\"description\":\"Italian translation for DJ-ImageSlider\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10025,'Library - Masters Web Solutions','library','lib_mws','',0,1,1,0,'{\"name\":\"Library - Masters Web Solutions\",\"type\":\"library\",\"creationDate\":\"January 2013\",\"author\":\"Christopher Masters | Masters Web Solutions\",\"copyright\":\"Copyright (C) 2011 Christopher Masters DBA Masters Web Solutions. All rights reserved.\",\"authorEmail\":\"chris@masterswebsolutions.com\",\"authorUrl\":\"www.masterswebsolutions.com\",\"version\":\"1.12\",\"description\":\"Masters Web Solutions library.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10026,'System - Masters Web Solutions','plugin','mws','system',0,1,1,0,'{\"name\":\"System - Masters Web Solutions\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Christopher Masters | Masters Web Solutions\",\"copyright\":\"Copyright (C) 2011 Christopher Masters DBA Masters Web Solutions. All rights reserved.\",\"authorEmail\":\"chris@masterswebsolutions\",\"authorUrl\":\"www.masterswebsolutions.com\",\"version\":\"1.1\",\"description\":\"Masters Web Solutions System Plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10027,'mws','package','pkg_mws','',0,1,1,0,'{\"name\":\"Package - Masters Web Solutions\",\"type\":\"package\",\"creationDate\":\"October 2013\",\"author\":\"Christopher Masters | Masters Web Solutions\",\"copyright\":\"Copyright (C) 2011 Christopher Masters DBA Masters Web Solutions. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10028,'Masters Contact Info','module','mod_mci','',0,1,0,0,'{\"name\":\"Masters Contact Info\",\"type\":\"module\",\"creationDate\":\"July 2011\",\"author\":\"Christopher Masters\",\"copyright\":\"Copyright (C) 2011 Christopher Masters DBA Masters Web Solutions. All rights reserved.\",\"authorEmail\":\"chris@masterswebsolutions.com\",\"authorUrl\":\"http:\\/\\/www.masterswebsolutions.com\",\"version\":\"2.10.1.11\",\"description\":\"\\n\\t\\n\\t<div id=\\\"mws\\\">\\n\\t\\t<div class=\\\"mws-row mws-clearfix\\\">\\n\\t\\t\\t<div class=\\\"mws-col\\\">\\n\\t\\t\\t\\t<a class=\\\"mws-logo\\\" href=\\\"http:\\/\\/www.masterswebsolutions.com\\\" title=\\\"Go to masterswebsolutions.com!\\\" target=\\\"_blank\\\"><\\/a>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\\"mws-col\\\">\\n\\t\\t\\t\\t<h2>Masters Contact Info<\\/h2>\\n\\t\\t\\t\\t<h3>Developed by <a href=\\\"http:\\/\\/www.linkedin.com\\/in\\/masterswebsolutions\\\" title=\\\"Click to connect on Linkedin!\\\" target=\\\"_blank\\\">Christopher Masters<\\/a><\\/h3>\\n\\t\\t\\t<\\/div>\\n\\t\\t<\\/div>\\n\\t\\t<p class=\\\"mws-rating\\\">If you use <strong>Masters Contact Info<\\/strong>, please post a rating and a review at the <a href=\\\"http:\\/\\/extensions.joomla.org\\/extensions\\/contacts-and-feedback\\/contact-details\\/18031\\/review\\\" target=\\\"_blank\\\">Joomla Extensions Directory<\\/a>.<\\/p>\\n\\t\\t<h4>Setup Instructions:<\\/h4>\\n\\t\\t<ul>\\n\\t\\t\\t<li>Follow the <a href=\\\"http:\\/\\/www.masterswebsolutions.com\\/joomla-extensions\\/user-guides\\/masters-contact-info\\\" target=\\\"_blank\\\">User Guide<\\/a>.<\\/li>\\n\\t\\t\\t<li>The plugin \\\"Load Modules\\\" must be enabled to use inside of an article. <a href=\\\"index.php?option=com_plugins&view=plugins\\\">Go to the Plugin Manager<\\/a><\\/li>\\n\\t\\t\\t<li>The syntax for the \\\"Load Modules\\\" plugin is...<br \\/>\\n\\t\\t\\t\\t{loadposition customposition}<br \\/>\\n\\t\\t\\t\\tWhere \\\"customposition\\\" is the position of the module.\\t\\t\\t\\n\\t\\t\\t<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<h4>Important Information:<\\/h4>\\n\\t\\t<ul>\\n\\t\\t\\t<li>Thumbnails are created for the contact image. To clear the cached thumbnails, go to \\\"Site->Maintenance->Clear Cache\\\" and delete \\\"mod_mci\\\"<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<h4>Further Information:<\\/h4>\\n\\t\\t<ul>\\n\\t\\t\\t<li>Hover over parameter labels for detailed information<\\/li>\\n\\t\\t\\t<li><a href=\\\"http:\\/\\/www.masterswebsolutions.com\\/joomla-extensions\\/faq\\/masters-contact-info\\\" target=\\\"_blank\\\">Frequently Asked Questions<\\/a><\\/li>\\n\\t\\t\\t<li><a href=\\\"http:\\/\\/docs.joomla.org\\/Extension_types_%28general_definitions%29\\\" target=\\\"_blank\\\">What is a module?<\\/a><\\/li>\\n\\t\\t\\t<li><a href=\\\"http:\\/\\/www.masterswebsolutions.com\\/support\\\" target=\\\"_blank\\\">Support<\\/a><\\/li>\\n\\t\\t<\\/ul>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\"}','{\"contact_grouping\":\"category\",\"categories\":\"\",\"category_include_sub_categories\":\"1\",\"category_order\":\"catordering ASC\",\"category_contact_order\":\"contact.ordering\",\"category_limit\":\"\",\"contacts\":\"\",\"contact_order\":\"contact.ordering ASC\",\"contact_limit\":\"\",\"single_contact_format\":\"div\",\"one\":\"\",\"two\":\"\",\"three\":\"\",\"four\":\"\",\"five\":\"\",\"six\":\"\",\"seven\":\"\",\"eight\":\"\",\"nine\":\"\",\"ten\":\"\",\"eleven\":\"\",\"twelve\":\"\",\"thirteen\":\"\",\"fourteen\":\"\",\"fifteen\":\"\",\"sixteen\":\"\",\"seventeen\":\"\",\"name_tag\":\"\",\"link_contact\":\"1\",\"city_state_zip_inline\":\"1\",\"link_email\":\"mailto\",\"email_text\":\"\",\"website_target\":\"\",\"cat_head\":\"1\",\"cat_head_level\":\"3\",\"columns\":\"1\",\"row_margin\":\"20\",\"contact_pad_left\":\"0\",\"contact_pad_right\":\"0\",\"category_column\":\"0\",\"category_margin\":\"20\",\"container_css\":\"\",\"before_css\":\"\",\"field_css\":\"\",\"after_css\":\"\",\"even_odd\":\"\",\"img_width\":\"\",\"img_height\":\"\",\"img_float\":\"left\",\"img_link\":\"1\",\"img_top\":\"0\",\"img_bottom\":\"0\",\"img_left\":\"0\",\"img_right\":\"0\",\"img_css\":\"\",\"cache_permissions\":\"0755\",\"debug_mode\":\"0\",\"log_actions\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10029,'mci','package','pkg_mci','',0,1,1,0,'{\"name\":\"Package - Masters Contact Info\",\"type\":\"package\",\"creationDate\":\"January 2013\",\"author\":\"Christopher Masters | Masters Web Solutions\",\"copyright\":\"Copyright (C) 2011 Christopher Masters DBA Masters Web Solutions. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.1\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10030,'acymailing','component','com_acymailing','',1,1,0,0,'{\"name\":\"AcyMailing\",\"type\":\"component\",\"creationDate\":\"mars 2014\",\"author\":\"Acyba\",\"copyright\":\"Copyright (C) 2009-2014 ACYBA SARL - All rights reserved.\",\"authorEmail\":\"dev@acyba.com\",\"authorUrl\":\"http:\\/\\/www.acyba.com\",\"version\":\"4.6.0\",\"description\":\"Manage your Mailing lists, Newsletters, e-mail marketing campaigns\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10031,'AcyMailing : trigger Joomla Content plugins','plugin','contentplugin','acymailing',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',15,0),(10032,'AcyMailing Manage text','plugin','managetext','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',10,0),(10033,'AcyMailing Tag : Website links','plugin','online','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',6,0),(10034,'AcyMailing : share on social networks','plugin','share','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',20,0),(10035,'AcyMailing : Statistics Plugin','plugin','stats','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',50,0),(10036,'AcyMailing table of contents generator','plugin','tablecontents','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0),(10037,'AcyMailing Tag : CB User information','plugin','tagcbuser','acymailing',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',4,0),(10038,'AcyMailing Tag : content insertion','plugin','tagcontent','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',11,0),(10039,'AcyMailing Tag : Subscriber information','plugin','tagsubscriber','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',2,0),(10040,'AcyMailing Tag : Manage the Subscription','plugin','tagsubscription','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',1,0),(10041,'AcyMailing Tag : Date / Time','plugin','tagtime','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0),(10042,'AcyMailing Tag : Joomla User Information','plugin','taguser','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',3,0),(10043,'AcyMailing Template Class Replacer','plugin','template','acymailing',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',25,0),(10044,'AcyMailing Editor','plugin','acyeditor','editors',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0),(10045,'AcyMailing : (auto)Subscribe during Joomla registration','plugin','regacymailing','system',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),(10046,'AcyMailing Module','module','mod_acymailing','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),(10047,'jevents','component','com_jevents','',1,1,0,0,'{\"name\":\"JEvents\",\"type\":\"component\",\"creationDate\":\"January 2014\",\"author\":\"GWE Systems Ltd \",\"copyright\":\"(C) 2009-2012 GWE Systems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Events, meetings and more\",\"group\":\"\"}','{\"com_difficulty\":\"3\",\"com_calViewName\":\"geraint\",\"darktemplate\":\"0\",\"com_dateformat\":\"2\",\"com_calHeadline\":\"comp\",\"com_calUseIconic\":\"1\",\"iconstoshow\":[\"byyear\",\"bymonth\",\"byweek\",\"byday\",\"search\"],\"com_navbarcolor\":\"green\",\"com_earliestyear\":\"2000\",\"com_latestyear\":\"2020\",\"com_starday\":\"1\",\"com_print_icon_view\":\"1\",\"com_email_icon_view\":\"1\",\"com_copyright\":\"1\",\"showPanelNews\":\"1\",\"mergemenus\":\"0\",\"show_adminpanel\":\"1\",\"icaltimezonelive\":\"\",\"regexsearch\":\"1\",\"catseparator\":\"|\",\"jevadmin\":\"431\",\"authorisedonly\":\"0\",\"jevpublishown\":\"0\",\"rules\":{\"core.manage\":{\"1\":\"\",\"9\":\"\",\"6\":\"1\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"},\"core.create\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"},\"core.edit.own\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"},\"core.edit\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"},\"core.edit.state\":{\"1\":\"\",\"9\":\"\",\"6\":\"1\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"},\"core.deleteall\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"},\"core.admin\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"10\":\"\",\"11\":\"\",\"8\":\"\"}},\"com_calUseStdTime\":\"0\",\"com_editdateformat\":\"Y-m-d\",\"disablerepeats\":\"0\",\"defaultcat\":\"0\",\"forcepopupcalendar\":\"1\",\"com_calForceCatColorEventForm\":\"2\",\"editpopup\":\"0\",\"popupw\":\"800\",\"popuph\":\"500\",\"com_single_pane_edit\":\"0\",\"timebeforedescription\":\"0\",\"multiday\":\"1\",\"com_show_editor_buttons\":\"0\",\"com_editor_button_exceptions\":\"pagebreak,readmore\",\"com_notifyboth\":\"0\",\"com_notifyallevents\":\"0\",\"com_notifyauthor\":\"0\",\"showpriority\":\"0\",\"checkclashes\":\"0\",\"noclashes\":\"0\",\"skipreferrer\":\"0\",\"defaultstarttime\":\"08:00\",\"defaultendtime\":\"17:00\",\"multicategory\":\"0\",\"bootstrapcss\":\"1\",\"bootstrapchosen\":\"1\",\"allowraw\":\"0\",\"notifymessage\":\"<p>Title : {TITLE} {DESCRIPTION} Event submitted from [ {LIVESITE} ] by [ {AUTHOR} ] View this event : {VIEWLINK} Edit this event : {EDITLINK} Manage your events : <a href=\\\"{MANAGEEVENTS}\\\">Manage Events<\\/a><\\/p>\",\"com_byview\":\"1\",\"com_mailview\":\"1\",\"com_hitsview\":\"1\",\"com_repeatview\":\"1\",\"contact_display_name\":\"0\",\"redirect_detail\":\"0\",\"com_calCutTitle\":\"15\",\"com_calMaxDisplay\":\"15\",\"com_calDisplayStarttime\":\"1\",\"com_calShowLegend\":\"1\",\"com_enableToolTip\":\"1\",\"tooltiptype\":\"joomla\",\"com_calTTBackground\":\"1\",\"com_calTTPosX\":\"LEFT\",\"com_calTTPosY\":\"BELOW\",\"com_calTTShadow\":\"0\",\"com_calTTShadowX\":\"0\",\"com_calTTShadowY\":\"0\",\"com_calEventListRowsPpg\":\"10\",\"showyearpast\":\"1\",\"com_showrepeats\":\"1\",\"showyeardate\":\"0\",\"icaltimezone\":\"\",\"icalkey\":\"SECRET_PHRASE\",\"showicalicon\":\"0\",\"disableicalexport\":\"0\",\"icalmultiday\":\"0\",\"icalmultiday24h\":\"0\",\"feimport\":\"0\",\"allowedit\":\"0\",\"icalformatted\":\"0\",\"com_rss_cache\":\"1\",\"com_rss_cache_time\":\"3600\",\"com_rss_count\":\"5\",\"com_rss_live_bookmarks\":\"1\",\"com_rss_modid\":\"0\",\"com_rss_title\":\"JEvents RSS Feed for Joomla\",\"com_rss_description\":\"Powered by JEvents!\",\"com_rss_limit_text\":\"0\",\"com_rss_text_length\":\"20\",\"com_rss_logo\":\"\",\"com_cache\":\"0\",\"newsef\":\"0\",\"com_blockRobots\":\"1\",\"robotprior\":\"-1 month\",\"robotpost\":\"+1 month\",\"redirectrobots\":\"0\",\"robotmenuitem\":\"\",\"blockall\":\"0\",\"largeDataSetLimit\":\"100000\",\"modcal_DispLastMonth\":\"NO\",\"modcal_DispLastMonthDays\":\"0\",\"modcal_DispNextMonth\":\"NO\",\"modcal_DispNextMonthDays\":\"0\",\"modcal_LinkCloaking\":\"0\",\"modlatest_MaxEvents\":\"10\",\"modlatest_Mode\":\"0\",\"modlatest_Days\":\"5\",\"startnow\":\"0\",\"modlatest_NoRepeat\":\"1\",\"modlatest_DispYear\":\"0\",\"modlatest_multiday\":\"0\",\"modlatest_DispLinks\":\"1\",\"modlatest_DisDateStyle\":\"0\",\"modlatest_DisTitleStyle\":\"0\",\"modlatest_LinkToCal\":\"0\",\"modlatest_SortReverse\":\"0\",\"modlatest_LinkCloaking\":\"0\",\"modlatest_CustFmtStr\":\"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br\\/>${title}\",\"modlatest_RSS\":\"0\",\"modlatest_contentplugins\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10048,'JEvents Calendar','module','mod_jevents_cal','',0,1,0,0,'{\"name\":\"JEvents Calendar\",\"type\":\"module\",\"creationDate\":\"January 2014\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2014 GWE Systems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Shows up to 3 different monthly calendar for JEvents component\",\"group\":\"\"}','{\"@spacer\":\"JEV_LATEST_EXTRAS_TAB_LABEL\",\"com_calViewName\":\"\",\"target_itemid\":\"\",\"catidnew\":\"\",\"modcal_useLocalParam\":\"0\",\"noeventcheck\":\"0\",\"ignorecatfilter\":\"0\",\"ignorefiltermodule\":\"1\",\"minical_showlink\":\"1\",\"minical_prevyear\":\"1\",\"minical_prevmonth\":\"1\",\"minical_actmonth\":\"1\",\"minical_actyear\":\"1\",\"minical_nextmonth\":\"1\",\"minical_nextyear\":\"1\",\"minical_usedate\":\"0\",\"modcal_DispLastMonth\":\"NO\",\"modcal_DispLastMonthDays\":\"0\",\"modcal_DispNextMonth\":\"NO\",\"modcal_DispNextMonthDays\":\"0\",\"extras0\":\"\",\"extras1\":\"\",\"extras2\":\"\",\"extras3\":\"\",\"extras4\":\"\",\"extras5\":\"\",\"extras6\":\"\",\"extras7\":\"\",\"extras8\":\"\",\"extras9\":\"\",\"extras10\":\"\",\"extras11\":\"\",\"extras12\":\"\",\"extras13\":\"\",\"moduleclass_sfx\":\"\",\"inc_ec_css\":\"1\",\"cache\":\"1\",\"mod_cal_width\":\"\",\"mod_cal_height\":\"\",\"mod_cal_rowheight\":\"\",\"modcal_LinkCloaking\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10049,'JEvents Legend','module','mod_jevents_legend','',0,1,0,0,'{\"name\":\"JEvents Legend\",\"type\":\"module\",\"creationDate\":\"January 2014\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2014 GWE Systems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Shows legend for JEvents categories\",\"group\":\"\"}','{\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"show_admin\":\"0\",\"modlegend_inccss\":\"1\",\"nonjeventsdisable\":\"1\",\"target_itemid\":\"\",\"catidnew\":\"\",\"hideinactivekids\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10050,'JEvents Latest Events','module','mod_jevents_latest','',0,1,0,0,'{\"name\":\"JEvents Latest Events\",\"type\":\"module\",\"creationDate\":\"January 2014\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2014 GWE Systems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Show latest events for Events component\",\"group\":\"\"}','{\"@spacer\":\"ADDITIONAL_CONSTRAINTS\",\"com_calViewName\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"catidnew\":\"\",\"ignorecatfilter\":\"0\",\"ignorefiltermodule\":\"1\",\"target_itemid\":\"\",\"modlatest_inccss\":\"1\",\"layout\":\"\",\"modlatest_useLocalParam\":\"1\",\"modlatest_CustFmtStr\":\"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br \\/>${title}\",\"modlatest_MaxEvents\":\"10\",\"modlatest_Mode\":\"3\",\"modlatest_Days\":\"30\",\"startnow\":\"0\",\"pastonly\":\"0\",\"modlatest_NoRepeat\":\"0\",\"modlatest_multiday\":\"0\",\"modlatest_DispLinks\":\"1\",\"modlatest_DispYear\":\"0\",\"modlatest_NoEvents\":\"1\",\"modlatest_DisDateStyle\":\"0\",\"modlatest_DisTitleStyle\":\"0\",\"modlatest_LinkToCal\":\"0\",\"modlatest_LinkCloaking\":\"0\",\"modlatest_SortReverse\":\"0\",\"modlatest_RSS\":\"0\",\"modlatest_rss_title\":\"\",\"modlatest_rss_description\":\"\",\"extras0\":\"\",\"extras1\":\"\",\"extras2\":\"\",\"extras3\":\"\",\"extras4\":\"\",\"extras5\":\"\",\"extras6\":\"\",\"extras7\":\"\",\"extras8\":\"\",\"extras9\":\"\",\"extras10\":\"\",\"extras11\":\"\",\"extras12\":\"\",\"extras13\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10051,'JEvents Filter','module','mod_jevents_filter','',0,1,0,0,'{\"name\":\"JEvents Filter\",\"type\":\"module\",\"creationDate\":\"January 2014\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2014 GWE Systems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Shows JEvents Filter\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10052,'JEvents CustomModule','module','mod_jevents_custom','',0,1,0,0,'{\"name\":\"JEvents CustomModule\",\"type\":\"module\",\"creationDate\":\"Unknown\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2013 GWE Systems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Displays data from customised event detail or event list layouts\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10053,'JEvents View Switcher','module','mod_jevents_switchview','',0,1,0,0,'{\"name\":\"JEvents View Switcher\",\"type\":\"module\",\"creationDate\":\"January 2014\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2014 GWE Systems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Switch views for JEvents component and modules\",\"group\":\"\"}','{\"cache\":\"0\",\"show_preview\":\"0\",\"target_itemid\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10054,'plg_finder_jevents','plugin','jevents','finder',0,0,1,0,'{\"name\":\"plg_finder_jevents\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Geraint Edwards\",\"copyright\":\"(C) 2010-2014 GWE Systems Ltd. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.1.17\",\"description\":\"PLG_FINDER_JEVENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target_itemid\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10055,'Search - JEvents','plugin','eventsearch','search',0,1,1,0,'{\"name\":\"Search - JEvents\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"JEvents Project Group\",\"copyright\":\"(C) 2008-2014 GWE Systems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"www.jevents.net\",\"version\":\"3.1.17\",\"description\":\"Events Search is a plugin to allow searching events of the Events component.\",\"group\":\"\"}','{\"search_limit\":\"50\",\"date_format\":\"%Y-%m-%d\",\"target_itemid\":\"\",\"all_language_search\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10056,'googl Shortener','library','googl','',0,1,1,0,'{\"name\":\"googl Shortener\",\"type\":\"library\",\"creationDate\":\"Februrary 2014\",\"author\":\"Sebastian Wyder package by Carlos Camara\",\"copyright\":\"(C) 2010-2014 GWE Systems Ltd. All rights reserved.\",\"authorEmail\":\"carcam@jevents.net\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.1.17\",\"description\":\"Googl Shortener library created by Sebastian Wyder (https:\\/\\/github.com\\/sebi\\/googl-php) and package by Carlos C\\u00e1mara (http:\\/\\/www.jevents.net)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10057,'jevents','package','pkg_jevents','',0,1,1,0,'{\"name\":\"JEvents Package\",\"type\":\"package\",\"creationDate\":\"February 2014\",\"author\":\"Geraint Edwards\",\"copyright\":\"(C) 2012-2014 GWE Systems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.1.17\",\"description\":\"JEvents  - Events, Meetings, Calendars and More\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_finder_types`
--

LOCK TABLES `i92ks_finder_types` WRITE;
/*!40000 ALTER TABLE `i92ks_finder_types` DISABLE KEYS */;
INSERT INTO `i92ks_finder_types` VALUES (1,'Tag',''),(2,'Category',''),(3,'Contact',''),(4,'Article',''),(5,'News Feed',''),(6,'Web Link','');
/*!40000 ALTER TABLE `i92ks_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jev_defaults`
--

DROP TABLE IF EXISTS `i92ks_jev_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jev_defaults` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `subject` text NOT NULL,
  `value` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jev_defaults`
--

LOCK TABLES `i92ks_jev_defaults` WRITE;
/*!40000 ALTER TABLE `i92ks_jev_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_jev_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jev_users`
--

DROP TABLE IF EXISTS `i92ks_jev_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jev_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(2) NOT NULL DEFAULT '0',
  `canuploadimages` tinyint(2) NOT NULL DEFAULT '0',
  `canuploadmovies` tinyint(2) NOT NULL DEFAULT '0',
  `cancreate` tinyint(2) NOT NULL DEFAULT '0',
  `canedit` tinyint(2) NOT NULL DEFAULT '0',
  `canpublishown` tinyint(2) NOT NULL DEFAULT '0',
  `candeleteown` tinyint(2) NOT NULL DEFAULT '0',
  `canpublishall` tinyint(2) NOT NULL DEFAULT '0',
  `candeleteall` tinyint(2) NOT NULL DEFAULT '0',
  `cancreateown` tinyint(2) NOT NULL DEFAULT '0',
  `cancreateglobal` tinyint(2) NOT NULL DEFAULT '0',
  `eventslimit` int(11) NOT NULL DEFAULT '0',
  `extraslimit` int(11) NOT NULL DEFAULT '0',
  `categories` varchar(255) NOT NULL DEFAULT '',
  `calendars` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jev_users`
--

LOCK TABLES `i92ks_jev_users` WRITE;
/*!40000 ALTER TABLE `i92ks_jev_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_jev_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_catmap`
--

DROP TABLE IF EXISTS `i92ks_jevents_catmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_catmap` (
  `evid` int(12) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '1',
  `ordering` int(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `key_event_category` (`evid`,`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_catmap`
--

LOCK TABLES `i92ks_jevents_catmap` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_catmap` DISABLE KEYS */;
INSERT INTO `i92ks_jevents_catmap` VALUES (1,16,0);
/*!40000 ALTER TABLE `i92ks_jevents_catmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_exception`
--

DROP TABLE IF EXISTS `i92ks_jevents_exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_exception` (
  `ex_id` int(12) NOT NULL AUTO_INCREMENT,
  `rp_id` int(12) NOT NULL DEFAULT '0',
  `eventid` int(12) NOT NULL DEFAULT '1',
  `eventdetail_id` int(12) NOT NULL DEFAULT '0',
  `exception_type` int(2) NOT NULL DEFAULT '0',
  `startrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `oldstartrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempfield` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ex_id`),
  KEY `eventid` (`eventid`),
  KEY `rp_id` (`rp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_exception`
--

LOCK TABLES `i92ks_jevents_exception` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_exception` DISABLE KEYS */;
/*!40000 ALTER TABLE `i92ks_jevents_exception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_icsfile`
--

DROP TABLE IF EXISTS `i92ks_jevents_icsfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_icsfile` (
  `ics_id` int(12) NOT NULL AUTO_INCREMENT,
  `srcURL` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(120) NOT NULL DEFAULT '',
  `icaltype` tinyint(3) NOT NULL DEFAULT '0',
  `isdefault` tinyint(3) NOT NULL DEFAULT '0',
  `ignoreembedcat` tinyint(3) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `refreshed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autorefresh` tinyint(3) NOT NULL DEFAULT '0',
  `overlaps` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ics_id`),
  UNIQUE KEY `label` (`label`),
  KEY `stateidx` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_icsfile`
--

LOCK TABLES `i92ks_jevents_icsfile` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_icsfile` DISABLE KEYS */;
INSERT INTO `i92ks_jevents_icsfile` VALUES (1,'','Default','Initial ICS File',2,1,0,1,1,15,'0000-00-00 00:00:00',0,'',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `i92ks_jevents_icsfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_repetition`
--

DROP TABLE IF EXISTS `i92ks_jevents_repetition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_repetition` (
  `rp_id` int(12) NOT NULL AUTO_INCREMENT,
  `eventid` int(12) NOT NULL DEFAULT '1',
  `eventdetail_id` int(12) NOT NULL DEFAULT '0',
  `duplicatecheck` varchar(32) NOT NULL DEFAULT '',
  `startrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`rp_id`),
  UNIQUE KEY `duplicatecheck` (`duplicatecheck`),
  KEY `eventid` (`eventid`),
  KEY `eventstart` (`eventid`,`startrepeat`),
  KEY `eventend` (`eventid`,`endrepeat`),
  KEY `eventdetail` (`eventdetail_id`),
  KEY `startrepeat` (`startrepeat`),
  KEY `startend` (`startrepeat`,`endrepeat`),
  KEY `endrepeat` (`endrepeat`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_repetition`
--

LOCK TABLES `i92ks_jevents_repetition` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_repetition` DISABLE KEYS */;
INSERT INTO `i92ks_jevents_repetition` VALUES (1,1,1,'4e373e9c60e119f6eaea59e1030e9336','2014-03-15 16:00:00','2014-03-15 23:59:59'),(2,2,2,'5b3f05cb42dc3b6891f2614cf6314061','2014-03-11 08:00:00','2014-03-11 17:00:00');
/*!40000 ALTER TABLE `i92ks_jevents_repetition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_rrule`
--

DROP TABLE IF EXISTS `i92ks_jevents_rrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_rrule` (
  `rr_id` int(12) NOT NULL AUTO_INCREMENT,
  `eventid` int(12) NOT NULL DEFAULT '1',
  `freq` varchar(30) NOT NULL DEFAULT '',
  `until` int(12) NOT NULL DEFAULT '1',
  `untilraw` varchar(30) NOT NULL DEFAULT '',
  `count` int(6) NOT NULL DEFAULT '1',
  `rinterval` int(6) NOT NULL DEFAULT '1',
  `bysecond` varchar(50) NOT NULL DEFAULT '',
  `byminute` varchar(50) NOT NULL DEFAULT '',
  `byhour` varchar(50) NOT NULL DEFAULT '',
  `byday` varchar(50) NOT NULL DEFAULT '',
  `bymonthday` varchar(50) NOT NULL DEFAULT '',
  `byyearday` varchar(50) NOT NULL DEFAULT '',
  `byweekno` varchar(50) NOT NULL DEFAULT '',
  `bymonth` varchar(50) NOT NULL DEFAULT '',
  `bysetpos` varchar(50) NOT NULL DEFAULT '',
  `wkst` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rr_id`),
  KEY `eventid` (`eventid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_rrule`
--

LOCK TABLES `i92ks_jevents_rrule` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_rrule` DISABLE KEYS */;
INSERT INTO `i92ks_jevents_rrule` VALUES (1,1,'none',0,'',1,1,'','','','+1SA,+2SA,+3SA,+4SA,+5SA','','','','','',''),(2,2,'none',0,'',1,1,'','','','TU','','','','','','');
/*!40000 ALTER TABLE `i92ks_jevents_rrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_vevdetail`
--

DROP TABLE IF EXISTS `i92ks_jevents_vevdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_vevdetail` (
  `evdet_id` int(12) NOT NULL AUTO_INCREMENT,
  `rawdata` longtext NOT NULL,
  `dtstart` int(11) NOT NULL DEFAULT '0',
  `dtstartraw` varchar(30) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `durationraw` varchar(30) NOT NULL DEFAULT '',
  `dtend` int(11) NOT NULL DEFAULT '0',
  `dtendraw` varchar(30) NOT NULL DEFAULT '',
  `dtstamp` varchar(30) NOT NULL DEFAULT '',
  `class` varchar(10) NOT NULL DEFAULT '',
  `categories` varchar(120) NOT NULL DEFAULT '',
  `color` varchar(20) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `geolon` float NOT NULL DEFAULT '0',
  `geolat` float NOT NULL DEFAULT '0',
  `location` varchar(120) NOT NULL DEFAULT '',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `contact` varchar(120) NOT NULL DEFAULT '',
  `organizer` varchar(120) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `extra_info` text NOT NULL,
  `created` varchar(30) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT '1',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `multiday` tinyint(3) NOT NULL DEFAULT '1',
  `hits` int(11) NOT NULL DEFAULT '0',
  `noendtime` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`evdet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_vevdetail`
--

LOCK TABLES `i92ks_jevents_vevdetail` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_vevdetail` DISABLE KEYS */;
INSERT INTO `i92ks_jevents_vevdetail` VALUES (1,'',1394895600,'',0,'',1394924399,'','','','','','',0,0,'',0,'','riunione condo2','','','','','',0,1,'2014-03-03 22:33:41',1,0,1),(2,'',1394521200,'',0,'',1394553600,'','','','','','',0,0,'',0,'','riunione condo1','','','','','',0,1,'2014-03-03 23:59:00',1,1,0);
/*!40000 ALTER TABLE `i92ks_jevents_vevdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i92ks_jevents_vevent`
--

DROP TABLE IF EXISTS `i92ks_jevents_vevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i92ks_jevents_vevent` (
  `ev_id` int(12) NOT NULL AUTO_INCREMENT,
  `icsid` int(12) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '1',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `refreshed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `rawdata` longtext NOT NULL,
  `recurrence_id` varchar(30) NOT NULL DEFAULT '',
  `detail_id` int(12) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `lockevent` tinyint(3) NOT NULL DEFAULT '0',
  `author_notified` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `icsid` (`icsid`),
  KEY `stateidx` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_jevents_vevent`
--

LOCK TABLES `i92ks_jevents_vevent` WRITE;
/*!40000 ALTER TABLE `i92ks_jevents_vevent` DISABLE KEYS */;
INSERT INTO `i92ks_jevents_vevent` VALUES (1,1,17,'16e614da105c10548145abae0dcf5352','0000-00-00 00:00:00','2014-03-03 14:27:51',437,'',431,'a:20:{s:3:\"UID\";s:32:\"16e614da105c10548145abae0dcf5352\";s:11:\"X-EXTRAINFO\";s:0:\"\";s:8:\"LOCATION\";s:0:\"\";s:11:\"allDayEvent\";s:3:\"off\";s:7:\"CONTACT\";s:0:\"\";s:11:\"DESCRIPTION\";s:0:\"\";s:12:\"publish_down\";s:9:\"2014-3-15\";s:10:\"publish_up\";s:9:\"2014-3-15\";s:13:\"publish_down2\";s:9:\"2014-3-15\";s:11:\"publish_up2\";s:9:\"2014-3-15\";s:7:\"SUMMARY\";s:15:\"riunione condo2\";s:3:\"URL\";s:0:\"\";s:11:\"X-CREATEDBY\";i:437;s:7:\"DTSTART\";i:1394895600;s:5:\"DTEND\";i:1394924399;s:5:\"RRULE\";a:4:{s:4:\"FREQ\";s:4:\"none\";s:5:\"COUNT\";i:1;s:8:\"INTERVAL\";s:1:\"1\";s:5:\"BYDAY\";s:24:\"+1SA,+2SA,+3SA,+4SA,+5SA\";}s:8:\"MULTIDAY\";s:1:\"1\";s:9:\"NOENDTIME\";s:1:\"1\";s:7:\"X-COLOR\";s:0:\"\";s:9:\"LOCKEVENT\";s:1:\"0\";}','',1,1,0,0,2),(2,1,16,'19f9618f68a9bc886595a5ea7d995ab8','0000-00-00 00:00:00','2014-03-03 23:59:00',437,'',437,'a:19:{s:3:\"UID\";s:32:\"19f9618f68a9bc886595a5ea7d995ab8\";s:11:\"X-EXTRAINFO\";s:0:\"\";s:8:\"LOCATION\";s:0:\"\";s:11:\"allDayEvent\";s:3:\"off\";s:7:\"CONTACT\";s:0:\"\";s:11:\"DESCRIPTION\";s:0:\"\";s:12:\"publish_down\";s:9:\"2014-3-11\";s:10:\"publish_up\";s:9:\"2014-3-11\";s:13:\"publish_down2\";s:9:\"2014-3-11\";s:11:\"publish_up2\";s:9:\"2014-3-11\";s:7:\"SUMMARY\";s:15:\"riunione condo1\";s:3:\"URL\";s:0:\"\";s:7:\"DTSTART\";i:1394521200;s:5:\"DTEND\";i:1394553600;s:5:\"RRULE\";a:4:{s:4:\"FREQ\";s:4:\"none\";s:5:\"COUNT\";i:1;s:8:\"INTERVAL\";s:1:\"1\";s:5:\"BYDAY\";s:2:\"TU\";}s:8:\"MULTIDAY\";s:1:\"1\";s:9:\"NOENDTIME\";s:1:\"0\";s:7:\"X-COLOR\";s:0:\"\";s:9:\"LOCKEVENT\";s:1:\"0\";}','',2,1,0,0,2);
/*!40000 ALTER TABLE `i92ks_jevents_vevent` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_menu`
--

LOCK TABLES `i92ks_menu` WRITE;
/*!40000 ALTER TABLE `i92ks_menu` DISABLE KEYS */;
INSERT INTO `i92ks_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,115,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',19,24,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',20,21,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',22,23,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',25,30,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',26,27,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',28,29,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',31,36,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',32,33,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',34,35,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',37,38,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',39,40,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',41,46,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',42,43,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',44,45,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',47,48,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',49,50,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',51,52,0,'',1),(24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',53,54,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"RivieraHouse Intranet\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,1,'*',0),(102,'mainmenu','privato','privato','','privato','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"RivieraHouse Intranet\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,16,0,'*',0),(103,'mainmenu','condo2','condo2','','condo2','index.php?option=com_content&view=article&id=3','component',0,1,1,22,0,'0000-00-00 00:00:00',0,8,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',17,18,0,'*',0),(104,'main','COM_PHOCADOWNLOAD','com-phocadownload','','com-phocadownload','index.php?option=com_phocadownload','component',0,1,1,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu.png',0,'',55,82,0,'',1),(105,'main','COM_PHOCADOWNLOAD_CONTROLPANEL','com-phocadownload-controlpanel','','com-phocadownload/com-phocadownload-controlpanel','index.php?option=com_phocadownload','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-control-panel.png',0,'',56,57,0,'',1),(106,'main','COM_PHOCADOWNLOAD_FILES','com-phocadownload-files','','com-phocadownload/com-phocadownload-files','index.php?option=com_phocadownload&view=phocadownloadfiles','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-files.png',0,'',58,59,0,'',1),(107,'main','COM_PHOCADOWNLOAD_CATEGORIES','com-phocadownload-categories','','com-phocadownload/com-phocadownload-categories','index.php?option=com_phocadownload&view=phocadownloadcats','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-category.png',0,'',60,61,0,'',1),(108,'main','COM_PHOCADOWNLOAD_LICENSES','com-phocadownload-licenses','','com-phocadownload/com-phocadownload-licenses','index.php?option=com_phocadownload&view=phocadownloadlics','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-lic.png',0,'',62,63,0,'',1),(109,'main','COM_PHOCADOWNLOAD_STATISTICS','com-phocadownload-statistics','','com-phocadownload/com-phocadownload-statistics','index.php?option=com_phocadownload&view=phocadownloadstat','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-stat.png',0,'',64,65,0,'',1),(110,'main','COM_PHOCADOWNLOAD_DOWNLOADS','com-phocadownload-downloads','','com-phocadownload/com-phocadownload-downloads','index.php?option=com_phocadownload&view=phocadownloaddownloads','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-downloads.png',0,'',66,67,0,'',1),(111,'main','COM_PHOCADOWNLOAD_UPLOADS','com-phocadownload-uploads','','com-phocadownload/com-phocadownload-uploads','index.php?option=com_phocadownload&view=phocadownloaduploads','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-uploads.png',0,'',68,69,0,'',1),(112,'main','COM_PHOCADOWNLOAD_FILE_RATING','com-phocadownload-file-rating','','com-phocadownload/com-phocadownload-file-rating','index.php?option=com_phocadownload&view=phocadownloadrafile','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-vote-file.png',0,'',70,71,0,'',1),(113,'main','COM_PHOCADOWNLOAD_TAGS','com-phocadownload-tags','','com-phocadownload/com-phocadownload-tags','index.php?option=com_phocadownload&view=phocadownloadtags','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-tags.png',0,'',72,73,0,'',1),(114,'main','COM_PHOCADOWNLOAD_LAYOUT','com-phocadownload-layout','','com-phocadownload/com-phocadownload-layout','index.php?option=com_phocadownload&view=phocadownloadlayouts','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-layout.png',0,'',74,75,0,'',1),(115,'main','COM_PHOCADOWNLOAD_STYLES','com-phocadownload-styles','','com-phocadownload/com-phocadownload-styles','index.php?option=com_phocadownload&view=phocadownloadstyles','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-style.png',0,'',76,77,0,'',1),(116,'main','COM_PHOCADOWNLOAD_LOGGING','com-phocadownload-logging','','com-phocadownload/com-phocadownload-logging','index.php?option=com_phocadownload&view=phocadownloadlogs','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-logs.png',0,'',78,79,0,'',1),(117,'main','COM_PHOCADOWNLOAD_INFO','com-phocadownload-info','','com-phocadownload/com-phocadownload-info','index.php?option=com_phocadownload&view=phocadownloadinfo','component',0,104,2,10001,0,'0000-00-00 00:00:00',0,1,'media/com_phocadownload/images/administrator/icon-16-pdl-menu-info.png',0,'',80,81,0,'',1),(118,'main','ATTACH_ATTACHMENTS','attach-attachments','','attach-attachments','index.php?option=com_attachments','component',0,1,1,10011,0,'0000-00-00 00:00:00',0,1,'../media/com_attachments/images/attachments.png',0,'',83,88,0,'',1),(119,'main','ATTACH_ADD_NEW_ATTACHMENT','attach-add-new-attachment','','attach-attachments/attach-add-new-attachment','index.php?option=com_attachments&task=attachment.add','component',0,118,2,10011,0,'0000-00-00 00:00:00',0,1,'class:newarticle',0,'',84,85,0,'',1),(120,'main','JTOOLBAR_OPTIONS','jtoolbar-options','','attach-attachments/jtoolbar-options','index.php?option=com_attachments&task=params.edit','component',0,118,2,10011,0,'0000-00-00 00:00:00',0,1,'class:config',0,'',86,87,0,'',1),(121,'mainmenu','downloads','downloads','','privato/downloads','index.php?option=com_phocadownload&view=category&id=1','component',1,102,2,10001,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_pagination\":\"1\",\"show_pagination_limit\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',14,15,0,'*',0),(122,'main','COM_DJIMAGESLIDER','com-djimageslider','','com-djimageslider','index.php?option=com_djimageslider','component',0,1,1,10021,0,'0000-00-00 00:00:00',0,1,'components/com_djimageslider/assets/icon-16-djimageslider.png',0,'',89,94,0,'',1),(123,'main','COM_DJIMAGESLIDER_SLIDES','com-djimageslider-slides','','com-djimageslider/com-djimageslider-slides','index.php?option=com_djimageslider&view=items','component',0,122,2,10021,0,'0000-00-00 00:00:00',0,1,'components/com_djimageslider/assets/icon-16-menu-slides.png',0,'',90,91,0,'',1),(124,'main','COM_DJIMAGESLIDER_CATEGORIES','com-djimageslider-categories','','com-djimageslider/com-djimageslider-categories','index.php?option=com_categories&extension=com_djimageslider','component',0,122,2,10021,0,'0000-00-00 00:00:00',0,1,'class:category',0,'',92,93,0,'',1),(125,'main','AcyMailing','acymailing','','acymailing','index.php?option=com_acymailing','component',0,1,1,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acymailing.png',0,'',95,112,0,'',1),(126,'main','Users','users','','acymailing/users','index.php?option=com_acymailing&ctrl=subscriber','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-users.png',0,'',96,97,0,'',1),(127,'main','Lists','lists','','acymailing/lists','index.php?option=com_acymailing&ctrl=list','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acylist.png',0,'',98,99,0,'',1),(128,'main','Newsletters','newsletters','','acymailing/newsletters','index.php?option=com_acymailing&ctrl=newsletter','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-newsletter.png',0,'',100,101,0,'',1),(129,'main','Templates','templates','','acymailing/templates','index.php?option=com_acymailing&ctrl=template','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acytemplate.png',0,'',102,103,0,'',1),(130,'main','Queue','queue','','acymailing/queue','index.php?option=com_acymailing&ctrl=queue','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-process.png',0,'',104,105,0,'',1),(131,'main','Statistics','statistics','','acymailing/statistics','index.php?option=com_acymailing&ctrl=stats','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-stats.png',0,'',106,107,0,'',1),(132,'main','Configuration','configuration','','acymailing/configuration','index.php?option=com_acymailing&ctrl=cpanel','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acyconfig.png',0,'',108,109,0,'',1),(133,'main','Update_About','update-about','','acymailing/update-about','index.php?option=com_acymailing&ctrl=update','component',0,125,2,10030,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-update.png',0,'',110,111,0,'',1),(134,'main','com_jevents','com-jevents','','com-jevents','index.php?option=com_jevents','component',0,1,1,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',113,114,0,'',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_modules`
--

LOCK TABLES `i92ks_modules` WRITE;
/*!40000 ALTER TABLE `i92ks_modules` DISABLE KEYS */;
INSERT INTO `i92ks_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,56,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,57,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,58,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,59,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,60,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,61,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,62,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,63,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,64,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,65,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Area Riservata','','',5,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"102\",\"logout\":\"101\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',2,0,'{\"showHere\":\"1\",\"showHome\":\"0\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(79,68,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,69,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,66,'Verbali','','',1,'verbali',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"0\",\"show_front\":\"show\",\"count\":\"3\",\"category_filtering_type\":\"1\",\"catid\":[\"10\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"year\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"1\",\"introtext_limit\":\"300\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,71,'Contact Information Module','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_contactinfo',1,1,'{\"layout_style\":\"OneLine\",\"separate_code\":\"hr\",\"link_to\":\"1\",\"link_website\":\"1\",\"website_target\":\"0\",\"contact_cid\":\"\",\"show_image\":\"1\",\"link_image\":\"0\",\"thumb_size\":\"100\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,72,'Manutentori','','',9,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_contactinfo',2,1,'{\"layout_style\":\"OneLine\",\"separate_code\":\"hr\",\"link_to\":\"0\",\"link_website\":\"0\",\"website_target\":\"0\",\"contact_cid\":\"1, 2\",\"show_image\":\"1\",\"link_image\":\"0\",\"thumb_size\":\"100\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"1\",\"show_country\":\"0\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,74,'Utenti online','','',4,'position-7',431,'2014-03-04 00:42:55','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',3,1,'{\"showmode\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"filter_groups\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,76,'Bilanci','','<p>{phocadownload view=category|id=1|target=s}</p>',8,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,77,'Manutentori footer','','',1,'manutentori',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_contactinfo',1,1,'{\"layout_style\":\"OneLine\",\"separate_code\":\"br\",\"link_to\":\"0\",\"link_website\":\"0\",\"website_target\":\"0\",\"contact_cid\":\"1, 2, 3, 4, 5, 6, 7, 8, 9, 10\",\"show_image\":\"1\",\"link_image\":\"0\",\"thumb_size\":\"50\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"1\",\"show_country\":\"0\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,80,'Fatture','','',1,'fatture',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"0\",\"show_front\":\"show\",\"count\":\"3\",\"category_filtering_type\":\"1\",\"catid\":[\"11\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"year\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"1\",\"introtext_limit\":\"300\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(94,81,'Scheda condo','','',1,'banner',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_contactinfo',2,0,'{\"layout_style\":\"OneLine\",\"separate_code\":\"div\",\"link_to\":\"0\",\"link_website\":\"0\",\"website_target\":\"0\",\"contact_cid\":\"3\",\"show_image\":\"1\",\"link_image\":\"1\",\"thumb_size\":\"200\",\"show_name\":\"1\",\"show_alias\":\"0\",\"con_position\":\"1\",\"show_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"0\",\"show_postcode\":\"1\",\"show_country\":\"0\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"0\",\"show_email_to\":\"1\",\"email_text\":\"\",\"show_webpage\":\"0\",\"show_misc\":\"1\",\"show_vcard\":\"0\",\"moduleclass_sfx\":\"_scheda\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,82,'footer','','<div>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Ufficio: Piazza San Michele 4b, 17031 Albenga (Sv)</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Tel./fax: 0182/543728 - Email: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:info@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">info@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Orari di apertura:</b></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Lunedi\' - sabato dalle 9.00 alle 12.00 e dalle 15.00 al 19.00</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Domenica su appuntamento.</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\"> </p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Amministrazioni condominiali:</b> Responsabile: Cinzia Bettella</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 328/4142556 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:cinzia@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">cinzia@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Email amministrazioni condominiali: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:info@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">info@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Intermediazioni immobiliare:</b> Responsabile: Delfino Dott. Alberto</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 333/9356345 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:alberto@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">alberto@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Email immobiliare: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:immobiliare@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">immobiliare@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Consulenza immobiliare e finanziaria: </b>Responsabile: Fabio Montani</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 347/2536989 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:fabio@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">fabio@rivierahouse.it</span></a></p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\"><b style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Segreteria e contabilita\':</b> Responsabile: Montani Dott. Stefano</p>\r\n<p style=\"font-size: 13px; margin: 0px 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626; line-height: 20.998899459838867px; text-align: center;\">Cellulare: 393/9218825 Email personale: <a style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: top; color: #ff9601;\" href=\"mailto:stefano@rivierahouse.it\"><span style=\"background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: #262626;\">stefano@rivierahouse.it</span></a></p>\r\n</div>',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_footer\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(99,87,'Homepage-ImageSlider','','',1,'homepage',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_djimageslider',1,0,'{\"slider_source\":\"0\",\"slider_type\":\"0\",\"link_image\":\"1\",\"image_folder\":\"images\\/homepage\",\"link\":\"\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"image_width\":\"730\",\"image_height\":\"235\",\"fit_to\":\"0\",\"visible_images\":\"1\",\"space_between_images\":\"10\",\"max_images\":\"20\",\"sort_by\":\"1\",\"effect\":\"Expo\",\"autoplay\":\"1\",\"show_buttons\":\"0\",\"show_arrows\":\"0\",\"show_custom_nav\":\"0\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"30\",\"arrows_horizontal\":\"5\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(100,88,'Scheda condomini','','',1,'banner',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_mci',1,0,'{\"contact_grouping\":\"category\",\"categories\":[\"12\"],\"category_include_sub_categories\":\"1\",\"category_order\":\"catordering ASC\",\"category_contact_order\":\"contact.ordering ASC\",\"category_limit\":\"\",\"contacts\":[\"\"],\"contact_order\":\"contact.ordering ASC\",\"contact_limit\":\"\",\"single_contact_format\":\"div\",\"one\":\"image\",\"two\":\"\",\"three\":\"name\",\"four\":\"telephone\",\"five\":\"address\",\"six\":\"email_to\",\"seven\":\"\",\"eight\":\"\",\"nine\":\"\",\"ten\":\"\",\"eleven\":\"\",\"twelve\":\"\",\"thirteen\":\"\",\"fourteen\":\"\",\"fifteen\":\"\",\"sixteen\":\"\",\"seventeen\":\"\",\"before_text\":\"\",\"after_text\":\"\",\"name_tag\":\"\",\"link_contact\":\"0\",\"city_state_zip_inline\":\"1\",\"link_email\":\"mailto\",\"email_text\":\"\",\"website_target\":\"\",\"cat_head\":\"0\",\"cat_head_level\":\"3\",\"columns\":\"1\",\"row_margin\":\"20\",\"contact_pad_left\":\"0\",\"contact_pad_right\":\"0\",\"category_column\":\"0\",\"category_margin\":\"20\",\"container_css\":\"\",\"before_css\":\"\",\"field_css\":\"\",\"after_css\":\"\",\"even_odd\":\"\",\"img_width\":\"300\",\"img_height\":\"\",\"img_float\":\"left\",\"img_link\":\"0\",\"img_top\":\"0\",\"img_bottom\":\"0\",\"img_left\":\"0\",\"img_right\":\"0\",\"img_css\":\"\",\"cache_permissions\":\"0755\",\"debug_mode\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" scheda banner\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(101,89,'Manutentori','','',6,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_mci',1,0,'{\"contact_grouping\":\"category\",\"categories\":[\"13\"],\"category_include_sub_categories\":\"1\",\"category_order\":\"catordering ASC\",\"category_contact_order\":\"contact.ordering ASC\",\"category_limit\":\"\",\"contacts\":[\"\"],\"contact_order\":\"contact.ordering ASC\",\"contact_limit\":\"\",\"single_contact_format\":\"div\",\"one\":\"image\",\"two\":\"con_position\",\"three\":\"name\",\"four\":\"telephone\",\"five\":\"address\",\"six\":\"email_to\",\"seven\":\"\",\"eight\":\"\",\"nine\":\"\",\"ten\":\"\",\"eleven\":\"\",\"twelve\":\"\",\"thirteen\":\"\",\"fourteen\":\"\",\"fifteen\":\"\",\"sixteen\":\"\",\"seventeen\":\"\",\"before_text\":\"\",\"after_text\":\"\",\"name_tag\":\"\",\"link_contact\":\"0\",\"city_state_zip_inline\":\"1\",\"link_email\":\"mailto\",\"email_text\":\"\",\"website_target\":\"\",\"cat_head\":\"1\",\"cat_head_level\":\"3\",\"columns\":\"1\",\"row_margin\":\"20\",\"contact_pad_left\":\"0\",\"contact_pad_right\":\"0\",\"category_column\":\"0\",\"category_margin\":\"20\",\"container_css\":\"\",\"before_css\":\"\",\"field_css\":\"\",\"after_css\":\"\",\"even_odd\":\"\",\"img_width\":\"150\",\"img_height\":\"\",\"img_float\":\"left\",\"img_link\":\"1\",\"img_top\":\"0\",\"img_bottom\":\"0\",\"img_left\":\"0\",\"img_right\":\"0\",\"img_css\":\"\",\"cache_permissions\":\"0755\",\"debug_mode\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(102,103,'AcyMailing Module','','',2,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_acymailing',1,1,'',0,'*'),(103,93,'JEvents Calendar','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jevents_cal',1,1,'',0,'*'),(104,94,'JEvents Legend','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jevents_legend',1,1,'',0,'*'),(105,95,'JEvents Latest Events','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jevents_latest',1,1,'',0,'*'),(106,96,'JEvents Filter','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jevents_filter',1,1,'',0,'*'),(107,97,'JEvents CustomModule','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jevents_custom',1,1,'',0,'*'),(108,98,'JEvents View Switcher','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jevents_switchview',1,1,'',0,'*'),(109,102,'Scadenziario','','',3,'position-7',431,'2014-03-03 23:48:07','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jevents_latest',2,1,'{\"com_calViewName\":\"flat\",\"cache\":\"0\",\"moduleclass_sfx\":\"scadenziario\",\"ignorecatfilter\":\"0\",\"ignorefiltermodule\":\"1\",\"target_itemid\":\"\",\"modlatest_inccss\":\"1\",\"layout\":\"\",\"modlatest_useLocalParam\":\"0\",\"modlatest_CustFmtStr\":\"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br \\/>${title}\",\"modlatest_MaxEvents\":\"10\",\"modlatest_Mode\":\"3\",\"modlatest_Days\":\"30\",\"startnow\":\"0\",\"pastonly\":\"0\",\"modlatest_NoRepeat\":\"0\",\"modlatest_multiday\":\"0\",\"modlatest_DispLinks\":\"1\",\"modlatest_DispYear\":\"0\",\"modlatest_NoEvents\":\"1\",\"modlatest_DisDateStyle\":\"0\",\"modlatest_DisTitleStyle\":\"0\",\"modlatest_LinkToCal\":\"0\",\"modlatest_LinkCloaking\":\"0\",\"modlatest_SortReverse\":\"0\",\"modlatest_RSS\":\"0\",\"modlatest_rss_title\":\"\",\"modlatest_rss_description\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"scadenziario\",\"style\":\"0\"}',0,'*');
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
INSERT INTO `i92ks_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,-101),(79,0),(86,0),(87,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(99,0),(100,-101),(101,-101),(102,0),(109,-101);
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
INSERT INTO `i92ks_schemas` VALUES (700,'3.2.2-2014-01-23'),(10001,'3.0.2'),(10011,'3.1-2013-04-29'),(10021,'2.0');
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
INSERT INTO `i92ks_session` VALUES ('jajb5oat9e394tfqrmggoovo10',0,0,'1393927047','__default|a:8:{s:15:\"session.counter\";i:5;s:19:\"session.timer.start\";i:1393926051;s:18:\"session.timer.last\";i:1393926544;s:17:\"session.timer.now\";i:1393927045;s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.146 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":4:{s:15:\"com_attachments\";O:8:\"stdClass\":1:{s:11:\"current_url\";s:70:\"&return=aHR0cDovL3dlYmNvbmRvLnRrL2pvY29uZG8vaW5kZXgucGhwL3ByaXZhdG8%2F\";}s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":2:{s:6:\"return\";s:20:\"index.php?Itemid=102\";s:4:\"data\";a:0:{}}}}s:13:\"rememberLogin\";b:1;s:16:\"published_fv_ses\";s:1:\"0\";}}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";s:3:\"432\";s:4:\"name\";s:11:\"user1condo1\";s:8:\"username\";s:11:\"user1condo1\";s:5:\"email\";s:17:\"alexrah@gmail.com\";s:8:\"password\";s:34:\"$P$DflR4Ct905HvdBxhwViCgPQubAvkn5/\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"0\";s:12:\"registerDate\";s:19:\"2014-02-25 15:58:27\";s:13:\"lastvisitDate\";s:19:\"2014-03-03 23:01:27\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:92:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:2:{i:2;s:1:\"2\";i:10;s:2:\"10\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}}s:14:\"\\0\\0\\0_authGroups\";a:3:{i:0;i:1;i:1;i:2;i:4;i:10;}s:14:\"\\0\\0\\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:7;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"d525c1611537a1b392281dd308bf2c9c\";}',432,'user1condo1'),('tb6fest0mc5rlmvvl4r72u2be1',0,1,'1393926272','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1393926272;s:18:\"session.timer.last\";i:1393926272;s:17:\"session.timer.now\";i:1393926272;s:22:\"session.client.browser\";s:62:\"Mozilla/5.0 (Android; Tablet; rv:27.0) Gecko/27.0 Firefox/27.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:15:\"com_attachments\";O:8:\"stdClass\":1:{s:11:\"current_url\";s:74:\"&return=aHR0cDovL3dlYmNvbmRvLnRrL2pvY29uZG8vaW5kZXgucGhwL2luZGV4LnBocD8%3D\";}}}s:4:\"user\";O:5:\"JUser\":24:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"00411f7574a4ca0c494586431cdb87ec\";}',0,'');
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
INSERT INTO `i92ks_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"images\\/Logo.png\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"1\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_ucm_history`
--

LOCK TABLES `i92ks_ucm_history` WRITE;
/*!40000 ALTER TABLE `i92ks_ucm_history` DISABLE KEYS */;
INSERT INTO `i92ks_ucm_history` VALUES (3,3,1,'','2014-02-25 15:54:18',431,2955,'ff6cc0c49192012a3d03be41d68924f89ce876a4','{\"id\":3,\"asset_id\":56,\"title\":\"Homepage condo2\",\"alias\":\"homepage-condo2\",\"introtext\":\"<p>Homepage condo2<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-02-25 15:54:18\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 15:54:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,8,6,'','2014-02-25 15:54:54',431,517,'83cf2fa581f98186fd5190cd20232b7f0fac8461','{\"id\":8,\"asset_id\":57,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"homepage\",\"alias\":\"homepage\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:54:54\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(5,9,6,'','2014-02-25 15:55:51',431,525,'a86bdbfe8d11620ffd6821ec16f3b4b99c7495f9','{\"id\":9,\"asset_id\":58,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"schede condo\",\"alias\":\"schede-condo\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:55:51\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(6,10,6,'','2014-02-25 15:55:57',431,516,'84eef7674d4b20a94f55744e5a4ef066fc76a8ae','{\"id\":10,\"asset_id\":59,\"parent_id\":\"1\",\"lft\":\"17\",\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"verbali\",\"alias\":\"verbali\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:55:57\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(7,11,6,'','2014-02-25 15:56:07',431,516,'9d2609f932c8077c0b51ea78ba93d798b194f179','{\"id\":11,\"asset_id\":60,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"fatture\",\"alias\":\"fatture\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 15:56:07\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(9,3,1,'','2014-02-25 15:56:50',431,2993,'5847edda3096e210e21ee6e38a30f27fbcfd2c19','{\"id\":3,\"asset_id\":\"56\",\"title\":\"Homepage condo2\",\"alias\":\"homepage-condo2\",\"introtext\":\"<p>Homepage condo2<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:18\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 15:56:50\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 15:56:45\",\"publish_up\":\"2014-02-25 15:54:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,2,1,'','2014-02-25 16:03:55',431,2993,'93ea52f1d5e60f01234406d540819d1ded7af1ee','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage condo1\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>homepage condo1<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:03:55\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:03:47\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(14,3,1,'','2014-02-25 16:04:07',431,2993,'de4a55a08c32cd6a47638d40b71d01b55a98aae9','{\"id\":3,\"asset_id\":\"56\",\"title\":\"Homepage condo2\",\"alias\":\"homepage-condo2\",\"introtext\":\"<p>Homepage condo2<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:18\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:04:07\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:03:58\",\"publish_up\":\"2014-02-25 15:54:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(15,4,1,'','2014-02-25 16:10:22',431,2929,'740321f64fe941b726935cafb7bf4c43f11b065e','{\"id\":4,\"asset_id\":61,\"title\":\"verbale1 condo1\",\"alias\":\"verbale1-condo1\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:22\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:10:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(16,5,1,'','2014-02-25 16:10:58',431,2929,'9c891d159e6e6388465dda7b1b48b1c66b2280b1','{\"id\":5,\"asset_id\":62,\"title\":\"verbale1 condo2\",\"alias\":\"verbale1-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:58\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:10:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(17,6,1,'','2014-02-25 16:11:34',431,2929,'449f7a1b260c0571e0c5f936803416e8cf6a93ac','{\"id\":6,\"asset_id\":63,\"title\":\"verbale2 condo2\",\"alias\":\"verbale2-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:11:34\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:11:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,7,1,'','2014-02-25 16:12:40',431,2929,'94c91be6b25b1c799e0cab3a5bf59d5bf058f9ff','{\"id\":7,\"asset_id\":64,\"title\":\"fattura1 condo2\",\"alias\":\"fattura1-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:12:40\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:12:40\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(19,8,1,'','2014-02-25 16:12:54',431,2929,'53aa6b58451d828899b33efd5f1e6fc418f9c66b','{\"id\":8,\"asset_id\":65,\"title\":\"fattura2 condo2\",\"alias\":\"fattura2-condo2\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:12:54\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:12:54\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"8\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(21,9,1,'','2014-02-25 16:26:51',431,2635,'e95afa2752c004c9a1c2540f3d21996a17cc81fc','{\"id\":9,\"asset_id\":67,\"title\":\"verbale2 condo1\",\"alias\":\"verbale2-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:26:51\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:26:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(22,10,1,'','2014-02-25 16:27:08',431,2636,'eac0b2d4475ab70c9659f5752a883f1e41656896','{\"id\":10,\"asset_id\":68,\"title\":\"fattura1 condo1\",\"alias\":\"fattura1-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:27:08\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:27:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(23,11,1,'','2014-02-25 16:27:26',431,2636,'934dcf062d2d89df3c63c45006fedd964527bcd9','{\"id\":11,\"asset_id\":69,\"title\":\"fattura2 condo1\",\"alias\":\"fattura2-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-02-25 16:27:26\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 16:27:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(24,12,7,'','2014-02-25 16:31:31',431,524,'ede04b90fc389102338c2f27053d2ce91898a0ab','{\"id\":12,\"asset_id\":70,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_contact\",\"title\":\"manutentori\",\"alias\":\"manutentori\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(25,1,3,'','2014-02-25 16:34:15',431,1761,'42e1576a07376bdcd903eb68959ae6b1e8fd7372','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0),(26,2,3,'','2014-02-25 16:34:21',431,1765,'8e50c388b296ab44d42d9829e0cdd941a42926b3','{\"id\":2,\"name\":\"manutentore1 (2)\",\"alias\":\"manutentore1-2\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":0,\"checked_out\":null,\"checked_out_time\":null,\"ordering\":2,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0),(27,2,3,'','2014-02-25 16:35:28',431,2766,'7814a94793546cddac10ac948c7757d8dcbd08f1','{\"id\":2,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:34:21\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:28\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"0\"}',0),(28,1,3,'','2014-02-25 16:35:37',431,2783,'2468444c354df9994afb51d4a5d7a4bb52b8bb3f','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:35:31\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:37\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"0\"}',0),(29,12,7,'','2014-02-25 16:48:37',431,581,'6f07689d9a4bfaa2f7576bdea423deae2aa932b0','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"manutentori\",\"extension\":\"com_contact\",\"title\":\"manutentori condo1\",\"alias\":\"manutentori\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:48:26\",\"access\":\"7\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-02-25 16:48:37\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(30,13,7,'','2014-02-25 16:48:47',431,540,'f649611b4a43351f3d5ca1017064c4eeaa8ff5e0','{\"id\":13,\"asset_id\":73,\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":24,\"level\":1,\"path\":null,\"extension\":\"com_contact\",\"title\":\"manutentori condo 2\",\"alias\":\"manutentori-condo-2\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:48:47\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(31,12,7,'','2014-02-25 16:49:05',431,588,'0de5fe7ce7039f968e6efa4b4c3f2d10808b983b','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"manutentori\",\"extension\":\"com_contact\",\"title\":\"manutentori condo1\",\"alias\":\"manutentori-condo1\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:49:00\",\"access\":\"7\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-02-25 16:49:05\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(32,3,3,'','2014-02-25 16:49:38',431,2781,'ef2af080bee32503be29c48cf8877edf2e24684f','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":13,\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:37\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":\"2\",\"hits\":\"0\"}',0),(33,4,3,'','2014-02-25 16:49:38',431,2764,'741e707352548c435b99a985b6c07bc41fdf73cb','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":13,\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:35:28\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":\"2\",\"hits\":\"0\"}',0),(34,3,3,'','2014-02-25 16:50:10',431,2763,'6eda9cec382dd032b43cb9fe732dd0f4c27e0a6c','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:49:46\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:50:10\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(35,4,3,'','2014-02-25 16:50:23',431,2782,'3e9c4f04f734d047adc641bf9b5e31ebcc08c75a','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:50:14\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"2\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:50:23\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(36,2,1,'','2014-02-25 16:51:06',431,2994,'bea2c3cc19c7bc2aead80e5d9781d80109872ad7','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>homepage condo1<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:51:06\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:50:59\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(38,2,1,'','2014-02-25 16:52:01',431,1720,'749d86317ce18f07a73438f1806286923e17214d','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 16:52:01\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 16:51:37\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(39,13,7,'','2014-02-25 17:00:31',431,598,'3158203a2bd3557038fef3ccb6517acfd7b9ef79','{\"id\":13,\"asset_id\":\"73\",\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":\"24\",\"level\":\"1\",\"path\":\"manutentori-condo-2\",\"extension\":\"com_contact\",\"title\":\"manutentori condo 2\",\"alias\":\"manutentori-condo-2\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:00:25\",\"access\":\"8\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:48:47\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-02-25 17:00:31\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(40,4,3,'','2014-02-25 17:01:36',431,2782,'2d87493c3a8daa5c17488bdbe34f05c84f9c2c20','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:00:56\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"1\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:01:36\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"0\"}',0),(41,4,3,'','2014-02-25 17:02:39',431,2782,'3ac2a853ac6fd514090f2ff2e38cd8c63925e7b8','{\"id\":4,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:02:33\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:02:39\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"0\"}',0),(42,3,3,'','2014-02-25 17:02:50',431,2763,'615b5c03cb21e8cbf7a3a73e3565b12e570caeef','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:02:42\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:02:50\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"0\"}',0),(43,2,3,'','2014-02-25 17:03:02',431,2766,'96167ed3d7a66bb7dced7143a5a34ec0249ecc50','{\"id\":2,\"name\":\"manutentore2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:02:55\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:03:02\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(44,1,3,'','2014-02-25 17:03:11',431,2783,'2cb2987249c0b3d5007e4e0d4287f571e2b54cd0','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:03:05\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:03:11\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(45,2,1,'','2014-02-25 17:55:09',431,1748,'072883f4ea246a933a28055559d8d87cd552288c','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition manutentori}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 17:55:09\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 17:54:42\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"35\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(46,2,1,'','2014-02-25 18:02:46',431,1792,'c5ba5d0146708a803bedb7e521ee4b7c5349a87b','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {phocadownload view=category|id=1|target=s} {loadposition manutentori}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:02:46\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:02:28\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"49\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(47,4,1,'','2014-02-25 18:07:40',431,2967,'db7fc84a7c5038d47afd55c7c4afacc19f607644','{\"id\":4,\"asset_id\":\"61\",\"title\":\"verbale1 condo1\",\"alias\":\"verbale1-condo1\",\"introtext\":\"<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p style=\\\"text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: #000000; font-family: Arial, Helvetica, sans;\\\">Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:22\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:07:40\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:06:38\",\"publish_up\":\"2014-02-25 16:10:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(48,12,1,'','2014-02-25 18:10:32',431,2636,'8f55a3d47d6cda003182e58a1b208a4167cefc62','{\"id\":12,\"asset_id\":79,\"title\":\"verbale3 condo1\",\"alias\":\"verbale3-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 18:10:32\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-02-25 18:10:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(49,4,1,'','2014-02-25 18:11:33',431,2673,'223357d6dd164d124f45dcae886eb992e5a2bacd','{\"id\":4,\"asset_id\":\"61\",\"title\":\"verbale1 condo1\",\"alias\":\"verbale1-condo1\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2014-02-25 16:10:22\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:11:33\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:11:27\",\"publish_up\":\"2014-02-25 16:10:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"7\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(50,2,1,'','2014-02-25 18:14:39',431,1789,'ed8e6a05f4f7d695989bac5b7179eef9abe85f14','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:14:39\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:13:59\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"57\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(51,2,1,'','2014-02-25 18:15:56',431,1781,'282a7c42a2bf1f34bb6370525b27ea1152d76f9f','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Intranet\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:15:56\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:15:50\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"59\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(52,2,1,'','2014-02-25 18:16:28',431,1790,'d4c42a3bfb3b0ca7ce22b5d3c502d7edcc2c3a6b','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:16:28\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:16:12\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"60\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(53,2,1,'','2014-02-25 18:39:00',431,1791,'d75fff43f6329d2e516b1571528adde772653edd','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Homepage privata\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:39:00\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:38:51\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"85\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(54,2,1,'','2014-02-25 18:39:44',431,1783,'6c408147d8156548ebb4e381b605f705dd7c2c06','{\"id\":2,\"asset_id\":\"55\",\"title\":\"Bacheca:\",\"alias\":\"homepage-condo1\",\"introtext\":\"<p>{loadposition verbali} {loadposition fatture} {phocadownload view=category|id=1|target=s}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:54:03\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:39:44\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:39:00\",\"publish_up\":\"2014-02-25 15:54:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"87\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(55,3,3,'','2014-02-25 18:41:33',431,2754,'35da12f412743c87bcb617886e3af91445d988f7','{\"id\":3,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:41:01\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:41:33\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"0\"}',0),(56,3,3,'','2014-02-25 18:42:22',431,2356,'e3164f45ef6aae05de81f7b817b44bc3fc11f0b0','{\"id\":3,\"name\":\"CONDOMINIO 1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-25 18:41:33\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-25 18:42:22\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":6,\"hits\":\"0\"}',0),(57,1,3,'','2014-02-27 21:18:04',431,2782,'21d12d0b3d12f2bf13e387e2463cfe4d880a2d56','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 21:17:53\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"4\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 21:18:04\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"0\"}',0),(58,1,3,'','2014-02-27 21:32:02',431,2782,'9367ed6a8b427b2b0d65be0cb788ce52eff2b93a','{\"id\":1,\"name\":\"manutentore1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 21:31:25\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"4\",\"access\":\"6\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 21:32:02\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"0\"}',0),(60,1,1,'','2014-02-27 23:11:43',431,3284,'f0cb814db0c613cfe8b112ceb1ae99436108e5ea','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>homepage pubblica\\u00a0<\\/p>\\r\\n<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\\r\\n<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:11:43\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:11:29\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"104\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(61,1,1,'','2014-02-27 23:14:40',431,3279,'fd25928882aac3f92c168698c4a3659dc7034239','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\\r\\n<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:14:40\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:12:23\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"105\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(62,1,1,'','2014-02-27 23:15:02',431,2690,'1c959ac6c21299fa5e80a751ba76cbc2ac5ae062','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:15:02\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:14:40\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"106\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(63,1,1,'','2014-02-27 23:15:31',431,3138,'6f5562560ade3227487ab1b1505bc114aac5980a','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\\r\\n<p>liquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi.\\u00a0<span style=\\\"line-height: 1.3em;\\\">Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero.<\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:15:31\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:15:02\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"107\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(64,1,1,'','2014-02-27 23:16:29',431,2715,'560f68dab8f763595798edc2499bab5f57d212b1','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<h3>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/h3>\\r\\n<h3>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/h3>\\r\\n<h3>\\u00a0<\\/h3>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:16:29\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:15:31\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"108\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(65,1,1,'','2014-02-27 23:16:48',431,2346,'d3d603e7235ae0a3211036f3d1928d954294224f','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<h3>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus.<\\/h3>\\r\\n<h3>Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/h3>\\r\\n<h3>\\u00a0<\\/h3>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:16:48\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:16:29\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"109\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(66,1,1,'','2014-02-27 23:17:21',431,2359,'1e095d927058675a593008d7855636e000c50344','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<h3>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus.<\\/h3>\\r\\n<h3>Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl.<\\/h3>\\r\\n<h3>Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/h3>\\r\\n<h3>\\u00a0<\\/h3>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:17:21\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:16:48\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"110\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(67,1,1,'','2014-02-27 23:48:26',431,2374,'cc4c8b250ad38d3afaa3b9b25b7525823e07648c','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<h3>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus.<\\/h3>\\r\\n<h3>Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl.<\\/h3>\\r\\n<h3>Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/h3>\\r\\n<p>{loadposition homepage}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-27 23:48:26\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-27 23:48:04\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"118\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(68,1,1,'','2014-02-28 00:01:35',431,1757,'b63fe80c0ebb16267f3eedb27e07a3523005ab4f','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>{loadposition homepage}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-28 00:01:35\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-28 00:00:54\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/gallery-img3.jpg\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"128\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(69,1,1,'','2014-02-28 00:01:54',431,1731,'ed2e3422a8180cb641b0b2687521733bf9a3b273','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage pubblica\",\"alias\":\"homepage-pubblica\",\"introtext\":\"<p>{loadposition homepage}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-02-25 15:52:28\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-02-28 00:01:54\",\"modified_by\":\"431\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-02-28 00:01:48\",\"publish_up\":\"2014-02-25 15:52:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"left\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"129\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(70,13,7,'','2014-03-02 23:55:02',431,582,'69e9d7a2de4152e72109c030c1b01bb0e0cb9e24','{\"id\":13,\"asset_id\":\"73\",\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":\"24\",\"level\":\"1\",\"path\":\"manutentori-condo-2\",\"extension\":\"com_contact\",\"title\":\"manutentori\",\"alias\":\"manutentori\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-02 23:54:29\",\"access\":\"8\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:48:47\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-03-02 23:55:02\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(71,12,7,'','2014-03-02 23:57:00',431,586,'0976e3de71e3d8918db43f43846c546cb06dce32','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"manutentori-condo1\",\"extension\":\"com_contact\",\"title\":\"condomini\",\"alias\":\"manutentori-condo1\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-02 23:55:11\",\"access\":\"7\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-03-02 23:57:00\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(72,12,7,'','2014-03-02 23:57:34',431,577,'d8ee5e6ec288df3e0df7e4f64d0410c4e8d5615b','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"manutentori-condo1\",\"extension\":\"com_contact\",\"title\":\"condomini\",\"alias\":\"condomini\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-02 23:57:06\",\"access\":\"7\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-03-02 23:57:34\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(73,3,3,'','2014-03-02 23:58:18',431,2356,'d58c1472749b01122ef776b5c967354badb98bf3','{\"id\":3,\"name\":\"CONDOMINIO 1\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-02 23:57:50\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-02 23:58:18\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":7,\"hits\":\"3\"}',0),(74,4,3,'','2014-03-03 00:02:51',431,2788,'59b2d63c968415b54d3e88a0d17d0938067b33b9','{\"id\":4,\"name\":\"manutentore2condo2\",\"alias\":\"manutentore1-2\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:02:15\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:02:51\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":6,\"hits\":\"0\"}',0),(75,5,3,'','2014-03-03 00:03:27',431,2770,'52bcf801cff1c538285102af65942538a57818d8','{\"id\":5,\"name\":\"manutentore2condo2 (2)\",\"alias\":\"manutentore1-3\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":0,\"checked_out\":null,\"checked_out_time\":null,\"ordering\":3,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-03-03 00:03:27\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:02:51\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0),(76,5,3,'','2014-03-03 00:03:46',431,2788,'d1a237023d17b26d2620782d0ec5d892a9e6f851','{\"id\":5,\"name\":\"manutentore1condo2\",\"alias\":\"manutentore1-3\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"0\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:03:27\",\"ordering\":\"3\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-03-03 00:03:27\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:03:46\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"0\"}',0),(77,3,3,'','2014-03-03 00:05:05',431,2356,'0fd7227f013cd38245ee3488d7007963233891c6','{\"id\":3,\"name\":\"CONDOMINIO 2\",\"alias\":\"manutentore1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:04:47\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:05:05\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":8,\"hits\":\"3\"}',0),(78,6,3,'','2014-03-03 00:05:16',431,2340,'616c922a83d233be1c1cabe26874d44d644bd357','{\"id\":6,\"name\":\"CONDOMINIO 2 (2)\",\"alias\":\"manutentore1-3\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":0,\"checked_out\":null,\"checked_out_time\":null,\"ordering\":4,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"8\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-03-03 00:05:16\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:05:05\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0),(79,6,3,'','2014-03-03 00:06:09',431,2350,'8a2e3fef9bc8a1b628a05dca0dce026bc8cda362','{\"id\":6,\"name\":\"CONDOMINIO 1\",\"alias\":\"condo1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:05:16\",\"ordering\":\"4\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-03-03 00:05:16\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:06:09\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"0\"}',0),(80,2,3,'','2014-03-03 00:07:39',431,2772,'112c7c958eb63a97405354fedba1d5eb5ca6b5f4','{\"id\":2,\"name\":\"manutentore2condo1\",\"alias\":\"manutentore2-1\",\"con_position\":\"antennista\",\"address\":\"via dei gazzi, 100\",\"suburb\":\"Loano\",\"state\":\"\",\"country\":\"\",\"postcode\":\"17025\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"email_to\":\"antennista@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:06:44\",\"ordering\":\"2\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:21\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:07:39\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"3\"}',0),(81,1,3,'','2014-03-03 00:08:39',431,2791,'89da87a6e1a8af02d41ca3ace203f16e04d62155','{\"id\":1,\"name\":\"manutentore1condo1\",\"alias\":\"manutentore1-1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed in quam eu erat ornare ornare ut ut nulla. Proin tempor lorem mi, quis ultricies nisl viverra id. Suspendisse diam nisi, sollicitudin at sodales ut, porttitor et nunc. Integer quis felis quis ligula bibendum hendrerit id at libero. Suspendisse ornare sem nibh, ut lacinia elit viverra eget. Phasellus tincidunt tincidunt viverra. Suspendisse at sollicitudin velit.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:07:54\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"13\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-02-25 16:34:15\",\"created_by\":\"431\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 00:08:39\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":6,\"hits\":\"0\"}',0),(82,12,7,'','2014-03-03 00:24:03',431,568,'c432e0854fa6e6ade963a1081c7d32cea90ccda5','{\"id\":12,\"asset_id\":\"70\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"condomini\",\"extension\":\"com_contact\",\"title\":\"condomini\",\"alias\":\"condomini\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:23:13\",\"access\":\"2\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:31:31\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-03-03 00:24:03\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(83,13,7,'','2014-03-03 00:24:39',431,574,'9f6097d882d07925263dc71dcb8aabb5615320c9','{\"id\":13,\"asset_id\":\"73\",\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":\"24\",\"level\":\"1\",\"path\":\"manutentori\",\"extension\":\"com_contact\",\"title\":\"manutentori\",\"alias\":\"manutentori\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 00:24:09\",\"access\":\"2\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-02-25 16:48:47\",\"modified_user_id\":\"431\",\"modified_time\":\"2014-03-03 00:24:39\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(84,1,11,'','2014-03-03 13:15:43',431,672,'dfde2f705a0355193679cb44e85072a8fc89d022','{\"id\":1,\"cid\":\"0\",\"type\":\"1\",\"name\":\"Banner prova 1\",\"alias\":\"banner-prova-1\",\"imptotal\":0,\"impmade\":\"0\",\"clicks\":\"0\",\"clickurl\":false,\"state\":\"1\",\"catid\":\"3\",\"description\":\"\",\"custombannercode\":\"test banner prova 1\",\"sticky\":\"0\",\"ordering\":1,\"metakey\":\"\",\"params\":\"{\\\"imageurl\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"alt\\\":\\\"\\\"}\",\"own_prefix\":\"0\",\"metakey_prefix\":\"\",\"purchase_type\":\"-1\",\"track_clicks\":\"0\",\"track_impressions\":\"0\",\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"\",\"publish_down\":\"\",\"reset\":\"\'2014-04-03 00:00:00\'\",\"created\":\"2014-03-03 13:15:43\",\"language\":\"*\",\"created_by\":\"0\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"version\":1}',0),(85,14,12,'','2014-03-03 13:15:59',431,514,'ae24d29ee8e445fbdcdaf8f05028ac133839f76d','{\"id\":14,\"asset_id\":90,\"parent_id\":\"1\",\"lft\":\"25\",\"rgt\":26,\"level\":1,\"path\":null,\"extension\":\"com_banners\",\"title\":\"avvisi\",\"alias\":\"avvisi\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"2\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"431\",\"created_time\":\"2014-03-03 13:15:59\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(86,6,3,'','2014-03-03 21:49:37',431,2350,'b3c8132c92662cd0028f046cfb4c87e345e5df77','{\"id\":6,\"name\":\"CONDOMINIO 1\",\"alias\":\"condo1\",\"con_position\":\"idraulico\",\"address\":\"via dei mille, 24\",\"suburb\":\"Albenga\",\"state\":\"\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"0182.23.23.23\",\"fax\":\"\",\"misc\":\"<p>Phasellus cursus elit ac ornare porta. Sed suscipit tellus ut purus faucibus faucibus. Praesent sodales eros nec volutpat sagittis. Praesent eu mi ut elit sodales congue. Vivamus a neque magna. Aliquam vel dui nisl. Nunc laoreet massa orci, ut viverra turpis scelerisque in. In ullamcorper, arcu adipiscing viverra porttitor, turpis quam dapibus arcu, in mollis justo lacus pellentesque nisi. Quisque commodo nunc sed dui pretium convallis. Integer a facilisis massa. Integer ante purus, tincidunt a placerat sit amet, sagittis et leo. Duis a imperdiet metus, non rutrum risus.<\\/p>\",\"image\":\"images\\/sampledata\\/parks\\/animals\\/condo1.png\",\"email_to\":\"idraulico@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"431\",\"checked_out_time\":\"2014-03-03 21:49:19\",\"ordering\":\"4\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"7\",\"mobile\":\"339.234.23.23\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-03-03 00:05:16\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2014-03-03 21:49:37\",\"modified_by\":\"431\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"0\"}',0),(87,7,3,'','2014-03-03 21:51:16',437,1671,'68824041636eef904116af717adc2468183d9d96','{\"id\":7,\"name\":\"condo3\",\"alias\":\"condo3\",\"con_position\":\"\",\"address\":\"via dei milla 213\",\"suburb\":\"Albenga\",\"state\":\"SV\",\"country\":\"\",\"postcode\":\"20100\",\"telephone\":\"01820211212\",\"fax\":\"\",\"misc\":\"\",\"image\":\"images\\/gallery-img3.jpg\",\"email_to\":\"test@test.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":5,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"0\",\"catid\":\"12\",\"access\":\"2\",\"mobile\":\"\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2014-03-03 21:51:16\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_update_sites`
--

LOCK TABLES `i92ks_update_sites` WRITE;
/*!40000 ALTER TABLE `i92ks_update_sites` DISABLE KEYS */;
INSERT INTO `i92ks_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1393923975,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1393923975,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1393923975,''),(4,'Attachments Updates','extension','http://jmcameron.net/attachments/updates/updates.xml',1,1393923973,''),(5,'DJ-ImageSlider Package','extension','http://dj-extensions.com/updates/djimageslider.xml',1,1393923973,''),(6,'AcyMailing','extension','http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml',1,1393923973,''),(7,'Jevents','extension','http://www.jevents.net/updates/-d2ViY29uZG8udGsvam9jb25kbw==/pkg_jevents-update-3.1.17.xml',1,1393923975,'');
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
INSERT INTO `i92ks_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10015),(4,10012),(5,10023),(6,10030),(7,10057);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_updates`
--

LOCK TABLES `i92ks_updates` WRITE;
/*!40000 ALTER TABLE `i92ks_updates` DISABLE KEYS */;
INSERT INTO `i92ks_updates` VALUES (1,3,0,'Malay','','pkg_ms-MY','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(5,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(6,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(7,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(8,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(9,3,0,'French','','pkg_fr-FR','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(10,3,0,'French','','pkg_fr-FR','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(11,3,0,'German','','pkg_de-DE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(12,3,0,'German','','pkg_de-DE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(13,3,0,'Greek','','pkg_el-GR','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(14,3,0,'Greek','','pkg_el-GR','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(15,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(16,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(17,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(18,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(19,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.1.0.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(20,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.1.0.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(21,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.1.0.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(22,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.1.0.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(23,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(24,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(25,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(26,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(27,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(28,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(29,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(30,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(31,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(32,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(33,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(34,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(35,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(36,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(37,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(38,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(39,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(40,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(41,3,0,'Danish','','pkg_da-DK','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(42,3,0,'Danish','','pkg_da-DK','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(43,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(44,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(45,3,0,'Estonian','','pkg_et-EE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(46,3,0,'Estonian','','pkg_et-EE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(47,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.1.0','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(48,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.1.0','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(49,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(50,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(51,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(52,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(53,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(54,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(55,3,0,'Persian','','pkg_fa-IR','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(56,3,0,'Polish','','pkg_pl-PL','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(57,3,0,'Polish','','pkg_pl-PL','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(58,3,0,'Russian','','pkg_ru-RU','package','',0,'3.2.1.5','','http://update.joomla.org/language/details3/ru-RU_details.xml','',''),(59,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.2.2.2','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(60,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(61,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(62,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(63,3,0,'Thai','','pkg_th-TH','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(64,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(65,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.2.0.6','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(66,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(67,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(68,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(69,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(70,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(71,3,0,'Spanish','','pkg_es-ES','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(72,3,0,'Spanish','','pkg_es-ES','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(73,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(74,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(75,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(76,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(77,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(78,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.1.4.1','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(79,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(80,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(81,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
INSERT INTO `i92ks_user_usergroup_map` VALUES (431,8),(432,2),(432,10),(433,2),(433,10),(434,2),(434,11),(435,2),(435,11),(436,2),(436,7),(437,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_usergroups`
--

LOCK TABLES `i92ks_usergroups` WRITE;
/*!40000 ALTER TABLE `i92ks_usergroups` DISABLE KEYS */;
INSERT INTO `i92ks_usergroups` VALUES (1,0,1,18,'Public'),(2,1,4,15,'Registered'),(6,12,10,13,'Manager'),(7,6,11,12,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest'),(10,2,5,6,'condo1'),(11,2,7,8,'condo2'),(12,2,9,14,'condomini');
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
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i92ks_users`
--

LOCK TABLES `i92ks_users` WRITE;
/*!40000 ALTER TABLE `i92ks_users` DISABLE KEYS */;
INSERT INTO `i92ks_users` VALUES (431,'Super User','admin','webcondo@webcondo.tk','$P$D.TYSbrw2SklUZRhlcWW9CV/WM0jdS/',0,1,'2014-02-24 09:32:38','2014-03-04 09:34:37','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(432,'user1condo1','user1condo1','alexrah@gmail.com','$P$DflR4Ct905HvdBxhwViCgPQubAvkn5/',0,0,'2014-02-25 15:58:27','2014-03-04 09:43:07','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(433,'user2condo1','user2condo1','user2condo1@alexrah.otherinbox.com','$P$DiZ/JDRXwp7Za.2fy2aj2id6WxqeoO.',0,0,'2014-02-25 15:59:29','2014-03-04 00:38:56','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(434,'user1condo2','user1condo2','user1condo2@alexrah.otherinbox.com','$P$DEpwVoAd5zgjak3XjH9Y5PIOaOgfC5/',0,0,'2014-02-25 16:00:02','2014-03-03 23:01:19','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(435,'user2condo2','user2condo2','user2condo2@alexrah.otherinbox.com','$P$DtxnHOpX0rxGHeCX4UBQ3Xsj8Cqtfu/',0,0,'2014-02-25 16:00:28','2014-03-04 01:01:04','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(436,'amministratore','amministratore','gestore_webcondo@alexrah.otherinbox.com','$P$D4QCIcA1UDcb8Q8a6zKnrYu4y5hRzC1',1,1,'2014-03-03 20:44:50','2014-03-03 22:43:59','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'',''),(437,'gestore','gestore','autore_webcondo@alexrah.otherinbox.com','$P$DoYrKuTa0.4JblVBglw7JMuo./fYxT1',0,1,'2014-03-03 20:49:03','2014-03-04 00:39:05','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','');
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
INSERT INTO `i92ks_viewlevels` VALUES (1,'Public',1,'[1]'),(2,'Registered',4,'[6,2,8]'),(3,'Special',6,'[6,8]'),(5,'Guest',2,'[9]'),(6,'Super Users',7,'[8]'),(7,'condo1',3,'[10,12]'),(8,'condo2',5,'[11,12]');
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

-- Dump completed on 2014-03-04 10:58:08
