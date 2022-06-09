SELECT
    *
FROM
    regions;

DESCRIBE countries;

SELECT DISTINCT
    department_id,
    job_id
FROM
    employees;

SELECT DISTINCT
    department_id
FROM
    employees;
SELECT department_id FROM employees
DESCRIBE employees;
SELECT job_id AS JOB, min_salary AS minimun_salary FROM jobs;
SELECT job_id, min_salary FROM jobs;
SELECT job_id FROM jobs;
SELECT * FROM jobs;
DESC jobs;
SELECT * FROM jobs;
SELECT 3*4 FROM employees;
--DUAL ES UNA COLUMNA PARA HACER PRUEBAS 
SELECT * FROM dual;
SELECT 3*4 FROM dual ;
SELECT ' HOLA MUNDO' FROM dual;
--SYSDATE NOS SIRVE PARA VER LA FECA ACTUAL 
SELECT sysdate FROM dual;
--USER NOS DA EL USARIO QUE EDITA LA TABLA
SELECT USER FROM dual;
--ASI SE HACEN CADENAS DE TEXTO DONDE || ES LA CONCATENACION LOS TEXTOS CON COMILLA SIMPLE 
SELECT 'ESTA ES UNA CADENA' || ' '|| 'OTRA CADENA DE PRUEBA' FROM dual;
SELECT ' USUARIO ' ||'USER'||', EL DIA DE HOY ES '||sysdate FROM dual;
--AS HACE QUE UNA COLUMNA SE RENOMBRE COMO QUERAMOS EL NOMBRE IRA CON COMILLA DOBLE 
SELECT ('I ''M '|| USER)AS "nombre" FROM dual;
--DE ESTA MANERA INCLUIMOS DOS VALORES EN UNA COLUMNA RENOMBRADA
SELECT first_name|| ' '|| last_name "name" , department_id FROM employees WHERE department_id=80;
--WHERE DE FILTAR CONLUMNAS CON UNA DATO CONCRETO
SELECT department_name FROM departments WHERE department_id = 90;
--DESCRIBE NOS DARA LA INFORMACION DE LAS TABLAS SIN SON NUMERICOS TEXTO TIPOS 
DESCRIBE job_history;
--SELECT*FROM NOS DARA TODO LA INFORMACION DE UNA COLUMNA
SELECT * FROM job_history WHERE job_id='AC_ACCOUNT';
--EN ESTE CASO ESTAMOS PIDIENDO TODA LA INFOMACION PERO QUE TENGA UN DATO CONCRETO 
SELECT * FROM countries WHERE region_id=4;
DESCRIBE regions;
SELECT region_name FROM regions WHERE region_id=4;
--IN LO QUE HACEMOS ES FILTRA CON VARIOS VALORES 
SELECT first_name ||''|| last_name "name",department_id FROM employees WHERE department_id IN (10,20,50);
--CON >= ESTAMOS DICIENDO QUE EL VALOR TIENE QUE SER MAYOR O IGUAL QUE UNA DATO CONCRETO
SELECT first_name||' '|| last_name "name",commission_pct FROM employees WHERE commission_pct>=0.35;
SELECT first_name||' '|| last_name "name",commission_pct FROM employees
SELECT region_name FROM regions WHERE region_id=4;
DESCRIBE regions;
SELECT * FROM countries WHERE region_id=4;
SELECT * FROM countries;
--TAMBIEN SE PUEDE HACER WHERE A UNA PALABRA CONCRETA
SELECT * FROM job_history WHERE job_id='AC_ACCOUNT';
SELECT * FROM job_history;
DESCRIBE job_history;
SELECT department_name FROM departments WHERE department_id = 90;
SELECT department_name FROM departments WHERE department_id = 80;
SELECT first_name|| ' '|| last_name "name" , department_id FROM employees WHERE department_id=80;
SELECT first_name|| ' '|| last_name "name" , department_id FROM employees WHERE department_id=90;
SELECT first_name|| ' '|| last_name "name" , department_id FROM employees;
--/*
-- DIFERENTE <>,!=,^=
--MENOR QUE <,<=
--MAYOR QUE>,>=
*/

SELECT first_name||' '|| last_name "name",commission_pct FROM employees WHERE commission_pct>=0.35;

