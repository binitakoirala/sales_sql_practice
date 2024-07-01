--
-- Find the total number of hours worked by each employee.
SELECT
    employee_id,
    SUM(hours_worked) AS total_hours_worked
FROM public.timesheet
GROUP BY employee_id;
