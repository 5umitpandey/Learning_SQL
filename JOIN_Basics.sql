--https://sqlbolt.com/lesson/select_queries_with_joins
--Find the domestic and international sales for each movie
SELECT Title, Domestic_sales, International_sales
FROM Boxoffice
    INNER JOIN Movies
        ON Boxoffice.Movie_id = Movies.id


--https://sqlbolt.com/lesson/select_queries_with_outer_joins
--List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT Distinct Building_name, Role FROM Buildings
LEFT JOIN Employees
    ON Building_name = Building;


--Find the names of the buildings that hold no employees 
SELECT Building_name FROM Buildings
LEFT JOIN Employees
    ON Building_name = Building
WHERE Role is NULL;

--https://sqlbolt.com/lesson/select_queries_with_expressions
--List all movies and their combined sales in millions of dollars
SELECT Title, (Domestic_sales + International_sales)/1000000 AS Total_Sales
FROM Boxoffice
INNER JOIN Movies
  ON Boxoffice.movie_id = Movies.id;
