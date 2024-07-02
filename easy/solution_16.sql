--
-- Find the total sales amount for each product.
SELECT
    p.product_id,
    p.product_name,
    SUM(net_bill_amt) AS total_sales_amount
FROM public.product p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;
