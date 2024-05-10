Find all the Toy Story movies 
Find all the movies directed by John Lasseter 

Find all the movies (and director) not directed by John Lasseter: 
SELECT Title, Director FROM movies
WHERE Director NOT LIKE "%John Lasseter%"

  
Find all the WALL-* movies
SELECT * FROM movies
WHERE Title LIKE "%WALL-%"
