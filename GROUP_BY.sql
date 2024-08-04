--Find the average salary for each employee. Show the last name, the first name, and the average salary.
--Group the table by the last name and the first name.

--https://learnsql.com/course/sql-queries/order-by-group-by/group-by/group-by-multiple-columns/
SELECT AVG(salary), first_name, last_name
FROM employees
GROUP BY first_name, last_name
