#DROP TABLE users;
#DROP TABLE sandwich;
#DROP TABLE pizza_calzone;
#DROP TABLE active_orders;
#DROP TABLE inventory;
#DROP TABLE ingredients;

CREATE TABLE if not exists users
(
	Name varchar(32) not null, 
	UserId varchar(15) not null, 
	Password varchar(20) not null,

	Primary Key(UserID)
); 

CREATE TABLE if not exists sandwich
(
	sandID integer not null, 
	Name varchar(25) not null, 
	WaitTime integer not null, 
	Price float not null, 

	Primary Key (sandID)
);

CREATE TABLE if not exists pizza_calzone
(
	pizzaID integer not null, 
	Name varchar(25) not null, 
	WaitTime integer not null, 
	Price float not null,

	Primary Key (pizzaID)
);

CREATE TABLE if not exists active_orders
(
	UserName varchar(32) not null, 
	Item varchar(25) not null, 
	PickupTime integer not null,

	Primary Key(UserName)
);

CREATE TABLE if not exists inventory
(
	ingredientId varchar(25) not null, 
	stockId integer not null
);

CREATE TABLE if not exists ingredients
(
	foodID integer not null, 
	ingredient varchar(20) not null

);

INSERT INTO users (Name, UserId, Password) values
	('Tyler Mauer', 'tyma0636', 'lozer')
;

INSERT into sandwich (sandID, Name, WaitTime, Price) values 
	(1, 'Baker Bacon', 7, 6.89), 
	(2, 'BBQ Chicken', 7, 6.89), 
	(3, 'BLT', 7, 4.89), 
	(4, 'Italian', 7, 6.89), 
	(5, 'Darley Divine', 7, 6.89), 
	(6, 'Farrand Fodder', 7, 6.89), 
	(7, 'Hallet Ham', 7, 6.89), 
	(8, 'Libby Licous', 7, 6.89), 
	(9, 'Parmesan Grilled Cheese', 7, 5.89), 
	(10, 'Tofu Mozzarella', 7, 5.89), 
	(11, 'Tuna Melt', 7, 5.89), 
	(12, 'Turkey Bacon Club', 7, 6.89), 
	(13, 'Turkey Jalapeno Melt', 7, 6.89), 
	(14, 'Veggie Club', 7,  6.89)
;

INSERT into pizza_calzone (pizzaID, Name, WaitTime, Price) values 
	(15, 'Cheese Pizza', 20, 4.89),
	(16, 'Pepperoni Pizza', 20,5.49),
	(17, 'BBQ Chicken Pizza',20,6.89),
	(18, 'Meat Lovers Pizza',20,6.98),
	(19, 'Hawaiian Pizza',20,6.89),
	(20, 'Margherita Pizza',20,5.49),
	(21, 'Vegetarian Pizza',20,5.49),
	(22, 'Vegan Pizza',20,5.39),
	(23, 'Cheese Calzone', 20, 5.89),
	(24, 'Pepperoni Calzone', 20,6.49),
	(25, 'BBQ Chicken Calzone',20,7.89),
	(26, 'Meat Lovers Calzone',20,7.98),
	(27, 'Hawaiian Calzone',20,7.89),
	(28, 'Margherita Calzone',20,6.49),
	(29, 'Vegetarian Calzone',20,6.49),
	(30, 'Vegan Calzone',20,6.39)
;

