-- 100. Average weighted score
-- Create procedure ComputeAverageWeightedScoreForUser(user_id)
DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser$$

CREATE PROCEDURE ComputeAverageWeightedScoreForUser(
  IN p_user_id INT
)
BEGIN
  DECLARE weighted_sum  FLOAT DEFAULT 0;
  DECLARE total_weight  FLOAT DEFAULT 0;
  DECLARE avg_weighted  FLOAT DEFAULT 0;

  -- compute weighted sum and total weight for this user
  SELECT
    SUM(c.score * p.weight),
    SUM(p.weight)
  INTO
    weighted_sum,
    total_weight
  FROM corrections c
  JOIN projects p ON c.project_id = p.id
  WHERE c.user_id = p_user_id;

  -- avoid division by zero
  IF total_weight > 0 THEN
    SET avg_weighted = weighted_sum / total_weight;
  ELSE
    SET avg_weighted = 0;
  END IF;

  -- store in users table
  UPDATE users
  SET average_score = avg_weighted
  WHERE id = p_user_id;
END$$

DELIMITER ;

