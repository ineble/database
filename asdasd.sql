DROP TABLE IF EXISTS userTBL;
CREATE TABLE userTBL
( userID char(8) NOT NULL PRIMARY KEY,
userName varchar(10) NOT NULL,
birthYear int NOT NULL,
addr char(2) NOT NULL,
mobile1 char(3) NULL,
mobile2 char(8) NULL,
height smallint NULL,
mDate date NULL
);

DROP TABLE IF EXISTS buyTBL;
CREATE TABLE buyTBL
( num int AUTO_INCREMENT NOT NULL PRIMARY KEY ,
userid char(8) NOT NULL ,
prodName char(6) NOT NULL,
groupName char(4) NULL ,
price int NOT NULL,
amount smallint NOT NULL, FOREIGN KEY(userid) REFERENCES userTBL(userID)
);
