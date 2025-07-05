SELECT * FROM tutorial.billboard_top_100_year_end -- This selects all columns in a table called 'tutorial.billboard_top_100_year_end'

WHERE group_name ILIKE '%ludacris%' -- This narrows down the table to show only the row(s) where the column named 'group_name' contains the term 'ludacris'. The % sign means there can be characters present on either side of 'ludacris'.

WHERE group_name ILIKE 'DJ%' -- This narrows down the table to show only the row(s) where the column named 'group_name' contains the term 'DJ'. The position of the % sign means there can be characters present on only the right side of 'DJ'.

WHERE group_name IN ('Elvis Presley', 'M.C. Hammer', 'Hammer') -- This narrows down the table to show only the rows where the column named 'group_name) contains either 'Elvis Presley', 'M.C. Hammer', or 'Hammer'.
