# Write your MySQL query statement below
with result as
(
    select *, 
    lag(num) over (order by id) as prev_num,
    lead(num) over (order by id) as next_num
    from Logs
)
select distinct num as ConsecutiveNums 
from result
where num=prev_num and num=next_num