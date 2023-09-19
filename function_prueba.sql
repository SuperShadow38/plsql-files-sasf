create or replace function f_prueba(valor number)
return number
is 
  begin
    return valor*2;
end;

select f_prueba(2) as total from dual;