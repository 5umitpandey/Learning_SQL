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

--https://learnsql.com/course/sql-queries/subqueries/correlated-subqueries/not-exists/
--Select all mountains with no hiking trips to them.
SELECT *
FROM Mountain
WHERE NOT EXISTS (
  SELECT *
  FROM Hiking_Trip
  WHERE Mountain_Id = Mountain.Id
);



--https://learnsql.com/course/sql-queries/subqueries/correlated-subqueries/all-subquery/
--Select the hiking trip with the longest distance (column length) for every mountain.
--ALL
SELECT *
FROM hiking_trip main_hiking_trip
WHERE length >= ALL (
  SELECT length
  FROM hiking_trip sub_hiking_trip
  WHERE main_hiking_trip.mountain_id = sub_hiking_trip.mountain_id);
