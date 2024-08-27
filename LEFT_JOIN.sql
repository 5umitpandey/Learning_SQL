--https://learnsql.com/course/sql-queries/joins/left-join/left-join-practice/
--Select all pieces of equipment together with the room they are assigned to. Show each piece of equipment even if it isn't assigned to a room. Select all available columns.
SELECT *
FROM Equipment
LEFT JOIN Room
	ON Equipment.room_id = Room.id
