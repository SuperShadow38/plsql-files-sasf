set serveroutput on

declare 
   type departamentos is table of departments.department_name%type
   index by pls_integer;
   
   depts departamentos;
   cursor cur_depts is select * from departments;
   x pls_integer:=1;
   
   type empleados is table of employees%rowtype index by pls_integer;
   
   emples empleados;
   
   begin
    select * bulk collect into emples
    from employees where salary > 5000;
     
     for f in 1..emples.count() loop
     dbms_output.put_line(emples(f).first_name || '  -  ' ||emples(f).last_name || '  -  '  ||emples(f).email|| '  -  '  ||'$ '||emples(f).salary);
     end loop;     
end;
      
--select * from departments;