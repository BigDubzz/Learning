
-- Show items and their price using an alias of 'Cost'

USE FoodOrdering;

SELECT name AS Item_Name, price AS cost
FROM MenuItems;

-- Show Menu Items which cost more than £5

SELECT name, price
FROM MenuItems
WHERE price > 5.00;

-- Everything under £5 and available

SELECT name, price
FROM MenuItems
WHERE price < 5 AND availability = TRUE;

-- Update availability of Pizza to FALSE

UPDATE  MenuItems
SET availability = FALSE
WHERE name = 'Pizza';

SELECT * FROM MenuItems;

-- Show the two most recent orders

SELECT *
FROM Orders
ORDER BY date DESC
LIMIT 2;

-- Find the average price of items in the MenuItems table

USE FoodOrdering;

SELECT AVG(price) AS average_price
FROM MenuItems;


-- Calculate the total quantity of items ordered across all orders from the orderitems table

SELECT * FROM OrdersItems;

SELECT SUM(quantity) AS total
FROM OrdersItems; 


-- Group data by customer ID and total no of orders each customer has made

SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
Group By customer_id;


 -- Use distinct to retrieve unique item ids from the ordersItems to identify what's been ordered 

SELECT DISTINCT item_id
FROM OrdersItems;


-- Assume some names in the customer table contains extra spaces, use the TRIM function to remove the spaces when showing results

SELECT * FROM Customers;

INSERT INTO Customers VALUES
(4, '  Jade Ford-Baker ', 'jadefb@example.com', NOW());


SELECT name, TRIM(name) AS cleaned_name
FROM Customers;























