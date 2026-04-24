# Write your MySQL query statement below
DELETE p1
from Person p1
join Person p2 on p1.email=p2.email
and p1.id>p2.id




-- DELETE FROM Person
-- where id 
-- in 
-- (select email,id,
-- dense_rank() over (partition by email order by id) as rnk
-- from Person
-- where dense_rank() over (partition by email order by id) > 1
-- )


