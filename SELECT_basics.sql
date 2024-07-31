SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000


--Find the number of employees in each department in the year 2013. Show the department name together with the number of employees.
--Name the second column employees_no

SELECT DEPARTMENT, COUNT(FIRST_NAME) as employees_no
FROM EMPLOYEES
WHERE YEAR = 2013
GROUP BY DEPARTMENT
