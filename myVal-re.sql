USE sqldb;
SET @myVar1 = 5;
SET @myVar2 = 3;
SET @myVar3 = 4.25;
SET @myVar4 = '가수이름 ==> ';
select @myVar1;
select @myVar2 + @myVar3;
select @myVar4, userName from usertbl where height > 180;