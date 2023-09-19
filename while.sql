set serveroutput on;
DECLARE 
     v number(3):=10;
     
        
BEGIN
    while v <= 100 loop
    dbms_output.put_line('El valor es: ' || v);
    v := v + 10; 
    end loop;
END;