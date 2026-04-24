# Write your MySQL query statement below
select t.Department, t.Employee, t.salary
from
(select d.name as Department, e.name as Employee, e.salary as salary,
DENSE_RANK() over (partition by d.name order by e.salary desc) as rnk
from Employee e
left join Department d on e.departmentId=d.id)t
where t.rnk<=3