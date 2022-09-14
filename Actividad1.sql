show databases;
create database Actividad1;
use Actividad1;

create table Estación
(
	identificador mediumint UNSIGNED NOT NULL,
	latitud varchar(15) NOT NULL,
    longitud varchar(15) NOT NULL,
    altitud mediumint NOT NULL,
	PRIMARY KEY (identificador)
);

create table Muestra
(
	identificadorestacion mediumint UNSIGNED NOT NULL,
    fecha date not null,
    temperaturaminima tinyint,
    temperaturamaxima tinyint,
	precepitaciones smallint unsigned,
    humedadminima tinyint unsigned,
    humedadmaxima tinyint unsigned,
    velocidadminima smallint unsigned,
    velocidadmaxima smallint unsigned,
    KEY (identificadorestacion),
    foreign key (identificadorestacion)
    references estación(identificador)
    on delete no action
    on update cascade
);

