USE sqldb;
SELECT userID AS '사용자', SUM(price * amount) AS '총 구매액' FROM buytbl GROUP BY userID
HAVING SUM(price*amount)>1000;
SELECT userID AS '사용자', SUM(price * amount) AS '총 구매액' FROM buytbl GROUP BY userID
HAVING SUM(price*amount)>1000 ORDER BY SUM(price*amount);
SELECT num,groupName, SUM(price * amount) AS '비용' FROM buytbl GROUP BY groupName, num
WITH ROLLUP;
SELECT groupName, SUM(price * amount) AS '비용' FROM buytbl GROUP BY groupName WITH ROLLUP;

