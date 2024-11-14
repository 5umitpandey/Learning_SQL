-- https://learnsql.com/course/sql-queries/subqueries/multiple-results/any/
--= ANY, != ANY, < ANY, <= ANY, >= ANY

-- Find all information about all the city trips which have the same price as any hiking trip
SELECT *
FROM Trip
WHERE Price = ANY (
  	SELECT Price
	FROM Hiking_Trip
);
