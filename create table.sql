USE sqldb;
CREATE TABLE testtbl5
	(SELECT emp_no, first_name,last_name FROM employees.employees);
