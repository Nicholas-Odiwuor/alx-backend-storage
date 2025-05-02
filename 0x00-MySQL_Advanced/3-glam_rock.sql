-- 3. Old school band: list all Glam rock bands ranked by longevity

SELECT
  name AS band_name,
  (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;

