# Write your MySQL query statement below
with cte1 as (
    select *,
    CASE
        When order_date=customer_pref_delivery_date THEN 'immediate'
        ELSE 'scheduled'
    END AS 'order_type'
    from Delivery
)
select
    ROUND(AVG(order_type='immediate')*100,2) as 'immediate_percentage'
    from cte1
    WHERE (customer_id, order_date) IN (SELECT customer_id, MIN(order_date) FROM Delivery GROUP BY customer_id)

