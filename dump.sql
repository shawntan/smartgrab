-- MySQL dump 10.13  Distrib 5.1.51, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: parcels_development
-- ------------------------------------------------------
-- Server version	5.1.51

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
-- Table structure for table `annotations`
--

DROP TABLE IF EXISTS `annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `xpath` varchar(1024) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `raw` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` VALUES (135,'Headlines','//div[@id=\'wrapper\']/div[1]/div/div[1]/h3[1]/a[1]','2010-08-19 15:18:28','2010-08-19 15:18:28',''),(136,'Digg Count','//div[@id=\'wrapper\']/div[1]/div/ul[1]/li[1]/a[1]/strong[1]','2010-08-19 15:18:47','2010-08-19 15:18:47',''),(139,'YCombinator Headlines','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[3]/a[1]','2010-08-21 06:57:41','2010-08-21 06:57:41',''),(140,'Posters','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[2]/a[1]','2010-08-21 07:03:34','2010-08-21 07:03:34',''),(141,'Headlines','(/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div/div//a[1])[not(.=(//div[@id=\'main\']/div[1]/div[1]/div[1]/div[2]/div[7]/div[1]/p[1]/a[1] | //div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div/div/ul[1]/li/a[1] | //div[@id=\'main\']/div[1]/div[1]/div[1]/div[2]/div[5]/div[1]/div[2]/ul[1]/li[1]/a[1]))]','2010-08-21 07:06:32','2010-08-21 07:06:32',''),(142,'Comments','//div[@id=\'maincontent\']/div[3]/div','2010-08-21 08:00:18','2010-08-21 08:00:18',''),(143,'Label Name','','2010-08-21 08:02:57','2010-08-21 08:02:57',''),(144,'Label Name','//div[@id=\'maincontent\']/div[3]/div','2010-08-21 08:05:33','2010-08-21 08:05:33',''),(145,'Gizmodo headlines','/html/body/div/div/div/div/h1[1]/a[1]','2010-08-22 05:08:37','2010-08-22 05:08:37',''),(146,'Headlines','/html/body/div/div/div/div/h1[1]/a[1]','2010-08-22 05:10:56','2010-08-22 05:10:56',''),(147,'Headlines','//div[@id=\'mainContent\']/div[1]/div[1]/ul/li/h3[1]/a[1]','2010-08-22 10:01:11','2010-08-22 10:01:11',''),(148,'Date','//div[@id=\'mainContent\']/div[1]/div[1]/ul/li/div[1]','2010-08-22 10:01:20','2010-08-22 10:01:20',''),(149,'Titles','//div[@id=\'maincontent\']/div/h2[1]/a[1]','2010-08-23 04:29:32','2010-08-23 04:29:32',''),(150,'Posters','(/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[2]/a[1])[not(.=(/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr[92]/td[2]/a[1]))]','2010-08-25 03:24:22','2010-08-25 03:24:22',''),(151,'Digg Headlines','//div[@id=\'story-items\']/div/div[2]/h3[1]/a[1]','2010-08-27 02:08:23','2010-08-27 02:08:23',''),(152,'Post Details','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[2]/tbody[1]/tr/td[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/span[1]','2010-08-27 05:46:20','2010-08-27 05:46:20',''),(153,'Comments','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[2]/tbody[1]/tr/td[1]/table[1]/tbody[1]/tr[1]/td[3]','2010-08-27 05:46:35','2010-08-27 05:46:35',''),(154,'Player Details','//div[@id=\'playerProfile\']/div[2]/div[1]/div[2]/div[1]/ul[1]/li','2010-09-12 14:04:31','2010-09-12 14:04:31',''),(155,'Book Titles','//div[@id=\'rightResultsATF\']/div/div/div/div[3]/div[1]/a[1]','2010-10-06 02:39:05','2010-10-06 02:39:05',''),(156,'Novelr Headlines','//div[@id=\'content\']/div/h2[1]/a[1]','2010-10-07 07:39:24','2010-10-07 07:39:24',''),(157,'HEadlines','//div[@id=\'story-items\']/div[1]/div/div[2]/h3[1]/a[1]','2010-10-07 14:40:53','2010-10-07 14:40:53',''),(158,'Digg Count','//div[@id=\'story-items\']/div[1]/div/div[1]/div[1]/a[1]/span[1]/span[1]','2010-10-07 14:41:17','2010-10-07 14:41:17',''),(159,'Reddit Headlines','//div[@id=\'siteTable\']/div/div[2]/p[1]/a[1]','2010-12-10 16:42:02','2010-12-10 16:42:02',''),(160,'Fifa headlines','//div[@id=\'mainContent\']/div[1]/div[1]/ul/li/h3[1]/a[1]','2010-12-11 06:57:46','2010-12-11 06:57:46',''),(161,'Title','//div[@id=\'post\']/h3[1]/a[1]','2010-12-11 12:19:09','2010-12-11 12:19:09',''),(162,'Torrent Link','//table[@id=\'searchResult\']/tbody[1]/tr/td[2]/a[1]/img[1]','2010-12-11 12:22:33','2010-12-11 12:22:33',''),(163,'Brief Content','//div[@id=\'ires\']/ol[1]/li/div[1]/div[2]','2010-12-14 05:37:56','2010-12-14 05:37:56',''),(164,'Entries','//div[@id=\'ires\']/ol[1]/li/div[1]/span[1]/h3[1]/a[1]','2010-12-14 05:38:14','2010-12-14 05:38:14',''),(165,'Global Headlines','(/html/body/div/div/div/div/div[last()]/div[1]/div[1]/div/div/div/div//a[1])[not(.=(//div[@id=\'main\']/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[2]/span[1]/a[1] | //div[@id=\'main\']/div[1]/div[2]/div[1]/div[1]/div/div[2]/div[last()]/div[1]/div//a[1] | //div[@id=\'news-MiddleEast\']/div[2]/ul[1]/li/h5[1]/a[1]))]','2010-12-15 08:34:54','2010-12-15 08:34:54',''),(166,'Headlines','/html/body/table/tbody[1]/tr/td/a','2010-12-15 08:49:24','2010-12-15 08:49:24',''),(167,'Top Headlines','//div[@id=\'basecolour_bn\']/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[3]/div[2]//a[1]','2010-12-15 08:50:46','2010-12-15 08:50:46',''),(168,'Title','//div[@id=\'firehoselist\']/div/h3[1]/span[3]/a','2010-12-16 07:41:22','2010-12-16 07:41:22',''),(169,'By','//div[@id=\'firehoselist\']/div/div[1]/small[1]','2010-12-16 07:41:32','2010-12-16 07:41:32',''),(170,'test','/html/body/table[1]/tbody[1]/tr[1]/td//li','2010-12-23 08:17:16','2010-12-23 08:17:16','{\"select\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\"},\"*\",\"*\",{\"tagName\":\"li\"}],\"reject\":{}}');
/*!40000 ALTER TABLE `annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annotations_pages`
--

DROP TABLE IF EXISTS `annotations_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annotations_pages` (
  `annotation_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  KEY `fk_annotations_has_pages_pages1` (`page_id`),
  KEY `fk_annotations_pages_1` (`annotation_id`),
  KEY `fk_annotations_pages_2` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations_pages`
--

LOCK TABLES `annotations_pages` WRITE;
/*!40000 ALTER TABLE `annotations_pages` DISABLE KEYS */;
INSERT INTO `annotations_pages` VALUES (133,58),(134,58),(135,60),(136,60),(135,61),(136,61),(140,114),(151,110),(139,67),(140,67),(141,63),(142,69),(143,69),(144,69),(145,77),(146,78),(139,114),(140,89),(147,90),(148,90),(147,91),(148,91),(147,92),(148,92),(147,93),(148,93),(149,94),(149,96),(147,97),(148,97),(153,113),(140,98),(152,113),(140,107),(139,108),(140,108),(150,108),(140,115),(139,115),(154,116),(155,117),(155,118),(156,119),(156,120),(157,110),(158,110),(157,123),(158,123),(159,124),(160,90),(161,125),(162,126),(163,127),(164,127),(165,128),(166,129),(167,130),(168,131),(169,131),(159,133),(170,138);
/*!40000 ALTER TABLE `annotations_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `next_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (60,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/','2010-08-19 15:17:18','2010-08-19 15:17:18',1,NULL),(61,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page2','2010-08-19 15:19:12','2010-08-19 15:19:12',1,NULL),(62,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page3','2010-08-19 15:39:34','2010-08-19 15:39:34',1,NULL),(63,'International News - The New York Times','http://www.nytimes.com/pages/world/index.html','2010-08-20 16:43:05','2010-08-20 16:43:05',1,NULL),(64,'Aptana RadRails','http://localhost:3000/','2010-08-20 16:43:41','2010-08-20 16:43:41',1,NULL),(65,'Dwarf Fortress Wiki:Centralized Discussion - Dwarf Fortress Wiki','http://df.magmawiki.com/index.php/Dwarf_Fortress_Wiki:Centralized_Discussion','2010-08-21 06:18:17','2010-08-21 06:18:17',1,NULL),(66,'Dwarf Fortress Wiki','http://df.magmawiki.com/index.php/Main_Page','2010-08-21 06:50:43','2010-08-21 06:50:43',1,NULL),(67,'Hacker News','http://news.ycombinator.com/','2010-08-21 06:51:29','2010-08-21 06:51:29',1,NULL),(68,'Title','file:///home/shawn/Desktop/Title.html','2010-08-21 07:50:18','2010-08-21 07:50:18',1,NULL),(69,'AUR (en) - kernel26-ck','http://aur.archlinux.org/packages.php?ID=32877','2010-08-21 07:59:57','2010-08-21 07:59:57',1,NULL),(70,'Hacker News','http://news.ycombinator.com/x?fnid=uDspqutqWm','2010-08-21 08:24:30','2010-08-21 08:24:30',1,NULL),(71,'Hacker News','http://news.ycombinator.com/x?fnid=vpPZpiQyTq','2010-08-21 08:25:02','2010-08-21 08:25:02',1,NULL),(72,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page4','2010-08-21 08:25:47','2010-08-21 08:25:47',1,NULL),(73,'Hacker News','http://news.ycombinator.com/x?fnid=hv4A2mO1tQ','2010-08-21 08:44:37','2010-08-21 08:44:37',1,NULL),(74,'Hacker News','http://news.ycombinator.com/x?fnid=wIoO7Kfnsb','2010-08-21 08:46:52','2010-08-21 08:46:52',1,NULL),(75,'Hacker News','http://news.ycombinator.com/x?fnid=qEG6JFvKjh','2010-08-21 08:51:21','2010-08-21 08:51:21',1,NULL),(76,'Hacker News','http://news.ycombinator.com/x?fnid=9qs7xe1A0D','2010-08-21 09:00:14','2010-08-21 09:00:14',1,NULL),(77,'Gizmodo, the Gadget Guide','http://gizmodo.com/','2010-08-22 05:07:33','2010-08-22 05:07:33',1,NULL),(78,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/','2010-08-22 05:09:44','2010-08-22 05:09:44',1,NULL),(79,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/?p=2','2010-08-22 05:11:17','2010-08-22 05:11:17',1,NULL),(80,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/?p=3','2010-08-22 05:12:16','2010-08-22 05:12:16',1,NULL),(81,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/?p=9','2010-08-22 05:45:27','2010-08-22 05:45:27',1,NULL),(82,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page5','2010-08-22 05:49:57','2010-08-22 05:49:57',1,NULL),(83,'rails unique find - Google Search','http://www.google.com.sg/search?q=rails+unique+find&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-US:official&client=firefox-a','2010-08-22 06:24:41','2010-08-22 06:24:41',1,NULL),(84,'rails unique find - Google Search','http://www.google.com.sg/search?q=rails+unique+find&hl=en&safe=off&client=firefox-a&hs=Dd4&rls=org.mozilla:en-US:official&ei=9sFwTN-sKovuvQO78bhB&start=10&sa=N','2010-08-22 06:25:55','2010-08-22 06:25:55',1,NULL),(85,'rails unique find - Google Search','http://www.google.com.sg/search?q=rails+unique+find&hl=en&safe=off&client=firefox-a&rls=org.mozilla:en-US:official&ei=2cJwTOqjIYS4vQOLmK1B&start=20&sa=N','2010-08-22 06:27:24','2010-08-22 06:27:24',1,NULL),(86,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page6','2010-08-22 06:29:09','2010-08-22 06:29:09',1,NULL),(87,'benjamin tan wei hao - Google Search','http://www.google.com.sg/search?hl=en&safe=off&client=firefox-a&hs=QNl&rls=org.mozilla%3Aen-US%3Aofficial&q=benjamin+tan+wei+hao&aq=f&aqi=&aql=&oq=&gs_rfai=','2010-08-22 08:34:58','2010-08-22 08:34:58',1,NULL),(88,'benjamin tan wei hao - Google Search','http://www.google.com.sg/search?q=benjamin+tan+wei+hao&hl=en&safe=off&client=firefox-a&hs=ZNl&rls=org.mozilla:en-US:official&prmd=o&ei=MddwTOavEoOWuAOrkbFC&start=10&sa=N','2010-08-22 08:36:40','2010-08-22 08:36:40',1,NULL),(89,'Hacker News','http://news.ycombinator.com/x?fnid=IVzsIuZY0K','2010-08-22 08:46:13','2010-08-22 08:46:13',1,NULL),(90,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index.html','2010-08-22 10:00:25','2010-08-22 10:00:25',1,NULL),(91,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=2.htmx','2010-08-22 10:01:35','2010-08-22 10:01:35',1,NULL),(92,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=3.htmx','2010-08-22 10:03:36','2010-08-22 10:03:36',1,NULL),(93,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=4.htmx','2010-08-22 10:04:35','2010-08-22 10:04:35',1,NULL),(94,'Ajaxian','http://ajaxian.com/','2010-08-23 04:29:13','2010-08-23 04:29:13',1,NULL),(95,'Ajaxian','http://ajaxian.com/page/2','2010-08-23 04:33:58','2010-08-23 04:33:58',1,NULL),(96,'Ajaxian','http://ajaxian.com/page/3','2010-08-23 04:34:40','2010-08-23 04:34:40',1,NULL),(97,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=5.htmx','2010-08-23 04:35:39','2010-08-23 04:35:39',1,NULL),(98,'Hacker News','http://news.ycombinator.com/x?fnid=9UUaHit9vB','2010-08-23 04:59:31','2010-08-23 04:59:31',1,NULL),(99,'+ Mayflower Scout Group Singapore','http://www.mayflowerscout.org/index.php','2010-08-24 14:22:20','2010-08-24 14:22:20',1,NULL),(100,'Hacker News','http://news.ycombinator.com/x?fnid=Sy6TD1TnyI','2010-08-24 14:24:37','2010-08-24 14:24:37',1,NULL),(101,'Hacker News','http://news.ycombinator.com/x?fnid=hdMEWVKCLu','2010-08-24 14:28:33','2010-08-24 14:28:33',1,NULL),(102,'Hacker News','http://news.ycombinator.com/x?fnid=QPnsPAuZNe','2010-08-24 14:28:56','2010-08-24 14:28:56',1,NULL),(103,'Hacker News','http://news.ycombinator.com/x?fnid=tVbyrx7tuX','2010-08-24 14:30:56','2010-08-24 14:30:56',1,NULL),(104,'New York Nightowls','http://nynightowls.tumblr.com/','2010-08-24 14:32:59','2010-08-24 14:32:59',1,NULL),(105,'Hacker News','http://news.ycombinator.com/x?fnid=nkg2QPkPBi','2010-08-25 02:53:02','2010-08-25 02:53:02',1,NULL),(106,'CSS Tip #1: Resetting Your Styles with CSS Reset','http://sixrevisions.com/css/css-tips/css-tip-1-resetting-your-styles-with-css-reset/','2010-08-25 03:01:45','2010-08-25 03:01:45',1,NULL),(107,'Hacker News','http://news.ycombinator.com/x?fnid=MZ9rT0QiPo','2010-08-25 03:20:07','2010-08-25 03:20:07',1,NULL),(108,'Hacker News','http://news.ycombinator.com/x?fnid=049IhzZJXA','2010-08-25 03:22:00','2010-08-25 03:22:00',1,NULL),(109,'Hacker News','http://news.ycombinator.com/x?fnid=eJYgBX7ujE','2010-08-25 03:24:35','2010-08-25 03:24:35',1,NULL),(110,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/news','2010-08-27 02:07:57','2010-08-27 02:07:57',1,NULL),(111,'All News, Videos, & Images','http://replay.waybackmachine.org/20090723060859/http://digg.com/','2010-08-27 05:38:55','2010-08-27 05:38:55',1,NULL),(112,'Digg - New Digg Is Live: What It Means For Digg and For You','http://digg.com/news/technology/new_digg_is_live_what_it_means_for_digg_and_for_you','2010-08-27 05:43:08','2010-08-27 05:43:08',1,NULL),(113,'Hacker News | Ingenious Hack by Facebook Spammers: Smoking Hot Bartenders','http://news.ycombinator.com/item?id=1637782','2010-08-27 05:45:41','2010-08-27 05:45:41',1,NULL),(114,'Hacker News','http://news.ycombinator.com/x?fnid=fdgtpvvFzr','2010-08-27 06:05:06','2010-08-27 06:05:06',1,NULL),(115,'Hacker News','http://news.ycombinator.com/x?fnid=gkrUwnqr0I','2010-08-27 06:05:34','2010-08-27 06:05:34',1,NULL),(116,'FIFA.com - 2010 FIFA World Cup™ - Philipp LAHM','http://www.fifa.com/worldcup/players/player=196748/index.html','2010-09-12 14:04:18','2010-09-12 14:04:18',1,NULL),(117,'Amazon.co.uk: mathematics: Books','http://www.amazon.co.uk/gp/search/ref=sr_st?keywords=mathematics&qid=1286332623&rh=n%3A266239%2Ck%3Amathematics&sort=price','2010-10-06 02:38:48','2010-10-06 02:38:48',1,NULL),(118,'Amazon.co.uk: Computing & Internet - mathematics: Books','http://www.amazon.co.uk/gp/search/ref=sr_nr_n_6?rh=n%3A266239%2Ck%3Amathematics%2Cn%3A%211025612%2Cn%3A71&bbn=1025612&sort=price&keywords=mathematics&ie=UTF8&qid=1286332631&rnid=1025612','2010-10-06 02:39:18','2010-10-06 02:39:18',1,NULL),(119,'Novelr - Making People Read','http://www.novelr.com/','2010-10-07 07:38:34','2010-10-07 07:38:34',1,NULL),(120,'Novelr - Making People Read','http://www.novelr.com/page/2','2010-10-07 07:39:36','2010-10-07 07:39:36',1,NULL),(121,'Archives – Novelr - Making People Read','http://www.novelr.com/archives','2010-10-07 07:41:29','2010-10-07 07:41:29',1,NULL),(122,'Archives – Novelr - Making People Read','http://www.novelr.com/archives#2010-04','2010-10-07 07:42:14','2010-10-07 07:42:14',1,NULL),(123,'Digg - Top in 24 Hours','http://digg.com/upcoming','2010-10-07 14:41:37','2010-10-07 14:41:37',1,NULL),(124,'Computer Science: Theory and Application','http://www.reddit.com/r/compsci','2010-12-10 16:41:44','2010-12-10 16:41:44',1,NULL),(125,'iWatching Download Rapidshare Megaupload Hotfile MediaFire Filsserve Rapidshare.com divxden vidxden divxlink filebase metadivx loombo megashares','http://www.iwatching.info/','2010-12-11 12:18:51','2010-12-11 12:18:51',1,NULL),(126,'The Pirate Bay - The world\'s most resilient bittorrent site','http://thepiratebay.org/search/Fringe/0/99/0','2010-12-11 12:22:11','2010-12-11 12:22:11',1,NULL),(127,'htmlunit logging - Google Search','http://www.google.com.sg/search?q=HtmlUnit+logging&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-US:official&client=firefox-a','2010-12-14 05:37:25','2010-12-14 05:37:25',1,NULL),(128,'The New York Times - Breaking News, World News & Multimedia','http://global.nytimes.com/','2010-12-15 08:33:02','2010-12-15 08:33:02',1,NULL),(129,'AsiaOne News','http://news.asiaone.com/News/AsiaOne%2BNews/Singapore/Singapore.html','2010-12-15 08:48:40','2010-12-15 08:48:40',1,NULL),(130,'The Straits Times','http://www.straitstimes.com/BreakingNews/Breaking_News_Top_Stories_20101215.html','2010-12-15 08:50:34','2010-12-15 08:50:34',1,NULL),(131,'Slashdot: News for nerds, stuff that matters','http://slashdot.org/','2010-12-16 07:40:52','2010-12-16 07:40:52',1,NULL),(132,'Structure and Interpretation of Computer Programs','http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-5.html','2010-12-17 06:05:43','2010-12-17 06:05:43',1,NULL),(133,'reddit: the voice of the internet -- news before it happens','http://www.reddit.com/','2010-12-18 09:34:02','2010-12-18 09:34:02',1,NULL),(134,'Hacker News','http://news.ycombinator.com/x?fnid=sO0QX6hesc','2010-12-19 10:57:27','2010-12-19 10:57:27',1,NULL),(135,'Hacker News','http://news.ycombinator.com/x?fnid=Y5emEJmKys','2010-12-19 12:01:45','2010-12-19 12:01:45',1,NULL),(136,'Javascript cloning objects','http://www.thespanner.co.uk/2008/04/10/javascript-cloning-objects/','2010-12-19 14:55:34','2010-12-19 14:55:34',1,NULL),(137,'FIFA.com - Fédération Internationale de Football Association (FIFA)','http://www.fifa.com/','2010-12-20 06:21:26','2010-12-20 06:21:26',1,NULL),(138,'Title','file:///home/shawn/Desktop/hacky/Title.html','2010-12-23 06:22:57','2010-12-23 06:22:57',1,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20100513134504'),('20100513134621'),('20100513135119'),('20100514113256'),('20100514113346'),('20100518144453'),('20100518144647'),('20100518144936'),('20100518145027'),('20100718120041'),('20100718122212'),('20100722035134'),('20100811084941');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scraped_values`
--

DROP TABLE IF EXISTS `scraped_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scraped_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annotation_id` int(11) DEFAULT NULL,
  `value` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `revisions_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `annotation_id` (`annotation_id`),
  KEY `fk_datas_revisions1` (`revisions_id`),
  CONSTRAINT `annotation_id` FOREIGN KEY (`annotation_id`) REFERENCES `annotations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_datas_revisions1` FOREIGN KEY (`revisions_id`) REFERENCES `revisions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scraped_values`
--

LOCK TABLES `scraped_values` WRITE;
/*!40000 ALTER TABLE `scraped_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `scraped_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(40) DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shawntan','','shawn@wtf.sg','158df267942db4393ad2cdf8f1f101ec810a3245','fca7c2814f7888214cf7413df54778334a131b7a','2010-07-18 12:15:47','2010-07-18 12:15:47',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-12-24 14:15:44
