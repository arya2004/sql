SELECT city.NAME from CITY city
JOIN COUNTRY country ON city.COUNTRYCODE = country.CODE
WHERE country.CONTINENT = "Africa";