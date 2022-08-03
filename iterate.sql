DROP PROCEDURE if EXISTS whileproc2;
DELIMITER $$
CREATE PROCEDURE whileproc2()
BEGIN 
DECLARE i INT;
DECLARE hap INT;
SET i = 1;
SET hap = 0;
mywhile: WHILE (i <= 100) DO
IF (i%7 = 0) THEN
SET i = i + 1;
ITERATE myWhile;
END IF;
SET hap = hap + i;
IF (hap > 1000) THEN
LEAVE mywhile;
END IF;
SET i = i + 1;
END WHILE;
SELECT hap;
END $$
DELIMITER ;
CALL whileproc2(); 