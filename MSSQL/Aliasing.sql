--Aliasing

--Basic Use of 'AS' on COLOUMNS
SELECT FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics

--Use of 'AS' on TABLES
SELECT EmpDetails.EmployeeID, EmpSalary.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS EmpDetails
JOIN SQLTutorial.dbo.EmployeeSalary AS EmpSalary
	ON EmpDetails.EmployeeID = EmpSalary.EmployeeID

--Use Aliasing when table names get bigger and complex
