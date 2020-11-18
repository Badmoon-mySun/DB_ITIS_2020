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
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'vel',698),(2,'ipsa',820),(3,'error',6009),(4,'minima',8),(5,'sed',7),(6,'et',8455406),(7,'repellendus',591863),(8,'dolorem',1762),(9,'fuga',449),(10,'fugit',0),(11,'accusamus',71263557),(12,'eos',3183),(13,'provident',0),(14,'quo',85),(15,'quaerat',0),(16,'omnis',367755568),(17,'et',0),(18,'quidem',5586),(19,'voluptatem',929),(20,'qui',15887),(21,'ratione',5),(22,'soluta',6),(23,'aut',0),(24,'velit',48),(25,'commodi',169040),(26,'a',378),(27,'natus',99529),(28,'quia',3),(29,'cupiditate',472117057),(30,'quia',36882036),(31,'dignissimos',133),(32,'voluptatem',0),(33,'nulla',663),(34,'laudantium',0),(35,'dolores',357),(36,'ratione',12293),(37,'qui',5670),(38,'quos',993817),(39,'doloremque',801),(40,'consectetur',86),(41,'numquam',3456139),(42,'et',530857),(43,'provident',4),(44,'rerum',520239303),(45,'nihil',0),(46,'quo',62306081),(47,'aut',1),(48,'repellat',0),(49,'consequatur',143602718),(50,'velit',65850564),(51,'tempore',47276),(52,'illum',4330183),(53,'vitae',0),(54,'quis',804),(55,'quas',65),(56,'est',684),(57,'libero',8512401),(58,'molestiae',102002655),(59,'et',21460),(60,'mollitia',75166),(61,'quam',601308923),(62,'est',79036470),(63,'animi',9694690),(64,'suscipit',7328049),(65,'minima',117),(66,'cupiditate',0),(67,'voluptatem',4076),(68,'pariatur',86593),(69,'exercitationem',885395),(70,'aut',3889),(71,'exercitationem',722),(72,'in',632948),(73,'nesciunt',5240),(74,'nemo',94986),(75,'ullam',4),(76,'nulla',65),(77,'labore',62965),(78,'sequi',30307),(79,'odio',2),(80,'amet',813599839),(81,'est',7983644),(82,'accusantium',0),(83,'impedit',8761),(84,'voluptatem',829608),(85,'est',5),(86,'quidem',27052884),(87,'vero',84),(88,'nostrum',909),(89,'ipsum',364125),(90,'atque',5505),(91,'voluptas',0),(92,'natus',5430),(93,'vel',40),(94,'qui',2473),(95,'suscipit',0),(96,'ratione',95054605),(97,'totam',245314),(98,'ut',51),(99,'harum',47),(100,'exercitationem',860);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19  1:47:50
