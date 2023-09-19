--encabezado del objecto 
create or replace type producto as object(

--atributos
codigo number,
nombre varchar2(100),
precio number,


--metodos
member function ver_producto return varchar2,
member function ver_precio return number,
member procedure cambiar_precio (pvp number)
);


--cuerpo de objecto

create or replace type body producto as 
member function ver_producto return varchar2 as
  begin
    return 'codigo: ' ||codigo||' nombre: '||nombre||' precio: '||precio;
end ver_producto;
member function ver_precio return number as
  begin
    return precio;
end ver_precio;
member procedure cambiar_precio (pvp number) as
  begin 
    precio:=pvp;
end cambiar_precio; 
end;

--iniciamos el constructor
set serveroutput on
declare
 valor1 producto;
 
 begin
   valor1:=producto(100, 'manzana',10);
   dbms_output.put_line(valor1.ver_precio());
   dbms_output.put_line(valor1.ver_producto());
   valor1.cambiar_precio(20);
   dbms_output.put_line(valor1.ver_precio());
end;