--Find the total number of employee years worked in each building
SELECT Building, SUM(Years_employed) FROM employees
GROUP BY Building

--Find the number of Employees of each role in the studio 
SELECT Count (Role), Role FROM employees
GROUP BY Role
