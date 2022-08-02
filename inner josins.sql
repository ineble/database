USE sqldb;
SELECT distinct u.userID, u.userName, u.addr
FROM usertbl u
INNER JOIN buytbl b ON u.userID = b.userID
order BY u.userID;

USE sqldb;
SELECT u.userID,u.userName,u.addr
FROM usertbl u
WHERE EXISTS (
SELECT * 
FROM buytbl b
WHERE u.userID = b.userID);