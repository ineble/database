USE sqldb;
SELECT JSON_OBJECT('name',userName,'height',height) AS 'Json Value'
FROM usertbl
WHERE height >=180;