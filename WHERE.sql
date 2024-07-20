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

--https://learnsql.com/course/sql-queries/single-table/summary/practise/
SELECT * FROM car
WHERE (PRODUCTION_YEAR BETWEEN 1999 AND 2005)
  AND (BRAND IS NOT 'Volkswagen')
  AND (MODEL LIKE 'P%' OR MODEL LIKE 'F%')
  AND (PRICE IS NOT NULL);

--https://learnsql.com/course/sql-queries/multiple-tables/multiple-tables/multiple-tables-condition/
SELECT * FROM movie, director
WHERE movie.director_id = director.id;



--Show the column birth_year as born_in. Select only those movies which were filmed when their director was younger than 40
--(i.e. the difference between production_year and birth_year must be less than 40).
SELECT movie.title, movie.production_year, director.name, director.birth_year as born_in
FROM movie
JOIN director
ON movie.director_id = director.id
WHERE (production_year - birth_year) < 40
