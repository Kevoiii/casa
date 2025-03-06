create database medicos;
use medicos;
create table pacientes(
id_paciente int auto_increment primary key,
nombre varchar(20),
apellido varchar (20),
edad int (10)
);
insert into pacientes(nombre, apellido, edad)
values('fuckyou', 'perro', 14),
('into', 'eyes', 11);
select nombre
from pacientes
where id_paciente=1;
create table doctores(
id_doctor int auto_increment primary key,
namee varchar(40),
id_paciente int,
foreign key(id_paciente) references pacientes(id_paciente));
create table consultas(
id_consulta int auto_increment primary key,
namee varchar(40),
id_paciente int,
id_doctor int,
foreign key(id_paciente) references pacientes(id_paciente),
foreign key(id_doctor) references doctores(id_doctor));