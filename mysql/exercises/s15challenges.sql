/*
Instagram Clone Challenge
-------------------------------------------

1)
Find 5 oldest users
-----------------------
SELECT 
	username
    ,created_at
FROM users
ORDER BY created_at
LIMIT 5;

----------------------------------------------

2)
What day of the week do most users register on?
-----------------------------------------------

SELECT
	DATE_FORMAT(created_at , '%W') AS day_of_week
    ,COUNT(DATE_FORMAT(created_at , '%W')) AS how_many_days
FROM users
GROUP BY day_of_week
ORDER BY how_many_days DESC
LIMIT 3

-----------------------------------------------

3)
Find the users who have never posted a photo
-----------------------------------------------

SELECT
	users.id
	,users.username
    ,IFNULL(photos.user_id , 'NO PHOTOS') AS have_photo
    ,IFNULL(photos.image_url , 'NO URL') AS url
FROM users
LEFT JOIN photos
	on users.id = photos.user_id
WHERE photos.user_id IS NULL

----------------------------------------------------

4)
Who has the most likes on a single photo?
-----------------------------------------------------

SELECT
	users.username
	,photos.image_url
    ,COUNT(likes.photo_id) AS likes
FROM photos
INNER JOIN users
	ON photos.user_id = users.id
INNER JOIN likes
	ON photos.id = likes.photo_id
GROUP BY photos.id
ORDER BY likes DESC
LIMIT 1

---------------------------------------------------------

5)
How many times does the average user post?
--------------------------------------------------------

SELECT
	 (SELECT COUNT(*) FROM photos)
    /
    (SELECT COUNT(*) FROM users)

*/