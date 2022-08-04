USE tableDB;
CREATE VIEW v_userTBL
	AS SELECT userid, uName, addr FROM userTBL;
SELECT * FROM v_userTBL;