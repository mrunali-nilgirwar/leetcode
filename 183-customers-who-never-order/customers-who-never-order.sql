# Write your MySQL query statement below
select Customers
from
(select c.name as Customers , o.customerId from Customers c
left join Orders o
on c.id=o.customerId)t
where t.customerId is null