CREATE TABLE IF NOT EXISTS EmployeeDemographics
  (
  'EmployeeID' int,
  'FirstName' varchar(255),
  'LastName' varchar(255),
  'Age' int,
  'Gender' varchar(255)
  );

CREATE TABLE IF NOT EXISTS EmployeeSalary
(
  'EmployeeID' int,
  'JobTitle' varchar(255),
  'Salary' int
);
