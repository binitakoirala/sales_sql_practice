--
-- Display the total amount of sales for each customer.
SELECT
    s.customer_id,
    c.first_name,
    c.last_name,
    SUM(net_bill_amt) AS total_amount
FROM public.sales s
INNER JOIN customer c
    ON s.customer_id = c.customer_id
GROUP BY s.customer_id, c.first_name, c.last_name
ORDER BY s.customer_id ASC;
