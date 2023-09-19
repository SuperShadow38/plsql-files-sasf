set serveroutput on;

BEGIN
  for x in 1..12 loop
   dbms_output.put_line('2 x ' || x || ' = ' || (x*2));
  end loop;
END;