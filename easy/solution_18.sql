--
-- List all sales transactions made by a specific employee.
SELECT
    transaction_id,
    SUM(net_bill_amt) AS total_amount
FROM public.sales
WHERE created_by = 'Swastika pradhan'
GROUP BY transaction_id
ORDER BY transaction_id ASC;
