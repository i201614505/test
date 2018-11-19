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
                                            
create table poliza
(
cod int primary key auto_increment not null,
pol varchar(25) not null,
facfar double not null,
facser double not null,
descser double not null,
incfarm double not null,
hoscoa double not null,
hosded double not null,
hostdedmon int not null,
hostatm double not null,
hosthab boolean not null,
hostobs varchar(200) null,
ambcoa double not null,
ambded double not null,
ambdedmon int not null,
ambcon double not null,
ambobs varchar(200) null,
emecoa double not null,
emeded double not null,
emededmon int not null,
emecon double not null,
emeobs varchar(200) null,
odocoa double not null,
ododed double not null,
ododedmon int not null,
odocon double not null,
odoobs varchar(200) null,
farcoa double not null,
fardesfar double not null,
asegu bigint UNSIGNED not null, 

FOREIGN KEY (asegu) REFERENCES aseguradora(cod) ON UPDATE CASCADE ON DELETE RESTRICT 
);

create table empresa
(
cod int primary key auto_increment not null,
nom varchar(50) not null,
enc varchar(50) not null,
dir varchar(120) not null,
ruc varchar(11) not null,
dep int not null,
tel varchar(25) not null,
cel varchar(25) not null,
email varchar(120) not null,
est boolean not null,
ase bigint UNSIGNED not null,

FOREIGN KEY (ase) REFERENCES aseguradora(cod) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (dep) REFERENCES departamentoperu(id) ON UPDATE CASCADE ON DELETE RESTRICT 
);

create table pais
(
id int primary key auto_increment not null,
des varchar(60) not null
);

create table provinciaperu
(
id int primary key auto_increment not null,
id_dep int not null,
des varchar(50) not null,

FOREIGN KEY (id_dep) REFERENCES departamentoperu(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table paciente
(
id int primary key auto_increment not null,
nom varchar(50) not null,
ape varchar(50) not null,
dir varchar(120) not null,
fecnac Datetime not null,
sexo varchar(10) not null,
pais int not null,
dep varchar(25) not null,
prov varchar(50) not null,
cel varchar(25) null,
tel varchar(25) null,
grusan varchar(3) not null,
tipdoc varchar(25) not null,
numdoc varchar(20) unique not null,
ruc varchar(11) null,
email varchar(120) null,
tit boolean not null,
titid int not null,
par varchar(10) not null,
ocu varchar(20) not null,
estciv varchar(20) not null,
instru varchar(20) not null,
emp int not null,
npol int not null,
ncer varchar(10) not null,
ncar varchar(20) not null,

FOREIGN KEY (pais) REFERENCES pais(id) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (emp) REFERENCES empresa(cod) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (npol) REFERENCES poliza(cod) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table beneficio
(
cod int primary key auto_increment not null,
des varchar(50) not null,
tiping int not null,
est boolean not null,
esta1 boolean not null,
esta2 boolean not null,
esta3 boolean not null,
esta4 boolean not null,
esta5 boolean not null,
esta6 boolean not null,
esta7 boolean not null,
esta8 boolean not null,
esta9 boolean not null,
esta10 boolean not null,
esta11 boolean not null,
esta12 boolean not null,
esta13 boolean not null
);

create table chequeo
(
id int primary key auto_increment not null,
des varchar(50) not null,
solser boolean not null,
iteacu boolean not null,
est boolean not null,
bene int not null,

FOREIGN KEY (bene) REFERENCES beneficio(cod) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table condicioncheck
(
id int primary key auto_increment not null,
afesex int not null,
montot double not null,
desde int not null,
hasta int not null,
che int not null,

FOREIGN KEY (che) REFERENCES chequeo(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table especialidad
(
id int primary key auto_increment not null,
des varchar(50) not null unique,
ipress varchar(6) not null,
solben varchar(3) not null,
ups varchar(6) not null,
upscon varchar(10) not null,
upseme varchar(10) not null,
upshos varchar(10) not null,
upsqui varchar(10) not null
);

create table moneda
(
id int primary key auto_increment not null,
des varchar(50) not null,
precom double not null,
preven double not null,
imp varchar(20) not null
);

create table admision
(
numate int primary key auto_increment not null,
numhis varchar(20) not null,
fecing datetime not null,
empre int not null,
asegura int not null,
numcar varchar(20) not null,
pol int not null,
tipafi int not null,
tipaut int not null,
numaut varchar(20) not null,
mugar varchar(10) not null,
ficweb varchar(8) not null,
bene int not null,
tipcob int not null,
tipche int not null,
espe int not null,
desfar double not null,
incfar double not null,
desser double not null,
consul double not null,
facfar double not null,
facser double not null,
habdia boolean not null,
dedtip int not null,
dedmon double not null,
coa double not null,
coafar double not null,
fecpol datetime not null,
est int not null,
obs varchar(250) not null,
tipcam double not null,
estadm int not null,

FOREIGN KEY (numhis) REFERENCES paciente(numdoc) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (bene) REFERENCES beneficio(cod) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (tipche) REFERENCES chequeo(id) ON UPDATE CASCADE ON DELETE RESTRICT
);