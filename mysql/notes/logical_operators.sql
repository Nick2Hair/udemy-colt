/*
NOT EQUAL
-----------------------------------------------
SYNTAX:
!=
-----------------------------------------------


NOT LIKE
------------------------------------------------
SYNTAX:
NOT LIKE

EXAMPLE:
********
SELECT
	title 
FROM
	books
WHERE
	title
NOT LIKE
	'%W%';

LECTURE:

SELECT title FROM books WHERE title LIKE 'W';

SELECT title FROM books WHERE title LIKE 'W%';

SELECT title FROM books WHERE title LIKE '%W%';

SELECT title FROM books WHERE title LIKE 'W%';

SELECT title FROM books WHERE title NOT LIKE 'W%';
---------------------------------------------------


GREATER THAN > | GREATER THAN OR EQUAL TO >=
---------------------------------------------------

SYNTAX: 
>

EXAMPLE
********

SELECT
	title , released_year
FROM
	books
WHERE 
	released_year > 2000
ORDER BY
	released_year
  
SYNTAX:
>=

EXAMPLE
********

SELECT
	title , released_year , stock_quantity
FROM
	books
WHERE 
	released_year >= 100
ORDER BY
	stock_quantity

LECTURE
*********

SELECT title, released_year FROM books ORDER BY released_year;

SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;

SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;

SELECT title, stock_quantity FROM books;

SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;

SELECT 99 > 1;

SELECT 99 > 567;

100 > 5
-- true

-15 > 15
-- false

9 > -10
-- true

1 > 1
-- false

'a' > 'b'
-- false

'A' > 'a'
-- false

'A' >=  'a'
-- true

SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';

SELECT title, author_lname FROM books WHERE author_lname = 'eggers';

SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';

-----------------------------------------------------


LESS THAN < | LESS THAN OR EQUAL TO <=
---------------------------------------------------

SYNTAX: < | <=

EXAMPLE:
*********

SELECT
	title , released_year
FROM
	books
WHERE 
	released_year < 2000 (or <=)

LECTURE:
**********

SELECT title, released_year FROM books;

SELECT title, released_year FROM books
WHERE released_year < 2000;

SELECT title, released_year FROM books
WHERE released_year <= 2000;

SELECT 3 < -10;
-- false

SELECT -10 < -9;
-- true

SELECT 42 <= 42;
-- true

SELECT 'h' < 'p';
-- true

SELECT 'Q' <= 'q';
-- true

---------------------------------------------------


LOGICAL AND | &&
---------------------------------------------------
EXAMPLE
*********
SELECT
	title , author_lname
FROM
	books
WHERE 
	author_lname = 'eggers' 
    && released_year > 2010;
    
LECTURE:
*********

SELECT title, author_lname, released_year FROM books
WHERE author_lname='Eggers';

SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010;

SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;

SELECT 1 < 5 && 7 = 9;
-- false

SELECT -10 > -20 && 0 <= 0;
-- true

SELECT -40 <= 0 AND 10 > 40;
--false

SELECT 54 <= 54 && 'a' = 'A';
-- true

SELECT * 
FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';


---------------------------------------------------


LOGICAL OR | ||
---------------------------------------------------

EXAMPLE:
*********

SELECT
	title , author_lname
FROM
	books
WHERE 
	author_lname = 'eggers' 
    || released_year > 2010
    
    
LECTURE:
**********

SELECT 
    title, 
    author_lname, 
    released_year 
FROM books
WHERE author_lname='Eggers' || released_year > 2010;


SELECT 40 <= 100 || -2 > 0;
-- true

SELECT 10 > 5 || 5 = 5;
-- true

SELECT 'a' = 5 || 3000 > 2000;
-- true

SELECT title, 
       author_lname, 
       released_year, 
       stock_quantity 
FROM   books 
WHERE  author_lname = 'Eggers' 
              || released_year > 2010 
OR     stock_quantity > 100;

---------------------------------------------------

BETWEEN
---------------------------------------------------


---------------------------------------------------

*/