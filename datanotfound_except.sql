set serveroutput on
declare 
    emple employees%rowtype;
begin
    select * into emple from employees 
    where employee_id = 200;
    dbms_output.put_line(emple.first_name);
    exception
      when no_data_found then
        dbms_output.put_line('ERROR: Empleado inexistente.');
      when others then
        null;

end;


