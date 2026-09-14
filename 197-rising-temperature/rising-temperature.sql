# Write your MySQL query statement below
with temp as
(
    select *,
    lag(temperature) over (order by recordDate) as prev_day_temp,
    lag(recordDate) over (order by recordDate) as pprev_day_date
    from Weather
)
select id as Id from temp
where temperature>prev_day_temp
and datediff(recordDate, pprev_day_date)=1