/*
IN DFINIR VALORES 
*/

SELECT first_name ||''|| last_name "name",department_id FROM employees WHERE department_id IN (10,20,50);
--WHERE NOT ENTRE PARENTERIS filtrar todo menos la premisa indicada
SELECT first_name, department_id FROM employees WHERE NOT (department_id>=30);
--AND SUMA DOS PREMISAS CON LA QUE COMPARAR los nombre tienen que ir con mayusuculas y minusculas 
SELECT first_name, salary FROM employees WHERE last_name='Smith' AND salary > 7500;
--OR NOS PERMITE QUE SE CUMPLA CUALQUIER ATRIBUTO QUE SE BUSQUE 
SELECT first_name , last_name FROM employees WHERE first_name ='Kelly'OR last_name = 'Smith';
--BETWEEN HARA UN FITLRO ENTRE LOS DATOS INDICADOS CON AND
SELECT first_name, last_name,salary FROM employees WHERE salary BETWEEN 5000 AND 6000;
--estamos hciendo lo mismo que between con simboloes
SELECT first_name, last_name,salary FROM employees WHERE salary >=5000 AND <=6000;
--like estamos haciendo que sehaga un filtro que se parezcca a 
SELECT first_name, last_name FROM employees WHERE first_name LIKE 'Su%';
--con % es un comodin para no rellenar todos los caracteres y puede ir antes o despues o poner varios
SELECT first_name, last_name FROM employees WHERE first_name LIKE 'C%a';
--is null solo se utliza para determinar lo que es null no se puede comprara nada con null
SELECT first_name, last_name FROM employees WHERE department_id IS NULL;
--is not null se utiliza para filtar los que no son null 
SELECT first_name, last_name FROM employees WHERE department_id IS NOT NULL;
--order by ordena en orden numerico o alfabetico de una determinada columna o varias si hay empate utilizara las letras
SELECT * FROM countries ORDER BY region_id,country_name;
--aunque el nombre este cocaenado ordena por el apellido 
SELECT first_name|| ' '||last_name "employees name" FROM employees WHERE department_id=90 ORDER BY last_name;
-- desc ordena de manera descendente 
SELECT last_name FROM employees ORDER BY last_name DESC;
--asc ordena de manera ascendete 
SELECT last_name , first_name FROM employees ORDER BY last_name DESC, first_name ASC;
--el orden tambien se puede ordenar incidcando el numero en que orden se han nombrado en la consulta osea 2 es hire_date
--tambien ponemos a manager_id un alias llamado mid
SELECT first_name, hire_date, salary , manager_id mid FROM employees WHERE department_id IN (110,100) ORDER BY 4,2,3;
SELECT first_name,last_name,salary AS "salario empleado" FROM employees;
--usamos entrecomillado para asignar un alias de dos palabras 
SELECT first_name,last_name,salary AS "salario empleado" FROM employees;
--usamos entrecomillado para asignar un alias de dos palabras 
SELECT first_name, phone_number FROM employees ;
SELECT first_name AS "nombre", job_id AS "tipo de trabajo" FROM employees ;
SELECT * FROM regions;
SELECT country_name FROM countries;
SELECT street_address AS "direccion", city AS "ciudad" ,state_province AS "estado" FROM locations;

/*
operadores aritmeticos 
+ suma
- resta
* multiplicacion
/ division
% resto

*/
SELECT first_name ,salary, (salary*12)AS "salario anual",(20*10) AS ejemplo FROM employees 
--estamos haciendo una calculo en columna el cual sera el salrio anual 
SELECT first_name ,salary AS "bruto",(salary*0.20)AS "impuestos",(salary-(salary*0.20))AS "neto" FROM employees ;
--sacamos el salario anual menos con un 20 por cien de impuestos 
SELECT first_name AS "nombre", salary AS "salario",(salary*14) AS "salario anual"FROM employees;
SELECT 'nombre:',first_name FROM employees ;
--cadena de caracteres con comilla simple
SELECT 'nombre:'||first_name AS "nombre empleados" FROM employees ;
--double pipe concatena caracteres en la misma columna
SELECT 'nombre:',first_name FROM employees ;
--cadena de caracteres con comilla simple
SELECT 'nombre:'||first_name||' '||last_name AS "nombre empleados" FROM employees ;
--double pipe concatena caracteres en la misma columna
--podemos concatenar espacios en blanco 
SELECT 'el empleado'||' '||first_name||' '||'del departamento'||' '||department_id||' '||'tiene un salario de'||' '||salary FROM employees;
SELECT 'la calle '||street_address||''||'pertene a la ciudad'||' '|| city FROM locations;
--estamos hacindo conctenaciones de texto con variables
--dual 
SELECT 4+4,first_name FROM employees;

