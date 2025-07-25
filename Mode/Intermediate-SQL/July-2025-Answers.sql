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

SELECT CASE 
       WHEN state IN ('CA', 'OR', 'WA') THEN 'west_coast'
       WHEN state = 'TX' THEN 'texas'
       ELSE 'other_state' END AS player_state,
       COUNT(weight) AS player_weight_300_plus
FROM benn.college_football_players
WHERE weight >= 300
GROUP BY player_state

--14.

SELECT CASE 
          WHEN year IN ('FR', 'SO') THEN 'fr_so_year'
          WHEN year IN ('JR', 'SR') THEN 'jr_sr_year'
          ELSE NULL END AS select_year,
       SUM(weight) AS combined_weight
FROM benn.college_football_players
WHERE state = 'CA'
GROUP BY select_year

--15.

SELECT state,
       COUNT(CASE WHEN year = 'FR' THEN 'FR' ELSE NULL END) AS fr,
       COUNT(CASE WHEN year = 'SO' THEN 'SO' ELSE NULL END) AS so,
       COUNT(CASE WHEN year = 'JR' THEN 'JR' ELSE NULL END) AS jr,
       COUNT(CASE WHEN year = 'SR' THEN 'SR' ELSE NULL END) AS sr,
       COUNT(state) AS total_count
FROM benn.college_football_players
GROUP BY state
ORDER BY total_count DESC

--16.

SELECT COUNT(CASE WHEN school_name < 'N' THEN 'a_m' ELSE NULL END) AS a_m_list,
       COUNT(CASE WHEN school_name > 'N' THEN 'n_z' ELSE NULL END) AS n_z_list
FROM benn.college_football_players
ORDER BY a_m_list

--17.

SELECT DISTINCT year
FROM tutorial.aapl_historical_stock_price

--18.

SELECT year,
       COUNT(DISTINCT(month)) AS month_count
FROM tutorial.aapl_historical_stock_price
GROUP BY year

--19.

SELECT COUNT(DISTINCT(year)) AS year_count,
       COUNT(DISTINCT(month)) AS month_count
FROM tutorial.aapl_historical_stock_price
ORDER BY year_count

--20.

SELECT players.school_name AS school_name,
       players.player_name AS player_name,
       players.position AS position,
       players.weight AS weight
FROM benn.college_football_players players
WHERE players.state = 'GA'
ORDER BY players.weight

--21.

SELECT players.player_name,
       players.school_name,
       teams.conference 
FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name
WHERE division = 'FBS (Division I-A Teams)'

--22.

SELECT COUNT(acquisitions.company_permalink) AS a_permalink,
       COUNT(companies.permalink) AS c_permalink
FROM tutorial.crunchbase_acquisitions acquisitions
JOIN tutorial.crunchbase_companies companies
  ON acquisitions.company_permalink = companies.permalink

--23.

SELECT COUNT(acquisitions.company_permalink) AS a_permalink,
       COUNT(companies.permalink) AS c_permalink
FROM tutorial.crunchbase_acquisitions acquisitions
LEFT JOIN tutorial.crunchbase_companies companies
  ON acquisitions.company_permalink = companies.permalink

--24.

SELECT COUNT(DISTINCT(acquisitions.company_name)) AS acquired_name_count,
       COUNT(DISTINCT(companies.name)) AS company_name_count,
       state_code
FROM tutorial.crunchbase_companies companies
LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.name = acquisitions.company_name
WHERE state_code IS NOT NULL
GROUP BY state_code
ORDER BY acquired_name_count DESC

--25.

