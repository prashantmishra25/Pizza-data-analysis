-- List the top 5 most ordered pizza types along with their quantities.
SELECT p.pizza_type_id AS ordered_pizza,
SUM(o.quantity) AS quantities
FROM pizzas AS p JOIN 
order_details AS o ON p.pizza_id = o.pizza_id
GROUP BY p.pizza_type_id
ORDER BY quantities DESC LIMIT 5;



