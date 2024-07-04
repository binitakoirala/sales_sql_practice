--
-- Show the number of employees in each department.
SELECT
    COUNT(employee_id) AS employee_count,
    department_name
FROM public.employee_raw
GROUP BY department_name;
