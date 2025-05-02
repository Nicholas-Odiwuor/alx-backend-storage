-- 3. Old school band
-- List all Glam rock bands, ranked by longevity up to 2022
SELECT
  name         AS band_name,
  CASE
    WHEN splitted = 0
      OR splitted   > 2022 THEN 2022 - formed
    ELSE
      splitted - formed
  END            AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;

