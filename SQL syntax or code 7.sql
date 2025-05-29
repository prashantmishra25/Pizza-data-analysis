-- Determine the distribution of orders by hour of the day.

select hour(order_time) as hour,
count(order_id) from orders
group by hour(order_time)
order by hour asc;