--
-- Display the product name and price of the most expensive product.
WITH cte_highest_price_product AS (
    SELECT DISTINCT
        product_name,
        price,
        RANK() OVER (ORDER BY price DESC) AS rank
    FROM public.product
)
SELECT
    product_name,
    price
FROM cte_highest_price_product
WHERE rank = 1;
