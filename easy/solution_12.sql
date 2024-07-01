--
-- Display the names of all customers who have made purchases in the 'Electronics' category.
SELECT DISTINCT
    first_name,
    last_name
FROM customer c
JOIN sales s ON s.customer_id = c.customer_id
JOIN product p ON p.product_id = s.product_id
WHERE p.category = 'Skin Care';
