USE sqlDB;
SELECT userID, SUM(price*amount) AS '총구매액'
FROM buyTBL
GROUP BY userID
ORDER BY SUM(price*amount) DESC;
SELECT B.userID, U.userName, SUM(price*amount) AS '총구매액'
FROM buyTBL B
INNER JOIN userTBL U
ON B.userID = U.userID
GROUP BY B.userID, U.userName
ORDER BY SUM(price*amount) DESC;
SELECT B.userID, U.userName, SUM(price*amount) AS '총구매액'
FROM buyTBL B
RIGHT OUTER JOIN userTBL U
ON B.userID = U.userID
GROUP BY B.userID, U.userName
ORDER BY SUM(price*amount) DESC ;
SELECT U.userID, U.userName, SUM(price*amount) AS '총구매액'
FROM buyTBL B
RIGHT OUTER JOIN userTBL U
ON B.userID = U.userID
GROUP BY U.userID, U.userName
ORDER BY SUM(price*amount) DESC
