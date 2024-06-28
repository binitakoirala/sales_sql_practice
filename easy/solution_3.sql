--
-- Find customers who joined after '2023-01-01'.
WITH cte_customer AS (
	SELECT
		customer_id,
		MIN(bill_date) AS joined_date
	FROM public.sales
	WHERE bill_date IS NOT NULL
	GROUP BY customer_id
)
SELECT
	first_name,
	last_name,
	joined_date
FROM customer c
LEFT JOIN cte_customer s ON c.customer_id = s.customer_id
WHERE joined_date > '2017-01-05';
