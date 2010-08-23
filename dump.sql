-- MySQL dump 10.13  Distrib 5.1.47, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: parcels_development
-- ------------------------------------------------------
-- Server version	5.1.47

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` VALUES (135,'Headlines','//div[@id=\'wrapper\']/div[1]/div/div[1]/h3[1]/a[1]','2010-08-19 15:18:28','2010-08-19 15:18:28'),(136,'Digg Count','//div[@id=\'wrapper\']/div[1]/div/ul[1]/li[1]/a[1]/strong[1]','2010-08-19 15:18:47','2010-08-19 15:18:47'),(137,'YCombinator Headlines','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[3]/a[1]','2010-08-21 06:57:38','2010-08-21 06:57:38'),(138,'YCombinator Headlines','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[3]/a[1]','2010-08-21 06:57:40','2010-08-21 06:57:40'),(139,'YCombinator Headlines','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[3]/a[1]','2010-08-21 06:57:41','2010-08-21 06:57:41'),(140,'Posters','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[2]/a[1]','2010-08-21 07:03:34','2010-08-21 07:03:34'),(141,'Headlines','(/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div/div//a[1])[not(.=(//div[@id=\'main\']/div[1]/div[1]/div[1]/div[2]/div[7]/div[1]/p[1]/a[1] | //div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div/div/ul[1]/li/a[1] | //div[@id=\'main\']/div[1]/div[1]/div[1]/div[2]/div[5]/div[1]/div[2]/ul[1]/li[1]/a[1]))]','2010-08-21 07:06:32','2010-08-21 07:06:32'),(142,'Comments','//div[@id=\'maincontent\']/div[3]/div','2010-08-21 08:00:18','2010-08-21 08:00:18'),(143,'Label Name','','2010-08-21 08:02:57','2010-08-21 08:02:57'),(144,'Label Name','//div[@id=\'maincontent\']/div[3]/div','2010-08-21 08:05:33','2010-08-21 08:05:33'),(145,'Gizmodo headlines','/html/body/div/div/div/div/h1[1]/a[1]','2010-08-22 05:08:37','2010-08-22 05:08:37'),(146,'Headlines','/html/body/div/div/div/div/h1[1]/a[1]','2010-08-22 05:10:56','2010-08-22 05:10:56'),(147,'Headlines','//div[@id=\'mainContent\']/div[1]/div[1]/ul/li/h3[1]/a[1]','2010-08-22 10:01:11','2010-08-22 10:01:11'),(148,'Date','//div[@id=\'mainContent\']/div[1]/div[1]/ul/li/div[1]','2010-08-22 10:01:20','2010-08-22 10:01:20'),(149,'Titles','//div[@id=\'maincontent\']/div/h2[1]/a[1]','2010-08-23 04:29:32','2010-08-23 04:29:32');
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
INSERT INTO `annotations_pages` VALUES (133,58),(134,58),(135,60),(136,60),(135,61),(136,61),(137,67),(138,67),(139,67),(140,67),(141,63),(142,69),(143,69),(144,69),(145,77),(146,78),(137,89),(140,89),(147,90),(148,90),(147,91),(148,91),(147,92),(148,92),(147,93),(148,93),(149,94),(149,96),(147,97),(148,97),(137,98),(140,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (60,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/','2010-08-19 15:17:18','2010-08-19 15:17:18',1,NULL),(61,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page2','2010-08-19 15:19:12','2010-08-19 15:19:12',1,NULL),(62,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page3','2010-08-19 15:39:34','2010-08-19 15:39:34',1,NULL),(63,'International News - The New York Times','http://www.nytimes.com/pages/world/index.html','2010-08-20 16:43:05','2010-08-20 16:43:05',1,NULL),(64,'Aptana RadRails','http://localhost:3000/','2010-08-20 16:43:41','2010-08-20 16:43:41',1,NULL),(65,'Dwarf Fortress Wiki:Centralized Discussion - Dwarf Fortress Wiki','http://df.magmawiki.com/index.php/Dwarf_Fortress_Wiki:Centralized_Discussion','2010-08-21 06:18:17','2010-08-21 06:18:17',1,NULL),(66,'Dwarf Fortress Wiki','http://df.magmawiki.com/index.php/Main_Page','2010-08-21 06:50:43','2010-08-21 06:50:43',1,NULL),(67,'Hacker News','http://news.ycombinator.com/','2010-08-21 06:51:29','2010-08-21 06:51:29',1,NULL),(68,'Title','file:///home/shawn/Desktop/Title.html','2010-08-21 07:50:18','2010-08-21 07:50:18',1,NULL),(69,'AUR (en) - kernel26-ck','http://aur.archlinux.org/packages.php?ID=32877','2010-08-21 07:59:57','2010-08-21 07:59:57',1,NULL),(70,'Hacker News','http://news.ycombinator.com/x?fnid=uDspqutqWm','2010-08-21 08:24:30','2010-08-21 08:24:30',1,NULL),(71,'Hacker News','http://news.ycombinator.com/x?fnid=vpPZpiQyTq','2010-08-21 08:25:02','2010-08-21 08:25:02',1,NULL),(72,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page4','2010-08-21 08:25:47','2010-08-21 08:25:47',1,NULL),(73,'Hacker News','http://news.ycombinator.com/x?fnid=hv4A2mO1tQ','2010-08-21 08:44:37','2010-08-21 08:44:37',1,NULL),(74,'Hacker News','http://news.ycombinator.com/x?fnid=wIoO7Kfnsb','2010-08-21 08:46:52','2010-08-21 08:46:52',1,NULL),(75,'Hacker News','http://news.ycombinator.com/x?fnid=qEG6JFvKjh','2010-08-21 08:51:21','2010-08-21 08:51:21',1,NULL),(76,'Hacker News','http://news.ycombinator.com/x?fnid=9qs7xe1A0D','2010-08-21 09:00:14','2010-08-21 09:00:14',1,NULL),(77,'Gizmodo, the Gadget Guide','http://gizmodo.com/','2010-08-22 05:07:33','2010-08-22 05:07:33',1,NULL),(78,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/','2010-08-22 05:09:44','2010-08-22 05:09:44',1,NULL),(79,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/?p=2','2010-08-22 05:11:17','2010-08-22 05:11:17',1,NULL),(80,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/?p=3','2010-08-22 05:12:16','2010-08-22 05:12:16',1,NULL),(81,'Lifehacker, tips and downloads for getting things done','http://lifehacker.com/?p=9','2010-08-22 05:45:27','2010-08-22 05:45:27',1,NULL),(82,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page5','2010-08-22 05:49:57','2010-08-22 05:49:57',1,NULL),(83,'rails unique find - Google Search','http://www.google.com.sg/search?q=rails+unique+find&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-US:official&client=firefox-a','2010-08-22 06:24:41','2010-08-22 06:24:41',1,NULL),(84,'rails unique find - Google Search','http://www.google.com.sg/search?q=rails+unique+find&hl=en&safe=off&client=firefox-a&hs=Dd4&rls=org.mozilla:en-US:official&ei=9sFwTN-sKovuvQO78bhB&start=10&sa=N','2010-08-22 06:25:55','2010-08-22 06:25:55',1,NULL),(85,'rails unique find - Google Search','http://www.google.com.sg/search?q=rails+unique+find&hl=en&safe=off&client=firefox-a&rls=org.mozilla:en-US:official&ei=2cJwTOqjIYS4vQOLmK1B&start=20&sa=N','2010-08-22 06:27:24','2010-08-22 06:27:24',1,NULL),(86,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/page6','2010-08-22 06:29:09','2010-08-22 06:29:09',1,NULL),(87,'benjamin tan wei hao - Google Search','http://www.google.com.sg/search?hl=en&safe=off&client=firefox-a&hs=QNl&rls=org.mozilla%3Aen-US%3Aofficial&q=benjamin+tan+wei+hao&aq=f&aqi=&aql=&oq=&gs_rfai=','2010-08-22 08:34:58','2010-08-22 08:34:58',1,NULL),(88,'benjamin tan wei hao - Google Search','http://www.google.com.sg/search?q=benjamin+tan+wei+hao&hl=en&safe=off&client=firefox-a&hs=ZNl&rls=org.mozilla:en-US:official&prmd=o&ei=MddwTOavEoOWuAOrkbFC&start=10&sa=N','2010-08-22 08:36:40','2010-08-22 08:36:40',1,NULL),(89,'Hacker News','http://news.ycombinator.com/x?fnid=IVzsIuZY0K','2010-08-22 08:46:13','2010-08-22 08:46:13',1,NULL),(90,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index.html','2010-08-22 10:00:25','2010-08-22 10:00:25',1,NULL),(91,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=2.htmx','2010-08-22 10:01:35','2010-08-22 10:01:35',1,NULL),(92,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=3.htmx','2010-08-22 10:03:36','2010-08-22 10:03:36',1,NULL),(93,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=4.htmx','2010-08-22 10:04:35','2010-08-22 10:04:35',1,NULL),(94,'Ajaxian','http://ajaxian.com/','2010-08-23 04:29:13','2010-08-23 04:29:13',1,NULL),(95,'Ajaxian','http://ajaxian.com/page/2','2010-08-23 04:33:58','2010-08-23 04:33:58',1,NULL),(96,'Ajaxian','http://ajaxian.com/page/3','2010-08-23 04:34:40','2010-08-23 04:34:40',1,NULL),(97,'FIFA.com - FIFA News Centre','http://www.fifa.com/newscentre/news/index,page=5.htmx','2010-08-23 04:35:39','2010-08-23 04:35:39',1,NULL),(98,'Hacker News','http://news.ycombinator.com/x?fnid=9UUaHit9vB','2010-08-23 04:59:31','2010-08-23 04:59:31',1,NULL);
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

-- Dump completed on 2010-08-23 22:48:08