SELECT 4+3 ,'es el resultado' FROM dual;
--la tabla dual es la tabla de pruebas o dummie
DESCRIBE dual ;
DESC dual;
--esta es la descripcion de la tabla dual 
--puedesde hacerse desc o describe 
SELECT first_name,salary,commission_pct,(salary*commission_pct) AS "salario total" FROM employees;
--el valor null es valor nada no tiene ni numero nu letra 
--si alguna operando es valor null no se hara la cuenta ya que no es 0
SELECT first_name,department_id FROM employees ;
SELECT DISTINCT department_id FROM employees ;
--con distinct hacemos un fitro a los que son diferentes 
SELECT department_id , job_id FROM employees;
--asi salen muchos duplicados 
SELECT DISTINCT department_id , job_id FROM employees;
--elimina los duplicados 
--Visualizar las ciudades donde hay departamentos, de la tabla locations. No deben salir repetidos
SELECT DISTINCT city AS "ciudades" FROM locations;
--Visualizar los distintos tipos de JOB_ID por departamento de la tabla Employees.
SELECT DISTINCT department_id, job_id FROM employees;
--where
/*
= igual 
< menor que
> mayo que
<= menor igual
>= mayor igual 
<> distinto
*/

SELECT* FROM employees WHERE department_id=50 ;
--establece una condicion
SELECT first_name,salary FROM employees WHERE salary>5000;
SELECT first_name FROM employees WHERE department_id<>50;
SELECT *FROM employees WHERE hire_date='21-6-07';
--podemos buscar por fechas 
--las fechas son numeros julianos a cada dia del año se le asigan un numero 
--siempre entre comillas simple el formato de la fecha es indiferente

