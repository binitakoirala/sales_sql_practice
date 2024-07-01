--
-- List the names of employees who joined before 2023.
SELECT
    first_name,
    last_name
FROM public.employee_raw
WHERE EXTRACT (YEAR FROM hire_date) < '2023';
