CREATE TABLE breakfast_menu (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  dish_name VARCHAR(50),
  price INT
);

INSERT INTO breakfast_menu (customer_id, customer_name, dish_name, price)
VALUES 
  (001, 'Sarah', 'pancakes', 3),
  (002, 'Michael', 'oatmeal', 8),
  (003, 'Brian', 'scrambled eggs', 5),
  (004, 'Zoro', 'yam porridge', 10),
  (005, 'Tim', 'chocolate sundae', 7),
  (006, 'Afia', 'greek salad', 5),
  (007, 'Godwin', 'oatmeal', 8),
  (008, 'Ade', 'yam porridge', 10),
  (009, 'Ra', 'pancakes', 3),
  (010, 'Sue', 'coffee', 1);

SELECT * FROM breakfast_menu;
