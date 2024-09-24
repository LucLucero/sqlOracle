--conversões
--Oracle faz automaticamente:
-- DE/PARA
--VARCHAR2 OU CHAR/NUMBER se e somente se o varchar for apenas numeros
--VARCHAR2 OU CHAR/DATE     depende do formato da data
--NUMBER/VARCHAR2 OU CHAR sempre vai conseguir  converter implicitamente
--DATE/VARCHAR2 OU CHAR  sempre vai conseguir  converter implicitamente


--TO_CHAR COM DATAS
--TO_CHAR(date, 'formato')

SELECT last_name, TO_CHAR(hire_date, 'DD/MM/YYYY HH24:MI:SS')DT_ADMISSÃO
from employees;

SELECT last_name, TO_CHAR(sysdate, 'DD/MM/YYYY HH24:MI:SS')DT_ADMISSÃO
from employees;

SELECT last_name, TO_CHAR(hire_date, 'FMDD "de" Month "de" YYYY')DT_ADMISSÃO
from employees;

--TO_CHAR COM NUMBERS

SELECT first_name || ' ' || last_name as "Nome Empregado",
TO_CHAR(salary, 'L999G999G999D99') AS "SALÁRIO"
from employees;

--TO_NUMBER
SELECT to_number('454545')
from dual;
--TO_DATE
select to_date('18/02/1999','DD/MM/YYyy') DATA
FROM DUAL;


select first_name, last_name, hire_date
from employees
where hire_date = to_date('&data', 'dd/mm/yyyy');

--funções genéricas
--NVL
--COALESCE
--NVL2

--expressões case

SELECT last_name, job_id, salary,
    CASE job_id
        when 'IT_PROG' then 1.1*salary
        when 'ST_CLERK' then 1.2*salary
        when 'SA_REP' THEN 1.3*SALARY
        ELSE SALARY
    END "NOVO SALARY"
FROM employees;

--DECODE
SELECT last_name, job_id, salary,
    DECODE(job_id, 'IT_PROG', 1.1*salary,
                    'ST_CLERK', 1.2*salary,
                    'SA_REP', 1.3*salary,
                                salary) "Novo Saldo"
from employees;
                            



