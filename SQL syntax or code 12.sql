-- Analyze the cumulative revenue generated over time.
select order_date, sum(revenue) over(order by order_date) as cum_revenue
from
(select orders.order_date, sum(order_details.quantity * pizzas.price) as revenue
from pizzas join order_details on pizzas.pizza_id = order_details.pizza_id
join orders on order_details.order_id = orders.order_id
group by orders.order_date) as sales;