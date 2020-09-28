ALTER TABLE `db1`.`group` 
ADD COLUMN `teacherid` INT NOT NULL AFTER `name`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `teacherid`),
ADD INDEX `teacher_id_idx` (`teacherid` ASC) VISIBLE;
;
ALTER TABLE `db1`.`group` 
ADD CONSTRAINT `teacher_id`
  FOREIGN KEY (`teacherid`)
  REFERENCES `db1`.`teacher` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;