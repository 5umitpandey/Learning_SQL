--https://learnsql.com/course/sql-queries/joins/join-revisited/inner-join/
SELECT room_id, room_number, beds, floor, equipment.id as equipment_id, name
FROM Room
INNER JOIN Equipment
	ON Room.ID = Equipment.Room_ID

--https://learnsql.com/course/sql-queries/joins/aliases/aliases/
--Use INNER JOIN on the tables room and equipment so that all pieces of equipment are shown with their room data. Use table aliases r and e.
--Select the columns id and name from the table equipment, as well as room_number and beds from the table room.
SELECT e.id, e.name, r.room_number, r.beds
FROM Equipment AS e
INNER JOIN Room AS r
	ON r.ID = e.room_id
