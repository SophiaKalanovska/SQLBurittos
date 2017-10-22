-- Part 2.3 select.sql
--
-- Submitted by: Sophia Kalanovska, 1634966
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 


-- 1. Total Sales.
SELECT SUM(Total_cost) AS Total_Sales 
FROM CUSTOMER_ORDER_ITEMS 
WHERE Order_date >= "2017-05-01" AND Order_date < "2017-06-01";

--+-------------+
--| Total_Sales |
--+-------------+
--|      129.30 |
--+-------------+


-- 2. Burrito Report
CREATE VIEW Size_Quantity AS
( 
    SELECT Order_no, ID, Description as Size, IF(Quantity IS NULL, 0, SUM(Quantity)) as Quantity
    FROM ORDER_CONTAINS_BURRITOS JOIN BURRITOS ON(BURRITOS.ID = Burrito_Id)
    GROUP BY Order_no
);

CREATE VIEW Size_Quantity_Time AS
(
	SELECT ID, Size, SUM(Quantity) as Quantity
    FROM  CUSTOMER_ORDER_ITEMS NATURAL JOIN Size_Quantity 
    WHERE Order_date >= "2017-06-01" AND Order_date < "2017-07-01"
    GROUP BY Size
);

-- 3. Top Customers.

SELECT Name, Email as EmailAddress, COUNT(*) AS purchases
FROM CUSTOMERS JOIN CUSTOMER_ORDER_ITEMS
ON (CUSTOMERS.Email = CUSTOMER_ORDER_ITEMS.Customer_Email)
GROUP BY CUSTOMERS.Email
ORDER BY purchases DESC;

--+----------------+--------------------------+-----------+
--| Name           | EmailAddress             | purchases |
--+----------------+--------------------------+-----------+
--| Johnny Depp    | johnny.depp@gmail.com    |         4 |
--| Mila Kunis     | mila.kunis@gmail.com     |         3 |
--| Ashton Kutcher | ashton.kutcher@gmail.com |         3 |
--+----------------+--------------------------+-----------+



-- 4. Guacamole Receipt.
(
    SELECT Description, Price, Quantity, (Price * Quantity) AS Total_price 
    FROM BURRITOS JOIN ORDER_CONTAINS_BURRITOS ON (BURRITOS.ID = ORDER_CONTAINS_BURRITOS.Burrito_Id)
    WHERE Order_no = 3
) UNION (
    SELECT Description, Price, Quantity, (Price * Quantity) AS Total_price 
    FROM BURRITOS_TOPPINGS JOIN BURRITO_HAS_TOPPINGS ON (BURRITOS_TOPPINGS.ID = BURRITO_HAS_TOPPINGS.Toppings_id)
    WHERE Order_no = 3
) UNION (
    SELECT Description, Price, Quantity, (Price * Quantity) AS Total_price 
    FROM BEVERAGES JOIN ORDER_CONTAINS_BEVERAGES ON (BEVERAGES.ID = ORDER_CONTAINS_BEVERAGES.Beverages_Id)
    WHERE Order_no = 3
) UNION (
    SELECT Description, Price, Quantity, (Price * Quantity) AS Total_price 
    FROM BURRITOS_FILLING JOIN BURRITO_HAS_FILLING ON (BURRITOS_FILLING.ID = BURRITO_HAS_FILLING.Filling_id)
    WHERE Order_no = 3
) UNION (
    SELECT Description, Price, Quantity, (Price * Quantity) AS Total_price 
    FROM BURRITOS_BEANS JOIN BURRITO_HAS_BEANS ON (BURRITOS_BEANS.ID = BURRITO_HAS_BEANS.Beans_Id)
    WHERE Order_no = 3
);



-- 5. Alchohol Free!

-- CREATE ASSERTION CHECK ( ...

SELECT NOT EXISTS (
    SELECT * 
    FROM ((MARKET JOIN CUSTOMER_ORDER_ITEMS
          ON (MARKET.Postcode = CUSTOMER_ORDER_ITEMS.Market AND
            MARKET.Postcode = "WC1N 1NY"))
          JOIN ORDER_CONTAINS_BEVERAGES
          ON (CUSTOMER_ORDER_ITEMS.Order_no = ORDER_CONTAINS_BEVERAGES.Order_no))
          JOIN BEVERAGES
          ON (BEVERAGES.ID = ORDER_CONTAINS_BEVERAGES.Beverages_Id)
    WHERE (Is_Alcoholic = True)
) AS Alcohol_Free;

-- Returning True 

-- Place a Alcohol order

INSERT INTO CUSTOMER_ORDER_ITEMS(Order_no, Order_date, Buritoclub_id, Customer_Email, Food_Truck, Market, Total_cost) VALUES (14, "2016-06-03", 2,  "ashton.kutcher@gmail.com", "SB 42 HSL", "WC1N 1NY", 0 );
INSERT INTO ORDER_CONTAINS_BEVERAGES VALUES (14, 6, 1);

SELECT NOT EXISTS (
    SELECT * 
    FROM ((MARKET JOIN CUSTOMER_ORDER_ITEMS
          ON (MARKET.Postcode = CUSTOMER_ORDER_ITEMS.Market AND
            MARKET.Postcode = "WC1N 1NY"))
          JOIN ORDER_CONTAINS_BEVERAGES
          ON (CUSTOMER_ORDER_ITEMS.Order_no = ORDER_CONTAINS_BEVERAGES.Order_no))
          JOIN BEVERAGES
          ON (BEVERAGES.ID = ORDER_CONTAINS_BEVERAGES.Beverages_Id)
    WHERE (Is_Alcoholic = True)
) AS Alcohol_Free;


-- Should be False (0)




