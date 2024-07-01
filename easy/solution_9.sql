--
-- Show the number of products in each category.
SELECT
    category,
    COUNT(product_name) AS product_count
FROM public.product
GROUP BY category
ORDER BY product_count DESC;
