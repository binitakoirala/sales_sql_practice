--
-- Retrieve all sales made in 2024.
SELECT * FROM public.sales
WHERE EXTRACT(YEAR FROM bill_date) = '2024';
