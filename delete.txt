-- Part 2.5 delete.sql
--
-- Submitted by: Sophia Kalanovska, <Your Student Number>
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

--   BURRITO_HAS_TOPPINGS
DELETE FROM BURRITO_HAS_TOPPINGS
WHERE BURRITO_HAS_TOPPINGS.Order_no IN (
	-- Orders for "johnny.depp@gmail.com"
	SELECT Order_no 
	FROM CUSTOMER_ORDER_ITEMS
	WHERE CUSTOMER_ORDER_ITEMS.Customer_Email = "johnny.depp@gmail.com"
);

--   BURRITO_HAS_BEANS
DELETE FROM BURRITO_HAS_BEANS
WHERE BURRITO_HAS_BEANS.Order_no IN (
	-- Orders for "johnny.depp@gmail.com"
	SELECT Order_no 
	FROM CUSTOMER_ORDER_ITEMS
	WHERE CUSTOMER_ORDER_ITEMS.Customer_Email = "johnny.depp@gmail.com"
);

--   BURRITO_HAS_FILLING
DELETE FROM BURRITO_HAS_FILLING
WHERE BURRITO_HAS_FILLING.Order_no IN (
	-- Orders for "johnny.depp@gmail.com"
	SELECT Order_no 
	FROM CUSTOMER_ORDER_ITEMS
	WHERE CUSTOMER_ORDER_ITEMS.Customer_Email = "johnny.depp@gmail.com"
);

--   Order_Contains_Burritos
DELETE FROM ORDER_CONTAINS_BURRITOS
WHERE ORDER_CONTAINS_BURRITOS.Order_no IN (
	-- Orders for "johnny.depp@gmail.com"
	SELECT Order_no 
	FROM CUSTOMER_ORDER_ITEMS
	WHERE CUSTOMER_ORDER_ITEMS.Customer_Email = "johnny.depp@gmail.com"
);

--   ORDER_CONTAINS_BEVERAGES
DELETE FROM ORDER_CONTAINS_BEVERAGES
WHERE ORDER_CONTAINS_BEVERAGES.Order_no IN (
	-- Orders for "johnny.depp@gmail.com"
	SELECT Order_no 
	FROM CUSTOMER_ORDER_ITEMS
	WHERE CUSTOMER_ORDER_ITEMS.Customer_Email = "johnny.depp@gmail.com"
);

-- CUSTOMER_ORDER_ITEMS
DELETE FROM CUSTOMER_ORDER_ITEMS
WHERE CUSTOMER_ORDER_ITEMS.Customer_Email = "johnny.depp@gmail.com";

--   BURRITO_CLUB
DELETE FROM BURRITO_CLUB
WHERE BURRITO_CLUB.Customer_Email = "johnny.depp@gmail.com" ;

--   Customer "johnny.depp@gmail.com"
DELETE FROM CUSTOMERS WHERE Email =  "johnny.depp@gmail.com";