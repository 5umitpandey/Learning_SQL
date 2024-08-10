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

--https://learnsql.com/course/sql-queries/order-by-group-by/having/order-groups/
--Sort the employees according to their summary salaries. Highest values should appear first. Show the last name, the first name, and the sum.
SELECT last_name, first_name, SUM(salary)
FROM employees
GROUP BY last_name, first_name
ORDER BY SUM(salary) DESC

--https://learnsql.com/course/sql-queries/order-by-group-by/practise/practise/
--Show the columns last_name and first_name from the table employees together with each person's average salary and the number of years they (have) worked in the company.
--Use the following aliases: average_salary for each person's average salary and years_worked for the number of years worked in the company. Show only such employees who (have) spent more than 2 years in the company. Order the results according to the average salary in the descending order.
SELECT last_name, first_name, AVG(salary) as average_salary, COUNT(DISTINCT(year)) as years_worked
FROM employees
GROUP BY last_name, first_name
HAVING COUNT(year) > 2
ORDER BY AVG(salary) DESC
