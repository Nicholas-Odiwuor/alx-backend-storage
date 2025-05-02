-- 101. Average weighted score for all!
-- Create procedure ComputeAverageWeightedScoreForUsers() to compute & store each user’s avg weighted score

DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers$$

CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
  -- Compute and update average_score for all users in one statement
  UPDATE users u
  JOIN (
    SELECT
      c.user_id,
      SUM(c.score * p.weight) / SUM(p.weight) AS avg_weighted
    FROM corrections c
    JOIN projects p ON c.project_id = p.id
    GROUP BY c.user_id
  ) t ON u.id = t.user_id
  SET u.average_score = t.avg_weighted;
END$$

DELIMITER ;

