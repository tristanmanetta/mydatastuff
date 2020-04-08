-- Pieces with celery in the category--

SELECT DISTINCT category
FROM met
WHERE category like '%celery%';

--Oldest pieces--

SELECT title, medium, date
FROM met
WHERE date LIKE '%1600%';
--Top 10 countries for pieces--

SELECT country, COUNT(*)
FROM met
WHERE country is not null
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
-- Categories with the most pieces (>100)--

SELECT category, COUNT (*)
FROM met
GROUP BY 1
HAVING COUNT(*)>100
ORDER BY 2 DESC;

-- Count gold or silver pieces
SELECT medium, COUNT (*)
FROM met
WHERE medium like '%gold%'
or medium like '%silver%'
GROUP BY 1
ORDER BY 2 DESC;

-- CASE STATEMENT FOR THIS ^ --

SELECT CASE
WHEN medium like '%gold%' THEN 'Gold'
WHEN medium like '%silver%' THEN 'Silver'
ELSE NULL
END AS Bling,
COUNT(*)
FROM met
WHERE Bling is not null
GROUP BY 1
ORDER BY 2 DESC;
