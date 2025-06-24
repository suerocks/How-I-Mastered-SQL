-- Task 2: Show only the customer_id column

SELECT customer_id FROM breakfast_menu;

-- Task 3: Show only the customer_name and dish_name columns

SELECT customer_name, dish_name FROM breakfast_menu;

-- Task 4: Show the table below

SELECT customer_name, price FROM breakfast_menu
WHERE price = 10;

-- Task 5: Show the table below

SELECT customer_id, price FROM breakfast_menu
WHERE customer_id=price;

-- Task 6: Change the 'customer_id' name to 'id' temporarily

SELECT customer_id AS id, customer_name, dish_name, price FROM breakfast_menu;

-- Task 7: Change Zoro's dish to 'chicken fries'

UPDATE breakfast_menu SET dish_name = 'chicken fries'
WHERE customer_name = 'Zoro';
