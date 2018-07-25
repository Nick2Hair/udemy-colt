/* CHALLENGE 1

Find earliest date
    ANS: May 31st 2017

SELECT DATE_FORMAT(created_at,'%b %D %Y') AS earliest_date
FROM email_users 
ORDER BY created_at ASC
LIMIT 1;

--Solution: Same answer
SELECT 
    DATE_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date 
FROM email_users;



/* CHALLENGE 2

//Find Email of the first (Earliest) User
    ANS:  +-------------------+---------------------+
        | email             | created_at          |
        +-------------------+---------------------+
        | Bud88@hotmail.com | 2017-05-31 22:45:02 |
        +-------------------+---------------------+

SELECT *
FROM email_users
WHERE created_at = ( 
    SELECT created_at 
    FROM email_users 
    ORDER BY created_at ASC
    LIMIT 1
);

--Solution
SELECT * 
FROM   email_users 
WHERE  created_at = (SELECT Min(created_at) 
                     FROM   email_users);



 /* CHALLENGE 3

-- User according to the month they joined
ANS:
    +-----------+-------+
| month     | count |
+-----------+-------+
| January   |    45 |
| February  |    33 |
| March     |    47 |
| April     |    38 |
| May       |    42 |
| June      |    51 |
| July      |    43 |
| August    |    29 |
| September |    37 |
| October   |    43 |
| November  |    46 |
| December  |    46 |
+-----------+-------+

SELECT 
    DISTINCT DATE_FORMAT(created_at, '%M') AS month,
    COUNT(email) AS count
FROM email_users
GROUP BY DATE_FORMAT(created_at, '%m')
ORDER BY DATE_FORMAT(created_at, '%m');

--Solution : I got the same answer, but ordered by calendar month

SELECT MONTHNAME(created_at) AS month, 
       Count(*)              AS count 
FROM   email_users 
GROUP  BY month 
ORDER  BY count DESC;



/* CHALLENGE 4

-- Find the number of yahoo users
ANS:
+-------------+
| yahoo_users |
+-------------+
|         161 |
+-------------+

SELECT COUNT(email) AS yahoo_users
FROM email_users
WHERE email LIKE '%@yahoo%'; 

--Solution: Same answer

SELECT Count(*) AS yahoo_users 
FROM   email_users 
WHERE  email LIKE '%@yahoo.com'; 


/* CHALLENGE 5

--Calculate total number of users for each email host
ANS:
+----------+-------------+
| provider | total_users |
+----------+-------------+
| hotmail  |         185 |
| yahoo    |         161 |
| gmail    |         154 |
+----------+-------------+

SELECT 
    CASE
    WHEN email LIKE '%yahoo%' THEN 'yahoo'
    WHEN email LIKE '%gmail%' THEN 'gmail'
    WHEN email LIKE '%hotmail%' THEN 'hotmail'
    ELSE 'other'
    END AS provider,
    COUNT(email) AS total_users

FROM email_users
GROUP BY provider
ORDER BY total_users DESC;

--Solution: Same answer

SELECT CASE 
         WHEN email LIKE '%@gmail.com' THEN 'gmail' 
         WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
         WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
         ELSE 'other' 
       END     AS provider, 
       COUNT(*) AS total_users 
FROM   email_users 
GROUP  BY provider 
ORDER  BY total_users DESC; 

*/