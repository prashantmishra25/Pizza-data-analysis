-- Identify the most common pizza size ordered.

-- select max(size) as most_common_pizza,
-- count(size) as sum from pizzas
-- group by size;

SELECT pizzas.size, COUNT(order_details.order_details_id) AS sum
FROM pizzas JOIN order_details 
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size;
