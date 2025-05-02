-- 5. Email validation to sent
-- Create trigger to reset valid_email when email changes

DELIMITER //

DROP TRIGGER IF EXISTS reset_valid_email//
CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
  -- if email is modified, mark as not validated
  IF NEW.email <> OLD.email THEN
    SET NEW.valid_email = 0;
  END IF;
END;//
 
DELIMITER ;

