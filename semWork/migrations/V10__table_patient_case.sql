CREATE TABLE `patient_case` (
  `id` int NOT NULL AUTO_INCREMENT,
  `persona_id` int NOT NULL,
  `case_start` datetime NOT NULL,
  `case_end` datetime DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`persona_id`),
  KEY `fk_patient_case_persona1_idx` (`persona_id`),
  CONSTRAINT `fk_patient_case_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
