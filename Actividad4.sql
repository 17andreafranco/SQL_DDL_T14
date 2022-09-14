show databases;
create database Actividad4;
use Actividad4;

create table departamentos
(
	codigo int not null,
	nombre nvarchar(100),
    presupuesto int,
    PRIMARY KEY (codigo)
);

create table empleados
(
	dni varchar(8) not null,
    nombre nvarchar(100),
    apellidos nvarchar(255),
    departamento int,
	PRIMARY KEY (dni),
    key(departamento),
    foreign key (departamento)
    references departamentos (codigo)
	on delete cascade
    on update cascade
);