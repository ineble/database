USE sqldb;
DROP table if EXISTS buytbl_1,usertbl_1;
CREATE TABLE userTBL_1(
	userId CHAR(8),
	NAME VARCHAR(10),
	birthYear INT,
	addr CHAR(2),
	mobile1 CHAR(3),
	mobile2 CHAR(8),
	height SMALLINT,
	mDate date
);
CREATE TABLE buytbl_1(
	num int AUTO_INCREMENT PRIMARY KEY,
	userId CHAR(8),
	prodName CHAR(6),
	groupName CHAR(4),
	price INT,
	amount smallint
);

INSERT INTO userTBL_1 VALUES('LSG', '이승기', 1987, '서울', '011', '11111111', 182, '2008-8-8');
INSERT INTO userTBL_1 VALUES('KBS', '김범수', NULL, '경남', '011', '22222222', 173, '2012-4-4');
INSERT INTO userTBL_1 VALUES('KKH', '김경호', 1871, '전남', '019', '33333333', 177, '2007-7-7');
INSERT INTO userTBL_1 VALUES('JYP', '조용필', 1950, '경기', '011', '44444444', 166, '2009-4-4');
INSERT INTO buytbl_1 VALUES(NULL, 'KBS', '운동화', NULL , 30, 2);
INSERT INTO buytbl_1 VALUES(NULL,'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buytbl_1 VALUES(NULL,'JYP', '모니터', '전자', 200,  1);
INSERT INTO buytbl_1 VALUES(NULL,'BBK', '모니터', '전자', 200,  5);

ALTER TABLE userTBL_1 ADD CONSTRAINT ok_userTBL_userID PRIMARY KEY(userID);
DESC userTBL_1;
ALTER TABLE buytbl_1 WHERE userId = 'BBK','모니터','전자',200,5);
set foreign_key_checks = 0;
INSERT INTO buytbl_1 VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
INSERT INTO buytbl_1 VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
INSERT INTO buytbl_1 VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
INSERT INTO buytbl_1 VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
INSERT INTO buytbl_1 VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
INSERT INTO buytbl_1 VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
INSERT INTO buytbl_1 VALUES(NULL, 'BBK', '운동화', NULL  , 30,   2);
INSERT INTO buytbl_1 VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
INSERT INTO buytbl_1 VALUES(NULL, 'BBK', '운동화', NULL  , 30,   2);
SET foreign_key_checks = 1; 

ALTER TABLE userTBL_1
	ADD CONSTRAINT CK_birthYear
	CHECK ( (birthYear >= 1900 AND birthYear <= 2020) AND (birthYear IS NOT NULL) ) ;

SET check_constraint_checks = 0; -- CHECK 제약 조건 비활성화
ALTER TABLE userTBL_1
	ADD CONSTRAINT CK_birthYear
	CHECK ( (birthYear >= 1900 AND birthYear <= 2020) AND (birthYear IS NOT NULL) ) ;
SET check_constraint_checks = 1; -- CHECK 제약 조건 활성화

INSERT INTO userTBL_1 VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL , 186, '2013-12-12');
INSERT INTO userTBL_1 VALUES('LJB', '임재범', 1963, '서울', '016', '66666666', 182, '2009-9-9');
INSERT INTO userTBL_1 VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL , 170, '2005-5-5');
INSERT INTO userTBL_1 VALUES('EJW', '은지원', 1972, '경북', '011', '88888888', 174, '2014-3-3');
INSERT INTO userTBL_1 VALUES('JKW', '조관우', 1965, '경기', '018', '99999999', 172, '2010-10-10');
INSERT INTO userTBL_1 VALUES('BBK', '바비킴', 1973, '서울', '010', '00000000', 176, '2013-5-5');

UPDATE userTBL_1 SET userID = 'VVK' WHERE userID='BBK';

SET foreign_key_checks = 0;
UPDATE userTBL_1 SET userID = 'VVK' WHERE userID='BBK';
SET foreign_key_checks = 1;

SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
   FROM buytbl_1 B
     INNER JOIN userTBL_1 U
        ON B.userid = U.userid ;

SELECT COUNT(*) FROM buytbl_1;

SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
   FROM buybuytbl_1TBL B
     LEFT OUTER JOIN buytbl_1 U
        ON B.userid = U.userid
   ORDER BY B.userid ;

SET foreign_key_checks = 0;
UPDATE userTBL_1 SET userID = 'BBK' WHERE userID='VVK';
SET foreign_key_checks = 1;

ALTER TABLE buytbl_1
	DROP FOREIGN KEY FK_userTBL_buyTBL;
ALTER TABLE buytbl_1 
	ADD CONSTRAINT FK_userTBL_buyTBL
		FOREIGN KEY (userID)
		REFERENCES userTBL_1 (userID)
		ON UPDATE CASCADE;

UPDATE userTBL_1 SET userID = 'VVK' WHERE userID='BBK';
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
   FROM buytbl_1 B
     INNER JOIN userTBL_1 U
        ON B.userid = U.userid
  ORDER BY B.userid;

DELETE FROM userTBL_1 WHERE userID = 'VVK';

ALTER TABLE buytbl_1
	DROP FOREIGN KEY FK_userTBL_buyTBL;
ALTER TABLE buytbl_1 
	ADD CONSTRAINT FK_userTBL_buyTBL
		FOREIGN KEY (userID)
		REFERENCES userTBL_1 (userID)
		ON UPDATE CASCADE
		ON DELETE CASCADE;

DELETE FROM userTBL_1 WHERE userID = 'VVK';
SELECT * FROM buytbl_1 ;

ALTER TABLE userTBL_1
	DROP COLUMN birthYear ;












