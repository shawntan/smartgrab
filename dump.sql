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
  `extractor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `extractor_page` (`extractor_id`),
  CONSTRAINT `extractor_page` FOREIGN KEY (`extractor_id`) REFERENCES `extractors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` VALUES (201,'Next Page','//div[@id=\'page\']/div[3]/div[1]/a[last()]/span[1]','2010-12-28 08:09:23','2010-12-28 08:09:47','{\"select\":[{\"id\":\"contentwrap\",\"tagName\":\"div\",\"index\":3},{\"id\":\"pagewrapper\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"id\":\"page\",\"tagName\":\"div\",\"index\":1},{\"tagName\":\"div\",\"classes\":[\"pagenav\"],\"index\":3},{\"tagName\":\"div\",\"classes\":[\"nextprev\"],\"index\":1},{\"tagName\":\"a\",\"classes\":[\"button\"],\"last\":true},{\"tagName\":\"span\",\"classes\":[\"add\"],\"index\":1,\"last\":true}],\"reject\":{}}',NULL),(202,'Blog Title','//div[@id=\'content\']/div[2]/h1[1]','2010-12-28 08:11:12','2010-12-28 08:12:20','{\"select\":[{\"id\":\"wrapper\",\"tagName\":\"div\",\"classes\":[\"hfeed\"],\"index\":1},{\"id\":\"main\",\"tagName\":\"div\",\"index\":2},{\"id\":\"container\",\"tagName\":\"div\",\"index\":1},{\"id\":\"content\",\"tagName\":\"div\",\"index\":1,\"last\":true},{\"tagName\":\"div\",\"classes\":[\"post\",\"type-post\",\"hentry\"],\"index\":2},{\"tagName\":\"h1\",\"classes\":[\"entry-title\"],\"index\":1}],\"reject\":{}}',NULL);
/*!40000 ALTER TABLE `annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extractors`
--

DROP TABLE IF EXISTS `extractors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extractors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `domain` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  CONSTRAINT `extractor` FOREIGN KEY (`extractor_id`) REFERENCES `extractors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (172,'Vinland Saga 70 - Read Online at Manga Stream','http://mangastream.com/read/vinland_saga/83966122/1','2010-12-28 08:09:17','2010-12-28 08:09:17',NULL,NULL),(173,'Vinland Saga 70 - Read Online at Manga Stream','http://mangastream.com/read/vinland_saga/83966122/2','2010-12-28 08:09:35','2010-12-28 08:09:35',NULL,NULL),(174,'Vinland Saga 70 - Read Online at Manga Stream','http://mangastream.com/read/vinland_saga/83966122/3','2010-12-28 08:09:57','2010-12-28 08:09:57',NULL,NULL),(175,'Vinland Saga 70 - Read Online at Manga Stream','http://mangastream.com/read/vinland_saga/83966122/26','2010-12-28 08:10:40','2010-12-28 08:10:40',NULL,NULL),(176,'Being a geek on Christmas | Terminally Incoherent','http://www.terminally-incoherent.com/blog/2010/12/27/being-a-geek-on-christmas/','2010-12-28 08:11:06','2010-12-28 08:11:06',NULL,NULL),(177,'Merry X-Mas! | Terminally Incoherent','http://www.terminally-incoherent.com/blog/2010/12/24/merry-x-mas-3/','2010-12-28 08:11:17','2010-12-28 08:11:17',NULL,NULL),(178,'Man after Man by Dougal Dixon | Terminally Incoherent','http://www.terminally-incoherent.com/blog/2010/12/22/man-after-man-by-dougal-dixon/','2010-12-28 08:11:23','2010-12-28 08:11:23',NULL,NULL),(179,'Temporary Public Key: Continued | Terminally Incoherent','http://www.terminally-incoherent.com/blog/2010/12/20/temporary-public-key-continued/','2010-12-28 08:12:13','2010-12-28 08:12:13',NULL,NULL);
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

-- Dump completed on 2010-12-29 22:34:00
