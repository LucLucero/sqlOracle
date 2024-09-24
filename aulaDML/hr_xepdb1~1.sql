DESCRIBE employees;
DESCRIBE locations;

SELECT *
FROM jobs;

SELECT department_id, location_id
from departments;

SELECT
    location_id as "ID DO LOCAL",
    street_address rua,
    postal_code,
    city,
    state_province,
    country_id
FROM
    locations;
    
SELECT first_name || ' ' || last_name || ', data de admiss�o: ' || hire_date "Funcion�rio"
from employees;

SELECT first_name || ' ' || last_name || ', sal�rio: ' || salary "Sal�rio do Funcion�rio"
from employees;



SELECT department_name || q'[ Department's Manager Id: ]' || manager_id "Departamento e Gerente"
from departments;

select distinct department_id
from employees;


select distinct first_name, last_name
from employees;