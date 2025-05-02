-- 11. No table for a meeting
-- Create view `need_meeting` listing students scoring <80 and with no meeting or a meeting >1 month ago

DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT
  name
FROM
  students
WHERE
  score < 80
  AND (
    last_meeting IS NULL
    OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
  );

