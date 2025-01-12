--https://leetcode.com/problems/second-highest-salary/?envType=problem-list-v2&envId=m8baczxh

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(Salary) FROM Employee);
