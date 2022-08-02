USE sqldb;
SELECT ROW_NUMBER() over(
	ORDER BY height desc
)"키큰순위", userName, addr, height FROM usertbl;

SELECT dense_rank() over(
	ORDER BY height desc
)"키큰순위", userName, addr, height FROM usertbl;

SELECT rank() over(
	ORDER BY height DESC
)"키큰순위",userName, addr, height FROM usertbl;

select NTILE(2) over(
	ORDER BY height desc
)"반번호",userName, addr, height FROM usertbl;

select NTILE(3) over(
	ORDER BY height desc
)"반번호",userName, addr, height FROM usertbl;

SELECT userName, addr, height AS "키", height - (LEAD(height, 1) over (ORDER BY height DESC))
AS "다음 사람과키 차이" FROM usertbl;

select addr, userName, height AS "키", height - (FIRST_VALUE(height) OVER (PARTITION BY addr ORDER BY height DESC)) 
AS "지역별 최대키와 차이" from usertbl;
