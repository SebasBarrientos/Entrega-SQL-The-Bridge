create database my_company_database;
use my_company_database;
create table employees (id int auto_increment,
birth_date  DATE,
first_name varchar(30),
last_name  varchar(30), 
gender varchar(30),
primary key (id));
 alter table employees add salary float;
 alter table employees add title varchar(200);
 alter table employees add title_date DATE;
 
 insert into employees (birth_date,first_name,last_name,gender,salary,title,title_date)
 values ('1990-05-15', 'Juan', 'García', 'M', 30000.00, 'Ingeniero', '2020-01-01'),
('1985-09-20', 'María', 'Martínez', 'F', 25000.00, 'Desarrollador', '2020-03-15'),
('1988-12-10', 'José', 'Rodríguez', 'M', 40000.00, 'Analista', '2020-06-30'),
('1992-03-25', 'Juan', 'Gómez', 'M', 20000.00, 'Gerente', '2020-02-12'),
('1995-06-08', 'Ana', 'López', 'F', 35000.00, 'Diseñador', '2020-04-25'),
('1993-11-12', 'Laura', 'Sánchez', 'F', 30000.00, 'Ingeniero', '2019-12-10'),
('1990-07-17', 'Pedro', 'Fernández', 'M', 45000.00, 'Desarrollador', '2021-08-20'),
('1987-04-29', 'Pablo', 'Martín', 'M', 28000.00, 'Analista', '2020-07-03'),
('1994-08-03', 'Sofía', 'Pérez', 'F', 5000.00, 'Asistente', '2020-09-15'),
('1989-01-14', 'Miguel', 'Gutiérrez', 'M', 32000.00, 'Gerente', '2021-01-30'),
('1991-10-22', 'Elena', 'Ruiz', 'F', 38000.00, 'Ingeniero', '2020-11-11'),
('1996-02-18', 'Antonio', 'Díaz', 'M', 15000.00, 'Desarrollador', '2020-10-05'),
('1986-09-05', 'Ana', 'Hernández', 'F', 27000.00, 'Analista', '2020-12-20'),
('1997-04-03', 'Javier', 'Jiménez', 'M', 20000.00, 'Diseñador', '2020-05-08'),
('1992-12-28', 'Laura', 'González', 'F', 42000.00, 'Ingeniero', '2020-08-16');
 select * from employees;
 update employees set first_name = "Pepe", last_name = "Perez", birth_date="2000-01-01" where id=7;
select*from employees where id=7;

/*OBTENER DATOS
⦁ Seleccione todos los empleados con un salario superior a 20.000
⦁ Seleccione todos los empleados con un salario inferior a 10.000
⦁ Seleccione todos los empleados que tengan un salario entre 14.000 y 50.000
⦁ Seleccione el número total de empleados
⦁ Selecciona los títulos del año 2019
⦁ Seleccione solo el nombre de los empleados y que se vean en mayúsculas
⦁ Seleccionar el nombre de los empleados sin que se repita ninguno
*/
 select * from employees where salary>20000;
 select * from employees where salary<10000;
 select * from employees where salary BETWEEN 14000 and 50000;
 SELECT COUNT(id) FROM employees;
select * from employees where title_date Like "2019%";
select UCASE(first_name) from employees;
SELECT DISTINCT first_name FROM employees;
 /*
 1.2.4 BORRAR DATOS
⦁ Elimina el empleado con id = 5
⦁ Eliminar a todos los empleados con un salario superior a 20.000
*/
 delete from employees where id=5;
 SET sql_safe_updates = 0;
 delete from employees where salary > 20000;
 SET sql_safe_updates = 1;
 select * from employees;
