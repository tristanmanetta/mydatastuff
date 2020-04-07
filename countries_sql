-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

-- Gabon Population --
SELECT * from population_years
WHERE country ='Gabon'
ORDER BY population DESC
limit 1;

-- 10 Lowest population 2005--
SELECT country, population from population_years
WHERE year = 2005
ORDER BY population ASC
limit 10;

--Countries with more than 100 mil in 2010--

SELECT DISTINCT * from population_years
WHERE year = 2010
AND population > 100
ORDER BY population DESC;

--Countries with Islands in their name--

SELECT DISTINCT country from population_years
WHERE country LIKE '%Islands%';

-- 2000 and 2010 Indonesia --

SELECT * FROM population_years
WHERE country = 'Indonesia'
AND year = 2010

OR country = 'Indonesia'
AND year = 2000;