--Averigua los empleados que trabajen en el departamento 100
SELECT * FROM employees WHERE department_id=100;
--Usando la tabla LOCATIONS, averigua el nombre de la Ciudad (city) y la dirección (Street_address) de los departamentos situados en Estados Unidos (COUNTRY_ID=US)
SELECT city AS "ciudad" ,street_address AS "direccion" FROM locations WHERE country_id='US';
--Visualiza los países que están en la región 3. (REGION_ID de la tabla COUNTRIES
SELECT country_name AS "paises" FROM countries WHERE region_id ='3';
-- Averiguar el nombre y salario de los empleados que NO tengan como jefe al MANAGER 114 (columna MANAGER_ID)
SELECT first_name AS "nombre", salary AS "salario" FROM employees WHERE manager_id <>114;
--Visualizar los empleados que empezaron a trabajar a partir del año 2006
SELECT *FROM employees WHERE hire_date >='01-01-2006';
--Seleccionar los empleados que tenga como tipo de trabajo ‘ST_CLERK’
SELECT * FROM employees WHERE job_id = 'ST_CLERK';
--Indicar los datos de los empleados que tengan como apellidos “Smith” (LAST_NAME)
SELECT * FROM employees WHERE last_name = 'Smith';
--betwenn
--permite hacer comparacionres entre valores 
SELECT * FORM employees WHERE salary BETWEEN 5000 AND 6000;
SELECT * FROM employees WHERE salary BETWEEN 5000 AND 6000;
--es oblicatorioo acompañar between con and 
SELECT * FROM employees WHERE hire_date  BETWEEN '01-01-07'AND '01-01-09';
--se pueden encontrar valores entre fechas 
SELECT * FROM employees WHERE first_name BETWEEN  'Douglas' AND 'Steven';
--se pueden encontrar valores entre cadenas 

--in (v1,v2,v3)
--si el valor que se busca esta en la lista devulve valor tipo or 
SELECT * FROM employees WHERE department_id IN (50,60);
SELECT * FROM employees WHERE job_id IN ('SH_CLERK','ST_CLERK','ST_MAN');

--Averiguar los empleados que están entre el departamento 40 y el 60
SELECT * FROM employees WHERE department_id BETWEEN 40 AND 60;
--Visualizar los empleados que entraron entre 2002 y 2004
SELECT * FROM employees WHERE hire_date BETWEEN '01-01-2002' AND '01-01-2004';
--Indica los apellidos de los empleados que empiezan desde ‘D’ hasta ‘G’;
SELECT last_name FROM employees WHERE last_name BETWEEN 'D' AND 'G';
--Averiguar los empleados de los departamentos 30,60 y 90. Hay que usar la cláusula IN
SELECT * FROM employees WHERE department_id IN (30,60,90);
--Averiguar los empleados que tienen el tipo de trabajo IT_PROG y PU_CLERK.
SELECT * FROM employees WHERE job_id IN ('IT_PROG','PU_CLERK');
--Indica las ciudades que están en Inglaterra (UK) y Japón (JP).. Tabla LOCATIONS
SELECT city, country_id FROM locations WHERE country_id IN ('UK','JP');
--like
--%
-- _ identifica un caracter 
select * from employees where first_name like 'J%';
--estamos diciendo _que tenga en el primera caratce cualquie cosa el sgeundo e y % los demas
select * from employees where first_name like '_e%';
--estamos diciendo que busque lo que sea que tenga 'te'
select *from employees where first_name like '%te%';
--Indicar los datos de los empleados cuyo FIRST_NAME empieza por ‘J’
select * from employees where first_name like 'J%';
--Averiguar los empleados que comienzan por ‘S’ y terminan en ‘n’
select * from employees where first_name like 'S%%n';
--Indicar los países que tienen una “r” en la segunda letra (Tabla COUNTRIES)
select country_name from countries where country_name like '_r%';
--indica los empleado que no tiene comision tambien puede ser tipo not null
select * from employees where commission_pct is null;
--Listar las ciudades de la tabla LOCATIONS no tienen STATE_PROVINCE
SELECT * FROM LOCATIONS WHERE STATE_PROVINCE is null;
--Averiguar el nombre, salario y comisión de aquellos empleados que tienen
--comisión. También debemos visualizar una columna calculada denominada
--“Sueldo Total”, que sea el sueldo más la comisión
SELECT FIRST_NAME,SALARY,COMMISSION_PCT,SALARY+(SALARY*COMMISSION_PCT/100) AS "Salario total" FROM EMPLOYEES WHERE COMMISSION_PCT IS NULL;
--and or not 
--and se tiene que cumplir ambas condiciones 
--or se tienen que cumplir al menor 1 
--not devuelve lo contrario 
--and
select * from employees where salary>5000 and department_id=50;
--or
select * from employees where salary>5000 or department_id=50;
--not
select * from employees where department_id not in (50,60);

--plsql
begin
DBMS_OUTPUT.PUT_LINE('hola mundo.');
END;
--declarar variables Y MUESTRA SI ES MAYOR O MENOR
DECLARE
MI_NUMERO NUMBER(8):= 5;
BEGIN
IF (MI_NUMERO > 10) THEN 
DBMS_OUTPUT.PUT_LINE('MI NUMERO ES MAYOR DE 10 ');
ELSE
DBMS_OUTPUT.PUT_LINE('MI NUMERO ES MENOR DE 10 ');
END IF ;
END;
--DECLARA UNA VARIBALE Y MUESTRA SU VALOR 
DECLARE
MI_NUMERO NUMBER(8):= &NUMERO;
BEGIN
DBMS_OUTPUT.PUT_LINE('EL VALOR INTRODUCIVOS ES '||mi_numero);
END;
/
--ciclo while 
declare 
i number(8):=1;
begin
while (i<=10)
loop
DBMS_OUTPUT.PUT_LINE(i);
i:=i+1;
end loop;
end;
/
--bucle for
declare 
i number(8):=1;
begin
for i in 1..10
loop
DBMS_OUTPUT.PUT_LINE(i);
end loop;
end;
/
--loop 
declare 
i number(8):=1;
begin
LOOP
    dbms_output.put_line(i);
    EXIT WHEN i = 10;
    i := i + 1;
END LOOP;

end;
/
--





