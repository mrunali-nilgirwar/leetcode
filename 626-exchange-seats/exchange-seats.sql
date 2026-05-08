# Write your MySQL query statement below
SELECT id,
case 
    when id%2=1 THEN LEAD(student,1,student) OVER(order by id)
    when id%2=0 THEN LAG(student,1,student) OVER(order by id)
END as student
from Seat
order by id
