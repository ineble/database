DROP PROCEDURE IF EXISTS ifproc3;
DELIMITER $$
CREATE PROCEDURE ifproc3()
BEGIN
DECLARE point INT ;
DECLARE credit CHAR(1);
SET point = 77 ;
IF point >= 90 THEN
SET credit = 'A';
ELSEIF point >= 80 THEN
SET credit = 'B';
ELSEIF point >= 70 THEN
SET credit = 'C';
ELSEIF point >= 60 THEN
SET credit = 'D';
ELSE
SET credit = 'F';
END IF;
SELECT CONCAT('취득점수==>', point), CONCAT('학점==>', credit);
END $$
DELIMITER ;
CALL ifproc3();

	
	