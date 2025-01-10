--https://leetcode.com/problems/rank-scores/

SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS rank 
FROM Scores 
ORDER BY score DESC;

/*
DENSE_RANK() is a window function in SQL used to assign ranks to rows in the result set. 
Unlike RANK(), which might leave gaps between ranks when there are ties.
The OVER keyword is used with window functions to define the window (or set of rows) over which the function operates. It specifies how the rows in the result set are partitioned and ordered.
*/
