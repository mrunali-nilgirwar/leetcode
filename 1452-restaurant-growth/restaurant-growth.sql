# Write your MySQL query statement below
select t.visited_on as visited_on, t.amount as amount, t.average_amount as average_amount
from
(select visited_on, sum(sum(amount)) over (order by visited_on rows between 6 preceding and current row) as amount,
round(AVG(sum(amount)) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) as average_amount
from Customer
group by visited_on
)t
where visited_on>= (select min(visited_on) + INTERVAL 6 DAY from Customer)
order by visited_on