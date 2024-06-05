--Find the total number of employee years worked in each building
SELECT Building, SUM(Years_employed) FROM employees
GROUP BY Building
