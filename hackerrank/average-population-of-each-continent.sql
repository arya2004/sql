SELECT country.CONTINENT , floor(avg( city.POPULATION))
from CITY city
JOIN COUNTRY country ON city.COUNTRYCODE = country.CODE
GROUP BY country.CONTINENT