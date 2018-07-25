/*
Formatting Dates (and Times)


****************************************

DATE_FORMAT()
----------------------------------------
SELECT
  DATE_FORMAT(birthdt , '%m/%d/%Y') 
FROM 
  dates;
----------------------------------------

****************************************


DAY()
---------------------------
  SELECT 
    DAY(birthdate) 
    ,birthdate 
  FROM 
    dates;
---------------------------


DAYNAME()
---------------------------
  SELECT 
    DAYNAME(birthdate) 
    ,birthdate 
  FROM 
    dates;
---------------------------    


DAYOFWEEK()
---------------------------

  SELECT 
    DAYOFWEEK(birthdate) 
    ,birthdate 
  FROM 
    dates;
---------------------------    


DAYOFYEAR()
---------------------------

SELECT 
	DAYOFYEAR(birthdate) 
  ,birthdate 
FROM 
	dates;

---------------------------

TIME
---------------------------
MINUTE() , HOUR()

*/