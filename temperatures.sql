WITH vietnam as(
 	SELECT year, ROUND(AVG(avg_temp),2)AS vietnam_temp 
    FROM city_data
	WHERE country = 'Vietnam'
	AND avg_temp IS NOT NULL
    AND year >  1825
	GROUP BY year),
london as(
    SELECT year, avg_temp as london_temp
    FROM city_data
    WHERE country = 'United Kingdom'
    AND city = 'London'
    AND avg_temp IS NOT NULL
	AND year >1749),
global AS (
    SELECT year, avg_temp as global_temp
    FROM global_data
    WHERE avg_temp IS NOT NULL)
SELECT london.year, london.london_temp, global.global_temp, vietnam.vietnam_temp 
FROM london
LEFT JOIN vietnam
ON london.year = vietnam.year
LEFT JOIN global
ON london.year = global.year;
