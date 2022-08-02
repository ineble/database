USE sqldb;
SELECT u.userID, u.userName, b.prodName, u.addr, CONCAT(u.mobile1, u.mobile2) AS 'address'
FROM usertbl u
INNER JOIN buytbl b ON u.userID = b.userID
order BY u.userID;