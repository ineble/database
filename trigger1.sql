USE sqldb;
DROP TABLE if exists testtbl;
CREATE TABLE if not EXISTS testtbl (
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name VARCHAR(10) NOT NULL,
	birthYear int NOT NULL,
	addr CHAR(2) NOT NULL,
	mobile1 CHAR(3) ,
	mobile2 CHAR(8) ,
	height SMALLINT,
	mDate DATE,
	modType CHAR(2),
	modDate date,
	modUser VARCHAR(256)
);
