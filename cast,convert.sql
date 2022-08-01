USE sqldb;
SELECT CAST(AVG(amount) AS SIGNED Integer) AS '평균 구매 개수' FROM buytbl;
SELECT convert(AVG(amount) , SIGNED Integer) AS '평균 구매 개수' FROM buytbl;
