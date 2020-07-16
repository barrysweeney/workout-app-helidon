-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: workout
-- ------------------------------------------------------
-- Server version       8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `workout`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `workout` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `workout`;

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise` (
  `exercise_id` int NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`exercise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'Pushups'),(2,'Pullups'),(3,'Squats'),(4,'Plank'),(5,'Calf Raise'),(6,'Lunge'),(7,'Crunch'),(8,'Toe Touches'),(9,'Flutter Kicks'),(10,'Bicycle Crunch'),(11,'Reverse Crunch'),(12,'Side Plank'),(13,'Plank knees to elbows'),(14,'Diamond Pushups'),(15,'Superman Hold'),(16,'Curls'),(17,'Swings'),(18,'Rows'),(19,'Wide Pushups'),(20,'Single Arm Swings'),(21,'Press'),(22,'Glute Bridges'),(23,'Mountain Climbers'),(24,'Burpees');
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_tag`
--

DROP TABLE IF EXISTS `exercise_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_tag` (
  `exercise_id` int NOT NULL,
  `tag` varchar(16) NOT NULL,
  PRIMARY KEY (`exercise_id`,`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_tag`
--

LOCK TABLES `exercise_tag` WRITE;
/*!40000 ALTER TABLE `exercise_tag` DISABLE KEYS */;
INSERT INTO `exercise_tag` VALUES (1,'Back'),(1,'Bodyweight'),(1,'Chest'),(2,'Back'),(2,'Bodyweight'),(3,'Bodyweight'),(3,'Dumbbell'),(3,'Kettlebell'),(3,'Legs'),(4,'Abdomial'),(4,'Bodyweight'),(5,'Bodyweight'),(5,'Dumbbell'),(5,'Kettlebell'),(5,'Legs'),(6,'Bodyweight'),(6,'Dumbbell'),(6,'Kettlebell'),(6,'Legs'),(7,'Abdominal'),(7,'Bodyweight'),(8,'Abdominal'),(8,'Bodyweight'),(9,'Abdominal'),(9,'Bodyweight'),(10,'Abdominal'),(10,'Bodyweight'),(11,'Bodyweight'),(12,'Abdominal'),(12,'Bodyweight'),(13,'Abdominal'),(13,'Bodyweight'),(14,'Arms'),(14,'Back'),(14,'Bodyweight'),(14,'Chest'),(15,'Back'),(15,'Bodyweight'),(16,'Arms'),(16,'Dumbbell'),(17,'Kettlebell'),(17,'Legs'),(18,'Arms'),(18,'Back'),(18,'Dumbbell'),(18,'Kettlebell'),(19,'Back'),(19,'Bodyweight'),(19,'Chest'),(20,'Kettlebell'),(20,'Legs'),(21,'Arms'),(21,'Chest'),(21,'Dumbbell'),(21,'Kettlebell'),(22,'Bodyweight'),(22,'Legs'),(23,'Abdominal'),(23,'Bodyweight'),(23,'Legs'),(24,'Bodyweight');
/*!40000 ALTER TABLE `exercise_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-13 13:06:23
