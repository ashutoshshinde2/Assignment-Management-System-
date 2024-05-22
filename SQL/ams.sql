CREATE DATABASE  IF NOT EXISTS `ams` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ams`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assi`
--

DROP TABLE IF EXISTS `assi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assi` (
  `aid` int(200) NOT NULL AUTO_INCREMENT,
  `year` int(2) NOT NULL,
  `assignment` longtext NOT NULL,
  `subject` varchar(200) NOT NULL,
  `record` text NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assi`
--

LOCK TABLES `assi` WRITE;
/*!40000 ALTER TABLE `assi` DISABLE KEYS */;
INSERT INTO `assi` VALUES (6,3,'practical 5','PHP',',5'),(7,3,'Practical 1','PHP',',5'),(8,3,'Practical 10','PHP',',5'),(9,1,'Hello ','CPP',''),(10,3,'Hello ','aa',',5');
/*!40000 ALTER TABLE `assi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_info`
--

DROP TABLE IF EXISTS `s_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `year` int(2) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `eno` int(10) NOT NULL,
  `mono` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_info`
--

LOCK TABLES `s_info` WRITE;
/*!40000 ALTER TABLE `s_info` DISABLE KEYS */;
INSERT INTO `s_info` VALUES (5,'Shinde Ashutosh','shindeashutosh534@gmail.com','1811620079',3,'2021-05-10',1811620079,'7972082468'),(6,'Yash','123@gmail.com','1811620071',3,'2021-06-11',1811620071,'7879959');
/*!40000 ALTER TABLE `s_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdetail`
--

DROP TABLE IF EXISTS `subdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subdetail` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `aid` int(50) NOT NULL,
  `u_id` int(50) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comm` varchar(100) NOT NULL,
  `ext` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdetail`
--

LOCK TABLES `subdetail` WRITE;
/*!40000 ALTER TABLE `subdetail` DISABLE KEYS */;
INSERT INTO `subdetail` VALUES (23,6,5,'Shinde Ashutosh','2021-05-12 11:58:09','Hello','pdf'),(24,8,5,'Shinde Ashutosh','2021-06-11 14:47:23','','pdf'),(25,7,5,'Shinde Ashutosh','2024-05-21 16:52:36','Submitted','jpg'),(26,10,5,'Shinde Ashutosh','2024-05-21 16:57:56','Submitted','pdf');
/*!40000 ALTER TABLE `subdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ams'
--

--
-- Dumping routines for database 'ams'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 22:33:00
