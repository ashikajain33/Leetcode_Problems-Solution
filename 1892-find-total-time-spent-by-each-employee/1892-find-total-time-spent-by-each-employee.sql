# Write your MySQL query statement below
-- select 
--     event_day AS day,
--     emp_id,
--     SUM(out_time-in_time) AS total_time
--     FROM Employees
-- group by day, emp_id

with cte as
(
    select event_day as day,
        emp_id,
        out_time -in_time as office_time
    from Employees
)
select 
    day,
    emp_id,
    SUM(office_time) AS total_time
    FROM cte
group by day, emp_id