create or replace function f_diasemana(numero int)
return varchar2
is 
  dia varchar2(25);
  begin
   dia:='';
   case numero
   when 1 then dia:='Lunes';
   when 2 then dia:='Martes';
   when 3 then dia:='Miercoles';
   when 4 then dia:='Jueves';
   when 5 then dia:='Viernes';
   when 6 then dia:='Sabado';
   when 7 then dia:='Domingo';
   else dia:='NO ES UN NUMERO CORRECTO';
   end case;
     return dia;
end;

select f_diasemana(8)as "Dia de la semana" from dual;