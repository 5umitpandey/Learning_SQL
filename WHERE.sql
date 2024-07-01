-- Find all the Toy Story movies 
-- Find all the movies directed by John Lasseter 

-- Find all the movies (and director) not directed by John Lasseter: 
SELECT Title, Director FROM movies
WHERE Director NOT LIKE "%John Lasseter%"

  
Find all the WALL-* movies
SELECT * FROM movies
WHERE Title LIKE "%WALL-%"

  
--https://learnsql.com/course/sql-queries/single-table/logic/multiple-conditions/
SELECT vin FROM car
WHERE (production_year < 1999 OR production_year > 2005)
	AND (price < 4000 OR price > 10000)
