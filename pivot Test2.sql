USE sqldb;
SELECT uName, SUM(case when season='봄' then amount end) AS '봄',
 SUM(case when season='여름' then amount end) AS '여름',
 SUM(case when season='가을' then amount end) AS '가을',
 SUM(case when season='겨울' then amount end) AS '겨울'
 FROM pivotTest
 GROUP BY uName;