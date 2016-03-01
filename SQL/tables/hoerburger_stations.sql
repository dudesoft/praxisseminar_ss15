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
  `region` varchar(23) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `collection` varchar(16) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stations_location_idx` (`location_id`),
  KEY `stations_travels_idx` (`travel_id`),
  CONSTRAINT `stations_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stations_travels` FOREIGN KEY (`travel_id`) REFERENCES `travels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'Prishtinë/ Priština','Kosovo','09.08.1959','Jugoslawien 1959',12,1),(2,'Gjonaj/ Đonaj','Kosovo','12.08.1959','Jugoslawien 1959',5,1),(3,'Gjonaj/ Đonaj','Kosovo','13.08.1959','Jugoslawien 1959',5,1),(4,'UNBEKANNT','Kosovo','UNBEKANNT','Jugoslawien 1959',NULL,1),(5,'Gjonaj/ Đonaj','Kosovo','14.08.1959','Jugoslawien 1959',5,1),(6,'Vranishtë/ Vranište','Kosovo/ Prizrenska Gora','15.08.1959','Jugoslawien 1959',17,1),(7,'Vranishtë/ Vranište','Kosovo/ Prizrenska Gora','16.08.1959','Jugoslawien 1959',17,1),(8,'Vranishtë/ Vranište','Kosovo/ Prizrenska Gora','17.08.1959','Jugoslawien 1959',17,1),(9,'Bellobrad/ Belobrod','Kosovo','17.08.1959','Jugoslawien 1959',1,1),(10,'Zym/ Zjum','Kosovo','18.08.1959','Jugoslawien 1959',18,1),(11,'Rugovo','Kosovo','23.08.1959','Jugoslawien 1959',14,1),(12,'Rugovo','Kosovo','24.08.1959','Jugoslawien 1959',14,1),(13,'Rugovo','Kosovo','26.08.1959','Jugoslawien 1959',14,1),(14,'Nakolec','Westmakedonien','05.09.1959','Jugoslawien 1959',9,1),(15,'Nakolec','Westmakedonien','06.09.1959','Jugoslawien 1959',9,1),(16,'Krani','Westmakedonien','06.09.1959','Jugoslawien 1959',8,1),(17,'Arvati','Westmakedonien','07.09.1959','Jugoslawien 1959',19,1),(18,'Krani','Westmakedonien','08.09.1959','Jugoslawien 1959',8,1),(19,'Ohrid','Westmakedonien','13.09.1959','Jugoslawien 1959',10,1),(20,'Radolishta','Westmakedonien','14.09.1959','Jugoslawien 1959',13,1),(21,'Frangovo','Westmakedonien','14.09.1959','Jugoslawien 1959',4,1),(22,'Radolishta','Westmakedonien','15.09.1959','Jugoslawien 1959',13,1),(23,'Frangovo','Westmakedonien','15.09.1959','Jugoslawien 1959',4,1),(24,'Veleshta','Westmakedonien','17.09.1959','Jugoslawien 1959',16,1),(25,'Bidžovo ','Westmakedonien','17.09.1959','Jugoslawien 1959',2,1),(26,'Skopje','Westmakedonien','24.09.1959','Jugoslawien 1959',15,1),(27,'Glumovo','Westmakedonien','27.09.1959','Jugoslawien 1959',7,1),(28,'Brodosavce/ Brodosanë','Kosovo','17.08.1959','Jugoslawien 1959',3,1),(29,'Brodosavce/ Brodosanë','Kosovo','18.08.1959','Jugoslawien 1959',3,1),(30,'Bellobrad/ Belobrod','Kosovo','18.08.1959','Jugoslawien 1959',1,1),(31,'Peć','Kosovo','25.08.1959','Jugoslawien 1959',11,1),(32,'Gllogovc/ Glogovac','Kosovo','28.08.1959','Jugoslawien 1959',6,1),(33,'Gllogovc/ Glogovac','Kosovo','29.08.1959','Jugoslawien 1959',6,1),(34,'Gllogovc/ Glogovac','Kosovo','30.08.1959','Jugoslawien 1959',6,1);
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

-- Dump completed on 2016-03-01 11:23:18
