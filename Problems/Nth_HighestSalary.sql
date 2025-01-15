CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT MAX(SALARY)
        FROM (
            SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
        FROM Employee
        ) AS NthHighest
        WHERE Rank = @N
    );
END
