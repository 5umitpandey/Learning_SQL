--https://learnsql.com/course/sql-queries/joins/aliases/self-joins/
--We want to know who lives with the student Jack Pearson in the same room.
--Use self-joining to show all the columns for the student Jack Pearson together with all the columns for each student living with him in the same room.
--Remember to exclude Jack Pearson himself from the result!

SELECT * 
FROM Student As Jack
JOIN Student AS Roommate
	ON Jack.room_id = Roommate.room_id
WHERE Jack.Name = 'Jack Pearson' AND Jack.id <> Roommate.id;
