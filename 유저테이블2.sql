DROP TABLE if EXISTS usertbl2;
CREATE TABLE usertbl2(
userID CHAR(8) NOT NULL,
NAME VARCHAR(10) NOT NULL,
birthYear INT NOT NULL,
constraint PRIMARY KEY pk_usertbl_userid(userID)
);