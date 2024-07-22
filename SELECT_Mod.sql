--select name, GDP/population as GDPP from world
where population > 200000000


--List the next five Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;


--List all the cities west of Chicago, ordered from west to east
SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;


--https://sqlbolt.com/lesson/select_queries_order_of_execution
--Find the number of movies each director has directed
SELECT Director, Count(Title) as NumberOfMovies
FROM movies
Group BY Director

--Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;


-- https://learnsql.com/course/sql-queries/order-by-group-by/aggregation/count-distinct/
-- Count how many different positions there are in the table employees. Name the column distinct_positions
SELECT COUNT(DISTINCT position) AS distinct_positions
FROM employees
