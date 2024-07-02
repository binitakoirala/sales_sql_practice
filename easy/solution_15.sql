--
-- Retrieve the names of customers and the dates they made their first purchase.
WITH cte_customer AS (
    SELECT
        customer_id,
        MIN(bill_date) AS first_purchased_date
    FROM public.sales
    WHERE bill_date IS NOT NULL
    GROUP BY customer_id
)
SELECT
    c.first_name,
    c.last_name,
    s.first_purchased_date
FROM public.customer c
LEFT JOIN cte_customer s ON c.customer_id = s.customer_id;
