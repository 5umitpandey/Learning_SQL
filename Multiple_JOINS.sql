--https://learnsql.com/course/sql-queries/joins/aliases/join-many-tables/
-- The challenge is as follows: for each room with 2 beds where there actually are 2 students, we want to show one row which contains the following columns:
-- 1. the name of the first student.
-- 2. the name of the second student.
-- 3. the room number.
--Don't change any column names. Each pair of students should only be shown once. The student whose name comes first in the alphabet should be shown first.

SELECT student.Name, roommate.Name, Room.Room_Number
FROM Student
JOIN Student AS Roommate
	ON student.room_id = Roommate.room_id
JOIN Room
	ON student.room_id = room.id
WHERE student.name < Roommate.name AND Room.Beds = 2;
