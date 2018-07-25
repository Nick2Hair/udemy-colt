/*

Section 8 Exercises
--------------------------------------

1)
Select all story collections

SELECT 
	title
FROM 
	books
WHERE
	title
LIKE
	'%stories%';

-------------------------------------------

2)
Find the longest book in the table

SELECT 
	title
  ,pages
FROM 
	books
ORDER BY pages DESC
LIMIT 1;

--------------------------------------------

3)
print a summary containig the title and year, for the 3 most recent books

SELECT 
	CONCAT(title , '-' , released_year)
FROM 
	books
ORDER BY released_year DESC
LIMIT 3;

--------------------------------------------

4)
Find all books with an author_lname that contains a space

SELECT 
	title
    ,author_lname
FROM 
	books
WHERE
	author_lname
LIKE '% %';

----------------------------------------------

5)
Find the 3 books with the lowest stock

SELECT 
	title
    ,released_year
    ,stock_quantity
FROM 
	books
ORDER BY stock_quantity
LIMIT 3;

----------------------------------------------

6)
Print tile and author_lname, sorted first by author_lname and then by title

SELECT 
	title
    ,author_lname
FROM 
	books
ORDER BY author_lname , title;

----------------------------------------------

7)
Print out yell

SELECT 
    UPPER(CONCAT_WS(' ' , 'my favorite author' , author_fname , author_lname)) AS 'yell'
FROM 
	books
ORDER BY author_lname , author_fname;

SOLUTIONS
------------------------------------------------

SELECT title FROM books WHERE title LIKE '%stories%';

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT 
    CONCAT(title, ' - ', released_year) AS summary 
FROM books ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity 
FROM books ORDER BY stock_quantity LIMIT 3;

SELECT title, author_lname 
FROM books ORDER BY author_lname, title;

SELECT title, author_lname 
FROM books ORDER BY 2,1;

SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS yell
FROM books ORDER BY author_lname;

*/