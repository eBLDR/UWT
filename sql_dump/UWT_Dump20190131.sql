CREATE DATABASE  IF NOT EXISTS `UWT` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `UWT`;
-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: UWT
-- ------------------------------------------------------
-- Server version	5.6.42

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
-- Table structure for table `DISCIPLINES`
--

DROP TABLE IF EXISTS `DISCIPLINES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DISCIPLINES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISCIPLINES`
--

LOCK TABLES `DISCIPLINES` WRITE;
/*!40000 ALTER TABLE `DISCIPLINES` DISABLE KEYS */;
INSERT INTO `DISCIPLINES` VALUES (1,'calisthenics'),(2,'athletics'),(3,'yoga'),(4,'parkour'),(5,'martial arts'),(6,'senses control'),(7,'tricking');
/*!40000 ALTER TABLE `DISCIPLINES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ELEMENTS`
--

DROP TABLE IF EXISTS `ELEMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ELEMENTS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sphere` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ELEMENTS`
--

LOCK TABLES `ELEMENTS` WRITE;
/*!40000 ALTER TABLE `ELEMENTS` DISABLE KEYS */;
INSERT INTO `ELEMENTS` VALUES (1,'strength','strength'),(2,'agility','agility'),(3,'flexibility','flexibility'),(4,'endurance','endurance'),(5,'technique','technique'),(6,'perception','senses'),(7,'power','strength'),(8,'hardness','strength'),(9,'speed','agility'),(10,'quickness','agility'),(11,'precision','agility'),(12,'mobility','flexibility'),(13,'stamina','endurance'),(14,'muscular endurance','endurance'),(15,'skill','technique'),(16,'coordination','technique'),(17,'balance','technique'),(18,'body awareness','senses'),(19,'reflexes','senses'),(20,'concentration','senses'),(21,'sensation control','senses'),(22,'emotion control','senses');
/*!40000 ALTER TABLE `ELEMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EXERCISES_ATHLETICS`
--

DROP TABLE IF EXISTS `EXERCISES_ATHLETICS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EXERCISES_ATHLETICS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `variation` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `upper` tinyint(1) DEFAULT 0,
  `torso` tinyint(1) DEFAULT 0,
  `lower` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXERCISES_ATHLETICS`
--

LOCK TABLES `EXERCISES_ATHLETICS` WRITE;
/*!40000 ALTER TABLE `EXERCISES_ATHLETICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXERCISES_ATHLETICS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EXERCISES_CALISTHENICS`
--

DROP TABLE IF EXISTS `EXERCISES_CALISTHENICS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EXERCISES_CALISTHENICS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `variation` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `movement` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_breakthrough` tinyint(1) DEFAULT 0,
  `skill_static` tinyint(1) DEFAULT 0,
  `skill_dynamic` tinyint(1) DEFAULT 0,
  `repetition` tinyint(1) DEFAULT 0,
  `time` tinyint(1) DEFAULT 0,
  `floor` tinyint(1) DEFAULT 0,
  `high_bar` tinyint(1) DEFAULT 0,
  `medium_bar` tinyint(1) DEFAULT 0,
  `low_bar` tinyint(1) DEFAULT 0,
  `parallel_bars` tinyint(1) DEFAULT 0,
  `parallettes` tinyint(1) DEFAULT 0,
  `swedish_ladder` tinyint(1) DEFAULT 0,
  `vertical_bar` tinyint(1) DEFAULT 0,
  `wall` tinyint(1) DEFAULT 0,
  `rings` tinyint(1) DEFAULT 0,
  `support` tinyint(1) DEFAULT 0,
  `description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXERCISES_CALISTHENICS`
--

LOCK TABLES `EXERCISES_CALISTHENICS` WRITE;
/*!40000 ALTER TABLE `EXERCISES_CALISTHENICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXERCISES_CALISTHENICS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EXERCISES_PARKOUR`
--

DROP TABLE IF EXISTS `EXERCISES_PARKOUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EXERCISES_PARKOUR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `variation` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freerunning` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXERCISES_PARKOUR`
--

LOCK TABLES `EXERCISES_PARKOUR` WRITE;
/*!40000 ALTER TABLE `EXERCISES_PARKOUR` DISABLE KEYS */;
INSERT INTO `EXERCISES_PARKOUR` VALUES (1,'Vault','Safety',1,0),(2,'Vault','Side',1,0),(3,'Vault','Lazy','1',0),(4,'Vault','Turn','1',0),(5,'Vault','Gate','1',0),(6,'Vault','Bar leap','1',0),(7,'Vault','Cast','2',0),(8,'Vault','Rail Flare','2',0),(9,'Vault','Speed','2',0),(10,'Vault','Turn 360','2',1),(11,'Vault','Kong','2',0),(12,'Vault','Under bar','2',0),(13,'Vault','Reverse','2',0),(14,'Vault','Tic Tac','2',0),(15,'Vault','Dive kong','3',0),(16,'Vault','Reverse 360','3',1),(17,'Vault','Dash','3',0),(18,'Vault','360 under bar','3',0),(19,'Vault','Leghook underbar','3',1),(20,'Vault','Reverse touchdown','3',0),(21,'Vault','Reverse doubleleg','4',1),(22,'Vault','Kash','4',0),(23,'Vault','Double Kong','4',0),(24,'Vault','Palm spin','4',0),(25,'Vault','Reverse Kong','4',0),(26,'Vault','Turn 540/720','4',1),(27,'Vault','Reverse 540/720','5',1),(28,'Vault','Reverse palm spin','5',1),(29,'Vault','Palm spin flare','5',1),(30,'Vault','Reverse kong 180','5',0),(31,'Vault','Handstand kong drop','5',1),(32,'Vault','Triple kong','6',0),(33,'Vault','Rail spring','6',1),(34,'Vault','Rail roll','7',1),(35,'Vault','Kong front','7',1),(36,'Vault','Dash bomb','7',1),(37,'Wall','Cat leap','1',0),(38,'Wall','Crane jump','1',0),(39,'Wall','Wall run','2',0),(40,'Wall','Tic Tac','2',0),(41,'Wall','Split leg wedge','2',0),(42,'Wall','360 wall run','3',0),(43,'Wall','Cat to cat','3',0),(44,'Wall','Corner wall run','3',0),(45,'Wall','Pop up','3',0),(46,'Wall','Wall kong','4',0),(47,'Wall','Dino pop up','4',0),(48,'Wall','Double wall run','4',0),(49,'Wall','Full body wedge','4',0),(50,'Wall','Wall spin','5',0),(51,'Wall','Wall flip','5',1),(52,'Wall','Palm flip','6',1),(53,'Wall','Inward side flip','7',1),(54,'Wall','Inward front flip','7',1),(55,'Wall','Wall flare','7',1);
/*!40000 ALTER TABLE `EXERCISES_PARKOUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS_LOGS`
--

DROP TABLE IF EXISTS `USERS_LOGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS_LOGS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `USERS_LOGS_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_LOGS`
--

LOCK TABLES `USERS_LOGS` WRITE;
/*!40000 ALTER TABLE `USERS_LOGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERS_LOGS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-31 16:21:51
