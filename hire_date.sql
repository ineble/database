DROP PROCEDURE if EXISTS ifproc2;
USE employees;
DELIMITER \\
CREATE PROCEDURE ifproc2()
BEGIN
DECLARE hireDate DATE; 
DECLARE curDATE DATE; 
DECLARE days int; 
 
SELECT hire_date INTO hireDate
	FROM employees.employees
	WHERE emp_no = 10001; 
SET CURDATE = CURRENT_DATE();
SET days = DATEDIFF(CURDATE, hireDate);



IF (days/365) >= 5 THEN 
SELECT CONCAT('입사한지 ', days, '일이나 지났습니다. 축하합니다!');
ELSE
SELECT '입사한지 ' + days + '일밖에 안되었네요. 열심히 일하세요.' ;
END IF;
END \\
DELIMITER ;
CALL ifproc2();

