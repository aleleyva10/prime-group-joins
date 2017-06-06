-- 1 Get customers and their addresses

SELECT * FROM customers
JOIN addresses
ON customers.id = addresses.customer_id;

-- 2
SELECT * FROM orders
JOIN line_items
ON orders.id = line_items.order_id;

-- 3
SELECT warehouse, products.description FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'cheetos';

-- 4
SELECT warehouse.warehouse, products.description FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';

-- 5
SELECT customers.first_name, customers.last_name, COUNT(orders.id) FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON addresses.id = orders.address_id
GROUP BY customers.last_name, customers.first_name;

--6
SELECT COUNT(id) FROM customers

--7
SELECT COUNT(id) FROM products

--8
SELECT SUM(on_hand) FROM warehouse_product
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';
