--
SELECT * FROM "emisiones_co2db"."emisiones_co2" limit 10;

--el país con mayores emisiones de CO2 en 2010
SELECT countryname, MAX("2010") as "Máxima emisión en 2010"
FROM "emisiones_co2db"."emisiones_co2"
GROUP BY countryname
ORDER BY "Máxima emisión en 2010" desc
limit 1;

--el país con menores emisiones de CO2 en 2010
SELECT countryname, MIN("2010") as "Mínima emisión en 2010"
FROM "emisiones_co2db"."emisiones_co2"
GROUP BY countryname
HAVING MIN("2010") > 0.00
ORDER BY "Mínima emisión en 2010" asc
limit 1;

--los países con mayores emisiones de CO2 en 2018
SELECT countryname, MAX("2018") as "Máxima emisión en 2018"
FROM "emisiones_co2db"."emisiones_co2"
GROUP BY countryname
ORDER BY "Máxima emisión en 2018" desc
LIMIT 10;

--la temperaturas promedio del 2000
SELECT AVG("2000") as "Promedio emisiones CO2 2000" 
FROM "emisiones_co2db"."emisiones_co2";


