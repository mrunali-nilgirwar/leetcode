# Write your MySQL query statement below
with result as
(select 
    e.name as Employee, 
    d.name as Department, 
    e.salary as Salary
from Employee e
left join Department d on e.departmentID=d.id),
ranked as
(
select *, 
DENSE_RANK() OVER (partition by Department order by Salary desc) as rnk
from result)

select Department, Employee, Salary
from ranked
where rnk=1