--https://learnsql.com/course/sql-queries/joins/join-revisited/inner-join/

SELECT room_id, room_number, beds, floor, equipment.id as equipment_id, name
FROM Room
INNER JOIN Equipment
	ON Room.ID = Equipment.Room_ID
