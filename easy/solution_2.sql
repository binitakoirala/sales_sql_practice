--
-- Show all employees in the ‘51120' department.
SELECT
    first_name,
    last_name
FROM public.employee
WHERE department_id = '51120';
