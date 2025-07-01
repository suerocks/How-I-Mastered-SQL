--1.

SELECT COUNT(low) FROM tutorial.aapl_historical_stock_price

--2.

SELECT COUNT(date) AS date,
       COUNT(year) AS year,
       COUNT(month) AS month,
       COUNT(open) AS open,
       COUNT(high) AS high,
       COUNT(low) AS low,
       COUNT(close) AS close,
       COUNT(volume) AS volume,
       COUNT(id) AS id
FROM tutorial.aapl_historical_stock_price

--3.

SELECT SUM(open)/COUNT(open) AS avg_open_price
FROM tutorial.aapl_historical_stock_price

--4.

SELECT MIN(low) AS min_stock_price
FROM tutorial.aapl_historical_stock_price

--5.

SELECT MAX(close - open) AS highest_single_day_increase
FROM tutorial.aapl_historical_stock_price
