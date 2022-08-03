USE tableDB;
CREATE VIEW v_userTBL
AS
	SELECT userid, name, addr FROM userTBL;

SELECT * FROM v_userTBL;  -- 뷰를 테이블이라고 생각해도 무방

SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2)  AS '연락처'
FROM userTBL U
  INNER JOIN buyTBL B
     ON U.userid = B.userid ;

CREATE VIEW v_userbuyTBL
AS
SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2)  AS '연락처'
FROM userTBL U
	INNER JOIN buyTBL B
	 ON U.userid = B.userid ;

SELECT * FROM v_userbuyTBL WHERE name = N'김범수';


-- <실습 6> --

USE sqlDB;
CREATE VIEW v_userbuyTBL
AS
   SELECT U.userid AS 'USER ID', U.name AS 'USER NAME', B.prodName AS 'PRODUCT NAME', 
		U.addr, CONCAT(U.mobile1, U.mobile2) AS 'MOBILE PHONE'
      FROM userTBL U
	INNER JOIN buyTBL B
	 ON U.userid = B.userid;

SELECT `USER ID`, `USER NAME` FROM v_userbuyTBL; -- 주의! 백틱을 사용한다.

ALTER VIEW v_userbuyTBL
AS
   SELECT U.userid AS '사용자 아이디', U.name AS '이름', B.prodName AS '제품 이름', 
		U.addr, CONCAT(U.mobile1, U.mobile2)  AS '전화 번호'
      FROM userTBL U
          INNER JOIN buyTBL B
             ON U.userid = B.userid ;

SELECT `이름`,`전화 번호` FROM v_userbuyTBL;

DROP VIEW v_userbuyTBL;

USE sqlDB;
CREATE OR REPLACE VIEW v_userTBL
AS
	SELECT userid, name, addr FROM userTBL;

DESCRIBE v_userTBL;

SHOW CREATE VIEW v_userTBL;

UPDATE v_userTBL SET addr = '부산' WHERE userid='JKW' ;

INSERT INTO v_userTBL(userid, name, addr) VALUES('KBM','김병만','충북') ;

CREATE VIEW v_sum
AS
	SELECT userid AS 'userid', SUM(price*amount) AS 'total'  
	   FROM buyTBL GROUP BY userid;

SELECT * FROM v_sum;

SELECT * FROM INFORMATION_SCHEMA.VIEWS
     WHERE TABLE_SCHEMA = 'sqlDB' AND TABLE_NAME = 'v_sum';


CREATE VIEW v_height177
AS
	SELECT * FROM userTBL WHERE height >= 177 ;

SELECT * FROM v_height177 ;

DELETE FROM v_height177 WHERE height < 177 ;

INSERT INTO v_height177 VALUES('KBM', '김병만', 1977 , '경기', '010', '5555555', 158, '2022-01-01') ;


ALTER VIEW v_height177
AS
	SELECT * FROM userTBL WHERE height >= 177
	    WITH CHECK OPTION ;

INSERT INTO v_height177 VALUES('SJH', '서장훈', 2006 , '서울', '010', '3333333', 155, '2022-3-3') ;


CREATE VIEW v_userbuyTBL
AS
  SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS mobile
   FROM userTBL U
      INNER JOIN buyTBL B
         ON U.userid = B.userid ;

INSERT INTO v_userbuyTBL VALUES('PKL','박경리','운동화','경기','00000000000','2023-2-2');


DROP TABLE IF EXISTS buyTBL, userTBL;

SELECT * FROM v_userbuyTBL;

CHECK TABLE v_userbuyTBL;