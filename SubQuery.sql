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


-- https://learnsql.com/course/sql-queries/subqueries/simple-subqueries/subqueries-with-comparison/
-- Find the names of all cities which have a population lower than Madrid.
SELECT Name FROM City
WHERE Population < (
  SELECT Population FROM City
  	WHERE Name = 'Madrid');

--Find all information about trips whose price is higher than the average.
SELECT * FROM Trip
WHERE Price > (
  SELECT AVG(Price) FROM Trip);

--Find all information about hiking trips with difficulty 1, 2, or 3.
SELECT * FROM Hiking_Trip
WHERE Difficulty IN (1, 2, 3);

--Find all information about all trips in cities whose area is greater than 100.
SELECT * FROM Trip
  WHERE City_Id IN ( 
  SELECT Id FROM City
		WHERE Area > 100);
