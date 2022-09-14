create database Actividad11;
use Actividad11;

create table facultad(
	id int not null,
    nombre nvarchar(100),
	primary key(id)
);

create table investigadores(
	dni varchar(8),
    nombre nvarchar(255),
    facultad int,
    primary key(dni),
    key(facultad),
    foreign key(facultad)
    references facultad(id)
);

create table equipos(
	numserie char(4),
    nombre nvarchar(100),
    facultad int,
    primary key(numserie),
    key(facultad),
    foreign key(facultad)
    references facultad(id)
);

create table reserva(
	dni varchar(8),
    numserie char(4),
    comienzo datetime,
    fin datetime,
    primary key(dni,numserie),
    key(dni),
    foreign key(dni)
    references investigadores(dni),
    key(numserie),
    foreign key(numserie)
    references equipos(numserie)
);