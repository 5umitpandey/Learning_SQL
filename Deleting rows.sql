--https://sqlbolt.com/lesson/deleting_rows
  
--Andrew Stanton has also left the studio, so please remove all movies directed by him
DELETE FROM Movies
WHERE Director = "Andrew Stanton"
