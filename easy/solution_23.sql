--
-- Display the names of employees who have worked on a timesheet in the last month.
SELECT DISTINCT
	t.employee_id,
	e.first_name,
	e.last_name
FROM public.timesheet t
INNER JOIN employee_raw e
    ON t.employee_id = e.employee_id
WHERE shift_date >= (CURRENT_TIMESTAMP - INTERVAL '1' MONTH) AND shift_date < CURRENT_DATE;
