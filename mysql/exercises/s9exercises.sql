/*COUNT Function*/
/*

1)

SELECT 
  COUNT(title) //or COUNT(*)
FROM 
  books;
*/

/*

2)

SELECT
	released_year
    ,COUNT(title)
FROM 
	books
GROUP BY 
	released_year
  */
  
  /*
  
  3)
  
SELECT
	SUM(stock_quantity)
FROM
	books;
  */
  
  /*
  
  4)
  
SELECT
	CONCAT_WS(' ' , author_fname , author_lname)
    ,AVG(released_year)
FROM 
	books
GROUP BY 
	author_lname , author_fname

  */
  
  /*
  
  5)
  
SELECT
	CONCAT_WS(' ' , author_fname , author_lname) AS 'Full Name'
    ,pages
FROM 
  books
GROUP BY 
  pages DESC LIMIT 1

  */
  
  /*
  
  6)
  
SELECT
	released_year AS 'year'
    ,COUNT(title) AS '# books'
    , AVG(pages) AS 'avg pages '
FROM 
	books
GROUP BY
	released_year
  */
  
  