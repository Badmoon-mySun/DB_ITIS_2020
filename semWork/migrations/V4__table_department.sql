CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `clinic_id` int NOT NULL,
  PRIMARY KEY (`id`,`clinic_id`),
  KEY `fk_department_clinic1_idx` (`clinic_id`),
  CONSTRAINT `fk_department_clinic1` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