INSERT INTO ingredients (foodID, ingredient) values 
	(1, 'Bacon'), (1, 'Pepper Jack'), (1, 'Lettuce'), (1, 'Tomato'), (1, 'Balsamic Vinaigrette'), (1, 'Bread'),
	(2, 'Chicken'), (2, 'Bacon'), (2, 'Mozzarella'), (2, 'BBQ Sauce'), (2, 'Lettuce'), (2, 'Tomato'), (2, 'Onion'), (2, 'Bread'),
	(3, 'Bacon'), (3, 'Lettuce'), (3, 'Tomato'), (3, 'Bread'),
	(4, 'Pepperoni'), (4, 'Salami'), (4, 'Ham'), (4, 'Provolone'), (4, 'Lettuce'), (4, 'Tomato'), (4, 'Onion'), (4, 'Italian Dressing'), (4, 'Salt and Pepper'), (4, 'Bread'),
	(5, 'Chicken'), (5, 'Marinara'), (5, 'Mozzarella'), (5, 'Parmesan'), (5, 'Spinach'), (5, 'Tomato'), (5, 'Bread'),
	(6, 'Basil Pesto'), (6, 'Mozzarella'), (6, 'Spinach'), (6, 'Cucumber'), (6, 'Tomato'), (6, 'Hummus'), (6, 'Bread'),
	(7, 'Ham'), (7, 'Cheddar'), (7, 'Lettuce'), (7, 'Tomato'), (7, 'Bread'),
	(8, 'Fontina'), (8, 'Mozzarella'), (8, 'Parmesan'), (8, 'Bread'),
	(9, 'Fontina'), (9, 'Balsamic Onions'), (9, 'Tomato'), (9, 'Bread'),
	(10, 'Tofu'), (10, 'Mozzarella'), (10, 'Lettuce'), (10, 'Tomato'), (10, 'Balsamic Onions'), (10, 'Bread'),
	(11, 'Tuna Salad'), (11, 'Swiss'), (11, 'Lettuce'), (11, 'Tomato'), (11, 'Onion'), (11, 'Bread'),
	(12, 'Turkey'), (12, 'Bacon'), (12, 'Provolone'), (12, 'Lettuce'), (12, 'Tomato'), (12, 'Onion'), (12, 'Bread'),
	(13, 'Turkey'), (13, 'Pepper Jack'), (13, 'Jalapeno'), (13, 'Lettuce'), (13, 'Tomato'), (13, 'Onion'), (13, 'Bread'),
	(14, 'Spinach'), (14, 'Bell Peppers'), (14, 'Mushrooms'), (14, 'Cucumbers'), (14, 'Lettuce'), (14, 'Tomato'), (14, 'Balsamic Onions'), (14, 'Bread'),
	(15, 'Mozzarella'), (15, 'Red Sauce'),
	(16, 'Mozzarella'), (16, 'Red Sauce'), (16, 'Pepperoni'),
	(17, 'Mozzarella'), (17, 'BBQ Sauce'), (17, 'Chicken'), (17, 'Bacon'), (17, 'Onion'),
	(18, 'Mozzarella'), (18, 'Red Sauce'), (18, 'Sausage'), (18, 'Ham'), (18, 'Pepperoni'), 
	(19, 'Mozzarella'), (19, 'Red Sauce'), (19, 'Pineapple'), (19, 'Ham'),
	(20, 'Mozzarella'), (20, 'Red Sauce'), (20, 'Tomato'), (20, 'Basil'), (20, 'Garlic'),
	(21, 'Mozzarella'), (21, 'Red Sauce'), (21, 'Spinach'), (21, 'Bell Peppers'), (21, 'Mushrooms'),
	(22, 'Tomato'), (22, 'Red Sauce'), (22, 'Garlic'), (22, 'Black Olives'), (22, 'Basil'),
	(23, 'Mozzarella'),
	(24, 'Mozzarella'), (24, 'Pepperoni'),
	(25, 'Mozzarella'), (25, 'BBQ Sauce Side'), (25, 'Chicken'), (25, 'Bacon'), (25, 'Onion'),
	(26, 'Mozzarella'), (26, 'Sausage'), (26, 'Ham'), (26, 'Pepperoni'), (26, 'Red Sauce'),
	(27, 'Mozzarella'), (27, 'Pineapple'), (27, 'Ham'),
	(28, 'Mozzarella'), (28, 'Tomato'), (28, 'Basil'), (28, 'Garlic'),
	(29, 'Mozzarella'), (29, 'Spinach'), (29, 'Bell Peppers'), (29, 'Mushrooms'),
	(30, 'Tomato'), (30, 'Garlic'), (30, 'Black Olives'), (30, 'Basil')
;

INSERT INTO active_orders (UserName, Item, PickupTime) values 
	('tyma0636', 'Vegan Calzone', 20)
;

INSERT into inventory (ingredientId, stockId) values 
	('Ciabatta', 1), ('Bacon', 1), ('Chicken', 1), ('Ham', 1), ('Salami', 1), ('Pepperoni', 1),
	('Sausage', 1),('Turkey',1), ('Cheddar', 1), ('Mozzarella', 1), ('Provolone', 1), ('Pepper Jack', 1), 
	('Fontina', 1), ('Swiss', 1), ('Parmesan', 1), ('Lettuce', 1), ('Tomato', 1), ('Spinach', 1),
	('Onion',1),('Mushrooms',1),('Bell Peppers',1), ('Banana Peppers',1), ('Cucumbers',1),
	('Balsamic Onions', 1),('Black Olives',1),('Jalapenos',1),('Pineapple', 1), ('BBQ Sauce', 1),
	('Red Sauce', 1), ('Hummus', 1), ('Garlic', 1), ('Basil', 1)
;





