-- Part 2.2 insert.sql
--
-- Submitted by: Sophia Kalanovska, 1634
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

--Insert into MARKET and Market_activedays
INSERT INTO MARKET VALUES ("NW1 8AL", "Camden Market");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Monday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Tuesday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Wednesday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Thursday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Friday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Saturday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("NW1 8AL", "Sunday");
--Insert into MARKET and Market_activedays
INSERT INTO MARKET VALUES ("WC1N 1NY", "London Farmers' Markets");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Monday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Tuesday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Wednesday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Thursday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Friday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Saturday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("WC1N 1NY", "Sunday");
--Insert into MARKET and Market_activedays
INSERT INTO MARKET VALUES ("W1F 0PH", "Berwick Street Market");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("W1F 0PH", "Saturday");
INSERT INTO MARKET_ACTIVEDAYS VALUES ("W1F 0PH", "Sunday");
--Insert into Food truck
INSERT INTO FOOD_TRUCK VALUES ("AD 35 JFM",' 2016-12-13');
INSERT INTO FOOD_TRUCK VALUES ("SB 42 HSL", '2017-01-21');
--Insert into TRUCK_ACTIVE_AT_MARKET
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-05-28');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-05-29');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-05-30');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-05-31');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-06-01');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-06-02');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("AD 35 JFM", "NW1 8AL", '2017-06-03');
--Insert into TRUCK_ACTIVE_AT_MARKET
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-05-28');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-05-29');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-05-30');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-05-31');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-06-01');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-06-02');
INSERT INTO TRUCK_ACTIVE_AT_MARKET VALUES ("SB 42 HSL", "WC1N 1NY", '2017-06-03');
--Insert into customers
INSERT INTO CUSTOMERS VALUES ("mila.kunis@gmail.com", "Mila Kunis", "9607 Arby Drive", '1983-08-14');
INSERT INTO CUSTOMERS VALUES ("ashton.kutcher@gmail.com", "Ashton Kutcher", "9607 Arby Drive", '1978-02-07');
INSERT INTO CUSTOMERS VALUES ("johnny.depp@gmail.com", "Johnny Depp", "9100 Wilshire Boulevard", '1963-06-09');
--Insert into burrito_club the customers
INSERT INTO BURRITO_CLUB(Customer_Email) VALUES ("mila.kunis@gmail.com");
INSERT INTO BURRITO_CLUB (Customer_Email) VALUES ("ashton.kutcher@gmail.com");
INSERT INTO BURRITO_CLUB (Customer_Email) VALUES("johnny.depp@gmail.com");
--Insert into burritos
INSERT INTO BURRITOS(Price, Description, Size, Has_rice) VALUES (5.50, "Small burrito", "Mini", true);
INSERT INTO BURRITOS(Price, Description, Size, Has_rice) VALUES (6.50, "Medium burrito", "Regular", true);
INSERT INTO BURRITOS(Price, Description, Size, Has_rice) VALUES (7.20, "Big burrito", "Grande", true); 
--insert into beverages
INSERT INTO BEVERAGES(Price, Description, Is_Alcoholic, Type, Size) VALUES (2.00, "Beverages", false, "Lemonade", "250 ml");
INSERT INTO BEVERAGES(Price, Description, Is_Alcoholic, Type, Size) VALUES (3.00, "Beverages", false, "Lemonade", "500 ml");
INSERT INTO BEVERAGES(Price, Description, Is_Alcoholic, Type, Size) VALUES (1.70, "Beverages", false, "Coca-Cola", "200 ml");
INSERT INTO BEVERAGES(Price, Description, Is_Alcoholic, Type, Size) VALUES (2.70, "Beverages", false, "Coca-Cola", "500 ml");
INSERT INTO BEVERAGES(Price, Description, Is_Alcoholic, Type, Size) VALUES (4.00, "Beverages", true, "Corona", "500 ml");
INSERT INTO BEVERAGES(Price, Description, Is_Alcoholic, Type, Size) VALUES (5.50, "Beverages", true, "Corona", "473 ml");
--insert into burrito_beans
INSERT INTO BURRITOS_BEANS(Description) VALUES ("Black beans");
INSERT INTO BURRITOS_BEANS(Description) VALUES ("Red beans");
--insert into BURRITOS_FILLING
INSERT INTO BURRITOS_FILLING(Description) VALUES ("Grilled Chicken");
INSERT INTO BURRITOS_FILLING(Description) VALUES ("Pulled Pork");
INSERT INTO BURRITOS_FILLING(Description) VALUES ("Grilled Steak");
INSERT INTO BURRITOS_FILLING(Description) VALUES ("Vegetarian");
--insert into BURRITOS_TOPPINGS(
INSERT INTO BURRITOS_TOPPINGS(Description, Price) VALUES ("Lettuce", NULL);
INSERT INTO BURRITOS_TOPPINGS(Description, Price) VALUES ("Tomato", NULL);
INSERT INTO BURRITOS_TOPPINGS(Description, Price) VALUES ("Mild salsa", NULL);
INSERT INTO BURRITOS_TOPPINGS(Description, Price) VALUES ("Hot salsa", NULL);
INSERT INTO BURRITOS_TOPPINGS(Description, Price) VALUES ("guacamole", 1.00);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-05-28', 1, "mila.kunis@gmail.com", "SB 42 HSL", "WC1N 1NY", 0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (1, 1, 1);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (1, 1, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (1, 1, 2,1);
INSERT INTO BURRITO_HAS_BEANS VALUES (1, 1, 1,1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (1, 1, 3, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-05-30', 1, "mila.kunis@gmail.com", "AD 35 JFM", "NW1 8AL", 0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (2, 3, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (2, 3, 2,1);
INSERT INTO BURRITO_HAS_BEANS VALUES (2, 3, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (2, 3, 5, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_no, Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES (3, '2017-06-02', 1, "mila.kunis@gmail.com", "SB 42 HSL", "WC1N 1NY", 0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (3, 4, 2);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (3, 3, 1);
INSERT INTO BURRITO_HAS_FILLING VALUES (3, 3, 1, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (3, 3, 2, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (3, 3, 2, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (3, 3, 5, 1);

--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-05-29', 2, "ashton.kutcher@gmail.com", "AD 35 JFM", "NW1 8AL", 0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (4, 2, 5);
INSERT INTO BURRITO_HAS_FILLING VALUES (4, 2, 3, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (4, 2, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (4, 2, 1, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-06-01', 2, "ashton.kutcher@gmail.com", "SB 42 HSL", "WC1N 1NY",  0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (5, 1, 3);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (5, 1, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (5, 1, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (5, 1, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (5, 1, 3, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-06-03', 2, "ashton.kutcher@gmail.com", "SB 42 HSL", "WC1N 1NY",  0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (6, 3, 3);
INSERT INTO BURRITO_HAS_FILLING VALUES (6, 3, 4, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (6, 3, 2, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (6, 3, 5, 1);

--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-05-28', 3, "johnny.depp@gmail.com", "AD 35 JFM", "NW1 8AL", 0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (7, 1, 1);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (7, 1, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (7, 1, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (7, 1, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (7, 1, 1, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-06-02', 3, "johnny.depp@gmail.com", "SB 42 HSL", "WC1N 1NY",  0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (8, 2, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (8, 2, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (8, 2, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (8, 2, 5, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-06-03', 3, "johnny.depp@gmail.com", "SB 42 HSL", "WC1N 1NY", 0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (9, 3, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (9, 3, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (9, 3, 2, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (9, 3, 2, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Food_Truck, Market, Total_cost) VALUES ('2017-05-29', "AD 35 JFM","NW1 8AL", 0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (10, 2, 1);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (10, 2, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (10, 2, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (10, 2, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (10, 2, 1, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Food_Truck, Market, Total_cost) VALUES ('2017-05-31', "SB 42 HSL", "WC1N 1NY", 0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (11, 1, 1);
INSERT INTO BURRITO_HAS_FILLING VALUES (11, 1, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (11, 1, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (11, 1, 3, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Food_Truck, Market, Total_cost) VALUES ('2017-06-02', "AD 35 JFM", "NW1 8AL", 0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (12, 1, 1);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (12, 1, 2);
INSERT INTO BURRITO_HAS_FILLING VALUES (12, 1, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (12, 1, 1, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (12, 1, 4, 1);
--insert into CUSTOMER_ORDER_ITEMS
INSERT INTO CUSTOMER_ORDER_ITEMS(Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES ('2017-06-03', 3, "johnny.depp@gmail.com", "SB 42 HSL", "WC1N 1NY", 0 );
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (13, 3, 4);
INSERT INTO BURRITO_HAS_FILLING VALUES (13, 3, 2, 1);
INSERT INTO BURRITO_HAS_BEANS VALUES (13, 3, 2, 1);
INSERT INTO BURRITO_HAS_TOPPINGS VALUES (13, 3, 3, 1);

-- create an view that present the total cost of the Burittos
CREATE VIEW Order_Burittos_Total_Costs AS
( 
    SELECT Order_no, SUM(Quantity*Price) as cost, Quantity
    FROM ORDER_CONTAINS_BURRITOS JOIN BURRITOS ON(BURRITOS.ID = Burrito_Id)
    GROUP BY Order_no
);

-- create an view that present the total cost of the Beverages
CREATE VIEW Order_Beverages_Total_Costs AS
( 
    SELECT Order_no, SUM(Quantity*Price) as cost
    FROM ORDER_CONTAINS_BEVERAGES JOIN BEVERAGES ON(BEVERAGES.ID = Beverages_Id)
    GROUP BY Order_no
);

-- create an view that present the total cost of the toppings
CREATE VIEW Order_BurritosToppings_Total_Costs AS
( 
    SELECT Order_no, SUM(Quantity*Price) as cost
    FROM BURRITO_HAS_TOPPINGS JOIN BURRITOS_TOPPINGS ON(BURRITOS_TOPPINGS.ID = Toppings_id)
    GROUP BY Order_no
);

    -- create an view that present the total cost of all the items in the oreder
    SELECT Order_no, SUM(cost) AS Total_cost 
    FROM (
        (SELECT Order_no, cost, "Burrito" as item_type FROM Order_Burittos_Total_Costs)
        UNION
        (SELECT Order_no, cost, "Beverages" as item_type FROM Order_Beverages_Total_Costs)
        UNION
        (SELECT Order_no, cost, "BurritosToppings" as item_type FROM Order_BurritosToppings_Total_Costs)
    ) AS tmp
    GROUP BY Order_no;

    --+----------+------------+
    --| Order_no | Total_cost |
    --+----------+------------+      
	--|        1 |      13.00 |
	--|        2 |      15.40 |
    --|	       3 |      13.60 |
	--|        4 |      32.50 |
	--|        5 |      17.00 |
	--|        6 |      15.40 |
	--|        7 |      13.00 |
	--|        8 |      14.00 |
	--|        9 |      14.40 |
	--|       10 |      16.00 |
	--|       11 |       5.50 |
	--|       12 |      13.00 |
	--|       13 |      28.80 |
	--+----------+------------+

-- update all the CUSTOMER_ORDER_ITEMS with a total cost of whatever is in the view 
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 13.00 WHERE Order_no = 1;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 15.40 WHERE Order_no = 2;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 13.60 WHERE Order_no = 3;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 32.50 WHERE Order_no = 4;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 17.00 WHERE Order_no = 5;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 15.40 WHERE Order_no = 6;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 13.00 WHERE Order_no = 7;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 14.00 WHERE Order_no = 8;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 14.40 WHERE Order_no = 9;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 16.00 WHERE Order_no = 10;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost =  5.50 WHERE Order_no = 11;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 13.00 WHERE Order_no = 12;
UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 28.00 WHERE Order_no = 13;

-- create a view of the order number and the quantity ordered by the order number
CREATE VIEW Order_no_Quantity AS
( 
   SELECT Order_no, Quantity  
   FROM Order_Burittos_Total_Costs 
   GROUP BY Order_no
);
-- create a view of the order number and the quantity and the burritoclub id of the customers
CREATE VIEW CUSTOMER_ORDER_ITEMS_QUANTITY AS
( 
select a.Order_no, a.Quantity, b.Buritoclub_id
from  Order_no_Quantity a, CUSTOMER_ORDER_ITEMS b 
where a.Order_no = b.Order_no
);

-- create a view of burritoclubcard and the sum of the quantity grouped by buritoclub_id
CREATE VIEW Buritoclub_id_QUANTITY AS
( 
SELECT Buritoclub_id, SUM(Quantity) as total
FROM CUSTOMER_ORDER_ITEMS_QUANTITY
GROUP BY Buritoclub_id
);
-- update the number of bought burritos
UPDATE BURRITO_CLUB
INNER JOIN Buritoclub_id_QUANTITY ON BURRITO_CLUB.ID = Buritoclub_id_QUANTITY.Buritoclub_id
SET BURRITO_CLUB.Burritos_bought = Buritoclub_id_QUANTITY.total;

-- set the free burrito
UPDATE CUSTOMER_ORDER_ITEMS
SET CUSTOMER_ORDER_ITEMS.FreeBurrito = true
WHERE Order_no = 13;

 



