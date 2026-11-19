use empresa;

-- Recuperar todos los empleados y sus numeros de telefono
select emp.nombre, emp.primerApellido, emp.segundoApellido, tel.numero
from empleados emp join telefonos tel on emp.id = tel.empleado_id;

-- Recuperar los empleados tengan o no numeros de telefono
select emp.nombre, emp.primerApellido, emp.segundoApellido, tel.numero
from empleados emp left join telefonos tel on emp.id = tel.empleado_id;

use world;

-- Ejercicio # 2 del Miercoles 18 de Nov: Recuperar los paises y el idioma hablado en cada pais,
-- siempre que sea una lengua oficial
select country.name, countrylanguage.Language, countrylanguage.IsOfficial
from country left join countrylanguage on country.Code = countrylanguage.CountryCode
where IsOfficial = true
group by country.name, countrylanguage.Language, countrylanguage.IsOfficial;

-- Ejercicio # 3 del Miercoles 18 de Nov: Recuperar la ciudad mas poblada
-- y el nombre del pais donde se encuentra dicha ciudad
select city.Population, country.name
from country left join city on country.code = city.CountryCode
order by population desc;

-- Ejercicio # 4 del Miercoles 18 de Nov: Modificar la consulta del Ejercicio # 2 para que 
-- solamente se muestren resultados para España y todos los idiomas, no solo los oficiales
select country.name, countrylanguage.Language, countrylanguage.IsOfficial 
from country left join countrylanguage on country.Code = countrylanguage.CountryCode
where name = 'Spain'
group by country.name, countrylanguage.Language, countrylanguage.IsOfficial;

