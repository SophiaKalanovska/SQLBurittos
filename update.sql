-- Part 2.4 update.sql
--
-- Submitted by: Sophia Kalanovska, 1634966
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

SELECT * FROM BURRITO_CLUB WHERE Customer_Email = "johnny.depp@gmail.com";

--+----+-----------------------+-----------------+
--| ID | Customer_Email        | Burritos_bought |
--+----+-----------------------+-----------------+
--|  3 | johnny.depp@gmail.com |              10 |
--+----+-----------------------+-----------------+

INSERT INTO CUSTOMER_ORDER_ITEMS (Order_no, Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES (14,'2017-06-03', 3, "johnny.depp@gmail.com", "WC1N 1NY", "SB 42 HSL", 0);
INSERT INTO ORDER_CONTAINS_BURRITOS VALUES (15, 2, 10);

UPDATE BURRITO_CLUB
INNER JOIN Buritoclub_id_QUANTITY ON BURRITO_CLUB.ID = Buritoclub_id_QUANTITY.Buritoclub_id
SET BURRITO_CLUB.Burritos_bought = Buritoclub_id_QUANTITY.total;

UPDATE CUSTOMER_ORDER_ITEMS
SET CUSTOMER_ORDER_ITEMS.FreeBurrito = true
WHERE Order_no = 15;


SELECT Order_no, SUM(cost) AS Total_cost 
FROM Order_Burittos_Total_Costs
WHERE Order_no = 15 ;

--+----------+------------+
--| Order_no | Total_cost |
--+----------+------------+
--|       14 |      65.00 |
--+----------+------------+

UPDATE CUSTOMER_ORDER_ITEMS SET Total_cost = 65.00 WHERE Order_no = 15;

