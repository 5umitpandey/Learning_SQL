--UPDATE Values of Table

SELECT * FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName = 'Meredith' AND LastName =	'Palmer'

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Gender = 'Female'
WHERE FirstName = 'Meredith' AND LastName =	'Palmer'

--DELETE Values of Table

SELECT * FROM SQLTutorial.dbo.EmployeeDemographics
WHERE WHERE EmployeeID = 1010
  
DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1010

--FIRST use SELECT statement to verify WHAT and WHERE the changes will be made
