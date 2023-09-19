--VALIDACION DE PAQUETES

--Creamos un nuevo paquete en nuestro esquema
create or replace package paq01 is
function func01 return number;
procedure proc01;
end;

--Consultamos que el mismo este levantado de manera válida
select * from user_objects where object_name = 'PAQ01';


--Creamos el cuerpo del paquete
create or replace package body paq01 
is
function func01 return number is
begin
  return 0;
  end;
  
procedure proc01 is
begin
  null;
  end;

end;

--Ejecutamos nuevamente nuestro paquete existente solamente añadiendo un nuevo procedure
create or replace package paq01 is
function func01 return number;
procedure proc01;
procedure proc02; --nuevo procedure
end;

--Hacemos una consulta para verificar la existencia del paquete y saldrá 2 paquetes: PACKAGE Y PACKAGE BODY
select * from user_objects where object_name = 'PAQ01';



--Nuevamente volvemos a crear el body pero esta vez añadiendo el desarrollo de proc02
create or replace package body paq01 
is
function func01 return number is
begin
  return 0;
  end;
  
procedure proc01 is
begin
  null;
  end;

procedure proc02 is
begin
  null;
  end;
end;


--Hacemos una ultima consulta para verificar el estado de nuestro package body
select * from user_objects where object_name = 'PAQ01';