--EJERCICIO 1 
UPDATE productos SET stock=(stock-ventas.unidades) WHERE (cod_producto=ventas.cod_producto);
--EJERCICIO2 
SELECT emp_no,apellido FROM empleados LEFT JOIN departamentos
   ON departamentos.dept_no = empleados.emp_no;
--EJERCICIO 4
CREATE OR REPLACE PROCEDURE ver_sal_emp;
SELECT  emp_no,salario FROM empleados WHERE oficio ='ANALISTA' AND apellido = 'GIL';
END;
--EJERCICIO 5
CREATE OR REPLACE TRIGGER integridad_empleados
BEFORE INSERT OR UPDATE ON empleados
FOR EACH ROW
  BEGIN
     IF (salario >65000 ) THEN
     EXCEPTION
  
      (-20999,'EL SALARIO NO PUEDE SER SUPERIOR A 650000');
  END IF ;
     END;