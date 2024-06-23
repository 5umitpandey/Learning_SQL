SELECT EmployeeDemographics.EmployeeID, FirstName, Age FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary FROM SQLTutorial.dbo.EmployeeSalary

SELECT EmployeeDemographics.EmployeeID, FirstName, Age FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT EmployeeID, JobTitle, Salary FROM SQLTutorial.dbo.EmployeeSalary

--UNION Removes Duplicates
--UNION ALL Shows all the coloumns
