/*
DATABASE TRIGGERS
------------------------------------------------

COMMANDS
------------------------------
SHOW TRIGGERS;
DROP TRIGGER trigger_name;

-Warning:
  -Triggers can make debugging hard!
  
Try and find ways to avoid using triggers.


Bolierplate
------------------------------------------------

DELIMITER $$

CREATE TRIGGER trigger_name
     trigger_time trigger_event ON table_name FOR EACH ROW
     BEGIN
     END;
$$

DELIMITER ;
----------------------------------------------------


Example 1
-----------------------------------------------------

DELIMITER $$

CREATE TRIGGER must_be_adult
     BEFORE INSERT ON users FOR EACH ROW
     BEGIN
          IF NEW.age < 18
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;

-----------------------------------------------------


Example 2
-----------------------------------------------------

DELIMITER $$

CREATE TRIGGER example_cannot_follow_self
     BEFORE INSERT ON follows FOR EACH ROW
     BEGIN
          IF NEW.follower_id = NEW.followee_id
          THEN
               SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Cannot follow yourself, silly';
          END IF;
     END;
$$

DELIMITER ;

-----------------------------------------------------

Example 3
-----------------------------------------------------

DELIMITER $$

CREATE TRIGGER capture_unfollow
     AFTER DELETE ON follows FOR EACH ROW
     BEGIN
        INSERT INTO unfollows
        SET 
          follower_id = OLD.follower_id
        	,followee_id = OLD.followee_id;
     END;
$$
DELIMITER ;

OR 

	INSERT INTO unfollows(follower_id , followee_id)
        VALUES(OLD.follower.id , OLD.followee_id);

------------------------------------------------------
*/