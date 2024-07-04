--
-- Retrieve the names of products that have been sold more than 10 times.
SELECT
	p.product_id,
	p.product_name
FROM public.product p
INNER JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT (transaction_id) > 10;
