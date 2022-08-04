USE sqldb;
DROP TRIGGER if EXISTS backUesrTbl_updateTrg;
DELIMITER //
CREATE TRIGGER backUesrTbl_updateTrg
 AFTER update
 ON userTBL
 FOR EACH ROW
BEGIN
	INSERT INTO backup_userTBL VALUES(OLD.userID, OLD.userName, OLD.birthYear, OLD.addr, OLD.mobile1, OLD.mobile2,OLD.height, OLD.mDate,'수정',CURDATE());
END //
DELIMITER ;

DROP TRIGGER if EXISTS backUesrTbl_DeleteTrg;
DELIMITER //
CREATE TRIGGER backUesrTbl_DeleteTrg
 AFTER delete
 ON userTBL
 FOR EACH ROW
BEGIN
	INSERT INTO backup_userTBL VALUES(OLD.userID, OLD.userName, OLD.birthYear, OLD.addr, OLD.mobile1, OLD.mobile2,OLD.height, OLD.mDate,'삭제',CURDATE());
END //
DELIMITER ;