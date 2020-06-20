USE sql_hr;

-- can use self join to create orgnational chat
SELECT 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;
    


    