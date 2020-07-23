-- How many entries in the database are from Africa?

SELECT COUNT(*) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE countries.continent = 'Africa';

-- ANSWER: 616


-- What was the total population of Oceania in 2005?

SELECT ROUND(SUM(population_years.population), 2) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania'
  AND population_years.year = 2005 ;
  
-- ANSWER: 32.66


-- What is the average population of countries in South America in 2003?

SELECT ROUND(AVG(population_years.population), 2) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE countries.continent = 'South America'
  AND population_years.year = 2003;

-- ANSWER: 25.89


-- What country had the smallest population in 2007?

SELECT countries.name, MIN(population_years.population) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE population_years.year = 2007;

-- ANSWER: Niue


-- What is the average population of Poland during the time period covered by this dataset?

SELECT ROUND(AVG(population_years.population), 2) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';

-- Answer: 38.56


-- How many countries have the word "The" in their name?

SELECT COUNT(*) FROM countries
WHERE name LIKE '% The%';

-- ANSWER: 2


-- What was the total population of each continent in 2010?

SELECT countries.continent, ROUND(SUM(population_years.population), 2) FROM population_years
JOIN countries
  ON population_years.country_id = countries.id
WHERE population_years.year = 2010
GROUP BY 1
ORDER BY 2 DESC;


