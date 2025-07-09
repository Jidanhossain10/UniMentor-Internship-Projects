SELECT * FROM coffee_sales LIMIT 10;


-- Total Sales:
SELECT 
    SUM(money) AS total_sales
FROM coffee_sales;

-- Total Sales by Coffee Type:
SELECT 
    coffee_name, 
    SUM(money) AS total_sales
FROM coffee_sales
GROUP BY coffee_name
ORDER BY total_sales DESC;

-- Total Sales by Day:
SELECT 
    date, 
    SUM(money) AS total_sales
FROM coffee_sales
GROUP BY date
ORDER BY date;

-- Sales by Payment Method:
SELECT 
    cash_type, 
    COUNT(*) AS transactions,
    SUM(money) AS total_sales
FROM coffee_sales
GROUP BY cash_type;

-- Daily Coffee Type Sales Trend:
SELECT 
    date, 
    coffee_name, 
    SUM(money) AS total_sales
FROM coffee_sales
GROUP BY date, coffee_name
ORDER BY date, coffee_name;

-- Top 5 Best-Selling Days (By Revenue):
SELECT 
    date, 
    SUM(money) AS total_sales
FROM coffee_sales
GROUP BY date
ORDER BY total_sales DESC
LIMIT 5;

-- Average Transaction Value per Day:
SELECT 
    date,
    COUNT(*) AS total_transactions,
    SUM(money) AS total_sales,
    ROUND(AVG(money), 2) AS avg_transaction_value
FROM coffee_sales
GROUP BY date
ORDER BY date;

-- Unique Customers Per Day (Card Only):
SELECT 
    date,
    COUNT(DISTINCT card) AS unique_customers
FROM coffee_sales
WHERE cash_type = 'card'
GROUP BY date
ORDER BY date;

-- Coffee Preference by Payment Method:
SELECT 
    cash_type, 
    coffee_name, 
    COUNT(*) AS cups_sold,
    SUM(money) AS total_sales
FROM coffee_sales
GROUP BY cash_type, coffee_name
ORDER BY cash_type, total_sales DESC;

-- Number of Transactions Per Coffee Type
SELECT 
    coffee_name, 
    COUNT(*) AS total_transactions
FROM coffee_sales
GROUP BY coffee_name
ORDER BY total_transactions DESC;































