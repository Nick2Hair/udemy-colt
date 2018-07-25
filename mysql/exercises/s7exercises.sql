/*

STRING FUNCTION EXERCISES
----------------------------------------

1)
Reverse and Uppercase the following sentence
------------------------------------------------

SELECT
	UPPER(REVERSE('Why does my cat look at me with such hatred'))

-------------------------------------------------
2)
What does this print out?

ANS: I-Like-Cats
--------------------------------------------------

3)
Replace ' ' with '->'

SELECT
	REPLACE(title , ' ' , '->') AS 'title'
FROM
	books;

--------------------------------------------------

4)
Print out this:

SELECT
	author_lname AS 'forwards'
  ,REVERSE(author_lname) AS 'backwards'
FROM 
  books;
  
----------------------------------------------------

5)
Print out author name in caps

SELECT
	UPPER(CONCAT_WS(' ' , author_fname , author_lname)) 
    AS 'full name in caps'
FROM 
	books;
  
-----------------------------------------------------

6)
blurb

SELECT
	CONCAT_WS(' ' , title , 'was released in' , released_year)
    AS 'blurb'
FROM 
	books;
  
-----------------------------------------------------

7)
Print book titles and the length of each title

SELECT
	title
    ,CHAR_LENGTH(title) AS 'character count'
FROM 
	books;
  
------------------------------------------------------

8)

SELECT
	CONCAT(SUBSTRING(title , 1 , 10) , '...') AS 'short title'
    ,CONCAT_WS(',' , author_lname , author_fname) AS 'author'
    ,CONCAT_WS(' ' , stock_quantity , 'in stock') AS 'quantity'
FROM 
	books;
  
--------------------------------------------------------

SOLUTIONS
--------------------------------------------------------

SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?')); 


SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?')); 


I-like-cats 


SELECT REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '-'); 


SELECT REPLACE(title, ' ', '->') AS title FROM books; 



SELECT 
   author_lname AS forwards,
   REVERSE(author_lname) AS backwards 
FROM books;


SELECT
   UPPER
   (
      CONCAT(author_fname, ' ', author_lname)
   ) AS 'full name in caps'
FROM books;


SELECT
   CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;
SELECT
   title,
   CHAR_LENGTH(title) AS 'character count'
FROM books;


SELECT
   CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
   CONCAT(author_lname, ',', author_fname) AS author,
   CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;
*/