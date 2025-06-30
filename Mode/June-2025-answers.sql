-- 1.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE group_name ILIKE '%ludacris%'

--2.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE group_name ILIKE 'DJ%'
