set serveroutput on;

DECLARE
  type a_paises is varray(5) of varchar2(20);
  nombre a_paises;
BEGIN
  nombre:=a_paises('Ecuador','Argentina','Japon,'Alemania','Estados Unidos');
  for i in 1..5 loop
   dbms_output.put_line('Nombre: ' ||nombre(i));
  end loop;
END;