--
-- Show the names and total sales amount for customers who have made more than 5 purchases.
SELECT
    s.customer_id,
    c.first_name,
    c.last_name,
    SUM(net_bill_amt) AS total_sales
FROM public.sales s
INNER JOIN customer c ON s.customer_id = c.customer_id
GROUP BY s.customer_id, c.first_name, c.last_name
HAVING COUNT(transaction_id) > 5;
