-- I wanted to compare London's historical city data with global data
-- I then thought it'd be cool to do an average of Vietnam's global temp too

-- I wanted to practice aliasing, JOINs and using WITH)

-- Vietnam's data:
WITH vietnam as(
 	SELECT year, ROUND(AVG(avg_temp),2)AS vietnam_temp 
    FROM city_data
	WHERE country = 'Vietnam'
	--For a few years there's no temperature data
	AND avg_temp IS NOT NULL
	--Records before 1825 are sketchy
    AND year >  1825
	GROUP BY year),
-- London's data:	
london as(
    SELECT year, avg_temp as london_temp
    FROM city_data
	--There's 2 Londons so needed to find the UK one
    	WHERE country = 'United Kingdom'
    	AND city = 'London'
    	AND avg_temp IS NOT NULL
	--Records are sketchy before 1750
    	AND year >1749),
-- Global data:
global AS (
    SELECT year, avg_temp as global_temp
    FROM global_data
    	WHERE avg_temp IS NOT NULL)
	
SELECT london.year, london.london_temp, global.global_temp, vietnam.vietnam_temp 
FROM london
--and some joins!
LEFT JOIN vietnam
ON london.year = vietnam.year
LEFT JOIN global
ON london.year = global.year;
