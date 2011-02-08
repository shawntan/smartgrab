-- MySQL dump 10.13  Distrib 5.5.8, for Linux (x86_64)
--
-- Host: localhost    Database: parcels_development
-- ------------------------------------------------------
-- Server version	5.5.8

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` VALUES (1,'2nd Cell UL Change Name','/html/body/table[1]/tbody[1][last()]/tr[1][last()]/td[2]/ul[1][last()]/li','2011-02-07 00:53:28','2011-02-07 08:26:48','{\"selected\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\",\"index\":2},{\"tagName\":\"ul\",\"index\":1,\"last\":true},{\"tagName\":\"li\"}],\"rejected\":null}',16),(5,'All Items','/html/body/table[1]/tbody[1][last()]/tr[1][last()]/td/*[last()]/li','2011-02-07 08:30:10','2011-02-07 08:49:55','{\"selected\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\"},{\"tagName\":\"*\",\"last\":true},{\"tagName\":\"li\"}],\"rejected\":null}',16),(6,'All Item 1s','/html/body/table[1]/tbody[1][last()]/tr[1][last()]/td/*[last()]/li','2011-02-07 08:30:15','2011-02-07 08:30:15','{\"selected\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\"},{\"tagName\":\"*\",\"last\":true},{\"tagName\":\"li\"}],\"rejected\":null}',16),(7,'Extractor Names','//div[@id=\'main\']/table/tbody[1][last()]/tr/td[1]','2011-02-07 08:57:28','2011-02-07 08:58:16','{\"selected\":[{\"tagName\":\"div\",\"index\":2,\"id\":\"main\"},{\"tagName\":\"table\"},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\"},{\"tagName\":\"td\",\"index\":1}],\"rejected\":null}',20),(8,'All 3rd Items','/html/body/table[1]/tbody[1][last()]/tr[1][last()]/td/*[last()]/li[3]','2011-02-07 09:17:35','2011-02-07 09:17:35','{\"selected\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\"},{\"tagName\":\"*\",\"last\":true},{\"tagName\":\"li\",\"index\":3}],\"rejected\":null}',16),(9,'All 5th Items','/html/body/table[1]/tbody[1][last()]/tr[1][last()]/td/*[last()]/li[5]','2011-02-07 09:18:01','2011-02-07 09:18:01','{\"selected\":[{\"tagName\":\"table\",\"index\":1},{\"tagName\":\"tbody\",\"index\":1,\"last\":true},{\"tagName\":\"tr\",\"index\":1,\"last\":true},{\"tagName\":\"td\"},{\"tagName\":\"*\",\"last\":true},{\"tagName\":\"li\",\"index\":5}],\"rejected\":null}',16),(10,'Search Entries','//ol[@id=\'rso\']/li/div[1][last()]/span[1]/h3[1]/a[1][last()]','2011-02-08 01:33:56','2011-02-08 01:33:56','{\"selected\":[{\"tagName\":\"div\",\"index\":1,\"id\":\"main\"},{\"tagName\":\"div\",\"index\":1},{\"tagName\":\"div\",\"index\":1,\"id\":\"gog\",\"last\":true},{\"tagName\":\"div\",\"index\":2,\"id\":\"cnt\",\"last\":true},{\"tagName\":\"div\",\"index\":6},{\"tagName\":\"div\",\"index\":1,\"id\":\"center_col\"},{\"tagName\":\"div\",\"index\":1,\"id\":\"res\"},{\"tagName\":\"span\",\"index\":2,\"id\":\"search\"},{\"tagName\":\"div\",\"index\":1,\"id\":\"ires\",\"last\":true},{\"tagName\":\"ol\",\"index\":1,\"id\":\"rso\",\"last\":true},{\"tagName\":\"li\"},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"span\",\"index\":1},{\"tagName\":\"h3\",\"index\":1},{\"tagName\":\"a\",\"index\":1,\"last\":true}],\"rejected\":null}',15),(11,'Summary','//ol[@id=\'rso\']/li/div[1][last()]/div[2][last()]','2011-02-08 01:34:06','2011-02-08 01:34:06','{\"selected\":[{\"tagName\":\"div\",\"index\":1,\"id\":\"main\"},{\"tagName\":\"div\",\"index\":1},{\"tagName\":\"div\",\"index\":1,\"id\":\"gog\",\"last\":true},{\"tagName\":\"div\",\"index\":2,\"id\":\"cnt\",\"last\":true},{\"tagName\":\"div\",\"index\":6},{\"tagName\":\"div\",\"index\":1,\"id\":\"center_col\"},{\"tagName\":\"div\",\"index\":1,\"id\":\"res\"},{\"tagName\":\"span\",\"index\":2,\"id\":\"search\"},{\"tagName\":\"div\",\"index\":1,\"id\":\"ires\",\"last\":true},{\"tagName\":\"ol\",\"index\":1,\"id\":\"rso\",\"last\":true},{\"tagName\":\"li\"},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":2,\"last\":true}],\"rejected\":null}',15),(12,'Book Titles','//div[@id=\'searchResults\']/div[1][last()]/div[1][last()]/div[1][last()]/div[1][last()]/div[3][last()]/div[1][last()]/div[2][last()]/ul[1]/li/div/h3[1]/a[1][last()]','2011-02-08 01:39:47','2011-02-08 01:39:47','{\"selected\":[{\"tagName\":\"div\",\"index\":1,\"id\":\"wrapper\"},{\"tagName\":\"div\",\"index\":2,\"id\":\"pageContent\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"id\":\"mainContent\"},{\"tagName\":\"div\",\"index\":2,\"id\":\"content\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"id\":\"searchResults\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":3,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":2,\"last\":true},{\"tagName\":\"ul\",\"index\":1},{\"tagName\":\"li\"},{\"tagName\":\"div\"},{\"tagName\":\"h3\",\"index\":1},{\"tagName\":\"a\",\"index\":1,\"last\":true}],\"rejected\":null}',21),(13,'Book Prices','//div[@id=\'searchResults\']/div[1][last()]/div[1][last()]/div[1][last()]/div[1][last()]/div[3][last()]/div[1][last()]/div[2][last()]/ul[1]/li/div/div[1][last()]/p[1]/span[2][last()]/span[1]/strong[1][last()]','2011-02-08 01:40:18','2011-02-08 01:40:18','{\"selected\":[{\"tagName\":\"div\",\"index\":1,\"id\":\"wrapper\"},{\"tagName\":\"div\",\"index\":2,\"id\":\"pageContent\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"id\":\"mainContent\"},{\"tagName\":\"div\",\"index\":2,\"id\":\"content\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"id\":\"searchResults\",\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":3,\"last\":true},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"index\":2,\"last\":true},{\"tagName\":\"ul\",\"index\":1},{\"tagName\":\"li\"},{\"tagName\":\"div\"},{\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"p\",\"index\":1},{\"tagName\":\"span\",\"index\":2,\"last\":true},{\"tagName\":\"span\",\"index\":1},{\"tagName\":\"strong\",\"index\":1,\"last\":true}],\"rejected\":null}',21);
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
  `update_time` time DEFAULT NULL,
  `cmodel` longblob NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractors`
