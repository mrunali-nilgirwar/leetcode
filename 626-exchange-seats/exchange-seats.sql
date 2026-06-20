# Write your MySQL query statement below
select id, 
CASE 
    When id%2=1 AND id <> (SELECT MAX(id) FROM Seat)
        THEN LEAD(student) over (order by id)
    when id%2=0
        THEN LAG(student) over (ORDER BY id)
    ELSE student
END AS student
from Seat
Order by id;
