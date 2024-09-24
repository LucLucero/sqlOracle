--Funções de conversão Maiúsculo & Minúsculo
SELECT employee_id, last_name, department_id
from employees
where UPPER(last_name) = 'KING';

--Manipulação de caracteres
--CONCAT
--SUBSTR
--LENGTH
--INSTR

SELECT 
CONCAT('Curso:','Introdução ORACLE 19c'),
SUBSTR('Intro do orochi',10,6), LENGTH('AMOR DE FIM DE NOITE'),
INSTR('AMOR DE FIM DE NOITE', 'NOITE')
FROM dual;

--LPAD
--RPAD
--REPLACE
--TRIM
--RTRIM
--LTRIM

SELECT 
LPAD(first_name,15,'*'),
RPAD(first_name,15,'*')
FROM employees;


--Funções Number
--round
--trunc
--mod
--ABS
--SQRT

SELECT ROUND(2.56,2) FROM DUAL;
SELECT TRUNC(45.484, 2), TRUNC(45.4545,0) FROM DUAL;
SELECT MOD(16,5) FROM DUAL;
select SQRT(ABS(-9)) FROM DUAL;


--FUNÇÕES TIPO DATE
-- FORMATO É DEFINIDO PELO DBA, NO PARAMETRO: NLS_DATE_FORMAT
--FORMATO NO BR É: 'DD/MM/YY' OU 'DD/MM/RR'

--sysdate
--MONTHS_BETWEEN
--ADD_MONTHS
--NEXT_DAY
--LAST_DAY
--ROUND
--TRUNC



SELECT sysdate,
sysdate+28,
sysdate-72,
sysdate + (12/24)
from dual;

select first_name || ' ' || last_name as "Empregado",
ROUND((sysdate-hire_date)/7,2) as "Semanas de Trabalhadas",
ROUND(MONTHS_BETWEEN(sysdate,hire_date),2) as "Meses Trabalhados",
ROUND((sysdate-hire_date)/365,1) as "Anos Trabalhados",
job_id "Cargo"
from employees
where ROUND((sysdate-hire_date)/365,1) >= 20
order by "Anos Trabalhados" desc;







