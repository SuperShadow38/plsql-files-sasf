--Creamos la tabla departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255),
    manager_id INT,
    location_id INT
);

--Insertamos 20 datos a la tabla
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (10, 'HR', 101, 1);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (20, 'Marketing', 102, 2);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (30, 'Sales', 103, 3);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (40, 'Finance', 104, 4);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (50, 'Engineering', 105, 5);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (60, 'IT', 106, 6);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (70, 'Legal', 107, 7);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (80, 'Operations', 108, 8);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (90, 'Customer Service', 109, 9);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (100, 'Research', 110, 10);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (110, 'Product Management', 111, 11);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (120, 'Quality Assurance', 112, 12);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (130, 'Purchasing', 113, 13);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (140, 'Production', 114, 14);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (150, 'Supply Chain', 115, 15);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (160, 'Logistics', 116, 16);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (170, 'Maintenance', 117, 17);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (180, 'Facilities', 118, 18);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (190, 'Security', 119, 19);
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES (200, 'Administration', 120, 20);


-- Crear la tabla "employees"
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(20),
    hire_date DATE,
    job_id VARCHAR2(10),
    salary NUMBER(10, 2)
);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (1, 'John', 'Doe', 'john.doe@example.com', '555-1234', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'MANAGER', 60000.00);
    
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'SALESPERSON', 45000.00);
    
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-9876', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'ENGINEER', 75000.00);
    
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (4, 'Emily', 'Williams', 'emily.williams@example.com', '555-3456', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 'ANALYST', 55000.00);
    
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (5, 'David', 'Brown', 'david.brown@example.com', '555-7890', TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'CLERK', 40000.00);

    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (6, 'Olivia', 'Davis', 'olivia.davis@example.com', '555-2345', TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'SALESPERSON', 48000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (7, 'James', 'Wilson', 'james.wilson@example.com', '555-6789', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'ENGINEER', 72000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (8, 'Sophia', 'Smith', 'sophia.smith@example.com', '555-1234', TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'ANALYST', 58000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (9, 'Benjamin', 'Martin', 'benjamin.martin@example.com', '555-5678', TO_DATE('2023-09-05', 'YYYY-MM-DD'), 'CLERK', 42000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (10, 'Emma', 'Wilson', 'emma.wilson@example.com', '555-9876', TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'MANAGER', 62000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (11, 'Liam', 'Jones', 'liam.jones@example.com', '555-3456', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 'SALESPERSON', 49000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (12, 'Ava', 'Brown', 'ava.brown@example.com', '555-7890', TO_DATE('2023-12-10', 'YYYY-MM-DD'), 'ENGINEER', 73000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (13, 'Mason', 'Davis', 'mason.davis@example.com', '555-2345', TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'ANALYST', 59000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (14, 'Harper', 'Wilson', 'harper.wilson@example.com', '555-6789', TO_DATE('2024-02-05', 'YYYY-MM-DD'), 'CLERK', 43000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (15, 'Elijah', 'Martin', 'elijah.martin@example.com', '555-1234', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'MANAGER', 63000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (16, 'Abigail', 'Johnson', 'abigail.johnson@example.com', '555-5678', TO_DATE('2024-04-20', 'YYYY-MM-DD'), 'SALESPERSON', 50000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (17, 'Logan', 'Smith', 'logan.smith@example.com', '555-9876', TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'ENGINEER', 74000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (18, 'Ella', 'Jones', 'ella.jones@example.com', '555-3456', TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'ANALYST', 60000.00);
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (19, 'Sebastian', 'Williams', 'sebastian.williams@example.com', '555-7890', TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'CLERK', 44000.00);
    
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
    VALUES (20, 'Avery', 'Taylor', 'avery.taylor@example.com', '555-2345', TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'MANAGER', 64000.00);

--verificamos los datos en las 2 tablas
select * from departments;
select * from employees;

--levantamos la salida por consola
set serveroutput on;
declare
-- Declaración de una colección indexada por pls_integer para nombres de departamentos
  type departamentos is table of departments.department_name%type
  index by pls_integer;
  
  depa departamentos;
  
-- Declaración de una colección indexada por pls_integer para datos de empleados  
  type empleados is table of employees%rowtype
  index by pls_integer;
  
  emple empleados;

-- Declaración de una colección indexada por varchar2(2) para nombres de empleados    
  type nombre is table of employees.first_name%type
  index by varchar2(2);
  
  nom nombre;

begin

-- Asignamos valores a la colección depa
  depa(1):='Sudamericana de software';
  depa(2):='ADIOS';
  depa(50):='XDDDDDDD';
  depa(-10):=('siguiente valor');
  
  -- Asignamos valores a la colección nom
  nom('aa'):='Fabio';
  
  -- Mostramos los valores de las colecciones en la consola
  dbms_output.put_line(depa(1));
  dbms_output.put_line(depa(-10));
  dbms_output.put_line(nom('aa'));
  end;
  
  
  

      
  
  


