show databases;
create database Actividad3;
use Actividad3;

create table fabricantes
(
	codigo int not null,
	nombre nvarchar(100),
    PRIMARY KEY (codigo)
    
);

create table articulos
(
	codigo int not null,
	nombre nvarchar(100),
    precio int,
    fabricante int,
	PRIMARY KEY (codigo),
    key(fabricante),
    foreign key (fabricante)
    references fabricantes (codigo)
	on delete cascade
    on update cascade
);