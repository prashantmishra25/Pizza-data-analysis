-- Determine the top 3 most ordered pizza types based on revenue.
SELECT pizza_types.name,
SUM(pizzas.price * order_details.quantity) AS total_revenue
FROM pizzas JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name ORDER BY total_revenue DESC LIMIT 3;
