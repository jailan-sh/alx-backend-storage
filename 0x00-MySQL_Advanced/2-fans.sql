-- ranking band origin
SELECT origin FROM metal_bands
SUM(fans) AS nb_fans GROUP BY origin
ORDER BY nb_fans DESC;
