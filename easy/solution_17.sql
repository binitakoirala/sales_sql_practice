--
-- Show the average price of all products in the 'Skin Care' category.
SELECT
    AVG (mrp) AS avg_price
From public.product
WHERE category = 'Skin Care';
