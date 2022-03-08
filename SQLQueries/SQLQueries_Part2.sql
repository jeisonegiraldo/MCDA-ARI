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
