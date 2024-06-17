--https://sqlbolt.com/lesson/updating_rows

--Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE Movies
SET Title = "Toy Story 3", Director = "Lee Unkrich"
WHERE Title = "Toy Story 8"
