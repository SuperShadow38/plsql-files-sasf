DECLARE
    valor number:=10;   
    
BEGIN
    loop 
        dbms_output.put_line(valor);
        valor:=valor + 10;
        if valor>50 then
        exit;
        end if;
    end loop;
    dbms_output.put_line('valor final = ' || valor);
        
END;