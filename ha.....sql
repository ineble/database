USE tabledb;
DROP TABLE if EXISTS usertbl;
CREATE TABLE usertbl(
	userID CHAR(8) NOT NULL PRIMARY KEY,
	NAME VARCHAR(10) NOT NULL,
	birthYear INT not NULL,
	addr CHAR(2) NOT NULL,
	mobile1 CHAR(3) NULL,
	mobile2 CHAR(8) NULL,
	height SMALLINT NULL,
	mDate DATE null
);

DROP TABLE if EXISTS buytbl;
CREATE TABLE buytbl
(
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	userid CHAR(8) NOT NULL,
	prodName CHAR(6) NOT NULL,
	groupName CHAR(4) NULL,
	price INT NOT NULL,
	amount SMALLINT NOT NULL,
	FOREIGN KEY(userid) REFERENCES usertbl(userID)	
);

