SELECT A.emp AS '부하직원' , b.emp AS '직속상관', b.empTel AS '직속상관연락처'
	FROM emptbl A
		INNER JOIN emptbl B
			ON A.manager = B.emp
	WHERE A.emp = '우대리';