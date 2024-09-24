SELECT e.employee_id,  e.last_name, e.department_id, d.department_name
from employees e 
join departments d on e.department_id = d.department_id;

SELECT department_id, department_name, street_address || ', ' || city endereço
from departments
natural join locations;


SELECT e.employee_id,  e.last_name, department_id, d.department_name, d.location_id
from employees e
JOIN departments d USING (department_id);


SELECT e.employee_id, e.first_name, g.employee_id, g.first_name
from employees e join employees g
    on e.manager_id = g.employee_id
order by e.employee_id;

select employee_id, first_name, manager_id, job_id from employees;

select manager_id, job_id, count(*)
from employees
group by manager_id, job_id;


--Nome do funcionário, endereço em que trabalha, telefone, departamento,
select e.first_name || ' ' || e.last_name as "Funcionário",
j.job_title,
e.phone_number "Contato",
d.department_name "Departamento",
l.street_address || ', ' || l.city || ', ' || l.postal_code "Endereço"
from employees e
JOIN departments d on e.department_id = d.department_id
JOIN jobs j on e.job_id = j.job_id
JOIN locations l on d.location_id =l.location_id;

---JOIN USANDO SINTAXE ORACLE
--A CONDIÇÃO FICA NO WHERE

SELECT e.first_name, e.last_name, d.department_name, d.location_id
from employees e, departments d
where e.department_id = d.department_id;

SELECT  e.employee_id, j.job_title, d.department_name, l.city, l.state_province, l.country_id
from employees e,
     jobs j,
     departments d,
     locations l
where (e.job_id = j.job_id) AND
       (e.department_id = d.department_id) AND
       (d.location_id =  l.location_id)
    order by e.employee_id;


--join oracle
select count(e.employee_id), d.department_id
from employees e, departments d 
where  (e.department_id = d.department_id) AND
(e.salary between 10000 and 15000)
group by d.department_id;
 
--INNER JOIN ANSI 
select count(e.employee_id), d.department_id
from employees e
JOIN departments d on e.department_id = d.department_id
where e.salary between 10000 and 15000
group by d.department_id;


--RIGHT OUTER JOIN SINTAXE ORACLE
SELECT e.first_name, e.last_name, d.department_name, d.department_id
FROM employees e, departments d
WHERE e.department_id = d.department_id(+)
order by e.department_id;


--LEFT OUTER JOIN SINTAXE ORACLE
SELECT e.first_name, e.last_name, d.department_name, d.department_id
FROM employees e, departments d
WHERE e.department_id(+) = d.department_id
order by e.department_id;

select count(*) as "Empregados com Department_ID"
FROM employees e, departments d
WHERE e.department_id = d.department_id(+)
order by e.department_id;








