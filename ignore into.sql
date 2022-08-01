USE sqldb;
DROP TABLE if EXISTS membertbl;
CREATE TABLE membertbl (SELECT userID,userName, addr FROM usertbl LIMIT 3);
ALTER TABLE membertbl
ADD CONSTRAINT pk_membertbl PRIMARY KEY(userID);
INSERT IGNORE INTO  membertbl VALUES('KHD','강후덜','미국');
INSERT ignore INTO membertbl VALUES('LSM','이상민','서울');
INSERT ignore INTO membertbl VALUES('KSK','김성주','경기');
INSERT ignore INTO  membertbl VALUES('LSM','이상민','서울');
INSERT ignore INTO membertbl VALUES('KSK','김성주','경기');
select * from membertbl;
