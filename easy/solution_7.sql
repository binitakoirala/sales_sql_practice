--
-- List customers who have made a purchase.
WITH cte_purchased_customer AS (
    SELECT
        customer_id
    FROM public.sales
    WHERE bill_date IS NOT NULL
    GROUP BY customer_id
)
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM public.customer c
INNER JOIN cte_purchased_customer s
    ON c.customer_id = s.customer_id;
