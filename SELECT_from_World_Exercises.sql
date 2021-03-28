/* Introduction 
1.  Observe the result of running this SQL command to show the name, continent and population of all countries.*/
SELECT name, continent, population FROM world



/* Large Countries
2.  Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.*/
SELECT name
  FROM world
 WHERE population > 200000000;



 /* Per capita GDP
3. Give the name and the per capita GDP for those countries with a population of at least 200 million.
NOTE: We are not changing/replacing anything in the database here. We changing the way we look at it.
 The data is being processed on the select statement so values are seen as they come out.*/
SELECT name, gdp/population
  FROM world
 WHERE population > 200000000;



/* South America In millions
4. Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to
 get population in millions. */
SELECT name, population/1000000
FROM world
WHERE continent = 'South America';



/* France, Germany, Italy
5. Show the name and population for France, Germany, Italy */
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');



/* United
6. Show the countries which have a name that includes the word 'United'*/
SELECT name
FROM world
WHERE name LIKE 'United %';



/* Two ways to be big
7. Two ways to be big: A country is big if it has an area of more 
than 3 million sq km or it has a population of more than 250 million. */
SELECT name, population, area
FROM world
WHERE  area > 3000000  OR population > 250000000;



/*One or the other (but not both)
8. Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or 
big by population (more than 250 million) but not both. Show name, population and area.
Australia has a big area but a small population, it should be included.
Indonesia has a big population but a small area, it should be included.
China has a big population and big area, it should be excluded.
United Kingdom has a small population and a small area, it should be excluded.*/
SELECT name, population, area
FROM world
WHERE  (
area > 3000000 
AND NOT population > 250000000
)
OR (
population > 250000000 AND NOT area > 3000000 
);



