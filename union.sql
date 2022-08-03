USE sqlDB;
SELECT stdName, addr FROM stdtbl
	UNION ALL
SELECT clubName, roomNo FROM clubtbl;