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
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractors`
--

LOCK TABLES `extractors` WRITE;
/*!40000 ALTER TABLE `extractors` DISABLE KEYS */;
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
  CONSTRAINT `extractor` FOREIGN KEY (`extractor_id`) REFERENCES `extractors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
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
  CONSTRAINT `extractor_id` FOREIGN KEY (`extractor_id`) REFERENCES `extractors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
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
  `revision_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `annotation_id` (`annotation_id`),
  KEY `fk_datas_revisions1` (`revision_id`),
  CONSTRAINT `annotation_id` FOREIGN KEY (`annotation_id`) REFERENCES `annotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_datas_revisions1` FOREIGN KEY (`revision_id`) REFERENCES `revisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'shawntan','','shawn@wtf.sg','e50d0e82383f15d20b78f585c9c4d71bb4790d05','913c839a3bb316943be178424f376e55df7bf1c1','2010-12-30 03:31:18','2011-01-06 09:08:21','299a8d2bf496e8c53c7fb8619f7fbd81f8ace7d0','2011-01-20 09:08:21');
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

-- Dump completed on 2011-01-06 17:15:20
