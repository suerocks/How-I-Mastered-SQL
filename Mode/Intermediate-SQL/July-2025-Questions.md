# Solved the following on Mode

### SQL COUNT
https://mode.com/sql-tutorial/sql-count

1. Write a query to count the number of non-null rows in the low column.
2. Write a query that determines counts of every single column. With these counts, can you tell which column has the most null values?

### SQL SUM
https://mode.com/sql-tutorial/sql-sum

3. Write a query to calculate the average opening price (hint: you will need to use both COUNT and SUM, as well as some simple arithmetic.).

### SQL MIN/MAX
https://mode.com/sql-tutorial/sql-min-max

4. What was Apple's lowest stock price (at the time of this data collection)?
5. What was the highest single-day increase in Apple's share value?

### SQL AVG
https://mode.com/sql-tutorial/sql-avg

6. Write a query that calculates the average daily trade volume for Apple stock.

### SQL GROUP BY
https://mode.com/sql-tutorial/sql-group-by

7. Calculate the total number of shares traded each month. Order your results chronologically.
8. Write a query to calculate the average daily price change in Apple stock, grouped by year.
9. Write a query that calculates the lowest and highest prices that Apple stock achieved each month.

### SQL HAVING
https://mode.com/sql-tutorial/sql-having

### SQL CASE
https://mode.com/sql-tutorial/sql-case

10. Write a query that includes a column that is flagged "yes" when a player is from California, and sort the results with those players first.
11. Write a query that includes players' names and a column that classifies them into four categories based on height. Keep in mind that the answer we provide is only one of many possible answers, since you could divide players' heights in many ways.
12. Write a query that selects all columns from benn.college_football_players and adds an additional column that displays the player's name if that player is a junior or senior.
13. Write a query that counts the number of 300lb+ players for each of the following regions: West Coast (CA, OR, WA), Texas, and Other (everywhere else).
14. Write a query that calculates the combined weight of all underclass players (FR/SO) in California as well as the combined weight of all upperclass players (JR/SR) in California.
15. Write a query that displays the number of players in each state, with FR, SO, JR, and SR players in separate columns and another column for the total number of players. Order results such that states with the most players come first.
16. Write a query that shows the number of players at schools with names that start with A through M, and the number at schools with names starting with N - Z.

### SQL DISTINCT
https://mode.com/sql-tutorial/sql-distinct

17. Write a query that returns the unique values in the year column, in chronological order.
18. Write a query that counts the number of unique values in the month column for each year.
19. Write a query that separately counts the number of unique values in the month column and the number of unique values in the `year` column.

### SQL Joins
https://mode.com/sql-tutorial/sql-joins

20. Write a query that selects the school name, player name, position, and weight for every player in Georgia, ordered by weight (heaviest to lightest). Be sure to make an alias for the table, and to reference all column names in relation to the alias.

### SQL INNER JOIN
https://mode.com/sql-tutorial/sql-inner-join

21. Write a query that displays player names, school names and conferences for schools in the "FBS (Division I-A Teams)" division.

### SQL Outer Joins
https://mode.com/sql-tutorial/sql-outer-joins

### SQL LEFT JOIN
https://mode.com/sql-tutorial/sql-left-join

22. Write a query that performs an inner join between the tutorial.crunchbase_acquisitions table and the tutorial.crunchbase_companies table, but instead of listing individual rows, count the number of non-null rows in each table.
23. Modify the query above to be a LEFT JOIN. Note the difference in results.
24. Count the number of unique companies (don't double-count companies) and unique acquired companies by state. Do not include results for which there is no state data, and order by the number of acquired companies from highest to lowest.

### SQL RIGHT JOIN
https://mode.com/sql-tutorial/sql-right-join

25. Rewrite the previous practice query in which you counted total and acquired companies by state, but with a RIGHT JOIN instead of a LEFT JOIN. The goal is to produce the exact same results.

### SQL Joins Using WHERE or ON
https://mode.com/sql-tutorial/sql-joins-where-vs-on

26. Write a query that shows a company's name, "status" (found in the Companies table), and the number of unique investors in that company. Order by the number of investors from most to fewest. Limit to only companies in the state of New York.
27. Write a query that lists investors based on the number of companies in which they are invested. Include a row for companies with no investor, and order from most companies to least.

### SQL FULL OUTER JOIN
https://mode.com/sql-tutorial/sql-full-outer-join

28. Write a query that joins tutorial.crunchbase_companies and tutorial.crunchbase_investments_part1 using a FULL JOIN. Count up the number of rows that are matched/unmatched as in the example above.

### SQL UNION
https://mode.com/sql-tutorial/sql-union

29. Write a query that appends the two crunchbase_investments datasets above (including duplicate values). Filter the first dataset to only companies with names that start with the letter "T", and filter the second to companies with names starting with "M" (both not case-sensitive). Only include the company_permalink, company_name, and investor_name columns.
30. Write a query that shows 3 columns. The first indicates which dataset (part 1 or 2) the data comes from, the second shows company status, and the third is a count of the number of investors.

Hint: you will have to use the tutorial.crunchbase_companies table as well as the investments tables. And you'll want to group by status and dataset.

### SQL Joins with Comparison Operators
https://mode.com/sql-tutorial/sql-join-comparison-operators

### SQL Joins on Multiple Keys
https://mode.com/sql-tutorial/sql-joins-on-multiple-keys

### SQL Self Joins
https://mode.com/sql-tutorial/sql-self-joins
