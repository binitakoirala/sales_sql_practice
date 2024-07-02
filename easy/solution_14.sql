--
-- List employees who have worked more than 40 hours in a week.
SELECT
    first_name,
    last_name
FROM public.employee
WHERE weekly_hour > 40;
