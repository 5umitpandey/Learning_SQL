select name, GDP/population as GDPP from world
where population > 200000000


List the next five Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;
