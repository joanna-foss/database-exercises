USE employees;

SELECT CONCAT (last_name, ', ', first_name) AS 'Full name'
FROM employees LIMIT 10;

SELECT CONCAT (last_name, ', ', first_name) AS 'Full name', birth_date AS 'DOB'
FROM employees LIMIT 10;

SELECT CONCAT (emp_no, ' - ', last_name, ', ', first_name) AS 'Full name', birth_date AS 'DOB'
FROM employees LIMIT 10;