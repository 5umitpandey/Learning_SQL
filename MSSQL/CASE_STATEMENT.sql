--CASE STATEMENT

SELECT EmployeeDemographics.FirstName, EmployeeDemographics.Age,
CASE
	WHEN Age > 30 THEN 'Senior'
	WHEN Age BETWEEN 25 AND 30 THEN 'Junior'
	ELSE 'Young'
END AS Exp_Level
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age

--FROM Statement comes AFTER CASE statement
		
