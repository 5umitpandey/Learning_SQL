--https://sqlbolt.com/lesson/select_queries_with_joins

--Find the domestic and international sales for each movie
SELECT Title, Domestic_sales, International_sales
FROM Boxoffice
    INNER JOIN Movies
        ON Boxoffice.Movie_id = Movies.id
