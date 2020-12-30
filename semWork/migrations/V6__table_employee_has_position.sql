CREATE TABLE `employee_has_position` (
  `employee_id` int NOT NULL,
  `position_id` int NOT NULL,
  `date_from` date NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`employee_id`,`position_id`),
  KEY `fk_employee_has_position_position1_idx` (`position_id`),
  KEY `fk_employee_has_position_employee_idx` (`employee_id`),
  CONSTRAINT `fk_employee_has_position_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_employee_has_position_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
