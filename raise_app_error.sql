set serveroutput on
declare
  region number;
  nombre varchar2(200);

begin 
   region:=102;
   nombre:='Antartida';
   
   if region > 100 then
   --el codigo debe de estar -20000 y -20999
     raise_application_error(-20001,'EL ID NO PUEDE SER MAYOR QUE 100');
   else
     insert into regions values(region,nombre);
     commit;
   end if;
end;
   