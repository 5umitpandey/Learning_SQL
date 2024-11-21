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

--Show all information about all trips to cities where the ratio of city area to trip duration (in days) is greater than 700. (IN Operator)
SELECT *
FROM Trip
WHERE City_id IN (
  SELECT id 
  FROM City
  WHERE City.Area / Trip.Days > 700 
);

--https://learnsql.com/course/sql-queries/subqueries/correlated-subqueries/exists/
--Select all countries where there is at least one mountain. (EXISTS Operator)
SELECT *
FROM Country
WHERE EXISTS (
  SELECT *
  FROM Mountain
  WHERE Mountain.Id = Country_Id
);
