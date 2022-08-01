DROP TABLE if EXISTS `last_insert_id_table`;
CREATE TABLE `last_insert_id_table`(
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`col` VARCHAR(10) COLLATE utf8mb4_unicode_ci DEFAULT null,
	PRIMARY KEY (`id`)	
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8MB4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO last_insert_id_table(col)
VALUES('1row'),('2row'),('3row');
SELECT * from last_insert_id_table;
