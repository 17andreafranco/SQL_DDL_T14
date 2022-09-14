show databases;
create database Actividad2;
use Actividad2;

create table editorial
(
	claveeditorial smallint NOT NULL,
	nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
	PRIMARY KEY (claveeditorial)
);

create table libro
(
	clavelibro int NOT NULL,
	titulo varchar(60),
    idioma varchar(60),
    formato varchar(15),
    claveeditorial smallint,
	PRIMARY KEY (clavelibro),
    key(claveeditorial),
    foreign key (claveeditorial)
    references editorial (claveeditorial)
    on delete set null
    on update cascade
);

create table tema
(
	clavetema smallint NOT NULL,
	nombre varchar(40),
	PRIMARY KEY (clavetema)
);

create table autor
(
	claveautor int NOT NULL,
	nombre varchar(60),
	PRIMARY KEY (claveautor)
);

create table ejemplar
(
	claveejemplar int NOT NULL,
    clavelibro int not null,
    numeroorden smallint not null,
    edicion smallint,
    ubicacion varchar(15),
    categoria char,
	PRIMARY KEY (claveejemplar),
    foreign key(clavelibro)
    references libro(clavelibro)
    on delete cascade
    on update cascade
);
create table socio(
	clavesocio int not null,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
    categoria char,
    primary key (clavesocio)
);

create table prestamo(
	clavesocio int,
    claveejemplar int,
    numeroorden smallint,
    fecha_prestamo date not null,
    fecha_devolucion date default null,
    notas blob,
    foreign key (clavesocio)
    references socio(clavesocio)
    on delete set null
    on update cascade,
    foreign key(claveejemplar)
    references ejemplar(claveejemplar)
    on delete set null
    on update cascade
);

create table trata_sobre(
	clavelibro int not null,
    clavetema smallint not null,
    foreign key (clavelibro)
    references libro(clavelibro)
    on delete cascade
    on update cascade,
    foreign key(clavetema)
    references tema(clavetema)
    on delete cascade
    on update cascade
);

create table traata_sobre(
	clavelibro int not null,
    claveautor int not null,
    foreign key (clavelibro)
    references libro(clavelibro)
    on delete cascade
    on update cascade,
    foreign key(claveautor)
    references autor(claveautor)
    on delete cascade
    on update cascade
);






