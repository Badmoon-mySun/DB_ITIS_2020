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
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `document_type_id` int NOT NULL,
  `time_created` datetime NOT NULL,
  `document_url` varchar(45) NOT NULL,
  `details` text,
  `appointment_id` int NOT NULL,
  `patient_case_id` int NOT NULL,
  `persona_id` int NOT NULL,
  `employee_in_department_id` int NOT NULL,
  PRIMARY KEY (`id`,`document_type_id`,`appointment_id`,`patient_case_id`,`persona_id`,`employee_in_department_id`),
  KEY `fk_document_document_type1_idx` (`document_type_id`),
  KEY `fk_document_appointment1_idx` (`appointment_id`),
  KEY `fk_document_patient_case1_idx` (`patient_case_id`),
  KEY `fk_document_persona1_idx` (`persona_id`),
  KEY `fk_document_employee_in_department1_idx` (`employee_in_department_id`),
  CONSTRAINT `fk_document_appointment1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`),
  CONSTRAINT `fk_document_document_type1` FOREIGN KEY (`document_type_id`) REFERENCES `document_type` (`id`),
  CONSTRAINT `fk_document_employee_in_department1` FOREIGN KEY (`employee_in_department_id`) REFERENCES `employee_in_department` (`id`),
  CONSTRAINT `fk_document_patient_case1` FOREIGN KEY (`patient_case_id`) REFERENCES `patient_case` (`id`),
  CONSTRAINT `fk_document_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,'sunt',1,'2006-03-12 22:19:04','http://www.kub.com/',NULL,1,1,1,1),(2,'soluta',2,'2018-07-05 15:34:22','http://schulistupton.org/',NULL,2,2,2,2),(3,'consequatur',3,'1978-04-09 09:39:23','http://www.tillman.net/',NULL,3,3,3,3),(4,'aperiam',4,'1982-08-14 16:29:44','http://www.cummings.com/',NULL,4,4,4,4),(5,'natus',5,'1990-09-27 08:47:26','http://www.cummerataosinski.biz/',NULL,5,5,5,5),(6,'ut',6,'1994-07-26 07:07:57','http://willms.com/',NULL,6,6,6,6),(7,'velit',7,'1980-11-15 08:34:38','http://dickinson.com/',NULL,7,7,7,7),(8,'hic',8,'2019-03-27 07:34:26','http://www.swaniawski.com/',NULL,8,8,8,8),(9,'consequuntur',9,'1978-12-13 12:25:51','http://grant.net/',NULL,9,9,9,9),(10,'ea',10,'2008-07-30 02:37:19','http://www.marks.org/',NULL,10,10,10,10),(11,'veritatis',11,'2016-05-18 08:48:26','http://mcdermott.org/',NULL,11,11,11,11),(12,'hic',12,'1981-02-03 11:55:52','http://www.jast.com/',NULL,12,12,12,12),(13,'incidunt',13,'2020-05-23 03:01:50','http://www.harbercruickshank.com/',NULL,13,13,13,13),(14,'beatae',14,'2003-07-24 22:40:08','http://wiza.net/',NULL,14,14,14,14),(15,'autem',15,'1993-01-08 00:49:17','http://www.weber.com/',NULL,15,15,15,15),(16,'qui',16,'1995-02-13 23:25:55','http://mclaughlin.biz/',NULL,16,16,16,16),(17,'eligendi',17,'1993-02-15 01:51:37','http://www.schowalter.info/',NULL,17,17,17,17),(18,'nesciunt',18,'1994-11-14 21:17:18','http://www.weissnat.org/',NULL,18,18,18,18),(19,'deserunt',19,'2004-07-26 00:01:11','http://pfannerstill.com/',NULL,19,19,19,19),(20,'ducimus',20,'2002-12-29 01:42:41','http://www.dickinsonwalter.com/',NULL,20,20,20,20),(21,'pariatur',21,'1990-11-14 00:24:11','http://www.schroederbartell.com/',NULL,21,21,21,21),(22,'consectetur',22,'1980-06-19 21:17:31','http://www.emard.com/',NULL,22,22,22,22),(23,'voluptas',23,'1987-07-03 08:02:40','http://www.vonrueden.com/',NULL,23,23,23,23),(24,'aut',24,'2015-03-31 00:22:55','http://parkermante.com/',NULL,24,24,24,24),(25,'vitae',25,'1993-10-14 06:08:47','http://www.halvorsonrempel.com/',NULL,25,25,25,25),(26,'autem',26,'1979-10-20 08:16:17','http://murphy.net/',NULL,26,26,26,26),(27,'asperiores',27,'1999-03-29 18:57:21','http://www.gusikowskibernier.com/',NULL,27,27,27,27),(28,'blanditiis',28,'1990-05-21 07:50:04','http://www.williamsonsenger.com/',NULL,28,28,28,28),(29,'molestias',29,'1987-03-08 23:02:59','http://www.wolffdietrich.com/',NULL,29,29,29,29),(30,'ut',30,'1984-06-19 04:37:59','http://spencer.com/',NULL,30,30,30,30),(31,'quas',31,'1990-01-04 21:20:00','http://baileybreitenberg.net/',NULL,31,31,31,31),(32,'voluptas',32,'1986-10-20 18:05:51','http://stehr.org/',NULL,32,32,32,32),(33,'non',33,'1983-06-29 15:33:02','http://lemkereinger.com/',NULL,33,33,33,33),(34,'dignissimos',34,'1980-10-10 15:03:56','http://www.miller.net/',NULL,34,34,34,34),(35,'quis',35,'2010-07-14 12:29:32','http://jakubowski.com/',NULL,35,35,35,35),(36,'vel',36,'2006-07-02 08:43:37','http://white.biz/',NULL,36,36,36,36),(37,'recusandae',37,'1993-11-18 14:40:52','http://www.hoppethompson.com/',NULL,37,37,37,37),(38,'hic',38,'2010-04-24 13:06:51','http://www.rauspinka.com/',NULL,38,38,38,38),(39,'quis',39,'1971-02-15 07:14:01','http://www.waelchiauer.com/',NULL,39,39,39,39),(40,'est',40,'2002-06-17 16:06:14','http://mcculloughpowlowski.com/',NULL,40,40,40,40),(41,'quia',1,'1986-02-16 15:05:05','http://herzog.net/',NULL,41,41,41,41),(42,'perspiciatis',2,'1992-10-16 16:04:19','http://lesch.info/',NULL,42,42,42,42),(43,'sit',3,'2010-11-28 17:31:06','http://ondricka.com/',NULL,43,43,43,43),(44,'illum',4,'1980-12-15 17:09:06','http://boyle.com/',NULL,44,44,44,44),(45,'praesentium',5,'2012-12-19 05:35:37','http://www.framikemmer.com/',NULL,45,45,45,45),(46,'perferendis',6,'2008-08-07 16:27:06','http://www.smith.com/',NULL,46,46,46,46),(47,'error',7,'2019-08-13 02:19:08','http://hermann.net/',NULL,47,47,47,47),(48,'et',8,'1999-05-15 18:11:39','http://streichanderson.org/',NULL,48,48,48,48),(49,'accusantium',9,'1978-07-27 23:09:52','http://runte.com/',NULL,49,49,49,49),(50,'excepturi',10,'1990-10-29 22:40:25','http://herman.com/',NULL,50,50,50,50),(51,'reiciendis',11,'2014-05-08 10:27:14','http://www.parker.net/',NULL,51,51,51,1),(52,'porro',12,'1973-05-21 23:51:06','http://www.cummerata.net/',NULL,52,52,52,2),(53,'quaerat',13,'1989-05-22 07:46:58','http://www.schmidt.biz/',NULL,53,53,53,3),(54,'eos',14,'2004-03-07 05:31:14','http://www.crist.com/',NULL,54,54,54,4),(55,'alias',15,'1991-12-30 17:48:18','http://strackegraham.com/',NULL,55,55,55,5),(56,'et',16,'2016-10-18 10:12:01','http://will.biz/',NULL,56,56,56,6),(57,'eos',17,'1989-06-01 06:30:28','http://www.tremblayrunolfsdottir.biz/',NULL,57,57,57,7),(58,'eum',18,'2001-09-26 09:28:40','http://gislasonmckenzie.org/',NULL,58,58,58,8),(59,'dolorum',19,'2007-05-27 09:44:57','http://botsfordluettgen.net/',NULL,59,59,59,9),(60,'ab',20,'1978-09-10 15:16:24','http://www.kub.biz/',NULL,60,60,60,10),(61,'nisi',21,'1989-10-21 15:45:56','http://www.bauch.com/',NULL,61,61,61,11),(62,'eveniet',22,'2014-02-16 01:54:34','http://www.white.com/',NULL,62,62,62,12),(63,'aut',23,'2001-11-17 05:22:36','http://www.weissnat.com/',NULL,63,63,63,13),(64,'pariatur',24,'2019-12-23 09:01:51','http://www.rempeljacobson.net/',NULL,64,64,64,14),(65,'perspiciatis',25,'1986-10-27 01:18:42','http://goodwin.org/',NULL,65,65,65,15),(66,'ut',26,'1970-11-18 09:05:29','http://www.kerlukegleichner.com/',NULL,66,66,66,16),(67,'et',27,'2018-02-15 18:03:29','http://www.upton.com/',NULL,67,67,67,17),(68,'veniam',28,'1993-09-09 07:51:40','http://www.gleichnerlittle.net/',NULL,68,68,68,18),(69,'ipsum',29,'2016-04-18 11:31:54','http://kihn.com/',NULL,69,69,69,19),(70,'atque',30,'2001-01-17 10:32:03','http://stoltenbergdamore.com/',NULL,70,70,70,20),(71,'at',31,'2001-08-06 03:10:54','http://www.paucek.com/',NULL,71,71,71,21),(72,'excepturi',32,'1986-09-18 18:20:39','http://www.moorehoppe.com/',NULL,72,72,72,22),(73,'ducimus',33,'1989-11-27 10:33:44','http://www.wymannikolaus.org/',NULL,73,73,73,23),(74,'exercitationem',34,'1972-03-23 19:17:45','http://www.cassin.info/',NULL,74,74,74,24),(75,'et',35,'1993-08-27 10:39:45','http://www.ryan.com/',NULL,75,75,75,25),(76,'minima',36,'1972-03-08 20:01:31','http://trompprohaska.com/',NULL,76,76,76,26),(77,'doloribus',37,'2016-04-06 16:51:23','http://www.murazik.com/',NULL,77,77,77,27),(78,'veniam',38,'2013-03-29 19:01:53','http://dickens.com/',NULL,78,78,78,28),(79,'neque',39,'1978-02-13 22:29:01','http://langoshwunsch.com/',NULL,79,79,79,29),(80,'non',40,'2003-04-01 01:18:25','http://metz.org/',NULL,80,80,80,30),(81,'suscipit',1,'2003-12-19 08:00:40','http://fay.com/',NULL,81,81,81,31),(82,'suscipit',2,'1993-09-19 01:40:59','http://davis.com/',NULL,82,82,82,32),(83,'impedit',3,'2004-08-05 15:43:55','http://roob.org/',NULL,83,83,83,33),(84,'quaerat',4,'2020-08-21 19:21:16','http://www.waelchi.com/',NULL,84,84,84,34),(85,'inventore',5,'2002-05-09 07:58:37','http://www.abbott.biz/',NULL,85,85,85,35),(86,'provident',6,'2016-05-24 18:29:21','http://crooks.com/',NULL,86,86,86,36),(87,'aut',7,'2004-09-23 05:14:47','http://www.rohan.com/',NULL,87,87,87,37),(88,'molestias',8,'2004-06-06 04:42:55','http://www.smith.com/',NULL,88,88,88,38),(89,'molestiae',9,'2017-03-16 04:49:44','http://www.schowalter.com/',NULL,89,89,89,39),(90,'doloribus',10,'2005-03-08 16:24:13','http://www.wildermanupton.com/',NULL,90,90,90,40),(91,'tempora',11,'1998-10-03 14:26:24','http://shields.com/',NULL,91,91,91,41),(92,'distinctio',12,'1987-10-30 21:22:55','http://mclaughlin.biz/',NULL,92,92,92,42),(93,'quis',13,'1993-10-11 13:49:05','http://www.johnsanderson.org/',NULL,93,93,93,43),(94,'nihil',14,'1986-08-27 02:52:33','http://labadie.com/',NULL,94,94,94,44),(95,'delectus',15,'2017-05-15 13:26:52','http://langworthbashirian.org/',NULL,95,95,95,45),(96,'consequatur',16,'1991-01-30 01:24:12','http://www.hammesrau.com/',NULL,96,96,96,46),(97,'et',17,'2007-10-17 20:24:49','http://www.emard.org/',NULL,97,97,97,47),(98,'eum',18,'2020-07-31 23:37:56','http://pourosokuneva.biz/',NULL,98,98,98,48),(99,'eos',19,'1998-06-05 04:54:25','http://price.com/',NULL,99,99,99,49),(100,'voluptas',20,'1971-03-14 04:26:48','http://kuphal.com/',NULL,100,100,100,50);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24  1:08:52
