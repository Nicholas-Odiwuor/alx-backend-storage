-- 7. Average score
-- Create procedure ComputeAverageScoreForUser(user_id) to compute and store the user’s average score

DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser$$

CREATE PROCEDURE ComputeAverageScoreForUser(
  IN p_user_id INT
)
BEGIN
  DECLARE avg_score FLOAT;

  -- Compute the average score for the given user
  SELECT AVG(score) INTO avg_score
  FROM corrections
  WHERE user_id = p_user_id;

  -- Store it in the users table
  UPDATE users
  SET average_score = avg_score
  WHERE id = p_user_id;
END$$

DELIMITER ;

