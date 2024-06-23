--HAVING CLAUSE

SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeDemographics.EmployeeID
WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle
--Above CODE will NOT WORK, WHY?

SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeDemographics.EmployeeID
HAVING COUNT(JobTitle) > 1
GROUP BY JobTitle
--Above CODE will NOT WORK, WHY?

SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeDemographics.EmployeeID
GROUP BY JobTitle

SELECT JobTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeDemographics.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

--SELECT	FROM	JOIN	GROUPBY		HAVING		ORDERBY
--This is the right ORDER
