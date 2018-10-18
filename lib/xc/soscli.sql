SET SQL_SAFE_UPDATES = 0;

create database soscli;

use soscli;

create table auditoria
(
cod int primary key auto_increment not null,
usu varchar(15) not null,
ip varchar(15) not null,
mac varchar(17) not null,
fec date not null,
hor time not null,
des varchar(120) not null
);

create table usuario
(
cod char(8) primary key not null,
ps boolean not null,
usu varchar(15) not null unique,
clv varchar(15) not null,
texto varchar(50) not null,
alma int not null,
ip varchar(15) not null,
mac varchar(17) not null,
est boolean not null
);

create table departamentoPeru
(
id int primary key auto_increment not null,
des varchar(50) not null
);

create table aseguradora
(
cod int primary key auto_increment not null,
nom varchar(50) not null,
sig varchar(10) not null,
dir varchar(50) not null,
dep int not null,
res varchar(50) not null,
ruc varchar(11) not null,
tel varchar(20) not null,
cel varchar(20) not null,
tarpar boolean not null,
email varchar(120) not null,
facapli boolean not null,
protra boolean not null,
iafa varchar(8) not null,
url varchar(200) not null,
siteds boolean not null,

FOREIGN KEY (dep) REFERENCES departamentoPeru(id) ON DELETE CASCADE
);
                                            


