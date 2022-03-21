
SELECT * FROM regions;
DESCRIBE COUNTRIES;
SELECT DISTINCT DEPARTMENT_ID, JOB_ID FROM EMPLOYEES;
SELECT DISTINCT DEPARTMENT_ID FROM employees;
SELECT department_iD FROM employees
DESCRIBE EMPLOYEES;
SELECT JOB_ID AS JOB, MIN_SALARY AS MINIMUN_SALARY FROM JOBS;
SELECT JOB_ID, MIN_SALARY FROM jobs;
select job_id from jobs;
SELECT * FROM jobs;
desc jobs;
SELECT * FROM jobs;
SELECT 3*4 FROM employees;
--DUAL ES UNA COLUMNA PARA HACER PRUEBAS 
SELECT * FROM DUAL;
SELECT 3*4 FROM DUAL ;
SELECT ' HOLA MUNDO' FROM DUAL;
--SYSDATE NOS SIRVE PARA VER LA FECA ACTUAL 
SELECT SYSDATE FROM DUAL;
--USER NOS DA EL USARIO QUE EDITA LA TABLA
SELECT USER FROM DUAL;
--ASI SE HACEN CADENAS DE TEXTO DONDE || ES LA CONCATENACION LOS TEXTOS CON COMILLA SIMPLE 
SELECT 'ESTA ES UNA CADENA' || ' '|| 'OTRA CADENA DE PRUEBA' FROM DUAL;
SELECT ' USUARIO ' ||'USER'||', EL DIA DE HOY ES '||SYSDATE FROM DUAL;
--AS HACE QUE UNA COLUMNA SE RENOMBRE COMO QUERAMOS EL NOMBRE IRA CON COMILLA DOBLE 
SELECT ('I ''M '|| USER)AS "NOMBRE" FROM DUAL;
--DE ESTA MANERA INCLUIMOS DOS VALORES EN UNA COLUMNA RENOMBRADA
SELECT FIRST_NAME|| ' '|| LAST_NAME "NAME" , department_id FROM employees WHERE department_id=80;
--WHERE DE FILTAR CONLUMNAS CON UNA DATO CONCRETO
SELECT DEPARTMENT_NAME FROM departments WHERE department_id = 90;
--DESCRIBE NOS DARA LA INFORMACION DE LAS TABLAS SIN SON NUMERICOS TEXTO TIPOS 
DESCRIBE JOB_HISTORY;
--SELECT*FROM NOS DARA TODO LA INFORMACION DE UNA COLUMNA
SELECT * FROM job_history WHERE job_id='AC_ACCOUNT';
--EN ESTE CASO ESTAMOS PIDIENDO TODA LA INFOMACION PERO QUE TENGA UN DATO CONCRETO 
SELECT * FROM COUNTRIES WHERE REGION_ID=4;
DESCRIBE REGIONS;
SELECT REGION_NAME FROM REGIONS WHERE REGION_ID=4;
--IN LO QUE HACEMOS ES FILTRA CON VARIOS VALORES 
SELECT FIRST_NAME ||''|| LAST_NAME "NAME",DEPARTMENT_ID FROM employees WHERE DEPARTMENT_ID IN (10,20,50);
--CON >= ESTAMOS DICIENDO QUE EL VALOR TIENE QUE SER MAYOR O IGUAL QUE UNA DATO CONCRETO
SELECT first_name||' '|| LAST_NAME "NAME",COMMISSION_PCT FROM employees WHERE COMMISSION_PCT>=0.35;
SELECT first_name||' '|| LAST_NAME "NAME",COMMISSION_PCT FROM employees
SELECT REGION_NAME FROM REGIONS WHERE REGION_ID=4;
DESCRIBE REGIONS;
SELECT * FROM COUNTRIES WHERE REGION_ID=4;
SELECT * FROM COUNTRIES;
--TAMBIEN SE PUEDE HACER WHERE A UNA PALABRA CONCRETA
SELECT * FROM job_history WHERE job_id='AC_ACCOUNT';
SELECT * FROM job_history;
DESCRIBE JOB_HISTORY;
SELECT DEPARTMENT_NAME FROM departments WHERE department_id = 90;
SELECT DEPARTMENT_NAME FROM departments WHERE department_id = 80;
SELECT FIRST_NAME|| ' '|| LAST_NAME "NAME" , department_id FROM employees WHERE department_id=80;
SELECT FIRST_NAME|| ' '|| LAST_NAME "NAME" , department_id FROM employees WHERE department_id=90;
SELECT FIRST_NAME|| ' '|| LAST_NAME "NAME" , department_id FROM employees;
--/*
-- DIFERENTE <>,!=,^=
--MENOR QUE <,<=
--MAYOR QUE>,>=
*/

SELECT first_name||' '|| LAST_NAME "NAME",COMMISSION_PCT FROM employees WHERE COMMISSION_PCT>=0.35;

/*
IN DFINIR VALORES 
*/

SELECT FIRST_NAME ||''|| LAST_NAME "NAME",DEPARTMENT_ID FROM employees WHERE DEPARTMENT_ID IN (10,20,50);
--WHERE NOT ENTRE PARENTERIS filtrar todo menos la premisa indicada
select first_name, department_id from employees where not (department_id>=30);
--AND SUMA DOS PREMISAS CON LA QUE COMPARAR los nombre tienen que ir con mayusuculas y minusculas 
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE last_name='Smith' AND SALARY > 7500;
--OR NOS PERMITE QUE SE CUMPLA CUALQUIER ATRIBUTO QUE SE BUSQUE 
SELECT FIRST_NAME , LAST_NAME FROM EMPLOYEES WHERE FIRST_NAME ='Kelly'OR LAST_NAME = 'Smith';
--BETWEEN HARA UN FITLRO ENTRE LOS DATOS INDICADOS CON AND
SELECT FIRST_NAME, LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY BETWEEN 5000 AND 6000;
--estamos hciendo lo mismo que between con simboloes
SELECT FIRST_NAME, LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >=5000 and <=6000;
--like estamos haciendo que sehaga un filtro que se parezcca a 
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES where first_name like 'Su%';
--con % es un comodin para no rellenar todos los caracteres y puede ir antes o despues o poner varios
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES where first_name like 'C%a';
--is null solo se utliza para determinar lo que es null no se puede comprara nada con null
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES where department_id is null;
--is not null se utiliza para filtar los que no son null 
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES where department_id is not null;
--order by ordena en orden numerico o alfabetico de una determinada columna o varias si hay empate utilizara las letras
select * from countries order by region_id,country_name;
--aunque el nombre este cocaenado ordena por el apellido 
select first_name|| ' '||last_name "employees name" from employees where department_id=90 order by last_name;
-- desc ordena de manera descendente 
select last_name from employees order by last_name desc;
--asc ordena de manera ascendete 
select last_name , first_name from employees order by last_name desc, first_name asc;
--el orden tambien se puede ordenar incidcando el numero en que orden se han nombrado en la consulta osea 2 es hire_date
--tambien ponemos a manager_id un alias llamado mid
select first_name, hire_date, salary , manager_id mid from employees where department_id in (110,100) order by 4,2,3;



