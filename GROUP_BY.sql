--https://learnsql.com/course/sql-queries/order-by-group-by/group-by/group-by-multiple-columns/

--Find the average salary for each employee. Show the last name, the first name, and the average salary.
--Group the table by the last name and the first name.
SELECT AVG(salary), first_name, last_name
FROM employees
GROUP BY first_name, last_name

--https://learnsql.com/course/sql-queries/order-by-group-by/group-by/group-by-multiple-columns/
--Find the average salary for each employee. Show the last name, the first name, and the average salary.
--Group the table by the last name and the first name.
SELECT AVG(salary), last_name, first_name
FROM employees
GROUP BY last_name, first_name
