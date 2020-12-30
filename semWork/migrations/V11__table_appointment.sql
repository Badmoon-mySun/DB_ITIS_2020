CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_case_id` int NOT NULL,
  `employee_in_department_id` int NOT NULL,
  `time_created` datetime NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`,`patient_case_id`,`employee_in_department_id`,`status_id`),
  KEY `fk_appointment_patient_case1_idx` (`patient_case_id`),
  KEY `fk_appointment_employee_in_department1_idx` (`employee_in_department_id`),
  KEY `fk_appointment_status1_idx` (`status_id`),
  CONSTRAINT `fk_appointment_employee_in_department1` FOREIGN KEY (`employee_in_department_id`) REFERENCES `employee_in_department` (`id`),
  CONSTRAINT `fk_appointment_patient_case1` FOREIGN KEY (`patient_case_id`) REFERENCES `patient_case` (`id`),
  CONSTRAINT `fk_appointment_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
