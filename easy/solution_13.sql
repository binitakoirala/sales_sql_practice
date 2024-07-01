--
-- Show the names and prices of products that cost between $20 and $100.
SELECT
    product_name,
    price
FROM public.product
WHERE price BETWEEN 20 AND 100;
