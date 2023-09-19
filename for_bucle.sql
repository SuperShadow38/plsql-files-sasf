set serveroutput on;

DECLARE
 x number(2);
BEGIN
 for x in 10..50 loop
  dbms_output.put_line('Valor de numero: ' || numero);
 end loop;
END;