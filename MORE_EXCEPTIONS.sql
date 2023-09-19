set serveroutput on
declare 
    emple employees%rowtype;
begin
    select * into emple from employees 
    where employee_id>1;
    dbms_output.put_line(emple.first_name);
    exception
      when no_data_found then
        dbms_output.put_line('ERROR: Empleado inexistente.');
      when too_many_rows then
        dbms_output.put_line('ERROR: Demasiados empleados.');
      when others then
        dbms_output.put_line('ERROR NO DEFINIDO');

end;



set serveroutput on
declare 
    emple employees%rowtype;
begin
    dbms_output.put_line(10/0);
    exception
      when zero_divide then
        dbms_output.put_line('ERROR: DIVISION ENTRE 0 NO ES POSIBLE');
      when others then
        dbms_output.put_line('ERROR NO DEFINIDO');

end;


set serveroutput on
declare 
    emple employees%rowtype;
begin
    insert into departments values(10,'HR',101,1);
    exception
      when dup_val_on_index then
        dbms_output.put_line('ERROR: VALOR YA EXISTENTEN DENTRO DE LA TABLA');
      when others then
        dbms_output.put_line('ERROR NO DEFINIDO');

end;


select * from departments;



