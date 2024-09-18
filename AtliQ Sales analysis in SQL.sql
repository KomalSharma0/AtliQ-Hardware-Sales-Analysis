use sales;

/*Q1. Retrieve the transactions where currency is in USD*/
SELECT * FROM transactions
WHERE currency = "USD";

/*Q2. Retrieve the transactions from the Chennai.*/
SELECT * FROM transactions
WHERE market_code = "Mark001";

/*Q3. Find out the transactions took place in 2020.*/
select transactions.*, date.* from transactions
INNER JOIN
date ON transactions.order_date = date.date
WHERE date.year = "2020";

/*Q4. The total revenue of 2020.*/
select SUM(transactions.sales_amount) from transactions
INNER JOIN
date ON transactions.order_date = date.date
WHERE date.year = "2020";

/*Q5. Select the total revenue of 2020 from Chennai.*/
select SUM(transactions.sales_amount) from transactions
INNER JOIN
date ON transactions.order_date = date.date
WHERE date.year = "2020" and transactions.market_code = "Mark001";

/*Q6. Retrieve the distinct products has been sold in Chennai.*/
SELECT DISTINCT(product_code) FROM transactions
WHERE market_code = "Mark001";

/*Q7. Retrieve all records from the transactions table where the sales_amount starts with a negative sign (-).*/
select * from transactions
where sales_amount like '^[-]';

/*Q8. Total sales amount from the transactions table for the year 2020, considering transactions in either INR or USD.*/
select sum(transactions.sales_amount) from transactions 
inner join 
date on transactions.order_date = date.date
where date.year = 2020 and transactions.currency = 'INR' or transactions.currency = 'USD';

/*Q9. Total sales amount from transactions made in January 2020 with the currency being either INR or USD.*/
select sum(transactions.sales_amount) from transactions 
inner join 
date on transactions.order_date = date.date
where date.year = 2020 and date.month_name = 'January' and transactions.currency = 'INR' or transactions.currency = 'USD';




