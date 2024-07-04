--
-- Find customers who have not made any purchases in 2024.
SELECT
    s.customer_id,
    c.first_name,
    c.last_name
FROM public.sales s
LEFT JOIN customer c
    ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM bill_date) != 2024
GROUP BY s.customer_id, c.first_name, c.last_name
ORDER BY customer_id ASC;
