# Write your MySQL query statement below
with employee_dept as
    (select e.name as Employee, d.name as Department, e.salary as Salary,
    DENSE_RANK() over (partition by d.id order by salary desc) AS rnk
    from employee e
    join department d on e.departmentID=d.id)
select Department, Employee, Salary
from employee_dept
where rnk<=3  
