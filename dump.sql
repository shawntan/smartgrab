-- MySQL dump 10.13  Distrib 5.1.54, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: parcels_development
-- ------------------------------------------------------
-- Server version	5.1.54

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
  `extractor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `extractor_page` (`extractor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` VALUES (203,'H3s','/html/body/table[1]/tbody[1]/tr[2]/td//h3[1]','2010-12-30 04:34:44','2010-12-30 04:34:44','{\"select\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":2,\"last\":true},{\"tagName\":\"td\"},\"*\",{\"tagName\":\"h3\",\"index\":1}],\"reject\":{}}',8),(205,'Results','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/div[contains(concat(\' \',@class,\' \'),\' vsc \')]/span[contains(concat(\' \',@class,\' \'),\' tl \')]/h3[contains(concat(\' \',@class,\' \'),\' r \')]/a[contains(concat(\' \',@class,\' \'),\' l \')]','2010-12-30 05:18:36','2010-12-30 08:28:00','{\"select\":[{\"id\":\"main\",\"tagName\":\"div\",\"index\":3},{\"id\":\"cnt\",\"tagName\":\"div\",\"index\":2,\"last\":true},{\"id\":\"nr_container\",\"tagName\":\"div\",\"index\":3},{\"id\":\"center_col\",\"tagName\":\"div\",\"index\":1},{\"id\":\"res\",\"tagName\":\"div\",\"classes\":[\"med\"],\"index\":1,\"last\":true},{\"id\":\"ires\",\"tagName\":\"div\",\"index\":2},{\"tagName\":\"ol\",\"index\":1,\"last\":true},{\"tagName\":\"li\",\"classes\":[\"g\",\"w0\",\"knavi\"]},{\"tagName\":\"div\",\"classes\":[\"vsc\"],\"index\":1},{\"tagName\":\"span\",\"classes\":[\"tl\"],\"index\":1},{\"tagName\":\"h3\",\"classes\":[\"r\"],\"index\":1},{\"tagName\":\"a\",\"classes\":[\"l\"],\"index\":1,\"last\":true}],\"reject\":{}}',9),(206,'Brief','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/div[contains(concat(\' \',@class,\' \'),\' vsc \')]/div[contains(concat(\' \',@class,\' \'),\' s \')]','2010-12-30 08:02:08','2010-12-30 08:28:17','{\"select\":[{\"id\":\"main\",\"tagName\":\"div\",\"index\":3},{\"id\":\"cnt\",\"tagName\":\"div\",\"index\":2,\"last\":true},{\"id\":\"nr_container\",\"tagName\":\"div\",\"index\":3},{\"id\":\"center_col\",\"tagName\":\"div\",\"index\":1},{\"id\":\"res\",\"tagName\":\"div\",\"classes\":[\"med\"],\"index\":1,\"last\":true},{\"id\":\"ires\",\"tagName\":\"div\",\"index\":2},{\"tagName\":\"ol\",\"index\":1,\"last\":true},{\"tagName\":\"li\",\"classes\":[\"g\",\"w0\",\"knavi\"]},{\"tagName\":\"div\",\"classes\":[\"vsc\"],\"index\":1},{\"tagName\":\"div\",\"classes\":[\"s\"],\"index\":2,\"last\":true}],\"reject\":{}}',9),(207,'Entries','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[3]/a[1]','2010-12-30 08:20:41','2010-12-30 08:20:41','{\"select\":[{\"tagName\":\"center\",\"index\":1},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":3},{\"tagName\":\"td\",\"index\":1,\"last\":true},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\"},{\"tagName\":\"td\",\"classes\":[\"title\"],\"index\":3,\"last\":true},{\"tagName\":\"a\",\"index\":1}],\"reject\":{}}',12),(209,'Poster','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[contains(concat(\' \',@class,\' \'),\' subtext \')]/a[1]','2010-12-31 07:02:35','2010-12-31 07:02:35','{\"select\":[{\"tagName\":\"center\",\"index\":1},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":3},{\"tagName\":\"td\",\"index\":1,\"last\":true},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\"},{\"tagName\":\"td\",\"classes\":[\"subtext\"],\"index\":2,\"last\":true},{\"tagName\":\"a\",\"index\":1}],\"reject\":{}}',12),(210,'Comments','/html/body/center[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr/td[contains(concat(\' \',@class,\' \'),\' subtext \')]/a[2]','2010-12-31 07:24:31','2010-12-31 07:24:31','{\"select\":[{\"tagName\":\"center\",\"index\":1},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":3},{\"tagName\":\"td\",\"index\":1,\"last\":true},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\"},{\"tagName\":\"td\",\"classes\":[\"subtext\"],\"index\":2,\"last\":true},{\"tagName\":\"a\",\"index\":2,\"last\":true}],\"reject\":{}}',12),(211,'Test','//div[@id=\'content\']/div[contains(concat(\' \',@class,\' \'),\' post \')]/h2[contains(concat(\' \',@class,\' \'),\' entry-title \')]/a[1]','2010-12-31 08:52:13','2010-12-31 08:52:13','{\"select\":[{\"id\":\"wrapper\",\"tagName\":\"div\",\"classes\":[\"hfeed\"],\"index\":1},{\"id\":\"main\",\"tagName\":\"div\",\"index\":2},{\"id\":\"container\",\"tagName\":\"div\",\"index\":1},{\"id\":\"content\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"post\",\"type-post\",\"hentry\"]},{\"tagName\":\"h2\",\"classes\":[\"entry-title\"],\"index\":1},{\"tagName\":\"a\",\"index\":1,\"last\":true}],\"reject\":{}}',0),(212,'Label Name','','2010-12-31 08:53:52','2010-12-31 08:53:52','',0),(213,'Reddit Headlines','//div[@id=\'siteTable\']/div[contains(concat(\' \',@class,\' \'),\' thing \')]/div[contains(concat(\' \',@class,\' \'),\' entry \')]/p[contains(concat(\' \',@class,\' \'),\' title \')]/a[contains(concat(\' \',@class,\' \'),\' title \')]','2010-12-31 09:10:39','2010-12-31 09:10:39','{\"select\":[{\"tagName\":\"div\",\"index\":4,\"classes\":[\"content\"]},{\"tagName\":\"div\",\"index\":1,\"id\":\"siteTable\",\"classes\":[\"sitetable\",\"linklisting\"]},{\"tagName\":\"div\",\"index\":1,\"classes\":[\"thing\",\"id-t3_etptd\",\"even\",\"odd\",\"link\"]},{\"tagName\":\"div\",\"index\":2,\"classes\":[\"entry\",\"unvoted\"]},{\"tagName\":\"p\",\"index\":1,\"classes\":[\"title\"]},{\"tagName\":\"a\",\"index\":1,\"classes\":[\"title\",\"click\"]}],\"reject\":{}}',13),(214,'Details','//div[@id=\'siteTable\']/div[contains(concat(\' \',@class,\' \'),\' thing \')]/div[contains(concat(\' \',@class,\' \'),\' entry \')]/p[contains(concat(\' \',@class,\' \'),\' tagline \')]','2010-12-31 09:10:52','2010-12-31 09:10:52','{\"select\":[{\"tagName\":\"div\",\"index\":4,\"classes\":[\"content\"]},{\"tagName\":\"div\",\"index\":1,\"id\":\"siteTable\",\"classes\":[\"sitetable\",\"linklisting\"]},{\"tagName\":\"div\",\"index\":1,\"classes\":[\"thing\",\"id-t3_etptd\",\"even\",\"odd\",\"link\"]},{\"tagName\":\"div\",\"index\":2,\"classes\":[\"entry\",\"unvoted\"]},{\"tagName\":\"p\",\"index\":2,\"classes\":[\"tagline\"]}],\"reject\":{}}',13),(215,'Results-2','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/div[1]/span[1]/h3[1]/a[1]','2011-01-01 14:52:16','2011-01-01 14:52:16','{\"select\":[{\"id\":\"main\",\"tagName\":\"div\",\"index\":1},{\"id\":\"cnt\",\"tagName\":\"div\",\"index\":2},{\"id\":\"nr_container\",\"tagName\":\"div\",\"index\":3},{\"id\":\"center_col\",\"tagName\":\"div\",\"index\":1},{\"id\":\"res\",\"tagName\":\"div\",\"classes\":[\"med\"],\"index\":1,\"last\":true},{\"id\":\"ires\",\"tagName\":\"div\",\"index\":2},{\"tagName\":\"ol\",\"index\":1,\"last\":true},{\"tagName\":\"li\",\"classes\":[\"g\",\"w0\"]},{\"tagName\":\"div\",\"classes\":[\"vsc\"],\"index\":1,\"last\":true},{\"tagName\":\"span\",\"classes\":[\"tl\"],\"index\":1},{\"tagName\":\"h3\",\"classes\":[\"r\"],\"index\":1},{\"tagName\":\"a\",\"classes\":[\"l\"],\"index\":1,\"last\":true}],\"reject\":{}}',9),(216,'Entries','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/div[1]/span[1]/h3[1]/a[1]','2011-01-01 15:07:32','2011-01-01 15:13:58','{\"select\":[{\"id\":\"cnt\",\"tagName\":\"div\",\"index\":2},{\"id\":\"nr_container\",\"tagName\":\"div\",\"index\":3},{\"id\":\"center_col\",\"tagName\":\"div\",\"index\":1},{\"id\":\"res\",\"tagName\":\"div\",\"classes\":[\"med\"],\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":2},{\"id\":\"ires\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"ol\",\"index\":1,\"last\":true},{\"tagName\":\"li\",\"classes\":[\"g\"]},{\"tagName\":\"div\",\"classes\":[\"vsc\"],\"index\":1,\"last\":true},{\"tagName\":\"span\",\"classes\":[\"tl\"],\"index\":1,\"last\":true},{\"tagName\":\"h3\",\"classes\":[\"r\"],\"index\":1},{\"tagName\":\"a\",\"classes\":[\"l\",\"parcels_listshow\"],\"index\":1,\"last\":true}],\"reject\":{}}',22),(217,'Entry-2','//div[@id=\'ires\']/ol[1]/li[contains(concat(\' \',@class,\' \'),\' g \')]/div[1]/span[1]/h3[1]/a[1]','2011-01-01 15:21:01','2011-01-01 15:21:01','{\"reject\":{},\"select\":[{\"id\":\"cnt\",\"tagName\":\"div\",\"index\":2},{\"id\":\"nr_container\",\"tagName\":\"div\",\"index\":3},{\"id\":\"center_col\",\"tagName\":\"div\",\"index\":1},{\"id\":\"res\",\"tagName\":\"div\",\"classes\":[\"med\"],\"index\":1,\"last\":true},{\"id\":\"ires\",\"tagName\":\"div\",\"index\":2},{\"tagName\":\"ol\",\"index\":1,\"last\":true},{\"tagName\":\"li\",\"classes\":[\"g\"]},{\"tagName\":\"div\",\"classes\":[\"vsc\"],\"index\":1,\"last\":true},{\"tagName\":\"span\",\"classes\":[\"tl\"],\"index\":1,\"last\":true},{\"tagName\":\"h3\",\"classes\":[\"r\"],\"index\":1},{\"tagName\":\"a\",\"classes\":[\"l\"],\"index\":1,\"last\":true}]}',22),(219,'Author','//div[@id=\'rightResultsATF\']/div/div[contains(concat(\' \',@class,\' \'),\' list \')]/div[contains(concat(\' \',@class,\' \'),\' result \')]/div[3]/div[1]/span[1]','2011-01-04 07:46:07','2011-01-04 07:46:07','{\"select\":[{\"id\":\"searchTemplate\",\"tagName\":\"div\",\"classes\":[\"searchTemplate\",\"listLayout\"],\"index\":4},{\"id\":\"rightContainerATF\",\"tagName\":\"div\",\"index\":1},{\"id\":\"rightResultsATF\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\"},{\"tagName\":\"div\",\"classes\":[\"list\",\"results\"]},{\"tagName\":\"div\",\"classes\":[\"result\",\"product\"]},{\"tagName\":\"div\",\"classes\":[\"data\"],\"index\":3,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"title\"],\"index\":1},{\"tagName\":\"span\",\"classes\":[\"ptBrand\"],\"index\":1}],\"reject\":{}}',23),(220,'Price','//div[@id=\'rightResultsATF\']/div/div[contains(concat(\' \',@class,\' \'),\' list \')]/div[contains(concat(\' \',@class,\' \'),\' result \')]/div[3]/div[2]/span[1]','2011-01-04 07:46:26','2011-01-04 07:46:26','{\"select\":[{\"id\":\"searchTemplate\",\"tagName\":\"div\",\"classes\":[\"searchTemplate\",\"listLayout\"],\"index\":4},{\"id\":\"rightContainerATF\",\"tagName\":\"div\",\"index\":1},{\"id\":\"rightResultsATF\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\"},{\"tagName\":\"div\",\"classes\":[\"list\",\"results\"]},{\"tagName\":\"div\",\"classes\":[\"result\",\"product\"]},{\"tagName\":\"div\",\"classes\":[\"data\"],\"index\":3,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"newPrice\"],\"index\":2},{\"tagName\":\"span\",\"classes\":[\"price\"],\"index\":1,\"last\":true}],\"reject\":{}}',23),(221,'Posters','/html/body/div/div[2]/div[2]/div/table[1]/tbody[1]/tr[1]/td[2]//table[1]/tbody[1]/tr[1]/td[last()]/div[1]/div[3]/a[1]','2011-01-05 03:46:31','2011-01-05 03:46:31','{\"select\":[{\"tagName\":\"div\"},{\"tagName\":\"div\",\"index\":2},{\"tagName\":\"div\",\"index\":2},{\"tagName\":\"div\"},{\"tagName\":\"table\",\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1},{\"tagName\":\"td\",\"index\":2,\"last\":true},\"*\",{\"tagName\":\"table\",\"classes\":[\"fw\"],\"index\":1,\"last\":true},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\",\"classes\":[\"post-signature\"],\"last\":true},{\"tagName\":\"div\",\"classes\":[\"user-info\"],\"index\":1,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"user-details\"],\"index\":3,\"last\":true},{\"tagName\":\"a\",\"index\":1}],\"reject\":{}}',24),(222,'Titles','//div[@id=\'posts\']/div[contains(concat(\' \',@class,\' \'),\' post \')]/h2[1]/a[1]','2011-01-05 04:00:43','2011-01-05 04:00:43','{\"select\":[{\"id\":\"container\",\"tagName\":\"div\",\"index\":1},{\"id\":\"content\",\"tagName\":\"div\",\"index\":4},{\"id\":\"posts\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"post\"]},{\"tagName\":\"h2\",\"index\":1},{\"tagName\":\"a\",\"index\":1,\"last\":true}],\"reject\":{}}',26),(223,'Title','//div[@id=\'content\']/div[1]/h1[1]','2011-01-05 04:05:25','2011-01-05 04:05:25','{\"select\":[{\"tagName\":\"div\",\"index\":1,\"id\":\"bodyContent\"},{\"tagName\":\"div\",\"index\":1,\"id\":\"content\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"classes\":[\"description\"]},{\"tagName\":\"h1\",\"index\":1}],\"reject\":{}}',18),(225,'Picture','//div[@id=\'atfResults\']/div[contains(concat(\' \',@class,\' \'),\' result \')]/div[2]/a[1]/img[1]','2011-01-05 04:42:12','2011-01-05 04:42:12','{\"select\":[{\"id\":\"searchTemplate\",\"tagName\":\"div\",\"classes\":[\"searchTemplate\",\"listLayout\"],\"index\":5},{\"id\":\"rightContainerATF\",\"tagName\":\"div\",\"index\":1},{\"id\":\"rightResultsATF\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"id\":\"center\",\"tagName\":\"div\",\"index\":1},{\"id\":\"atfResults\",\"tagName\":\"div\",\"classes\":[\"list\",\"results\"],\"index\":5,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"result\",\"product\"]},{\"tagName\":\"div\",\"classes\":[\"image\"],\"index\":2},{\"tagName\":\"a\",\"index\":1,\"last\":true},{\"tagName\":\"img\",\"classes\":[\"productImage\"],\"index\":1,\"last\":true}],\"reject\":{}}',23),(226,'Title','//div[@id=\'atfResults\']/div[contains(concat(\' \',@class,\' \'),\' result \')]/div[3]/div[1]/a[1]','2011-01-05 04:47:29','2011-01-05 04:47:29','{\"select\":[{\"id\":\"searchTemplate\",\"tagName\":\"div\",\"classes\":[\"searchTemplate\",\"listLayout\"],\"index\":5},{\"id\":\"rightContainerATF\",\"tagName\":\"div\",\"index\":1},{\"id\":\"rightResultsATF\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"id\":\"center\",\"tagName\":\"div\",\"index\":1},{\"id\":\"atfResults\",\"tagName\":\"div\",\"classes\":[\"list\",\"results\"],\"index\":5,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"result\",\"product\"]},{\"tagName\":\"div\",\"classes\":[\"data\"],\"index\":3,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"title\"],\"index\":1},{\"tagName\":\"a\",\"classes\":[\"title\"],\"index\":1}],\"reject\":{}}',23);
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
  `user_id` int(11) DEFAULT NULL,
  `domain` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractors`
