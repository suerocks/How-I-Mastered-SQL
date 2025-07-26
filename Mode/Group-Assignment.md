### QUESTIONS

1. Which region has the highest average number of housing units completed per month over the last 2 years?
 Use table: tutorial.us_housing_units


2. Show the monthly total housing completions and the running total (cumulative sum) over time.
Use table: tutorial.us_housing_units


3. Which occupations have a female percentage above the overall average across all occupations?
Use table: career_nub.gender_data


4. List the top 3 occupations by male percentage in each country.
Use table: career_nub.gender_data


5. Create a report that combines housing units with a lookup table of region names and codes.
Use tables: tutorial.us_housing_units + region_lookup (assumed mapping table)


6. Find the month-over-month percentage change in total housing units completed.
Use table: tutorial.us_housing_units

7. Which occupations are both above average in female percentage and below average in male percentage?
 Use table: career_nub.gender_data


Please use the mode website for this work and this will be presented next meeting 


### ANSWERS

1. ```sql
   SELECT year,
          AVG(south) as south_avg,
          AVG(west) as west_avg,
          AVG(midwest) as midwest_avg,
          AVG(northeast) as northeast_avg
   FROM tutorial.housing_units_completed_us
   WHERE YEAR BETWEEN 2013 and 2014
   GROUP BY year
   ```
   The answer is **south**

<br>

2. ```sql
   SELECT year,
          month,
          SUM(south+west+midwest+northeast) as total_housing_completed
   FROM tutorial.housing_units_completed_us
   GROUP BY year, month
   ORDER BY year ASC, month ASC
   ```
   This shows the total houses completed each month every year.

   ```sql
   SELECT SUM(south+west+midwest+northeast) as total_housing_completed
   FROM tutorial.housing_units_completed_us
   ```
   The answer is **66716.4**

<br>

3. ```sql
   SELECT AVG(value)/100 as avg_percentage_overall
   FROM career_nub.gender_data
   WHERE indicator ILIKE '%employment%'
   ```
   This provides the overall average across occupations (male and female)
   **8773.9950**
   
   ```sql
   SELECT indicator, AVG(value)/100 as avg_percentage
   FROM career_nub.gender_data
   WHERE indicator ILIKE '%employment%' AND indicator ILIKE '%female%'
   GROUP BY indicator
   ```
