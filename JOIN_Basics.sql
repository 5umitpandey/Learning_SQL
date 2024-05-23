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
