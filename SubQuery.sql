--Doesn't make any sense here but try to understand the concept
--https://sqlbolt.com/lesson/dropping_tables
SELECT *
FROM Boxoffice
WHERE Rating > 
   (SELECT AVG(Movie_id)
    FROM Boxoffice);

--Another eg
SELECT *
FROM employees
WHERE salary > 
   (SELECT AVG(revenue_generated)
    FROM employees AS dept_employees
    WHERE dept_employees.department = employees.department);

--Another Use
SELECT *, …
FROM mytable
WHERE column
    IN/NOT IN (SELECT another_column
               FROM another_table);



--https://learnsql.com/course/sql-queries/subqueries/simple-subqueries/subqueries/
--Show all information about all cities which have the same area as Paris.
SELECT * FROM City
  WHERE Area = (
  SELECT Area FROM City
		WHERE Name = 'Paris');
