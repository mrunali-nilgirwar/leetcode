# Write your MySQL query statement below
select id, count(id) as num
from
(SELECT requester_id as id
from RequestAccepted
UNION ALL
SELECT accepter_id as id
from RequestAccepted)t
group by id
order by count(id) desc
limit 1