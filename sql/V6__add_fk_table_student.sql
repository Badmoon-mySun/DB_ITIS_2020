ALTER TABLE `db1`.`students` 
ADD COLUMN `user_id` INT NOT NULL AFTER `group_id`,
CHANGE COLUMN `group_id` `group_id` INT NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `user_id`, `group_id`),
ADD INDEX `fk_grup_id` (`group_id` ASC) VISIBLE,
ADD INDEX `fk_user_id` (`user_id` ASC) VISIBLE;
;

ALTER TABLE `db1`.`students` 
ADD CONSTRAINT `fk_grup_id`
  FOREIGN KEY (`group_id`)
  REFERENCES `db1`.`group` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_user_id`
  FOREIGN KEY (`user_id`)
  REFERENCES `db1`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;