-- https://learnsql.com/course/sql-queries/subqueries/multiple-results/all/
-- You can use ALL with other logical operators: = ALL, != ALL, < ALL, <= ALL, >= ALL

-- Find all information about the cities which are less populated than all countries in the database.
SELECT *
FROM CITY
WHERE Population < ALL (
  SELECT Population
  FROM COUNTRY
  );
