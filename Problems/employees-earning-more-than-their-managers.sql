--https://leetcode.com/problems/employees-earning-more-than-their-managers/?envType=problem-list-v2&envId=m8baczxh

SELECT e1.name AS Employee 
FROM Employee e1 
JOIN Employee e2 ON e1.managerId = e2.id 
WHERE e1.salary > e2.salary;
