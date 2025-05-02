-- 6. Add bonus
-- Create procedure AddBonus(user_id, project_name, score)
DELIMITER $$

DROP PROCEDURE IF EXISTS AddBonus$$

CREATE PROCEDURE AddBonus(
  IN p_user_id      INT,
  IN p_project_name VARCHAR(255),
  IN p_score        INT
)
BEGIN
  DECLARE p_project_id INT;

  -- Get existing project ID (or NULL if not found)
  SET p_project_id = (
    SELECT id
    FROM projects
    WHERE name = p_project_name
    LIMIT 1
  );

  -- If project doesn't exist, create it
  IF p_project_id IS NULL THEN
    INSERT INTO projects(name) VALUES (p_project_name);
    SET p_project_id = LAST_INSERT_ID();
  END IF;

  -- Add the correction record
  INSERT INTO corrections(user_id, project_id, score)
  VALUES (p_user_id, p_project_id, p_score);
END$$

DELIMITER ;

