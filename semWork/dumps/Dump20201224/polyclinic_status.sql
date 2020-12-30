-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: polyclinic
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'consequatur'),(2,'quod'),(3,'sequi'),(4,'quia'),(5,'atque'),(6,'architecto'),(7,'et'),(8,'optio'),(9,'voluptatem'),(10,'aut'),(11,'modi'),(12,'quisquam'),(13,'quia'),(14,'animi'),(15,'ipsa'),(16,'est'),(17,'et'),(18,'nesciunt'),(19,'rem'),(20,'reprehenderit'),(21,'ipsum'),(22,'recusandae'),(23,'eius'),(24,'ipsa'),(25,'voluptatum'),(26,'est'),(27,'necessitatibus'),(28,'et'),(29,'non'),(30,'molestiae'),(31,'quia'),(32,'quia'),(33,'et'),(34,'nostrum'),(35,'et'),(36,'in'),(37,'qui'),(38,'non'),(39,'omnis'),(40,'illum'),(41,'earum'),(42,'sint'),(43,'et'),(44,'vitae'),(45,'minima'),(46,'ut'),(47,'doloribus'),(48,'nihil'),(49,'ipsum'),(50,'nisi'),(51,'tempore'),(52,'nostrum'),(53,'nostrum'),(54,'et'),(55,'ut'),(56,'nulla'),(57,'laborum'),(58,'et'),(59,'cumque'),(60,'sint'),(61,'animi'),(62,'qui'),(63,'et'),(64,'sapiente'),(65,'similique'),(66,'vitae'),(67,'inventore'),(68,'quod'),(69,'perspiciatis'),(70,'quasi');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24  1:08:48