--

LOCK TABLES `extractors` WRITE;
/*!40000 ALTER TABLE `extractors` DISABLE KEYS */;
INSERT INTO `extractors` VALUES (1,2,'www.terminally-incoherent.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,2,'localhost','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,2,'www.google.com.sg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,2,'www.velocityreviews.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,2,'news.ycombinator.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,2,'www.reddit.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,2,'chronicle.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,2,'slashdot.org','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,2,'www.tonyspencer.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,2,'api.rubyonrails.org','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,2,'ar.rubyonrails.org','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,2,'www.rubyist.net','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,2,'ruby-doc.org','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,2,'www.amazon.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,2,'groups.google.com','2011-01-05 05:39:29','2011-01-05 05:39:29');
/*!40000 ALTER TABLE `extractors` ENABLE KEYS */;
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
  `next_update` datetime DEFAULT NULL,
  `extractor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `extractor` (`extractor_id`),
  CONSTRAINT `extractor` FOREIGN KEY (`extractor_id`) REFERENCES `extractors` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (202,'Computer Science: Theory and Application','http://www.reddit.com/r/compsci/?count=100&after=t3_eac6o','2010-12-31 09:43:29','2010-12-31 09:43:29',NULL,13),(203,'reddit: the voice of the internet -- news before it happens','http://www.reddit.com/?count=25&after=t3_etyb2','2010-12-31 09:47:23','2010-12-31 09:47:23',NULL,13),(204,'reddit: the voice of the internet -- news before it happens','http://www.reddit.com/?count=50&after=t3_etwe2','2010-12-31 09:47:52','2010-12-31 09:47:52',NULL,13),(205,'Computer Science: Theory and Application','http://www.reddit.com/r/compsci/?count=125&after=t3_e6ey8','2010-12-31 10:40:28','2010-12-31 10:40:28',NULL,13),(206,'reddit: the voice of the internet -- news before it happens','http://www.reddit.com/?count=75&after=t3_eu2dc','2010-12-31 10:41:11','2010-12-31 10:41:11',NULL,13),(207,'reddit: the voice of the internet -- news before it happens','http://www.reddit.com/?count=100&after=t3_eu124','2010-12-31 10:43:49','2010-12-31 10:43:49',NULL,13),(208,'The Shadow Scholar - The Chronicle Review - The Chronicle of Higher Education','http://chronicle.com/article/The-Shadow-Scholar/125329/','2011-01-01 08:11:49','2011-01-01 08:11:49',NULL,14),(209,'Slashdot: News for nerds, stuff that matters','http://slashdot.org/','2011-01-01 08:23:04','2011-01-01 08:23:04',NULL,15),(210,'Ruby’s try{ catch } block','http://www.tonyspencer.com/2007/10/16/rubys-try-catch-block/','2011-01-01 08:37:42','2011-01-01 08:37:42',NULL,16),(212,'Class: ActiveRecord::Base','http://api.rubyonrails.org/classes/ActiveRecord/Base.html','2011-01-01 08:49:25','2011-01-01 08:49:25',NULL,18),(213,'Class: ActiveRecord::Base','http://ar.rubyonrails.org/classes/ActiveRecord/Base.html','2011-01-01 08:52:03','2011-01-01 08:52:03',NULL,19),(214,'Strings','http://www.rubyist.net/~slagell/ruby/strings.html','2011-01-01 08:59:24','2011-01-01 08:59:24',NULL,20),(215,'Class: Net::HTTP','http://ruby-doc.org/stdlib/libdoc/net/http/rdoc/classes/Net/HTTP.html','2011-01-01 09:07:15','2011-01-01 09:07:15',NULL,21),(216,'htmlunit - Google Search','http://www.google.com.sg/search?q=htmlunit&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-US:official&client=firefox-a','2011-01-01 14:51:59','2011-01-01 14:51:59',NULL,9),(219,'Amazon.com: mathematics','http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=mathematics&x=0&y=0','2011-01-04 07:44:58','2011-01-04 07:44:58',NULL,23),(220,'Amazon.com: mathematics','http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=mathematics&x=0&y=0#/ref=sr_pg_2?rh=i%3Aaps%2Ck%3Amathematics&page=2&d=1&keywords=mathematics&ie=UTF8&qid=1294145928','2011-01-04 12:59:28','2011-01-04 12:59:28',NULL,23),(224,'Class: ActiveRecord::Observer','http://api.rubyonrails.org/classes/ActiveRecord/Observer.html','2011-01-05 04:04:36','2011-01-05 04:04:36',NULL,18),(225,'Amazon.com: mathematics','http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=mathematics&x=0&y=0#/ref=sr_pg_3?rh=i%3Aaps%2Ck%3Amathematics&page=3&d=1&keywords=mathematics&ie=UTF8&qid=1294201258','2011-01-05 04:36:55','2011-01-05 04:36:55',NULL,23),(226,'Amazon.com: mathematics','http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=mathematics&x=0&y=0#/ref=sr_pg_4?rh=i%3Aaps%2Ck%3Amathematics&page=4&d=1&keywords=mathematics&ie=UTF8&qid=1294202358','2011-01-05 04:45:41','2011-01-05 04:45:41',NULL,23),(227,'Amazon.com: mathematics','http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=mathematics&x=0&y=0#/ref=sr_pg_1?rh=i%3Aaps%2Ck%3Amathematics&keywords=mathematics&ie=UTF8&qid=1294202825','2011-01-05 04:48:10','2011-01-05 04:48:10',NULL,23),(228,'Amazon.com: mathematics','http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=mathematics&x=0&y=0#/ref=sr_pg_2?rh=i%3Aaps%2Ck%3Amathematics&page=2&d=1&keywords=mathematics&ie=UTF8&qid=1294202877','2011-01-05 04:49:46','2011-01-05 04:49:46',NULL,23),(229,'Difference in minutes betwen two Datetime - Ruby on Rails: Talk | Google Groups','http://groups.google.com/group/rubyonrails-talk/browse_thread/thread/a92c6795d0505f6e?pli=1','2011-01-05 05:39:29','2011-01-05 05:39:29',NULL,27),(230,'Hacker News','http://news.ycombinator.com/x?fnid=oZkPv4xck9','2011-01-05 05:51:53','2011-01-05 05:51:53',NULL,12),(231,'Hacker News','http://news.ycombinator.com/x?fnid=dq938phQtl','2011-01-05 05:54:16','2011-01-05 05:54:16',NULL,12),(232,'rails difference in minutes - Google Search','http://www.google.com.sg/search?q=rails+difference+in+minutes&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-US:official&client=firefox-a','2011-01-05 05:56:00','2011-01-05 05:56:00',NULL,9);
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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `extractor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`extractor_id`),
  CONSTRAINT `extractor_id` FOREIGN KEY (`extractor_id`) REFERENCES `extractors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'2010-12-31 13:58:37','2010-12-31 13:58:37',9),(2,'2010-12-31 13:59:09','2010-12-31 13:59:09',9),(3,'2010-12-31 13:59:20','2010-12-31 13:59:20',9),(4,'2010-12-31 14:00:08','2010-12-31 14:00:08',9),(5,'2010-12-31 15:00:16','2010-12-31 15:00:16',12),(6,'2010-12-31 15:03:13','2010-12-31 15:03:13',12),(7,'2010-12-31 15:34:53','2010-12-31 15:34:53',12),(8,'2010-12-31 16:27:43','2010-12-31 16:27:43',9),(9,'2010-12-31 16:37:29','2010-12-31 16:37:29',9),(10,'2010-12-31 18:43:49','2010-12-31 18:43:49',13),(11,'2011-01-04 15:47:50','2011-01-04 15:47:50',23),(12,'2011-01-04 20:59:28','2011-01-04 20:59:28',23);
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
  `revision_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `annotation_id` (`annotation_id`),
  KEY `fk_datas_revisions1` (`revision_id`),
  CONSTRAINT `annotation_id` FOREIGN KEY (`annotation_id`) REFERENCES `annotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_datas_revisions1` FOREIGN KEY (`revision_id`) REFERENCES `revisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3719 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'shawntan','','shawn@wtf.sg','e50d0e82383f15d20b78f585c9c4d71bb4790d05','913c839a3bb316943be178424f376e55df7bf1c1','2010-12-30 03:31:18','2010-12-30 03:31:18',NULL,NULL);
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

-- Dump completed on 2011-01-05 14:25:57
