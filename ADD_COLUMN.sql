--https://sqlbolt.com/lesson/altering_tables

--Add column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English
ALTER TABLE Movies
    ADD COLUMN 'Language' varchar
    DEFAULT "English";
