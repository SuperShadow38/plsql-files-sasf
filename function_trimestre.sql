create or replace function f_trimestre(fecha date)
return varchar2
is
   mes varchar2(20);
   trimestre number;
begin
  mes:=extract(month from fecha);
  trimestre:=0;
  case mes
  when 1 then trimestre:=1;
  when 2 then trimestre:=1;
  when 3 then trimestre:=1;
  when 4 then trimestre:=2;
  when 5 then trimestre:=2;
  when 6 then trimestre:=2;
  when 7 then trimestre:=3;
  when 8 then trimestre:=3;
  when 9 then trimestre:=3;
  else trimestre:=4;
  end case;
  return trimestre;
  end;
  
select f_trimestre(to_date('07/12/2022','dd/mm/yyyy')) as "TRIMESTRE" from dual;