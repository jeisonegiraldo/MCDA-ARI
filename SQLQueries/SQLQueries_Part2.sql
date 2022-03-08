--Cuál es el departamento con la temperatura promedio más baja del país?

SELECT departamento, MIN(valorobservado) valorobservado
FROM co_datos_temp
GROUP BY departamento
ORDER BY valorobservado desc;


--Cuál es el promedio de temperatura de los Top 3 municipios con temperaturas más altas?
SELECT departamento, municipio, AVG(valorobservado) valorobservado
FROM co_datos_temp
GROUP BY municipio, departamento
ORDER BY valorobservado desc
limit 10;


--cuál es el país con menos emisiones en el año 2018
select "countryname", "countrycode", "2018[yr2018]"
from climate_change
where "2018[yr2018]" = (select avg("2018[yr2018]") from climate_change);


--cuál es el país con menos emisiones en el año 2018
select "countrycode", "2018"
from emisiones_co2
where "2018" = (select min ("2018") from emisiones_co2);


--Consultas Climate Change
SELECT * FROM "ccdb"."climate_change";

--Total países en el dataset
SELECT COUNT (DISTINCT "country name")
FROM  "ccdb"."climate_change";

--Total indicadores en el dataset
SELECT COUNT (DISTINCT "series name")
FROM  "ccdb"."climate_change";

--la temperaturas promedio del 2000
SELECT COUNT("2000 [YR2000]") as "Promedio emisiones CO2 2000" 
FROM "ccdb"."climate_change";

--los indicadores en 2010 con su máximo valor tomado
SELECT "series name", MAX("2000 [YR2000]") as "Máximo valor indicador"
FROM "ccdb"."climate_change"
GROUP BY "series name"
ORDER BY "Máximo valor indicador" desc
LIMIT 10;

--los países en 2000 con el máximo valor tomado
SELECT "country name", MAX("2000 [YR2000]") as "Máximo valor registrado 2000"
FROM "ccdb"."climate_change"
