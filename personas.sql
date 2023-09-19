set serveroutput on;

DECLARE
  type matriz_nombres is varray(5) of varchar2(20);
  type matriz_edad is varray(5) of integer;
  nombres matriz_nombres;
  edades matriz_edad;
  total integer;
BEGIN
  nombres:=matriz_nombres('Fabio','Melanie','Paulina','Jose','Danna);
  edades:=matriz_edad(21,21,19,23,22);
  total:=nombres.count;
  for i in 1..total loop
   dbms_output.put_line('Nombre: ' ||nombres(i) || '  Edad:' || edad(i));
  end loop;
END;