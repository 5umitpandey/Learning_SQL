--https://learnsql.com/course/sql-queries/order-by-group-by/having/having/
--Find such employees who (have) spent more than 2 years in the company.
--Select their last name and first name together with the number of years worked (name this column years).

SELECT last_name, first_name, COUNT(DISTINCT year) as years
FROM employees
GROUP BY Last_name, First_name
HAVING COUNT(year) > 2

--https://learnsql.com/course/sql-queries/order-by-group-by/having/having-continued/
--Find such departments where the average salary in 2012 was higher than $3,000. Show the department name with the average salary.
SELECT DEPARTMENT, AVG(SALARY)
FROM EMPLOYEES
WHERE YEAR = 2012
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 3000
