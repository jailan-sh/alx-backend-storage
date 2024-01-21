-- ranking band origin
SELECT ORIGIN FROM metal_bands
SUM(fans) AS nb_fans GROUP BY origin
ORDER BY nb_fans DESC;
