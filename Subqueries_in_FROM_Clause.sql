--https://learnsql.com/course/sql-queries/subqueries/other-subqueries/subquery-from/

--Show mountains together with their countries. The countries must have at least 50,000 residents
--Query inside FROM
SELECT *
FROM Mountain, (
    SELECT *
    FROM Country
    WHERE Population >= 50000
) AS small_country
WHERE small_country.id = Mountain.country_id;



--https://learnsql.com/course/sql-queries/subqueries/other-subqueries/subquery-from-2/
--Show hiking trips together with their mountains. The mountains must be at least 3,000 high. Select only the columns length and height
--Query inside FROM
SELECT
  Length,
  Height
FROM Hiking_trip, (
  SELECT *
  FROM Mountain
  WHERE Height >= 3000
) AS nice_Mountain
WHERE nice_Mountain.id = Hiking_trip.Mountain_id;
