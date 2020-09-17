CREATE TABLE `db1`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(256) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time`  NULL DEFAULT CURRENT_TIMESTAMP);
