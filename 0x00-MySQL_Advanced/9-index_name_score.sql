-- 9. Optimize search and score
-- Create an index on first letter of `name` and `score`
DROP INDEX IF EXISTS idx_name_first_score ON names;
CREATE INDEX idx_name_first_score
  ON names (name(1), score);

