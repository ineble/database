DROP TABLE if EXISTS `last_insert_id_tabletwo`;
CREATE TABLE `last_insert_id_tabletwo`(
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`col` VARCHAR(10) COLLATE utf8mb4_unicode_ci DEFAULT null,
	PRIMARY KEY (`id`)	
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8MB4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO last_insert_id_tabletwo(col)
VALUES('1row');
INSERT INTO last_insert_id_tabletwo(col)
VALUES('2row');
INSERT INTO last_insert_id_tabletwo(col)
VALUES('3row');
SELECT * from last_insert_id_tabletwo;
