CREATE DATABASE sales_analytics;
SHOW DATABASES;
USE sales_analytics;
CREATE TABLE superstore_orders (
    `Row ID` INT,
    `Order ID` VARCHAR(20),
    `Order Date` VARCHAR(20),
    `Ship Date` VARCHAR(20),
    `Ship Mode` VARCHAR(30),
    `Customer ID` VARCHAR(20),
    `Customer Name` VARCHAR(100),
    `Segment` VARCHAR(50),
    `Country` VARCHAR(50),
    `City` VARCHAR(50),
    `State` VARCHAR(50),
    `Postal Code` VARCHAR(20),
    `Region` VARCHAR(50),
    `Product ID` VARCHAR(20),
    `Category` VARCHAR(50),
    `Sub-Category` VARCHAR(50),
    `Product Name` TEXT,
    `Sales` DECIMAL(10,2),
    `Quantity` INT,
    `Discount` DECIMAL(5,2),
    `Profit` DECIMAL(10,2)
);
DESCRIBE superstore_orders;
SELECT COUNT(*) FROM superstore_orders;
SELECT *
FROM superstore_orders
WHERE `Sales` IS NULL;
SELECT SUM(Sales) AS Total_Sales  
FROM superstore_orders;
SELECT SUM(Profit) AS Total_Profit FROM superstore_orders;
SELECT region,
       SUM(sales) AS revenue
FROM superstore_orders
GROUP BY region
ORDER BY revenue DESC;
SELECT category,
       SUM(profit) AS profit_category
FROM superstore_orders
GROUP BY category
ORDER BY profit_category DESC;
SELECT `Order Date`
FROM superstore_orders
LIMIT 5;
SET SQL_SAFE_UPDATES = 0;
UPDATE superstore_orders
SET `Order Date` = STR_TO_DATE(`Order Date`, '%m/%d/%Y');
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
       ROUND(SUM(sales), 2) AS monthly_sales
FROM superstore_orders
GROUP BY month
ORDER BY month;
SELECT category,
       ROUND(AVG(discount), 2) AS avg_discount
FROM superstore_orders
GROUP BY category;
SELECT `Product Name`,
       ROUND(SUM(profit), 2) AS total_loss
FROM superstore_orders
GROUP BY `Product Name`
HAVING SUM(profit) < 0
ORDER BY total_loss;
SELECT `Customer Name`,
       ROUND(SUM(sales), 2) AS total_sales,
       RANK() OVER (
           ORDER BY SUM(sales) DESC
       ) AS sales_rank
FROM superstore_orders
GROUP BY `Customer Name`;
SELECT `Order Date`,
       sales,
       SUM(sales) OVER (
           ORDER BY `Order Date`
       ) AS running_total
FROM superstore_orders;