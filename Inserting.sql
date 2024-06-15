--https://sqlbolt.com/lesson/inserting_rows

--Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO boxoffice
(movie_id, rating, Domestic_sales, International_sales)
VALUES (15, 8.7, 340000000, 270000000);
