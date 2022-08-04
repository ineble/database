USE sqlDB;
CREATE VIEW v_userbuyTBL
AS
SELECT U.userID AS 'USER ID', U.userName AS 'USER NAME', 
B.prodName AS 'PRODUCT NAME', 
U.addr, CONCAT(U.mobile1, U.mobile2) AS 'MOBILE PHONE'
FROM userTBL U
INNER JOIN buyTBL B
ON U.userid = B.userid;
SELECT `USER ID`, `USER NAME` FROM v_userbuyTBL;