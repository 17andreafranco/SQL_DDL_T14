create database Actividad8;
use Actividad8;

create table piezas(
	codigo int not null,
    nombre nvarchar(100),
    primary key(codigo)
);

create table proveedores(
	id char(4) not null,
    nombre nvarchar(100),
    primary key (id)
);

create table suministra(
	codigopiezas int not null,
	idproveedor char(4) not null,
    precio int,
    primary key(codigopiezas,idproveedor),
    key(codigopiezas),
    foreign key(codigopiezas)
    references piezas(codigo),
    key(idproveedor),
    foreign key(idproveedor)
    references proveedores(id)
);