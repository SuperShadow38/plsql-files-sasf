set serveroutput on;

DECLARE
    inicial number:=1;
    resultado number;
BEGIN
    while inicial <=12 loop 
    resultado :=2*numero;
    dbms_output.put_line('3 x ' ||inicial|| ' = ' ||resultado);
    inicial:=inicial+1;
    end loop;
END;