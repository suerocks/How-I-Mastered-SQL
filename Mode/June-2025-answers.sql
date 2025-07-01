-- 1.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE group_name ILIKE '%ludacris%'

--2.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE group_name ILIKE 'DJ%'

--3.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE group_name IN ('Elvis Presley', 'M.C. Hammer', 'Hammer')

--4.

SELECT year, year_rank, song_name FROM tutorial.billboard_top_100_year_end
WHERE year BETWEEN 1985 and 1990
ORDER BY year ASC, year_rank ASC -- This line was just an extra added to order the results for me. Not required for the answer.

--5.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE song_name IS NULL

--6.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year_rank <= 10 AND group_name ILIKE '%Ludacris%'

--7.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year IN (1990, 2000, 2010) AND year_rank = 1

--8.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year BETWEEN 1960 and 1969 AND song_name ILIKE '%love%'

--9.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year_rank <= 10 AND (artist ILIKE '%Katy Perry%' OR artist ILIKE '%Bon Jovi%')

--10.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE song_name ILIKE '%california%' AND (year BETWEEN 1970 and 1979 OR year BETWEEN 1990 and 1999)

--11.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE artist ILIKE '%dr. dre' AND (year < 2001 OR year > 2009)

--12.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year = 2013 AND song_name NOT ILIKE '%a%'

--13.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year = 2012
ORDER BY song_name DESC

--14.

SELECT * FROM tutorial.billboard_top_100_year_end
WHERE year = 2010
ORDER BY year_rank, artist

--15.

