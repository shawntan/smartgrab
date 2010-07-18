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
  `page_id` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `xpath` varchar(1024) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` VALUES (5,1,'1','/html/body/table[1]/tbody[1]/tr[1]/td[1]/ol[1]/li','2010-07-07 16:41:38','2010-07-07 16:41:38'),(8,6,'Test 3','/html/body/table[1]/tbody[1]/tr[1]/td[1]/ol[1]/li','2010-07-07 21:35:52','2010-07-07 21:35:52'),(9,6,'Test 5','/html/body/table[1]/tbody[1]/tr[1]/td[1]/ol[1]/li','2010-07-07 21:36:02','2010-07-07 21:36:02'),(26,6,'Test 6 (ULs only)','/html/body/table[1]/tbody[1]/tr[1]/td/ul[1]/li','2010-07-09 15:42:20','2010-07-09 15:42:20'),(27,6,'TDs (I think)','/html/body/table[1]/tbody[1]/tr[1]/td','2010-07-09 15:56:22','2010-07-09 15:56:22'),(28,6,'TDs (I think) so','/html/body/table[1]/tbody[1]/tr[1]/td','2010-07-09 15:56:51','2010-07-09 15:56:51'),(30,6,'test','/html/body/table[1]/tbody[1]/tr[1]/td/ol[1]/li','2010-07-09 16:03:50','2010-07-09 16:03:50'),(31,6,'test','/html/body/table[1]/tbody[1]/tr[1]/td/ol[1]/li','2010-07-09 16:04:09','2010-07-09 16:04:09'),(36,6,'LAST ITEM','/html/body/table[1]/tbody[1]/tr[1]/td//li[last()]','2010-07-09 16:08:07','2010-07-09 16:08:07'),(38,6,'Test ','/html/body/table[1]/tbody[1]/tr[1]/td/ul[1]/li','2010-07-10 07:21:47','2010-07-10 07:21:47'),(39,6,'adsfasdf','','2010-07-12 04:20:15','2010-07-12 04:20:15'),(63,6,'More TESTS','/html/body/table[1]/tbody[1]/tr[1]/td','2010-07-12 07:11:46','2010-07-12 07:11:46'),(65,11,'Label Name','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/h3[contains(concat(\' \',@class,\' \'),\' r \')]/a[contains(concat(\' \',@class,\' \'),\' l \')]','2010-07-12 07:44:07','2010-07-12 07:44:07'),(66,11,'search words','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/h3[contains(concat(\' \',@class,\' \'),\' r \')]/a[contains(concat(\' \',@class,\' \'),\' l \')]/em','2010-07-12 07:44:50','2010-07-12 07:44:50'),(67,12,'News Links','//ul[@id=\'lev2Menu\']/li/a[1]','2010-07-12 07:48:27','2010-07-12 07:48:27'),(68,12,'Headlines','//div[@id=\'bodyContent\']/div[contains(concat(\' \',@class,\' \'),\' row \')]/div[contains(concat(\' \',@class,\' \'),\' grid_4 \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[contains(concat(\' \',@class,\' \'),\' bC \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[','2010-07-12 07:49:09','2010-07-12 07:49:09'),(69,12,'Label Name','//div[@id=\'bodyContent\']/div[contains(concat(\' \',@class,\' \'),\' row \')]/div[contains(concat(\' \',@class,\' \'),\' grid_4 \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[contains(concat(\' \',@class,\' \'),\' bH \')]/a[1]/h2[1]','2010-07-12 07:54:09','2010-07-12 07:54:09'),(71,12,'Featured Pictures','//div[@id=\'bodyContent\']/div[contains(concat(\' \',@class,\' \'),\' row \')]/div[contains(concat(\' \',@class,\' \'),\' grid_4 \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[contains(concat(\' \',@class,\' \'),\' bC \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[1]/ul[contains(concat(\' \',@class,\' \'),\' newslTop \')]/li[1]/a[1]/img[1]','2010-07-12 08:00:27','2010-07-12 08:00:27'),(72,13,'Headlines','//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[contains(concat(\' \',@class,\' \'),\' columnGroup \')]/div[contains(concat(\' \',@class,\' \'),\' story \')]/h3[1]/a[1]','2010-07-12 10:46:16','2010-07-12 10:46:16'),(73,14,'Titles','//div[@id=\'wrapper\']/div[1]/div[contains(concat(\' \',@class,\' \'),\' news-summary \')]/div[contains(concat(\' \',@class,\' \'),\' news-body \')]/h3[1]/a[contains(concat(\' \',@class,\' \'),\' offsite \')]','2010-07-12 11:29:57','2010-07-12 11:29:57'),(75,14,'Top In All Topics','//div[@id=\'topten-list\']/div[contains(concat(\' \',@class,\' \'),\' news-summary \')]/h3[1]/a[1]','2010-07-12 12:12:53','2010-07-12 12:12:53'),(76,14,'Sections','//div[@id=\'h-pri\']/ul[1]/li[contains(concat(\' \',@class,\' \'),\' h-drop \')]/a[1]/strong[1]','2010-07-12 12:14:36','2010-07-12 12:14:36'),(77,15,'Latest Headlines','//div[@id=\'firehoselist\']/div[contains(concat(\' \',@class,\' \'),\' fhitem \')]/h3[contains(concat(\' \',@class,\' \'),\' story \')]/span[contains(concat(\' \',@class,\' \'),\' cnin \')]/a[contains(concat(\' \',@class,\' \'),\' datitle \')]','2010-07-12 12:15:34','2010-07-12 12:15:34'),(78,15,'Label Name','//div[@id=\'firehoselist\']/div[contains(concat(\' \',@class,\' \'),\' fhitem \')]/div[contains(concat(\' \',@class,\' \'),\' details \')]/small[1]/a[1]','2010-07-12 12:16:51','2010-07-12 12:16:51'),(79,12,'Headlines','//div[@id=\'bodyContent\']/div[contains(concat(\' \',@class,\' \'),\' row \')]/div[contains(concat(\' \',@class,\' \'),\' grid_4 \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[contains(concat(\' \',@class,\' \'),\' bC \')]/div[contains(concat(\' \',@class,\' \'),\'  \')]/div[1]/ul/li/h3[1]/a[1]','2010-07-12 12:20:20','2010-07-12 12:20:20'),(80,16,'Score','//div[@id=\'fwcMatchHeader\']/div[2]/div[2]','2010-07-12 12:21:34','2010-07-12 12:21:34'),(81,13,'Headlines Test','/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div/div//a[1]','2010-07-13 02:42:37','2010-07-13 02:42:37'),(82,13,'Images','//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[2]/div[contains(concat(\' \',@class,\' \'),\' story \')]/div[contains(concat(\' \',@class,\' \'),\' thumbnail \')]/a[1]/img[1]','2010-07-13 02:47:28','2010-07-13 02:47:28'),(83,NULL,NULL,NULL,'2010-07-13 03:03:07','2010-07-13 03:03:07'),(84,17,'Headlines','//div[@id=\'bodyContent\']/div[1]/div[2]/div[1]/ul[1]/li[contains(concat(\' \',@class,\' \'),\'  \')]/h3[1]/a[1]','2010-07-13 03:11:02','2010-07-13 03:11:02'),(85,17,'Summary','//div[@id=\'bodyContent\']/div[1]/div[2]/div[1]/ul[1]/li[contains(concat(\' \',@class,\' \'),\'  \')]/p[3]','2010-07-13 03:12:21','2010-07-13 03:12:21'),(86,18,'Title','//div[@id=\'title\']/h1[1]/span[1]','2010-07-13 05:22:20','2010-07-13 05:22:20'),(87,18,'Author','//p[@id=\'byline\']/a[1]','2010-07-13 05:22:28','2010-07-13 05:22:28'),(88,13,'Label Name','//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[contains(concat(\' \',@class,\' \'),\' columnGroup \')]/div/p[contains(concat(\' \',@class,\' \'),\' summary \')]','2010-07-13 05:48:48','2010-07-13 05:48:48'),(94,20,'Test','/html/body/table[2]/tbody[1]/tr[1]/td[2]/table[1]/tbody[1]/tr[1]/td[1]/table[3]/tbody[1]/tr[1]/td[1]/table[2]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[1]/pre[1]','2010-07-13 06:21:46','2010-07-13 06:21:46'),(95,20,'','','2010-07-13 06:21:48','2010-07-13 06:21:48'),(96,20,'','','2010-07-13 06:21:48','2010-07-13 06:21:48'),(97,20,'','','2010-07-13 06:21:49','2010-07-13 06:21:49'),(98,13,'HEadlines with Rejection','/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div/div//a[1][not(.=//table[@id=\'TwoWeekCalendar-ab\']/tbody[1]/tr/td/a[1])][not(.=//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[contains(concat(\' \',@class,\' \'),\' columnGroup \')]/div/ul[contains(concat(\' \',@class,\' \'),\' refer \')]/li[last()]/span[contains(concat(\' \',@class,\' \'),\' commentCountLink \')]/a[1])][not(.=//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[2]/div[contains(concat(\' \',@class,\' \'),\' story \')]/ul[contains(concat(\' \',@class,\' \'),\' refer \')]/li/a[1])]','2010-07-13 08:01:44','2010-07-13 08:05:59'),(99,25,'Categories','','2010-07-14 12:37:29','2010-07-14 12:37:29'),(100,13,'Headlines Improved','/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div/div//a[1])[not(.=(//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[2]/div[6]/div[1]/a[1] | //div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[contains(concat(\' \',@class,\' \'),\' columnGroup \')]/div/ul[1]/li/a[1] | //table[@id=\'TwoWeekCalendar-ab\']/tbody[1]/tr/td/a[1]))]','2010-07-14 13:13:27','2010-07-14 13:31:14'),(101,13,'HeadLines Improved II','','2010-07-14 13:38:31','2010-07-14 13:38:31'),(102,13,'Headlines Improved III','(/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div/div//a[1])[not(.=(//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[contains(concat(\' \',@class,\' \'),\' columnGroup \')]/div/ul[1]/li/a[1] | //table[@id=\'TwoWeekCalendar-ab\']/tbody[1]/tr/td/a[1]))]','2010-07-14 13:44:57','2010-07-14 13:44:57'),(103,26,'Top Stories Headlines','//div[@id=\'basecolour_bn\']/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[3]/div[2]/h1/a[1]','2010-07-14 13:55:42','2010-07-14 13:55:42'),(104,26,'Top Stories Summary','//div[@id=\'basecolour_bn\']/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[3]/div[2]/p','2010-07-14 13:56:09','2010-07-14 13:56:09'),(105,26,'Top Stories Headlines','//div[@id=\'basecolour_bn\']/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[3]/div[2]//a[1]','2010-07-14 13:56:30','2010-07-14 13:56:30'),(106,13,'Headlines WITH REJECTION!!!!! 4','(/html/body/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div/div//a[1])[not(.=(//div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[2]/div[contains(concat(\' \',@class,\' \'),\' story \')]/ul[1]/li/a[1] | //div[@id=\'main\']/div[1]/div[1]/div[1]/div[1]/div[2]/div[8]/ul[1]/li[1]/span[1]/a[1] | //table[@id=\'TwoWeekCalendar-ab\']/tbody[1]/tr/td/a[1]))]','2010-07-15 02:29:52','2010-07-15 02:29:52'),(107,30,'Top Stories','//div[@id=\'basecolour_bn\']/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[3]/div[2]//a[1]','2010-07-15 02:34:58','2010-07-15 02:34:58'),(108,6,'Test','/html/body/table[1]/tbody[1]/tr[1]/td[2]/ul[1]/li','2010-07-15 04:07:11','2010-07-15 04:07:11'),(109,32,'Add','(//div[@id=\'sidebar\']/div[5]/div[1]/div[contains(concat(\' \',@class,\' \'),\' spacer \')]/a[1])[not(.=(//div[@id=\'sidebar\']/div[5]/div[1]/div[19]/a[1]))]','2010-07-15 06:29:17','2010-07-15 06:29:17');
/*!40000 ALTER TABLE `annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extractors`
--

DROP TABLE IF EXISTS `extractors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extractors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractors`
--

LOCK TABLES `extractors` WRITE;
/*!40000 ALTER TABLE `extractors` DISABLE KEYS */;
/*!40000 ALTER TABLE `extractors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (1,'Title of Article',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(2,'Date/Time of Article',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(3,'Reporter Name',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(4,'Source Station',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(5,'Country where news occurred',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(6,'Image supporting contents of article',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(7,'Link supporting contents article',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(8,'Main content of article',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(9,'Supporting content of article',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(10,'Subheaders',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(11,'Links to related articles',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(12,'Newsletter',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(13,'Site images',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(14,'Site content',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(15,'Site links/navigation',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(16,'Ads',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54'),(17,'Search',NULL,'2010-05-14 12:32:54','2010-05-14 12:32:54');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_associations`
--

DROP TABLE IF EXISTS `page_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `extractor_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_associations`
--

LOCK TABLES `page_associations` WRITE;
/*!40000 ALTER TABLE `page_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_associations` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'.js.erb VS .js - Stack Overflow','http://stackoverflow.com/questions/1127697/js-erb-vs-js','2010-05-14 13:33:53','2010-05-14 13:33:53'),(2,'Google','http://www.google.com','2010-07-05 14:22:44','2010-07-05 14:22:44'),(3,'Google','http://www.google.coasdfm','2010-07-05 14:29:12','2010-07-05 14:29:12'),(4,'Google','http://www.google.co','2010-07-05 14:29:23','2010-07-05 14:29:23'),(5,NULL,'shit','2010-07-06 06:09:47','2010-07-06 06:09:47'),(6,'Title','file:///home/shawn/Desktop/Title.html','2010-07-06 08:27:51','2010-07-06 08:27:51'),(7,'Eclipse Productions','http://eclipse.speedsubs.org/projects/alchemist','2010-07-06 12:04:10','2010-07-06 12:04:10'),(8,'Mayflower Scout Group Singapore','http://mayflowerscout.org/development/','2010-07-06 12:08:38','2010-07-06 12:08:38'),(9,'ajax using script tags - Google Search','http://www.google.com.sg/search?q=ajax using script tags','2010-07-06 12:16:02','2010-07-06 12:16:02'),(10,'adfadf','adfadsf','2010-07-07 18:16:15','2010-07-07 18:16:15'),(11,'root url rails - Google Search','http://www.google.com.sg/search?sourceid=chrome&ie=UTF-8&q=root+url+rails','2010-07-12 07:38:36','2010-07-12 07:38:36'),(12,'FIFA.com - 2010 FIFA World Cup South Africa™ news','http://www.fifa.com/worldcup/news/index.html','2010-07-12 07:46:28','2010-07-12 07:46:28'),(13,'International News - The New York Times','http://www.nytimes.com/pages/world/index.html','2010-07-12 10:45:37','2010-07-12 10:45:37'),(14,'Digg - The Latest News Headlines, Videos and Images','http://digg.com/','2010-07-12 11:29:31','2010-07-12 11:29:31'),(15,'Slashdot Stories (10)','http://slashdot.org/','2010-07-12 12:15:14','2010-07-12 12:15:14'),(16,'FIFA.com - Netherlands-Spain - The matches of 2010 FIFA World Cup South Africa','http://www.fifa.com/worldcup/matches/round=249721/match=300061509/index.html','2010-07-12 12:21:24','2010-07-12 12:21:24'),(17,'FIFA.com','http://www.fifa.com/worldcup/news/news.html','2010-07-13 03:06:40','2010-07-13 03:06:40'),(18,'What does !important mean in CSS?','http://webdesign.about.com/od/css/f/blcssfaqimportn.htm','2010-07-13 05:21:53','2010-07-13 05:21:53'),(19,'Islamists Claim Attack in Uganda - NYTimes.com','http://www.nytimes.com/2010/07/13/world/africa/13uganda.html?_r=1','2010-07-13 05:41:02','2010-07-13 05:41:02'),(20,'CodeToad - Javascript - Enable and Disable form elements.','http://www.codetoad.com/javascript/enable_disable_form_element.asp','2010-07-13 06:21:35','2010-07-13 06:21:35'),(21,'Annotations: index','http://localhost:3000/annotations','2010-07-13 06:29:10','2010-07-13 06:29:10'),(22,'document.evaluate - MDC','https://developer.mozilla.org/en/DOM/document.evaluate','2010-07-13 13:12:56','2010-07-13 13:12:56'),(23,'Aptana RadRails','http://localhost:3000/','2010-07-14 06:57:46','2010-07-14 06:57:46'),(24,'Simple Goods - Web Standards Solutions: The Markup and Style Handbook, Special Edition','http://astore.amazon.com/simplebits-20/detail/1430219203','2010-07-14 12:35:10','2010-07-14 12:35:10'),(25,'Simple Goods - CSS','http://astore.amazon.com/simplebits-20?_encoding=UTF8&node=3','2010-07-14 12:35:25','2010-07-14 12:35:25'),(26,'The Straits Times','http://www.straitstimes.com/BreakingNews/Breaking_News_Top_Stories_20100714.html','2010-07-14 13:55:27','2010-07-14 13:55:27'),(27,'Breaking News','http://www.straitstimes.com/BreakingNews/Singapore/Singapore_20100714.html','2010-07-14 13:57:11','2010-07-14 13:57:11'),(28,'Treehouse wins award','http://www.straitstimes.com/BreakingNews/Singapore/Story/STIStory_553424.html','2010-07-14 13:57:41','2010-07-14 13:57:41'),(29,'Afghans to Form Local Forces to Fight Taliban - NYTimes.com','http://www.nytimes.com/2010/07/15/world/asia/15afghan.html?_r=1&ref=world','2010-07-15 02:17:33','2010-07-15 02:17:33'),(30,'The Straits Times','http://www.straitstimes.com/BreakingNews/Breaking_News_Top_Stories_20100715.html','2010-07-15 02:34:38','2010-07-15 02:34:38'),(31,'Facebook | Janet Lim','http://www.facebook.com/profile.php?id=645587532','2010-07-15 02:48:58','2010-07-15 02:48:58'),(32,'git-svn password change - Stack Overflow','http://stackoverflow.com/questions/1680582/git-svn-password-change','2010-07-15 06:28:43','2010-07-15 06:28:43'),(33,'run - Wiktionary','http://en.wiktionary.org/wiki/run','2010-07-15 07:40:32','2010-07-15 07:40:32'),(34,'fuck - Wiktionary','http://en.wiktionary.org/wiki/fuck','2010-07-15 07:43:36','2010-07-15 07:43:36');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20100513134504'),('20100513134621'),('20100513135119'),('20100514113256'),('20100514113346');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-07-18 18:55:50
