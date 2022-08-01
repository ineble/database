SELECT if(100>200,'true','false'), if(100<200,'true','false');

SELECT IFNULL(100,'널이아니군요!'), IFNULL(NULL,'널이군요!');

SELECT NULLIF(100,200), NULLIF(100,100);

SELECT ASCII('A'),CHAR(65);

SELECT BIT_LENGTH('ABC'), CHAR_LENGTH('ABC'),LENGTH('ABC'),BIT_LENGTH('송지섭'), CHAR_LENGTH('송지섭'),LENGTH('송지섭');

SELECT CONCAT_WS(' tothe ','우','영','우');

SELECT FORMAT(123456.123132154645013,8);

SELECT INSTR('songjiseop','s'),LOCATE('s','songjiseop');

SELECT BIN(10),HEX(10),OCT(10);

SELECT INSERT ('songjiseop',1,4,'so');

