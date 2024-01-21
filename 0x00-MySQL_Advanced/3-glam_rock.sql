-- select bands with Glam Rock as their main style, ranked by their longevity
SELECT DISTINCT band_name, IF NULL(split, 2020) - formed AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
