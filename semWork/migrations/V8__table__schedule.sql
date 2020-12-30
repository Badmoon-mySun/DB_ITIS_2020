CREATE TABLE `schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_in_department_id` int NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id`,`employee_in_department_id`),
  KEY `fk_schedule_employee_in_department1_idx` (`employee_in_department_id`),
  CONSTRAINT `fk_schedule_employee_in_department1` FOREIGN KEY (`employee_in_department_id`) REFERENCES `employee_in_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
