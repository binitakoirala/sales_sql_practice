--
-- Display the names of products with a mrp greater than $50.
SELECT
    product_name
FROM public.product
WHERE MRP > '50';
