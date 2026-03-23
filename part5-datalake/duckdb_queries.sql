-- Q1: Customers with total number of orders
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders
FROM 'datasets/customers.csv' c
LEFT JOIN 'datasets/orders.json' o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

-- Q2: Top 3 customers by total order value
SELECT c.customer_name, SUM(o.total_amount) AS total_value
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_value DESC
LIMIT 3;

-- Q3: Products purchased by customers from Bangalore
SELECT DISTINCT p.product_name
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o ON c.customer_id = o.customer_id
JOIN 'datasets/products.parquet' p ON o.product_id = p.product_id
WHERE c.city = 'Bangalore';

-- Q4: Join all files
SELECT c.customer_name, o.order_date, p.product_name, o.quantity
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o ON c.customer_id = o.customer_id
JOIN 'datasets/products.parquet' p ON o.product_id = p.product_id;
