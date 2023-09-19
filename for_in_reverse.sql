set serveroutput on;

BEGIN
 for i in reverse 0..5 loop
  dbms_output.put_line('valor de i = ' || i);
 end loop;
END;