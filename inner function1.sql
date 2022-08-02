SELECT LPAD('jiseop',10,'song'), RPAD('song',10,'jiseop');

SELECT LTRIM('     song       '), RTRIM('     song       ') , TRIM('     song       ');

SELECT repeat('song',2), REPLACE('songjiseop','song',''), REVERSE('jiseop');

SELECT SPACE(3), SUBSTRING('songjiseop',5,6), SUBSTRING_INDEX('songjiseop','s',2);

SELECT ABS(-100), SIN(45), COS(45), TAN (45);

SELECT CEILING(3.5), FLOOR(3.5), ROUND(3.5);

SELECT PI(),radians(60),DEGREES(60),MOD(5,2), 5%2, 5 MOD 2;

SELECT POW(2,4) , SQRT(4), FLOOR(1+ (RAND() * (10-1)));

SELECT SIGN(-1), SIGN(0), SIGN(1), TRUNCATE(12345.678912,3);

