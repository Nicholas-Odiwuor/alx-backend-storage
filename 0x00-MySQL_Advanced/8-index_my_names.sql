-- 8. Optimize simple search
-- Create an index on the first letter of `name`
DROP INDEX IF EXISTS idx_name_first ON names;
CREATE INDEX idx_name_first
  ON names (name(1));

