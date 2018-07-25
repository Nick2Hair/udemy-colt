/*
Section 11 Exercises: Logical Operators
-----------------------------------------------------

1)

Evaluate the following
SELECT 10 != 10;
  0
SELECT 15 > 14 && 99 - 5 <= 94;
  1
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
  1

------------------------------------------------------

2)
Select all books written before 1980 (not inclusive)

SELECT
	title
FROM
	books
WHERE 
	released_year < 1980
ORDER BY 
	released_year

-------------------------------------------------------

3)
Select all books written by eggers or chabon

SELECT
	title
    ,author_lname AS 'author'
FROM
	books
WHERE 
	author_lname IN ('eggers' , 'chabon')
ORDER BY 
	author_lname

--------------------------------------------------------

4)
Select all books written by lahiri, published after 2000


SELECT
	title
    ,author_lname AS 'author'
FROM
	books
WHERE 
	author_lname = 'lahiri' && released_year > 2000
ORDER BY 
	author_lname;

--------------------------------------------------------

5)
Select all books with page counts between 100 and 200


SELECT
	title
  ,pages
FROM
	books
WHERE 
	pages BETWEEN 100 AND 200
ORDER BY 
	pages;

---------------------------------------------------------

6)
Select all books where author_lname starts with a 'c' or an 's'

SELECT
	title
    ,author_lname
FROM
	books
WHERE 
	author_lname LIKE 'c%' || 's%'
ORDER BY 
	author_lname;
  
----------------------------------------------------------

7)
CASE statements

SELECT
	title
  ,author_lname
  ,CASE 
    WHEN title LIKE '%stories%' 
      THEN 'Short Stories'
    WHEN title LIKE '%just kids%' 
    OR title LIKE '%heartbreaking%' 
      THEN 'Memoir'
    ELSE 'Novel'
  END AS TYPE
FROM
	books
ORDER BY 
	TYPE;

-------------------------------------------------------------

8)
BONUS

SELECT DISTINCT
	title
    ,author_lname
    ,CASE
    	WHEN COUNT(title) > 1 THEN CONCAT_WS(' ' , COUNT(title), 			'books')
        ELSE CONCAT_WS(' ' , COUNT(title) , 'book')
     END AS COUNT
FROM 
	books
GROUP BY 
	author_lname , author_fname;
  
-------------------------------------------------------------

SOLUTIONS

SELECT 10 != 10;
-- false

SELECT 15 > 14 && 99 - 5 <= 94;
-- true

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
-- true

SELECT title, released_year FROM books WHERE released_year < 1980;

SELECT title, author_lname FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';

SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers','Chabon');

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Lahiri' && released_year > 2000;

SELECT title, pages FROM books WHERE pages >= 100 && pages <=200;

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    author_lname LIKE 'C%' OR 
    author_lname LIKE 'S%';

SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';

SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');

SELECT 
    title, 
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;

*/