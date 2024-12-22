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
