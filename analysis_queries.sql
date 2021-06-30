SELECT * FROM sales.transactions;

-- No of records in table
SELECT count(*) FROM sales.transactions;

-- seeing the Chennai transactions data 
SELECT * FROM sales.transactions where market_code = 'Mark001';

-- seeing the rows where currencyh is in usd 
SELECT * FROM sales.transactions where currency = 'USD';

-- transactions data based on year 2020 
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
where sales.date.year=2020;

-- Total sum of sales in year 2020 
SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
where sales.date.year=2020;

-- total sales amount in year 2020 of Chennai region 
SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
where sales.date.year=2020
and sales.transactions.market_code='Mark001';

-- unique products sold in CHennai region 
SELECT distinct product_code
FROM sales.transactions
where market_code = 'Mark001';

