USE tabledb;
CREATE VIEW v_userbuyTBL
AS
SELECT U.userID AS 'USER ID', U.uName AS 'USER NAME', 
B.prodName AS 'PRODUCT NAME', 
U.addr, CONCAT(U.mobile1, U.mobile2) AS 'MOBILE PHONE'
FROM userTBL U
INNER JOIN buyTBL B
ON U.userID = B.userID;
SELECT `USER ID`, `USER NAME` FROM v_userbuyTBL;