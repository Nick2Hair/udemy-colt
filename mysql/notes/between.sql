/*
BETWEEN
-------------------------------

SYNTAX:
************

SELECT 
	title , released_year FROM books 
WHERE 
	released_year
BETWEEN 
	2004 AND 2015;
  
------------------------------------------
  
NOT BETWEEN
------------------------------------------

SYNTAX: 
-----------------------------------------

SELECT 
	title , released_year FROM books 
WHERE 
	released_year
NOT BETWEEN 
	2004 AND 2015;
-----------------------------------------
SELECT 
	title , released_year FROM books 
WHERE 
	released_year
NOt BETWEEN 
	2004 AND 2015
ORDER BY released_year;


CAST()
--------------------------------------------

SYNTAX:
************

SELECT	
	CAST('2017-05-02' AS DATETIME);

--------------------------------------------

SELECT
	name
    ,birthdt
FROM 
	dates
WHERE 
	birthdt BETWEEN	
			CAST('1980-01-01' AS DATETIME)  
      AND CAST('2000-01-01' AS DATETIME);
        
--------------------------------------------
*/