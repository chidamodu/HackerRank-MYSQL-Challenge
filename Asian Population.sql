Asian Population

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(ci.population)
FROM city ci
JOIN country c
ON ci.countrycode=c.code
WHERE c.continent='Asia';


