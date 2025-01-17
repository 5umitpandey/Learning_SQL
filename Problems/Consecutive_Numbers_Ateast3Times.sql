--https://leetcode.com/problems/consecutive-numbers/?envType=problem-list-v2&envId=m8baczxh

SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT num,
        LEAD(num, 1) OVER (ORDER BY id) AS next_num1,
        LEAD(num, 2) OVER (ORDER BY id) AS next_num2
    FROM Logs
    ) AS subquery
WHERE num = next_num1 AND num = next_num2;
