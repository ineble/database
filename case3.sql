USE sqlDB;
SELECT U.userID, U.userName, SUM(price*amount) AS '총구매액',
CASE
WHEN (SUM(price*amount) >= 1500) THEN '최우수고객'
WHEN (SUM(price*amount) >= 1000) THEN '우수고객'
WHEN (SUM(price*amount) >= 1 ) THEN '일반고객'
ELSE '유령고객'
END AS '고객등급'
FROM buyTBL B
RIGHT OUTER JOIN userTBL U
ON B.userID = U.userID
GROUP BY U.userID, U.userName
ORDER BY sum(price*amount) DESC ;