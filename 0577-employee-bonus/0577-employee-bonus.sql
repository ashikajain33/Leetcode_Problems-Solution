# Write your MySQL query statement below
SELECT e1.name, e2.bonus
FROM Employee e1 
LEFT OUTER JOIN Bonus e2 on e1.empId = e2.empId
where ifnull(e2.bonus,0)<1000;