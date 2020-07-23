-- This is the first query:

SELECT DISTINCT year FROM population_years;

-- largest population size for Gabon:

SELECT * FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

-- 10 lowest population countries in 2005:

SELECT * FROM population_years
WHERE year = 2005
ORDER BY population
LIMIT 10;

-- the distinct countries with a population of over 100 million in the year 2010:

SELECT DISTINCT country FROM population_years
WHERE year = 2010
  AND population > 100;
  
-- countries in this dataset have the word “Islands” in their name:

SELECT DISTINCT country FROM population_years
WHERE country LIKE '%Islands%';

-- the difference in population between 2000 and 2010 in Indonesia:

SELECT * FROM population_years
WHERE country = 'Indonesia' AND year = 2000
OR country = 'Indonesia' AND year = 2010;