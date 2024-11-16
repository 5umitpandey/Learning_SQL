--https://learnsql.com/course/sql-queries/subqueries/correlated-subqueries/correlated-queries/

--Find all information about each country whose population is equal to or smaller than the population of the least populated city in that specific country.
SELECT * FROM Country
WHERE Population <= (
  SELECT MIN(Population)
  FROM City
  WHERE city.country_id = country.id
  );
