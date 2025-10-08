
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



SELECT name, type, email
FROM membership
WHERE type = 'pro';
-- Selects name, type, and email address from the membership table where the membership type is pro. 

SELECT *
FROM schools
WHERE type = 'private';
-- selects all from the schools table where the school type is private.

SELECT *
FROM grades
WHERE type = 4;
-- selects all from the grades table where the grade type equals 4

SELECT *
FROM cereals;
-- selects all from the cereals table

SELECT * 
FROM race;
-- selects all information from a table based on race

SELECT DISTINCT platform
FROM games;
-- selects games based on platform but will only list each platform once

SELECT name 
FROM students 
ORDER BY score DESC; 
-- selects students and lists them according to their scores in descending order

SELECT * 
FROM books
ORDER BY author;
-- selects books and orders them by author 

SELECT *
FROM books
WHERE genre = 'fiction';
-- selects books which are fiction

SELECT title
FROM books
WHERE year = 2011
ORDER BY author;
-- selects the titles from books which were published in 2011 and orders them by author in asc order

SELECT title, year
FROM books
WHERE genre = 'non-fiction'; 
-- selects the title and year from books which are non-fiction

SELECT *
FROM students 
WHERE year <> 1; 
-- selects data which doesnt meet a condition - all students who are not in year one. 

SELECT * 
FROM students
WHERE major <> 'biology';
-- selects all entries where students are not studying biology

SELECT *
FROM companies
WHERE years_active <> 3;
-- selects all from the companies table where the companies have not been active for 3 years. Will still show less than and more than 3. 

SELECT *
FROM companies
WHERE years_active <> 1, 2, 3;
-- selects all from the companies table where the companies have not been active for less than 3 years.

SELECT * 
FROM companies
WHERE years_active <> <3; 
-- selects all from the companies table where the companies have not been active for less than 3 years. 

SELECT *
FROM chocolate
WHERE price < 2;
-- select all from chocolate table where the price is less than 2. 2 is not less than 2 so anything 2+ will not show. 

SELECT *
FROM chocolate
WHERE price <= 2;
-- This modification to the operator shows values of chocolate below and equal to 2.

SELECT city
FROM pollution
WHERE pollution_index < 80;
-- Selects the cities where the pollution_index value is less than 80. Use <= to include those with a PI of 80 and under. 

SELECT *
FROM pollution
WHERE pollution_index < 72; 
-- selects all info from the pollution table where PI is less than 72.

SELECT * 
FROM chocolate
WHERE price > 2;
-- selects all chocolates where the price is higher than two. Use the operator >= to get all prices higher than 2 and including 2.

SELECT name AS oldest
FROM mario_games
WHERE release = 1983;
-- selects the name of the game released in 1983 and shows it as 'oldest' (alias) from the mario_games table. Alias does not change the original table.

SELECT name AS newest, release
FROM mario_games
WHERE release = 2013;
-- selects the name and gives alias "newest" and selects release column from the mario_games table where the release year is 2013.

SELECT name AS newest, release AS year
FROM mario_games
WHERE release = 2013;
-- selects the name and gives alias "newest" and selects release column with the name "year" from the mario_games table where the release year is 2013.

Select * 
FROM flights
WHERE daily <> 1; 
-- selects all info for flights which are not once a day. 

SELECT daily
FROM flights
WHERE destination <> 'Paris';
-- selects the daily column from flights table where the destination is not Paris. 





















