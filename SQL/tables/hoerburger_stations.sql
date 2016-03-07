-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: hoerburger
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(21) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `region` varchar(23) DEFAULT NULL,
  `collection` varchar(16) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  `has_images` tinyint(1) NOT NULL DEFAULT '0',
  `has_songs` tinyint(1) NOT NULL DEFAULT '0',
  `has_videos` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stations_location_idx` (`location_id`),
  KEY `stations_travels_idx` (`travel_id`),
  CONSTRAINT `stations_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stations_travels` FOREIGN KEY (`travel_id`) REFERENCES `travels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'Prishtinë/ Priština','1959-08-09','Kosovo','Jugoslawien 1959',12,1,0,0,0),(2,'Gjonaj/ Đonaj','1959-08-12','Kosovo','Jugoslawien 1959',5,1,0,0,0),(3,'Gjonaj/ Đonaj','1959-08-13','Kosovo','Jugoslawien 1959',5,1,0,0,0),(4,'UNBEKANNT',NULL,'Kosovo','Jugoslawien 1959',NULL,1,0,0,0),(5,'Gjonaj/ Đonaj','1959-08-14','Kosovo','Jugoslawien 1959',5,1,0,0,0),(6,'Vranishtë/ Vranište','1959-08-15','Kosovo/ Prizrenska Gora','Jugoslawien 1959',17,1,0,0,0),(7,'Vranishtë/ Vranište','1959-08-16','Kosovo/ Prizrenska Gora','Jugoslawien 1959',17,1,0,0,0),(8,'Vranishtë/ Vranište','1959-08-17','Kosovo/ Prizrenska Gora','Jugoslawien 1959',17,1,0,0,0),(9,'Bellobrad/ Belobrod','1959-08-17','Kosovo','Jugoslawien 1959',1,1,0,0,0),(10,'Zym/ Zjum','1959-08-18','Kosovo','Jugoslawien 1959',18,1,0,0,0),(11,'Rugovo','1959-08-23','Kosovo','Jugoslawien 1959',14,1,0,0,0),(12,'Rugovo','1959-08-24','Kosovo','Jugoslawien 1959',14,1,0,0,0),(13,'Rugovo','1959-08-26','Kosovo','Jugoslawien 1959',14,1,0,0,0),(14,'Nakolec','1959-09-05','Westmakedonien','Jugoslawien 1959',9,1,0,0,0),(15,'Nakolec','1959-09-06','Westmakedonien','Jugoslawien 1959',9,1,0,0,0),(16,'Krani','1959-09-06','Westmakedonien','Jugoslawien 1959',8,1,0,0,0),(17,'Arvati','1959-09-07','Westmakedonien','Jugoslawien 1959',19,1,0,0,0),(18,'Krani','1959-09-08','Westmakedonien','Jugoslawien 1959',8,1,0,0,0),(19,'Ohrid','1959-09-13','Westmakedonien','Jugoslawien 1959',10,1,0,0,0),(20,'Radolishta','1959-09-14','Westmakedonien','Jugoslawien 1959',13,1,0,0,0),(21,'Frangovo','1959-09-14','Westmakedonien','Jugoslawien 1959',4,1,0,0,0),(22,'Radolishta','1959-09-15','Westmakedonien','Jugoslawien 1959',13,1,0,0,0),(23,'Frangovo','1959-09-15','Westmakedonien','Jugoslawien 1959',4,1,0,0,0),(24,'Veleshta','1959-09-17','Westmakedonien','Jugoslawien 1959',16,1,0,0,0),(25,'Bidžovo ','1959-09-17','Westmakedonien','Jugoslawien 1959',2,1,0,0,0),(26,'Skopje','1959-09-24','Westmakedonien','Jugoslawien 1959',15,1,0,0,0),(27,'Glumovo','1959-09-27','Westmakedonien','Jugoslawien 1959',7,1,0,0,0),(28,'Brodosavce/ Brodosanë','1959-08-17','Kosovo','Jugoslawien 1959',3,1,0,0,0),(29,'Brodosavce/ Brodosanë','1959-08-18','Kosovo','Jugoslawien 1959',3,1,0,0,0),(30,'Bellobrad/ Belobrod','1959-08-18','Kosovo','Jugoslawien 1959',1,1,0,0,0),(31,'Peć','1959-08-25','Kosovo','Jugoslawien 1959',11,1,0,0,0),(32,'Gllogovc/ Glogovac','1959-08-28','Kosovo','Jugoslawien 1959',6,1,0,0,0),(33,'Gllogovc/ Glogovac','1959-08-29','Kosovo','Jugoslawien 1959',6,1,0,0,0),(34,'Gllogovc/ Glogovac','1959-08-30','Kosovo','Jugoslawien 1959',6,1,0,0,0),(35,'Bîrca','1958-05-25','Südwestrumänien','Rumänien 1958',20,2,0,0,0),(36,'Giurgiţa ','1958-05-26','Südrumänien','Rumänien 1958',21,2,0,0,0),(38,'Bukarest',NULL,NULL,'Rumänien 1958',22,2,0,0,0);
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-07 12:58:41
