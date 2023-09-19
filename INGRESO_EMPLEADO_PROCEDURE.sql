create or replace procedure ingresoemple(docu in char, nom in varchar2, ape in varchar2)
as 
  begin
     insert into empleados values(docu, nom, ape, null, null);
     end ingresoemple;
     
     execute ingresoemple('333333','Fabio','Avila');
     
     select * from empleados;