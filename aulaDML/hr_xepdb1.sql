select 
    employee_id, last_name, job_id, department_id
from employees
where job_id = 'IT_PROG';


select first_name, last_name, job_id, hire_date
from employees
where last_name = 'King';

select first_name, last_name, job_id, hire_date
from employees
where hire_date = '30/JAN/04';      


select first_name, last_name, manager_id, job_id, salary
from employees
where job_id IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP'); 


select first_name, last_name, manager_id, job_id, salary
from employees
WHERE first_name LIKE 'Sa%';

SELECT last_name,manager_id
from employees
where manager_id is null;




SELECT employee_id, first_name || ' ' || last_name nome, salary "Salário"
from employees
where salary >= 5000 AND job_id = 'IT_PROG';


SELECT employee_id, first_name || ' ' || last_name nome, salary "Salário", job_id
from employees
where job_id NOT IN ('IT_PROG', 'FI_ACCOUNT');

SELECT employee_id, last_name, salary, department_id
from employees
where employee_id = &employee_id;


SELECT employee_id, last_name, salary, department_id
from employees
where employee_id = &&employee_id;

SELECT employee_id, last_name, salary, department_id,job_id
from employees
where job_id = '&job_id';


define e_id = 156
SELECT employee_id, last_name, salary*150, department_id
from employees
where employee_id = &e_id;

define e_id
undefine e_id

