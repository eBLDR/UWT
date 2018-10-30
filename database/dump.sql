-- MySQL dump 10.13  Distrib 5.6.40, for Linux (x86_64)
--
-- Host: localhost    Database: UWT
-- ------------------------------------------------------
-- Server version	5.6.41

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
-- Dumping data for table `DISCIPLINES`
--

LOCK TABLES `DISCIPLINES` WRITE;
/*!40000 ALTER TABLE `DISCIPLINES` DISABLE KEYS */;
INSERT INTO `DISCIPLINES` VALUES (1,'calisthenics'),(2,'athletics'),(3,'yoga'),(4,'parkour'),(5,'martial arts'),(6,'senses control'),(7,'tricking');
/*!40000 ALTER TABLE `DISCIPLINES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ELEMENTS`
--

LOCK TABLES `ELEMENTS` WRITE;
/*!40000 ALTER TABLE `ELEMENTS` DISABLE KEYS */;
INSERT INTO `ELEMENTS` VALUES (1,'strength','strength'),(2,'agility','agility'),(3,'flexibility','flexibility'),(4,'endurance','endurance'),(5,'technique','technique'),(6,'perception','senses'),(7,'power','strength'),(8,'hardness','strength'),(9,'speed','agility'),(10,'quickness','agility'),(11,'precision','agility'),(12,'mobility','flexibility'),(13,'stamina','endurance'),(14,'muscular endurance','endurance'),(15,'skill','technique'),(16,'coordination','technique'),(17,'balance','technique'),(18,'body awareness','senses'),(19,'reflexes','senses'),(20,'concentration','senses'),(21,'sensation control','senses'),(22,'emotion control','senses');
/*!40000 ALTER TABLE `ELEMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EXERCISES_ATHLETICS`
--

LOCK TABLES `EXERCISES_ATHLETICS` WRITE;
/*!40000 ALTER TABLE `EXERCISES_ATHLETICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXERCISES_ATHLETICS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EXERCISES_CALISTHENICS`
--

LOCK TABLES `EXERCISES_CALISTHENICS` WRITE;
/*!40000 ALTER TABLE `EXERCISES_CALISTHENICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXERCISES_CALISTHENICS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EXERCISES_CORE`
--

LOCK TABLES `EXERCISES_CORE` WRITE;
/*!40000 ALTER TABLE `EXERCISES_CORE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXERCISES_CORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EXERCISES_PARKOUR`
--

LOCK TABLES `EXERCISES_PARKOUR` WRITE;
/*!40000 ALTER TABLE `EXERCISES_PARKOUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXERCISES_PARKOUR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 16:11:43
