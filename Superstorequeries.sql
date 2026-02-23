USE superstore_db;
LOAD DATA LOCAL INFILE 'C:/Users/SS/Downloads/Superstore.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT COUNT(*) FROM superstore;
SHOW WARNINGS LIMIT 10;
SELECT * FROM superstore LIMIT 5;
UPDATE superstore
SET Order_Date = STR_TO_DATE(Order_Date, '%d/%m/%Y'),
    Ship_Date = STR_TO_DATE(Ship_Date, '%d/%m/%Y');
SET SQL_SAFE_UPDATES = 0;
UPDATE superstore
SET Order_Date = STR_TO_DATE(Order_Date, '%m/%d/%Y'),
    Ship_Date = STR_TO_DATE(Ship_Date, '%m/%d/%Y');
ALTER TABLE superstore
MODIFY Order_Date DATE,
MODIFY Ship_Date DATE;
SELECT Order_Date FROM superstore LIMIT 5;
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore;
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY MONTH(Order_Date)
ORDER BY Month;
SELECT 
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;