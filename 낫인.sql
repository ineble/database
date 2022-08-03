SELECT userName AS '이름', CONCAT(mobile1, mobile2) AS '전화번호' FROM usertbl
	WHERE userName NOT IN (SELECT userName FROM usertbl WHERE mobile1 IS NULL);
	
SELECT userName AS '이름', CONCAT(mobile1, mobile2) AS '전화번호' FROM usertbl
	WHERE userName IN (SELECT userName FROM usertbl WHERE mobile1 IS NULL);	
	