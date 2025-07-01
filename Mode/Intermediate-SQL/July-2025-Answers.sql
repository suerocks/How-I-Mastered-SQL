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

--6.

SELECT AVG(volume) AS avg_volume
FROM tutorial.aapl_historical_stock_price

--7.

SELECT year,
       month,
       SUM(volume) AS total_shares_month
FROM tutorial.aapl_historical_stock_price
GROUP BY year, month 
ORDER BY year, month

--8.

SELECT year,
       AVG(close - open) AS avg_daily_price_change
FROM tutorial.aapl_historical_stock_price
GROUP BY year
ORDER BY year

--9.

SELECT year,
       month,
       MIN(low) AS lowest_price_monthly,
       MAX(high) AS highest_price_monthly
FROM tutorial.aapl_historical_stock_price
GROUP BY year, month
ORDER BY year, month

--10.

SELECT player_name,
       state,
       CASE 
       WHEN state = 'CA'
       THEN 'yes'
       ELSE NULL 
       END as from_california
FROM benn.college_football_players
ORDER BY from_california

--11.

SELECT player_name,
       CASE WHEN height > 80 THEN 'over 80'
            WHEN height > 60 AND height <= 80 THEN '61 - 80'
            WHEN height > 40 and height <= 60 THEN '41 - 60'
            ELSE '40 or under'
            END AS height_category
FROM benn.college_football_players
ORDER by height_category

--12.

SELECT *,
       CASE WHEN year IN ('JR', 'SR') THEN player_name  -- You could also use CASE WHEN year = 'JR' OR year = 'SR'.....
       ELSE NULL END AS jr_sr_player_name
FROM benn.college_football_players
ORDER BY jr_sr_player_name

--13.

