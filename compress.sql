CREATE DATABASE if NOT EXISTS compressDB;
USE compressDB;
CREATE TABLE normalTBL(emp_no INT, firsdt_NAME VARCHAR(14));
CREATE TABLE compressTBL (emp_no INT, first_name VARCHAR(14))
ROW_FORMAT = COMPRESSED;

INSERT INTO normalTBL
	SELECT emp_no, first_name FROM employees.employees;
INSERT INTO cimpress TBL
	SELECT emp_no, first_name FROM employees.employees;
SHOW TABLE STATUS FROM compressDB;
USE mysql;
DROP DATABASE if EXISTS compressDB;