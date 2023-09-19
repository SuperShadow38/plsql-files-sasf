set serveroutput on

declare 
   type departamentos is table of departments.department_name%type
   index by pls_integer;
   
   depts departamentos;
   cursor cur_depts is select * from departments;
   x pls_integer:=1;
   
   begin
     for dep1 in cur_depts loop
     depts(x):=dep1.department_name;
     x:=x+1;
     end loop;
     
     
     for f in 1..x-1 loop
     dbms_output.put_line(depts(f));
     end loop;
end;
      
--select * from departments;