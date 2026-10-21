# Write your MySQL query statement below
with cte1 as (
    select s.user_id, s.time_stamp,c.action
    from signups s
    left join confirmations c on s.user_id=c.user_id
)
select user_id,
ROUND(AVG(CASE WHEN action='confirmed' then 1 else 0 end),2) as confirmation_rate
from cte1
group by user_id