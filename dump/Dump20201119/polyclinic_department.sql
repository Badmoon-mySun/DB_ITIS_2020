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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinic_id` int NOT NULL,
  PRIMARY KEY (`id`,`clinic_id`),
  KEY `fk_department_clinic1_idx` (`clinic_id`),
  CONSTRAINT `fk_department_clinic1` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (101,'maiores',2),(102,'quo',2),(103,'repudiandae',2),(104,'sit',2),(105,'nisi',2),(106,'id',2),(107,'minus',2),(108,'non',2),(109,'laboriosam',2),(110,'quidem',2),(111,'mollitia',2),(112,'quo',2),(113,'quaerat',2),(114,'consequatur',2),(115,'aperiam',2),(116,'dicta',2),(117,'voluptatem',2),(118,'ipsa',2),(119,'rerum',2),(120,'quis',2),(121,'sed',2),(122,'magnam',2),(123,'nihil',2),(124,'excepturi',2),(125,'iure',2),(126,'odit',2),(127,'consequatur',2),(128,'eos',2),(129,'eum',2),(130,'architecto',2),(131,'asperiores',2),(132,'suscipit',2),(133,'earum',2),(134,'voluptatem',2),(135,'reprehenderit',2),(136,'consequuntur',2),(137,'sequi',2),(138,'exercitationem',2),(139,'culpa',2),(140,'eveniet',2),(141,'eos',2),(142,'voluptatibus',2),(143,'qui',2),(144,'et',2),(145,'necessitatibus',2),(146,'suscipit',2),(147,'pariatur',2),(148,'minus',2),(149,'eius',2),(150,'ea',2),(151,'consequatur',2),(152,'officia',2),(153,'nisi',2),(154,'saepe',2),(155,'aut',2),(156,'aut',2),(157,'accusamus',2),(158,'quam',2),(159,'incidunt',2),(160,'ea',2),(161,'ipsum',2),(162,'reiciendis',2),(163,'sint',2),(164,'rerum',2),(165,'ducimus',2),(166,'quasi',2),(167,'error',2),(168,'voluptas',2),(169,'reprehenderit',2),(170,'numquam',2),(171,'sed',2),(172,'magni',2),(173,'quia',2),(174,'vitae',2),(175,'aut',2),(176,'facilis',2),(177,'laboriosam',2),(178,'exercitationem',2),(179,'est',2),(180,'blanditiis',2),(181,'culpa',2),(182,'ut',2),(183,'omnis',2),(184,'hic',2),(185,'fugit',2),(186,'sit',2),(187,'laudantium',2),(188,'asperiores',2),(189,'et',2),(190,'suscipit',2),(191,'voluptatem',2),(192,'nostrum',2),(193,'aperiam',2),(194,'asperiores',2),(195,'maxime',2),(196,'ducimus',2),(197,'nobis',2),(198,'est',2),(199,'voluptatum',2),(200,'illo',2);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19  1:47:49
