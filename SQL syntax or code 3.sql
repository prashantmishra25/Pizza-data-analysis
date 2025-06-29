-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT pizza_types.category AS cat, 
SUM(order_details.quantity) AS quant
FROM pizza_types JOIN pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category ORDER BY quant DESC;
