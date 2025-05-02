-- 10. Safe divide
-- Create function SafeDiv(a, b) that returns a/b or 0 if b = 0

DELIMITER $$

DROP FUNCTION IF EXISTS SafeDiv$$

CREATE FUNCTION SafeDiv(
  a INT,
  b INT
) RETURNS FLOAT
  DETERMINISTIC
BEGIN
  IF b = 0 THEN
    RETURN 0;
  ELSE
    RETURN a / b;
  END IF;
END$$

DELIMITER ;

