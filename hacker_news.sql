SELECT SUM(score)
FROM hacker_news;


SELECT user, SUM(score)
FROM hacker_news
GROUP BY 1
HAVING SUM (score)>200
ORDER BY 2 DESC;

SELECT (517 + 309 + 304 + 282) / 6366.0;

SELECT user, COUNT (*) as 'Number of Rick Rolls'
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY 2 DESC;

SELECT CASE
  WHEN url LIKE '%github%' THEN 'GitHub'
  WHEN url LIKE '%medium%' THEN 'Medium'
  WHEN url LIKE '%nytimes%' THEN 'NY Times'
  ELSE 'Other'
  END AS 'Source',
  COUNT (*)
FROM hacker_news
GROUP BY 1;


SELECT 
strftime('%H', timestamp) as 'Hour', 
ROUND(AVG(score), 2) as 'Average Score', 
COUNT(*) as 'Number of Articles'
FROM hacker_news
WHERE timestamp is not null
GROUP BY 1
ORDER BY 1;
