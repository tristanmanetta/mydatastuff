-- Total Money In/out

SELECT SUM(money_in)
FROM transactions;

SELECT SUM(money_out)
FROM transactions;

-- number of transactions

SELECT COUNT(money_in) as 'Number of Transactions'
FROM transactions;

SELECT COUNT(money_in) as 'Bitcoin Transactions'
FROM transactions
WHERE currency = 'BIT';

-- biggest transactions

SELECT MAX(money_in)
FROM transactions;

SELECT MAX(money_out)
FROM transactions;

-- biggest transactions for each currency type--

SELECT currency, MAX (money_in) as 'Money In', MAX (money_out) as 'Money Out'
FROM transactions
GROUP by 1 
ORDER by 1 ASC;

-- Average Etherum transaction amount

SELECT ROUND(AVG(money_in), 2) as 'Average Ethereum In', ROUND(AVG(money_out), 2) as 'Average Ethereum Out'
FROM transactions
WHERE currency = 'ETH';

-- Average Sale Ledger per date --

SELECT date, ROUND(AVG(money_in),2) as 'Average Sell', ROUND(AVG(money_out),2) as 'Average Buy'
FROM transactions
GROUP BY 1
ORDER BY 1 ASC;