--

LOCK TABLES `extractors` WRITE;
/*!40000 ALTER TABLE `extractors` DISABLE KEYS */;
INSERT INTO `extractors` VALUES (14,2,'duckduckgo.com','2011-02-05 16:52:49','2011-02-05 16:52:49',NULL,'','GIT RESULTS'),(15,2,'www.google.com.sg','2011-02-05 16:54:31','2011-02-05 16:54:31',NULL,'','Google git results'),(16,2,'','2011-02-06 03:04:40','2011-02-06 03:04:40',NULL,'','Hello'),(17,2,'www.nytimes.com','2011-02-06 08:29:23','2011-02-06 08:29:23',NULL,'','New York Times Headlines'),(18,2,'','2011-02-07 00:24:09','2011-02-07 00:24:09',NULL,'','Another Test'),(19,2,'','2011-02-07 00:54:32','2011-02-07 00:54:32',NULL,'','And another one'),(20,2,'localhost','2011-02-07 08:57:12','2011-02-07 08:57:12',NULL,'','Cool stuff'),(21,2,'www.bookdepository.co.uk','2011-02-08 01:39:25','2011-02-08 01:39:25',NULL,'','IE Books');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (14,'Title','file:///home/shawn/Desktop/hacky/Title.html','2011-02-06 03:24:40','2011-02-06 03:24:40',NULL,16),(15,'test - Google Search','http://www.google.com.sg/#sclient=psy&hl=en&safe=off&site=&source=hp&q=test&aq=f&aqi=g5&aql=&oq=&pbx=1&fp=3f42d73b675a110b','2011-02-06 03:26:31','2011-02-06 03:26:31',NULL,15),(16,'The New York Times - Breaking News, World News & Multimedia','http://www.nytimes.com/','2011-02-06 08:29:24','2011-02-06 08:29:24',NULL,17),(17,'git rebase - Google Search','http://www.google.com.sg/#hl=en&xhr=t&q=GIT+rebase&cp=6&pf=p&sclient=psy&safe=off&aq=0&aqi=&aql=&oq=GIT+re&pbx=1&fp=3f42d73b675a110b','2011-02-06 09:58:10','2011-02-06 09:58:10',NULL,15),(18,'Title','file:///home/shawn/Desktop/hacky/Title.html','2011-02-07 00:24:09','2011-02-07 00:24:09',NULL,18),(19,'Title','file:///home/shawn/Desktop/hacky/Title.html','2011-02-07 00:54:33','2011-02-07 00:54:33',NULL,19),(20,'GrabSmart','http://localhost:3000/home','2011-02-07 08:57:12','2011-02-07 08:57:12',NULL,20),(21,'GrabSmart','http://localhost:3000/extractors/20','2011-02-07 08:58:06','2011-02-07 08:58:06',NULL,20),(22,'GIT Rebase - Google Search','http://www.google.com.sg/#hl=en&source=hp&biw=&bih=&q=GIT+Rebase&aq=f&aqi=g10&aql=&oq=&fp=237c52985a074dee','2011-02-08 01:33:45','2011-02-08 01:33:45',NULL,15),(23,'Book search for Information Extraction - page 1 - at The Book Depository','http://www.bookdepository.co.uk/search?searchTerm=Information+Extraction&search=search','2011-02-08 01:39:25','2011-02-08 01:39:25',NULL,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'2011-02-08 09:41:53','2011-02-08 09:41:53',21),(2,'2011-02-08 09:50:15','2011-02-08 09:50:15',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scraped_values`
--

LOCK TABLES `scraped_values` WRITE;
/*!40000 ALTER TABLE `scraped_values` DISABLE KEYS */;
INSERT INTO `scraped_values` VALUES (1,12,'<a href=\"http://www.bookdepository.co.uk/book/9781845641467/Information-Extraction-in-Finance\" title=\"Full information about Information Extraction in Finance\">\n  Information Extraction in Finance\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(2,13,'<strong>\n  $109.81\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(3,12,'<a href=\"http://www.bookdepository.co.uk/book/9783639001464/An-Incrementally-Trainable-Statistical-Approach-to-Information-Extraction---Based-on-Token-Classification-and-Rich-Context-Model\" title=\"Full information about An Incrementally Trainable Statistical Approach to Information Extraction - Based on Token Classification and Rich Context Model\">\n  An Incrementally Trainable Statistic...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(4,13,'<strong>\n  $110.20\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(5,12,'<a href=\"http://www.bookdepository.co.uk/book/9781402049873/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(6,13,'<strong>\n  $149.00\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(7,12,'<a href=\"http://www.bookdepository.co.uk/book/9780387743660/Signal-Processing-Techniques-for-Knowledge-Extraction-and-Information-Fusion\" title=\"Full information about Signal Processing Techniques for Knowledge Extraction and Information Fusion\">\n  Signal Processing Techniques for Kno...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(8,13,'<strong>\n  $130.92\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(9,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540405795/Information-Extraction-in-the-Web-Era\" title=\"Full information about Information Extraction in the Web Era\">\n  Information Extraction in the Web Er...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(10,13,'<strong>\n  $48.00\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(11,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540634386/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(12,13,'<strong>\n  $44.18\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(13,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540666257/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(14,13,'<strong>\n  $50.67\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(15,12,'<a href=\"http://www.bookdepository.co.uk/book/9781402074905/Video-Content-Analysis-Using-Multimodal-Information\" title=\"Full information about Video Content Analysis Using Multimodal Information\">\n  Video Content Analysis Using Multimo...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(16,13,'<strong>\n  $179.10\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(17,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540433477/Extraction-and-Exploitation-of-Intensional-Knowledge-from-Heterogeneous-Information-Sources\" title=\"Full information about Extraction and Exploitation of Intensional Knowledge from Heterogeneous Information Sources\">\n  Extraction and Exploitation of Inten...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(18,13,'<strong>\n  $59.91\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(19,12,'<a href=\"http://www.bookdepository.co.uk/book/9780387986654/The-Mathematics-of-Information-Coding-Extraction-and-Distribution-v.-107\" title=\"Full information about The Mathematics of Information Coding, Extraction and Distribution: v. 107\">\n  The Mathematics of Information Codin...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(20,13,'<strong>\n  $104.01\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(21,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540256748/Data-Analysis-Using-the-Method-of-Least-Squares\" title=\"Full information about Data Analysis Using the Method of Least Squares\">\n  Data Analysis Using the Method of Le...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(22,13,'<strong>\n  $58.92\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(23,12,'<a href=\"http://www.bookdepository.co.uk/book/9780826491817/Meaningful-Texts\" title=\"Full information about Meaningful Texts\">\n  Meaningful Texts\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(24,13,'<strong>\n  $46.32\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(25,12,'<a href=\"http://www.bookdepository.co.uk/book/9780826474902/Meaningful-Texts\" title=\"Full information about Meaningful Texts\">\n  Meaningful Texts\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(26,13,'<strong>\n  $126.37\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(27,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540669340/Grading-Knowledge\" title=\"Full information about Grading Knowledge\">\n  Grading Knowledge\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(28,13,'<strong>\n  $46.74\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(29,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540666196/Analysis-of-Symbolic-Data\" title=\"Full information about Analysis of Symbolic Data\">\n  Analysis of Symbolic Data\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(30,13,'<strong>\n  $159.55\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(31,12,'<a href=\"http://www.bookdepository.co.uk/book/9781171527015/The-Salmon-Fisheries-of-England-1868-from-Authentic-Information-Obtained-for-the-House-of-Commons-to-Which-Is-Added-Valuable-and-Exclusive-Information-Extracted-from-the-Reports-of-the-Commissioners-of-Fisheries-in-France-America-Norway-and-Russia\" title=\"Full information about The Salmon Fisheries of England, 1868, from Authentic Information Obtained for the House of Commons, to Which Is Added Valuable and Exclusive Information, Extracted from the Reports of the Commissioners of Fisheries in France, America, Norway, &amp; Russia\">\n  The Salmon Fisheries of England, 186...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(32,13,'<strong>\n  $19.75\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(33,12,'<a href=\"http://www.bookdepository.co.uk/book/9783639024111/Metalinguistic-Information-Extraction\" title=\"Full information about Metalinguistic Information Extraction\">\n  Metalinguistic Information Extractio...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(34,13,'<strong>\n  $89.00\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(35,12,'<a href=\"http://www.bookdepository.co.uk/book/9781601981882/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(36,13,'<strong>\n  $93.68\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(37,12,'<a href=\"http://www.bookdepository.co.uk/book/9783836458283/Unified-Medical-Language-System-for-Information-Extraction\" title=\"Full information about Unified Medical Language System for Information Extraction\">\n  Unified Medical Language System for ...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(38,13,'<strong>\n  $64.17\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(39,12,'<a href=\"http://www.bookdepository.co.uk/book/9783639103588/Automatic-Information-Extraction-Using-Hidden-Markov-Model\" title=\"Full information about Automatic Information Extraction Using Hidden Markov Model\">\n  Automatic Information Extraction Usi...\n</a>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(40,13,'<strong>\n  $59.03\n</strong>\n','2011-02-08 09:41:58','2011-02-08 09:41:58',1),(41,12,'<a href=\"http://www.bookdepository.co.uk/book/9781845641467/Information-Extraction-in-Finance\" title=\"Full information about Information Extraction in Finance\">\n  Information Extraction in Finance\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(42,13,'<strong>\n  $109.81\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(43,12,'<a href=\"http://www.bookdepository.co.uk/book/9783639001464/An-Incrementally-Trainable-Statistical-Approach-to-Information-Extraction---Based-on-Token-Classification-and-Rich-Context-Model\" title=\"Full information about An Incrementally Trainable Statistical Approach to Information Extraction - Based on Token Classification and Rich Context Model\">\n  An Incrementally Trainable Statistic...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(44,13,'<strong>\n  $110.20\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(45,12,'<a href=\"http://www.bookdepository.co.uk/book/9781402049873/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(46,13,'<strong>\n  $149.00\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(47,12,'<a href=\"http://www.bookdepository.co.uk/book/9780387743660/Signal-Processing-Techniques-for-Knowledge-Extraction-and-Information-Fusion\" title=\"Full information about Signal Processing Techniques for Knowledge Extraction and Information Fusion\">\n  Signal Processing Techniques for Kno...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(48,13,'<strong>\n  $130.92\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(49,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540405795/Information-Extraction-in-the-Web-Era\" title=\"Full information about Information Extraction in the Web Era\">\n  Information Extraction in the Web Er...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(50,13,'<strong>\n  $48.00\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(51,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540634386/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(52,13,'<strong>\n  $44.18\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(53,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540666257/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(54,13,'<strong>\n  $50.67\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(55,12,'<a href=\"http://www.bookdepository.co.uk/book/9781402074905/Video-Content-Analysis-Using-Multimodal-Information\" title=\"Full information about Video Content Analysis Using Multimodal Information\">\n  Video Content Analysis Using Multimo...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(56,13,'<strong>\n  $179.10\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(57,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540433477/Extraction-and-Exploitation-of-Intensional-Knowledge-from-Heterogeneous-Information-Sources\" title=\"Full information about Extraction and Exploitation of Intensional Knowledge from Heterogeneous Information Sources\">\n  Extraction and Exploitation of Inten...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(58,13,'<strong>\n  $59.91\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(59,12,'<a href=\"http://www.bookdepository.co.uk/book/9780387986654/The-Mathematics-of-Information-Coding-Extraction-and-Distribution-v.-107\" title=\"Full information about The Mathematics of Information Coding, Extraction and Distribution: v. 107\">\n  The Mathematics of Information Codin...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(60,13,'<strong>\n  $104.01\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(61,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540256748/Data-Analysis-Using-the-Method-of-Least-Squares\" title=\"Full information about Data Analysis Using the Method of Least Squares\">\n  Data Analysis Using the Method of Le...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(62,13,'<strong>\n  $58.92\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(63,12,'<a href=\"http://www.bookdepository.co.uk/book/9780826491817/Meaningful-Texts\" title=\"Full information about Meaningful Texts\">\n  Meaningful Texts\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(64,13,'<strong>\n  $46.32\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(65,12,'<a href=\"http://www.bookdepository.co.uk/book/9780826474902/Meaningful-Texts\" title=\"Full information about Meaningful Texts\">\n  Meaningful Texts\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(66,13,'<strong>\n  $126.37\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(67,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540669340/Grading-Knowledge\" title=\"Full information about Grading Knowledge\">\n  Grading Knowledge\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(68,13,'<strong>\n  $46.74\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(69,12,'<a href=\"http://www.bookdepository.co.uk/book/9783540666196/Analysis-of-Symbolic-Data\" title=\"Full information about Analysis of Symbolic Data\">\n  Analysis of Symbolic Data\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(70,13,'<strong>\n  $159.55\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(71,12,'<a href=\"http://www.bookdepository.co.uk/book/9781171527015/The-Salmon-Fisheries-of-England-1868-from-Authentic-Information-Obtained-for-the-House-of-Commons-to-Which-Is-Added-Valuable-and-Exclusive-Information-Extracted-from-the-Reports-of-the-Commissioners-of-Fisheries-in-France-America-Norway-and-Russia\" title=\"Full information about The Salmon Fisheries of England, 1868, from Authentic Information Obtained for the House of Commons, to Which Is Added Valuable and Exclusive Information, Extracted from the Reports of the Commissioners of Fisheries in France, America, Norway, &amp; Russia\">\n  The Salmon Fisheries of England, 186...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(72,13,'<strong>\n  $19.75\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(73,12,'<a href=\"http://www.bookdepository.co.uk/book/9783639024111/Metalinguistic-Information-Extraction\" title=\"Full information about Metalinguistic Information Extraction\">\n  Metalinguistic Information Extractio...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(74,13,'<strong>\n  $89.00\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(75,12,'<a href=\"http://www.bookdepository.co.uk/book/9781601981882/Information-Extraction\" title=\"Full information about Information Extraction\">\n  Information Extraction\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(76,13,'<strong>\n  $93.68\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(77,12,'<a href=\"http://www.bookdepository.co.uk/book/9783836458283/Unified-Medical-Language-System-for-Information-Extraction\" title=\"Full information about Unified Medical Language System for Information Extraction\">\n  Unified Medical Language System for ...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(78,13,'<strong>\n  $64.17\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(79,12,'<a href=\"http://www.bookdepository.co.uk/book/9783639103588/Automatic-Information-Extraction-Using-Hidden-Markov-Model\" title=\"Full information about Automatic Information Extraction Using Hidden Markov Model\">\n  Automatic Information Extraction Usi...\n</a>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2),(80,13,'<strong>\n  $59.03\n</strong>\n','2011-02-08 09:50:18','2011-02-08 09:50:18',2);
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
INSERT INTO `users` VALUES (2,'shawntan','','shawn@wtf.sg','e50d0e82383f15d20b78f585c9c4d71bb4790d05','913c839a3bb316943be178424f376e55df7bf1c1','2010-12-30 03:31:18','2011-02-08 06:48:55','781a1ad999f4fda6ed4af112faf995da737692f4','2011-02-22 01:26:32');
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

-- Dump completed on 2011-02-09  0:47:51
