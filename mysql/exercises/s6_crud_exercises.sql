/*CRUD EXERCISE

1) Insert a purple shirt into shirts

INSERT INTO shirts(article , color , shirt_size , last_worn)
VALUES('polo shirt' , 'purple' , 'm' , 50);

*/

/*

2) Select all shirts but only print out article and color

SELECT
	article , color 
FROM 
	shirts;
	
*/

/*

3) Select all medium shirts and print all but shirt_id

SELECT
	article , color , shirt_size , last_worn 
FROM
	shirts
WHERE shirt_size ='m'

*/

/*

4) Update all polo shirts size to L

UPDATE 
	shirts
SET 
	shirt_size = 'L' 
WHERE
	article = polo shirt;
	
*/

/*

5) Update the shirt last worn 15 days ago to 0

UPDATE
	shirts 
SET 
	last_worn = 0 
WHERE 
	last_worn = 15;
	
*/

/*

6) Update all white shirts. 
		- change shirt_size  = 'xs'
		- change color = 'off white'
		
UPDATE
	shirts
SET
	shirt_size = 'xs' , color = 'off white'
WHERE 
	color = 'white';
	
*/

/*

7) Delet all old shirts
		- last worn 200 days ago
		
DELETE
	shirts
FROM
	shirts
WHERE
	last_worn = 200;
	
*/

/*

8) Delete all tank tops

DELETE
	
FROM
	shirts
WHERE
	article = 'tank top'
	
*/

/*
	9) Delete all shirts!
	
	DELETE FROM shirts
	
*/

/*

10) Drop shirts table!

DROP TABLE shirts;

*/
