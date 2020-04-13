WITH funnel AS (SELECT DISTINCT quiz.user_id, 
home_try_on.user_id IS NOT NULL AS 'is_home_try_on', 
home_try_on.number_of_pairs, 
purchase.user_id NOT NULL as 'is_purchase'
FROM
quiz
LEFT JOIN home_try_on
ON quiz.user_id = home_try_on.user_id
LEFT JOIN purchase
ON purchase.user_id = quiz.user_id)

SELECT COUNT (DISTINCT user_id) as 'Quiz', SUM(is_home_try_on) as 'Home Try On', SUM(is_purchase) as 'Purchase' from funnel;
