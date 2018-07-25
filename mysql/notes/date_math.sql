/*
*********************************************
DATE MATH
*********************************************

DATEDIFF(expr1 , expr2)
---------------------------------------------
SELECT
	name
  ,birthdate
	,DATEDIFF(NOW() , birthdate)
FROM 
	dates;
--------------------------------------------
+ / -
DATE_ADD(date , INTERVAL expr unit)
DATE_SUB(date , INTERVAL expr unit)
--------------------------------------------

EFFICIENT WAY
--------------------------------------------
SELECT
	name
    ,birthdt
	  ,birthdt + INTERVAL 1 MONTH (or use - )
FROM
	dates;

--------------------------------------------

SELECT
	name
    ,birthdt
	,DATE_ADD(birthdt , INTERVAL 1 MONTH) ** or use DATE_SUB()
FROM
	dates;
--------------------------------------------

*/