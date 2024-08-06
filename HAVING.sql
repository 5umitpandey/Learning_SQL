--https://learnsql.com/course/sql-queries/order-by-group-by/having/having/
--Find such employees who (have) spent more than 2 years in the company.
--Select their last name and first name together with the number of years worked (name this column years).

SELECT last_name, first_name, COUNT(DISTINCT year) as years
FROM employees
GROUP BY Last_name, First_name
HAVING COUNT(year) > 2
