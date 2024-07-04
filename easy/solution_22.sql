--
-- List the product names that are not in the 'PW' category.
SELECT
    product_name
FROM public.product
WHERE category != 'PW';
