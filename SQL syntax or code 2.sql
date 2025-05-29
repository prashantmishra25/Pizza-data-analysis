-- Calculate the total revenue generated from pizza sales.
select round(sum(o.quantity * p.price), 2) as revenue
from order_details as o
join pizzas as p
on p.pizza_id = o.pizza_id