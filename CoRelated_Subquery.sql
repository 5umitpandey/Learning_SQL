--https://learnsql.com/course/sql-queries/subqueries/correlated-subqueries/correlated-queries/
--Find all information about each country whose population is equal to or smaller than the population of the least populated city in that specific country.
SELECT * FROM Country
WHERE Population <= (
  SELECT MIN(Population)
  FROM City
  WHERE city.country_id = country.id
  );


--https://learnsql.com/course/sql-queries/subqueries/correlated-subqueries/aliases/
--Find all information about cities with a rating higher than the average rating for all cities in that specific country.
SELECT *
FROM city main_city
WHERE rating > (
  SELECT AVG(rating)
  FROM city average_city
  WHERE average_city.country_id = main_city.country_id
);
