set serveroutput on

declare 
   type departamentos is table of departments.department_name%type
   index by pls_integer;
   
   depts departamentos;
   cursor cur_depts is select * from departments;
   x pls_integer:=1;
   
   type empleados is table of employees%rowtype 
   index by pls_integer;
   cursor cu_emple is select * from employees where salary > 5000;
   z pls_integer:=1;
   
   emples empleados;
   
   begin
   /*  for dep1 in cur_depts loop
     depts(x):=dep1.department_name;
     x:=x+1;
     end loop;
     
     
     for f in 1..x-1 loop
     dbms_output.put_line(depts(f));
     end loop;
     
     */
     
     for emp1 in cu_emple loop
     emples(z):= emp1;
     z:=z+1;
     end loop;
     
     for f in 1..z-1 loop
     dbms_output.put_line(emples(f).first_name || '  -  ' ||emples(f).last_name || '  -  '  ||emples(f).email|| '  -  '  ||'$ '||emples(f).salary);
     end loop;     
end;
      
--select * from departments;