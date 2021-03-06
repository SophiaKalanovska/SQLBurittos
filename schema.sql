-- Part 2.1 schema.sql
--
-- Submitted by: Sophia Kalanovska, 1634966
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 



-- CREATE TABLE MARKET
CREATE TABLE MARKET(    
    Postcode VARCHAR(10) PRIMARY KEY, 
    Name VARCHAR(50)  NOT NULL 
);

-- CREATE TABLE MARKET_ACTIVEDAYS
CREATE TABLE MARKET_ACTIVEDAYS(    
    Market_Postcode VARCHAR(10) NOT NULL, 
    Active_days VARCHAR(10) NOT NULL, 
    FOREIGN KEY (Market_Postcode) REFERENCES MARKET(Postcode) 
                ON DELETE RESTRICT ON UPDATE CASCADE
);
-- CREATE TABLE FOOD_TRUCK
CREATE TABLE FOOD_TRUCK(    
    Vehicle_regestration_№ VARCHAR(10) PRIMARY KEY, 
    Start_date Date
);

-- CREATE TABLE TRUCK_ACTIVE_AT_MARKET
CREATE TABLE TRUCK_ACTIVE_AT_MARKET(
	Vehicle_regestration_№ VARCHAR(10) NOT NULL,
	Market_Postcode VARCHAR(10) NOT NULL,
	Active_Date Date,
	FOREIGN KEY (Vehicle_regestration_№) REFERENCES FOOD_TRUCK(Vehicle_regestration_№)
                ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (Market_Postcode) REFERENCES MARKET(Postcode) 
                ON DELETE RESTRICT ON UPDATE CASCADE

);

-- CREATE TABLE CUSTOMERS
CREATE TABLE CUSTOMERS(
	Email VARCHAR(255) PRIMARY KEY UNIQUE NOT NULL, 
	Name VARCHAR(50)  NOT NULL, 
	Address VARCHAR(255) NOT NULL,
	Dob DATE  NOT NULL
);

-- CREATE TABLE BURRITO_CLUB
CREATE TABLE BURRITO_CLUB(
	ID BIGINT(16) PRIMARY KEY AUTO_INCREMENT,
	Customer_Email VARCHAR(255) UNIQUE NOT NULL,
	Burritos_bought  INT UNSIGNED DEFAULT 0,
	FOREIGN KEY (Customer_Email) REFERENCES CUSTOMERS(Email) 
                ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CREATE TABLE BEVERAGES
CREATE TABLE BEVERAGES(
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
	Price DECIMAL(4,2) NOT NULL,
    Description VARCHAR(20),
    Is_Alcoholic BOOLEAN,
    Type VARCHAR(20),
    Size CHAR(10) NOT NULL
);

-- CREATE TABLE BURRITOS
CREATE TABLE BURRITOS(    
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Price DECIMAL(4,2) NOT NULL,
    Description VARCHAR(64) NOT NULL,
    Size CHAR(10) NOT NULL CHECK( Size = "Mini" OR
                                  Size = "Regular" OR
                                  Size = "Grande"),
    Has_rice BOOLEAN
);

-- CREATE TABLE BURRITOS_BEANS
CREATE TABLE BURRITOS_BEANS(
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Price DECIMAL(4,2) DEFAULT NULL,
	Description VARCHAR(64) NOT NULL
);

-- CREATE TABLE BURRITOS_TOPINGS
CREATE TABLE BURRITOS_TOPPINGS(
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
	Price DECIMAL(4,2),
	Description VARCHAR(64) NOT NULL
);

-- CREATE TABLE BURRITOS_FILLING
CREATE TABLE BURRITOS_FILLING(
	ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Price DECIMAL(4,2) DEFAULT NULL,
	Description VARCHAR(64) NOT NULL
);

-- CREATE TABLE CUSTOMER_ORDER_ITEMS
CREATE TABLE CUSTOMER_ORDER_ITEMS(
	Order_no INTEGER PRIMARY KEY AUTO_INCREMENT,
	Order_date  DATE,
	Buritoclub_id BIGINT(16),
	Customer_Email VARCHAR(255) ,
	Food_Truck VARCHAR(10) NOT NULL,
	Market VARCHAR(10) NOT NULL,
	Total_cost DECIMAL(6,2) NOT NULL,
	FreeBurrito BOOLEAN DEFAULT false,
	FOREIGN KEY (Buritoclub_id) REFERENCES BURRITO_CLUB(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Customer_Email) REFERENCES CUSTOMERS(Email)
                ON DELETE RESTRICT ON UPDATE CASCADE

);

-- CREATE TABLE RDER_CONTAINS_BEVERAGES 
CREATE TABLE ORDER_CONTAINS_BEVERAGES (
    Order_no INTEGER,
    Beverages_Id INTEGER,
    Quantity INTEGER UNSIGNED DEFAULT 1,
    PRIMARY KEY(Order_no, Beverages_Id),
    FOREIGN KEY (Order_no) REFERENCES CUSTOMER_ORDER_ITEMS(Order_no)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Beverages_Id) REFERENCES BEVERAGES(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CREATE TABLE ORDER_CONTAINS_BURRITOS
CREATE TABLE ORDER_CONTAINS_BURRITOS (
    Order_no INTEGER,
    Burrito_Id INTEGER,
    Quantity INTEGER UNSIGNED DEFAULT 1,
    PRIMARY KEY(Order_no, Burrito_Id),
    FOREIGN KEY (Order_no) REFERENCES CUSTOMER_ORDER_ITEMS(Order_no)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Burrito_Id) REFERENCES BURRITOS(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CREATE TABLE BURRITO_HAS_FILLING 
CREATE TABLE BURRITO_HAS_FILLING (
    Order_no INTEGER,
    Burrito_id INTEGER,
    Filling_id INTEGER,
    Quantity INT UNSIGNED DEFAULT 1, 
    PRIMARY KEY(Order_no, Burrito_id, Filling_id),
    FOREIGN KEY (Order_no) REFERENCES CUSTOMER_ORDER_ITEMS(Order_no)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Burrito_id) REFERENCES BURRITOS(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Filling_id) REFERENCES BURRITOS_FILLING(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CREATE TABLE BURRITO_HAS_BEANS
CREATE TABLE BURRITO_HAS_BEANS (
    Order_no INTEGER,
    Burrito_id INTEGER,
    Beans_id INTEGER,
    Quantity INT UNSIGNED DEFAULT 1, 
    PRIMARY KEY(Order_no, Burrito_id, Beans_id),
    FOREIGN KEY (Order_no) REFERENCES CUSTOMER_ORDER_ITEMS(Order_no)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Burrito_id) REFERENCES BURRITOS(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Beans_id) REFERENCES BURRITOS_BEANS(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE
);


-- CREATE TABLE BURRITO_HAS_TOPPINGS
CREATE TABLE BURRITO_HAS_TOPPINGS(
    Order_no INTEGER,
    Burrito_id INTEGER,
    Toppings_id INTEGER,  
    Quantity INT UNSIGNED DEFAULT 1,  
    PRIMARY KEY(Order_no, Burrito_id, Toppings_id),
    FOREIGN KEY (Order_no) REFERENCES CUSTOMER_ORDER_ITEMS(Order_no)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Burrito_id) REFERENCES BURRITOS(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Toppings_id) REFERENCES BURRITOS_TOPPINGS(ID)
                ON DELETE RESTRICT ON UPDATE CASCADE
);

