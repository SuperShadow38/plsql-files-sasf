-- Habilitamos la salida por consola para ver los resultados
SET serveroutput ON;

-- Declaración de una colección indexada por pls_integer para nombres de departamentos
DECLARE
  TYPE departamentos IS TABLE OF departments.department_name%TYPE
  INDEX BY PLS_INTEGER;
  depa departamentos;

  -- Declaración de un cursor para seleccionar todos los departamentos de la tabla "departments"
  CURSOR cur_dep IS SELECT * FROM departments;
  f PLS_INTEGER := 1;
BEGIN
  -- Iteramos a través de los registros del cursor "cur_dep"
  FOR dep IN cur_dep LOOP
    depa(f) := dep.department_name; -- Almacenamos el nombre del departamento en la colección "depa"
    f := f + 1;
  END LOOP;

  -- Imprimimos los nombres de los departamentos almacenados en la colección "depa"
  FOR i IN 1..f-1 LOOP
    dbms_output.put_line(depa(i));
  END LOOP;
END;

-- Declaración de una colección indexada por pls_integer para datos de empleados
DECLARE
  TYPE empleados IS TABLE OF employees%ROWTYPE
  INDEX BY PLS_INTEGER;
  emple empleados;

  -- Declaración de un cursor para seleccionar empleados cuyo salario es mayor que 5000
  CURSOR cur_emp IS SELECT * FROM employees WHERE salary > 5000;
  z PLS_INTEGER := 1;
BEGIN
  -- Iteramos a través de los registros del cursor "cur_emp"
  FOR emp IN cur_emp LOOP
    emple(z) := emp; -- Almacenamos los datos del empleado en la colección "emple"
    z := z + 1;
  END LOOP;

  -- Imprimimos los nombres de los empleados cuyo salario es mayor que 5000
  FOR i IN 1..z-1 LOOP
    dbms_output.put_line(emple(i).first_name);
  END LOOP;
END;

   
--select * from employees;