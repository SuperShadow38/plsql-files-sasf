set serveroutput on
declare 
  my_exception exception;
  pragma exception_init(my_exception,-937);
  valor1 number;
  valor2 number;
  
begin
 select employee_id, sum(salary) into valor1,valor2 from employees;
 dbms_output.put_line(valor1);
exception
  when my_exception then
  dbms_output.put_line('FUNCION DE GRUPO INCORRECTA');
  when others then
  dbms_output.put_line('ERROR');
  
end;