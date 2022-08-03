DROP PROCEDURE if EXISTS whileproc;
DELIMITER \\
CREATE PROCEDURE whileproc()
BEGIN 
DECLARE i INT;
DECLARE hap INT;
SET i = 1;
SET hap = 0;
while (i <= 100) DO
SET hap = hap + i;
SET i = i + 1;
END while;
SELECT hap;
END \\
DELIMITER ;
CALL whileproc();
