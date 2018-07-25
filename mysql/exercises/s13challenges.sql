/*
SECTION 13: JOINS CHALLENGE
------------------------------------------------

1)

SELECT 
	title 
    ,rating
FROM series
INNER JOIN reviews
	ON series.id = reviews.series_id
ORDER BY title
LIMIT 15;

-------------------------------------------------------
-- TV Joins Challenge 1 SOLUTION

SELECT 
    title, 
    rating 
FROM series
INNER JOIN reviews
    ON series.id = reviews.series_id;

------------------------------------------------------


2)

SELECT 
	title 
    ,AVG(rating) AS avg_rating
FROM series
INNER JOIN reviews
	ON series.id = reviews.series_id
GROUP BY title (Solution is: series.id)
ORDER BY avg_rating
LIMIT 15;

-------------------------------------------------------
-- Challenge 2 AVG rating

SELECT
    title,
    AVG(rating) as avg_rating
FROM series
INNER JOIN reviews
    ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

------------------------------------------------------


3)

SELECT 
	first_name
    ,last_name
    ,IFNULL(rating , 'No Rating') AS rating
FROM reviewers
INNER JOIN reviews
	ON reviewers.id = reviews.reviewer_id
LIMIT 15;

-----------------------------------------------------------
-- CHALLENGE 3  SOLUTION

SELECT
    first_name,
    last_name,
    rating
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id;

-----------------------------------------------------------

4) Wrong -Did not know to use left join or IS NULL

SELECT title 
FROM series
LEFT JOIN reviews
	ON series.id = reviews.series_id
WHERE rating IS NULL
GROUP BY series.id
LIMIT 15

-------------------------------------------------------------

-- CHALLENGE 4 - UNREVIEWED SERIES

SELECT title AS unreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;

-------------------------------------------------------------

5)

SELECT 
	genre
	,ROUND(
    AVG(reviews.rating) 
    ,2
  ) AS avg_rating
FROM series
INNER JOIN reviews
	ON series.id = reviews.series_id
GROUP BY genre;

-------------------------------------------------------------

-- Challenge 5 - GENRE AVG RATINGS

SELECT genre, 
       Round(Avg(rating), 2) AS avg_rating 
FROM   series 
       INNER JOIN reviews 
               ON series.id = reviews.series_id 
GROUP  BY genre; 

-------------------------------------------------------------

6)

SELECT
	first_name
    ,last_name
    ,IFNULL(COUNT(reviews.rating) , 0) AS 'COUNT'
    ,IFNULL(MIN(reviews.rating) , 0) AS 'MIN'
    ,IFNULL(MAX(reviews.rating) , 0) AS 'MAX'
    ,IFNULL(AVG(reviews.rating) , 0) AS 'AVG'
    ,IF(reviews.rating IS NULL , 'INACTIVE' , 'ACTIVE')
     /* 
      SAME LOGIC 
      -----------
      CASE
        WHEN reviews.rating IS NULL THEN 'INACTIVE'
        ELSE 'ACTIVE'
      END AS STATUS
      --------------------
      //
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id


-- CHALLENGE 6 - Reviewer Stats 
--------------------------------------------------------------------

SELECT first_name, 
       last_name, 
       Count(rating)                               AS COUNT, 
       Ifnull(Min(rating), 0)                      AS MIN, 
       Ifnull(Max(rating), 0)                      AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2)            AS AVG, 
       IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 
-- CHALLENGE 6 - Reviewer Stats With POWER USERS 

SELECT first_name, 
       last_name, 
       Count(rating)                    AS COUNT, 
       Ifnull(Min(rating), 0)           AS MIN, 
       Ifnull(Max(rating), 0)           AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
       CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 

----------------------------------------------------------------------

7)

SELECT  
	series.title
	,reviews.rating
	,CONCAT_WS(
        ' ' 
        ,reviewers.first_name 
        ,reviewers.last_name
    ) AS reviewer
  
FROM reviewers
INNER JOIN reviews 
	ON reviewers.id = reviews.reviewer_id
INNER JOIN series
	ON series.id = reviews.series_id
ORDER BY series.title


-- CHALLENGE 7 - 3 TABLES!
-------------------------------------------
SELECT 
    title,
    rating,
    CONCAT(first_name,' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;

*/