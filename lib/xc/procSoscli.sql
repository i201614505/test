
DROP PROCEDURE IF EXISTS `createUser`;

DELIMITER $$
USE `soscli`$$

CREATE PROCEDURE `createUser` (usu varchar(15), cod varchar(15)) 
BEGIN 

INSERT INTO mysql.user (`Host`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `Create_tablespace_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`, `plugin`, `authentication_string`, `password_expired`, `password_last_changed`, `account_locked`)
VALUES ('localhost', usu, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', '0', '0', '0', '0', 'mysql_native_password', password(cod), 'N', now(), 'N');

FLUSH PRIVILEGES;

END$$

DELIMITER ; 


DROP PROCEDURE IF EXISTS `updateUser`;

DELIMITER $$
USE `soscli`$$

CREATE PROCEDURE `updateUser` (oldusu varchar(15), usu varchar(15), cod varchar(15)) 
BEGIN 
	
    update mysql.user set User=usu where User=oldusu;
    update mysql.user set authentication_string=password(cod) where user=usu;

FLUSH PRIVILEGES;

END$$

DELIMITER ; 


-- ------------------------------------------------------------ Usuario ------------------------------------------------------------

-- Listar usuario
DROP procedure IF EXISTS `listUsuario`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listUsuario` ()
BEGIN
		select * from usuario;
END$$

DELIMITER ;


-- Buscar usuario
DROP procedure IF EXISTS `findUsuario`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findUsuario` (usu varchar(15))
BEGIN
		select * from usuario u
       where u.usu like concat('%', usu, '%');
END$$

DELIMITER ;


-- Buscar usuario
DROP procedure IF EXISTS `findUsuarioID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findUsuarioID` (cod char(8))
BEGIN
		select * from usuario u
       where u.cod like cod;
END$$

DELIMITER ;


-- agregar usuario
DROP procedure IF EXISTS `newUsuario`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newUsuario` (cod char(8), ps boolean, usu varchar(15), clv varchar(15), texto varchar(50), alma int, ip varchar(15), mac varchar(17), est boolean)
BEGIN
		insert usuario values(cod, ps, usu, clv, texto, alma, ip, mac, est);
        call createUser(usu, clv);
END$$

DELIMITER ;


-- actualizar usuario
DROP procedure IF EXISTS `setUsuario`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setUsuario` (oldcod char(8), cod char(8), ps boolean, usu varchar(15), clv varchar(15), texto varchar(50), alma int, ip varchar(15), mac varchar(17), est boolean)
BEGIN
declare oldusu varchar(15);
set oldusu = usu;

		update usuario set
cod = cod,
ps = ps,
usu = usu,
clv = clv,
texto = texto,
alma = alma,
ip = ip,
mac = mac,
est = est where usuario.cod = cod;

		update usuario set
usuario.cod = cod where usuario.cod = oldcod;

		call updateUser(oldusu, usu, clv);
        
		insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo usuario en la base de datos');

END$$

DELIMITER ;


-- eliminar usuario
DROP procedure IF EXISTS `deleteUsuario`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteUsuario` (cod char(8))
BEGIN
declare oldusu varchar(15);
set oldusu = (select usu from usuario where usuario.cod = cod);

	delete from usuario where usuario.cod = cod;
    
    drop user oldusu;
END$$

DELIMITER ;


-- enter usuario
DROP procedure IF EXISTS `enterUsuario`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `enterUsuario` (cod char(8), ip varchar(15), mac varchar(17))
BEGIN

		update usuario set
ip = ip,
mac = mac where usuario.cod = cod;

    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'ingreso al sistema');

END$$

DELIMITER ;


-- ------------------------------------------------------------ DepartamentoPeru ------------------------------------------------------------

-- Listar departamentoperu
DROP procedure IF EXISTS `listDepartamentoPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listDepartamentoPeru` ()
BEGIN
		select * from departamentoperu;
END$$

DELIMITER ;


-- Buscar departamentoperu
DROP procedure IF EXISTS `findDepartamentoPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findDepartamentoPeru` (des varchar(50))
BEGIN
		select * from departamentoperu d
       where d.des like concat('%', des, '%');
END$$

DELIMITER ;


-- Buscar departamentoperu
DROP procedure IF EXISTS `findDepartamentoPeruID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findDepartamentoPeruID` (id int)
BEGIN
		select * from departamentoperu d
       where d.id like id;
END$$

DELIMITER ;


-- agregar departamentoperu
DROP procedure IF EXISTS `newDepartamentoPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newDepartamentoPeru` (id int, des varchar(50))
BEGIN
		insert departamentoperu values(id, des);
END$$

DELIMITER ;


-- actualizar departamentoperu
DROP procedure IF EXISTS `setDepartamentoPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setDepartamentoPeru` (oldid int, id int, des varchar(50))
BEGIN
		update departamentoperu set
id = id,
des = des where departamentoperu.id = id;

		update departamentoperu set
departamentoperu.id = id where departamentoperu.id = oldid;
END$$

DELIMITER ;


-- eliminar departamentoperu
DROP procedure IF EXISTS `deleteDepartamentoPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteDepartamentoPeru` (id int)
BEGIN
	delete from departamentoperu where departamentoperu.id = id;
END$$

DELIMITER ;


-- ------------------------------------------------------------ Aseguradora ------------------------------------------------------------

-- Listar aseguradora
DROP procedure IF EXISTS `listAseguradora`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listAseguradora` ()
BEGIN
		select * from aseguradora;
END$$

DELIMITER ;


-- Buscar aseguradora
DROP procedure IF EXISTS `findAseguradora`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findAseguradora` (nom varchar(50))
BEGIN
		select * from aseguradora a
       where a.nom like concat('%', nom, '%');
END$$

DELIMITER ;


-- Buscar aseguradora
DROP procedure IF EXISTS `findAseguradoraID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findAseguradoraID` (cod int)
BEGIN
		select * from aseguradora a
       where a.cod like cod;
END$$

DELIMITER ;


-- agregar aseguradora
DROP procedure IF EXISTS `newAseguradora`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newAseguradora` (cod int, nom varchar(50), sig varchar(10), dir varchar(50), dep int, res varchar(50), ruc varchar(11), tel varchar(20), cel varchar(20), tarpar boolean, email varchar(120), facapli boolean, protra boolean, iafa varchar(8), url varchar(200), siteds boolean)
BEGIN
		insert aseguradora values(null, nom, sig, dir, dep, res, ruc, tel, cel, tarpar, email, facapli, protra, iafa, url, siteds);
END$$

DELIMITER ;


-- actualizar aseguradora
DROP procedure IF EXISTS `setAseguradora`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setAseguradora` (oldcod int, cod int, nom varchar(50), sig varchar(10), dir varchar(50), dep int, res varchar(50), ruc varchar(11), tel varchar(20), cel varchar(20), tarpar boolean, email varchar(120), facapli boolean, protra boolean, iafa varchar(8), url varchar(200), siteds boolean)
BEGIN
		update aseguradora set
cod = cod,
nom = nom,
sig = sig,
dir = dir,
dep = dep,
res = res,
ruc = ruc,
tel = tel,
cel = cel,
tarpar = tarpar,
email = email,
facapli = facapli,
protra = protra,
iafa = iafa,
url = url,
siteds = siteds where aseguradora.cod = cod;

		update aseguradora set
aseguradora.cod = cod where aseguradora.cod = oldcod;
END$$

DELIMITER ;


-- eliminar aseguradora
DROP procedure IF EXISTS `deleteAseguradora`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteAseguradora` (cod int)
BEGIN
	delete from aseguradora where aseguradora.cod = cod;
END$$

DELIMITER ;


-- ------------------------------------------------------------ Poliza ------------------------------------------------------------

-- Listar poliza
DROP procedure IF EXISTS `listPoliza`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listPoliza` ()
BEGIN
		select * from poliza;
END$$

DELIMITER ;


-- Buscar poliza
DROP procedure IF EXISTS `findPoliza`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPoliza` (asegu int)
BEGIN
		select * from poliza p
       where p.asegu = asegu;
END$$

DELIMITER ;


-- Buscar poliza
DROP procedure IF EXISTS `findPolizaID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPolizaID` (cod int)
BEGIN
		select * from poliza p
       where p.cod like cod;
END$$

DELIMITER ;


-- agregar poliza
DROP procedure IF EXISTS `newPoliza`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newPoliza` (cod int, pol varchar(25), facfar double, facser double, descser double, incfarm double, hoscoa double, hosded double, hostdedmon int, hostatm double, hosthab boolean, hostobs varchar(200), ambcoa double, ambded double, ambdedmon int, ambcon double, ambobs varchar(200), emecoa double, emeded double, emededmon int, emecon double, emeobs varchar(200), odocoa double, ododed double, ododedmon int, odocon double, odoobs varchar(200), farcoa double, fardesfar double, asegu int)
BEGIN
		insert poliza values(null, pol, facfar, facser, descser, incfarm, hoscoa, hosded, hostdedmon, hostatm, hosthab, hostobs, ambcoa, ambded, ambdedmon, ambcon, ambobs, emecoa, emeded, emededmon, emecon, emeobs, odocoa, ododed, ododedmon, odocon, odoobs, farcoa, fardesfar, asegu);
END$$

DELIMITER ;


-- actualizar poliza
DROP procedure IF EXISTS `setPoliza`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setPoliza` (oldcod int, cod int, pol varchar(25), facfar double, facser double, descser double, incfarm double, hoscoa double, hosded double, hostdedmon int, hostatm double, hosthab boolean, hostobs varchar(200), ambcoa double, ambded double, ambdedmon int, ambcon double, ambobs varchar(200), emecoa double, emeded double, emededmon int, emecon double, emeobs varchar(200), odocoa double, ododed double, ododedmon int, odocon double, odoobs varchar(200), farcoa double, fardesfar double, asegu int)
BEGIN
		update poliza set
cod = cod,
pol = pol,
facfar = facfar,
facser = facser,
descser = descser,
incfarm = incfarm,
hoscoa = hoscoa,
hosded = hosded,
hostdedmon = hostdedmon,
hostatm = hostatm,
hosthab = hosthab,
hostobs = hostobs,
ambcoa = ambcoa,
ambded = ambded,
ambdedmon = ambdedmon,
ambcon = ambcon,
ambobs = ambobs,
emecoa = emecoa,
emeded = emeded,
emededmon = emededmon,
emecon = emecon,
emeobs = emeobs,
odocoa = odocoa,
ododed = ododed,
ododedmon = ododedmon,
odocon = odocon,
odoobs = odoobs,
farcoa = farcoa,
fardesfar = fardesfar,
asegu = asegu where poliza.cod = cod;

		update poliza set
poliza.cod = cod where poliza.cod = oldcod;
END$$

DELIMITER ;


-- eliminar poliza
DROP procedure IF EXISTS `deletePoliza`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deletePoliza` (cod int)
BEGIN
	delete from poliza where poliza.cod = cod;
END$$

DELIMITER ;



-- ------------------------------------------------------------ Empresa ------------------------------------------------------------

-- Listar empresa
DROP procedure IF EXISTS `listEmpresa`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listEmpresa` ()
BEGIN
		select * from empresa;
END$$

DELIMITER ;


-- Buscar empresa
DROP procedure IF EXISTS `findEmpresa`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findEmpresa` (nom varchar(50))
BEGIN
		select * from empresa e
       where e.nom like concat('%', nom, '%');
END$$

DELIMITER ;


-- Buscar empresa
DROP procedure IF EXISTS `findEmpresaID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findEmpresaID` (cod int)
BEGIN
		select * from empresa e
       where e.cod like cod;
END$$

DELIMITER ;


-- agregar empresa
DROP procedure IF EXISTS `newEmpresa`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newEmpresa` (cod int, nom varchar(50), enc varchar(50), dir varchar(120), ruc varchar(11), dep int, tel varchar(25), cel varchar(25), email varchar(120), est boolean, ase int)
BEGIN
		insert empresa values(null, nom, enc, dir, ruc, dep, tel, cel, email, est, ase);
END$$

DELIMITER ;


-- actualizar empresa
DROP procedure IF EXISTS `setEmpresa`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setEmpresa` (oldcod int, cod int, nom varchar(50), enc varchar(50), dir varchar(120), ruc varchar(11), dep int, tel varchar(25), cel varchar(25), email varchar(120), est boolean, ase int)
BEGIN
		update empresa set
cod = cod,
nom = nom,
enc = enc,
dir = dir,
ruc = ruc,
dep = dep,
tel = tel,
cel = cel,
email = email,
est = est,
ase = ase where empresa.cod = cod;

		update empresa set
empresa.cod = cod where empresa.cod = oldcod;
END$$

DELIMITER ;


-- eliminar empresa
DROP procedure IF EXISTS `deleteEmpresa`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteEmpresa` (cod int)
BEGIN
	delete from empresa where empresa.cod = cod;
END$$

DELIMITER ;



-- ------------------------------------------------------------ Pais ------------------------------------------------------------

-- Listar pais
DROP procedure IF EXISTS `listPais`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listPais` ()
BEGIN
		select * from pais;
END$$

DELIMITER ;


-- Buscar pais
DROP procedure IF EXISTS `findPais`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPais` (des varchar(50))
BEGIN
		select * from pais p
       where p.des like concat('%', des, '%');
END$$

DELIMITER ;


-- Buscar pais
DROP procedure IF EXISTS `findPaisID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPaisID` (id int)
BEGIN
		select * from pais p
       where p.id like id;
END$$

DELIMITER ;


-- agregar pais
DROP procedure IF EXISTS `newPais`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newPais` (id int, des varchar(60))
BEGIN
		insert pais values(id, des);
END$$

DELIMITER ;


-- actualizar pais
DROP procedure IF EXISTS `setPais`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setPais` (oldid int, id int, des varchar(60))
BEGIN
		update pais set
id = id,
des = des where pais.id = id;

		update pais set
pais.id = id where pais.id = oldid;
END$$

DELIMITER ;


-- eliminar pais
DROP procedure IF EXISTS `deletePais`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deletePais` (id int)
BEGIN
	delete from pais where pais.id = id;
END$$

DELIMITER ;


-- ------------------------------------------------------------ ProvinciaPeru ------------------------------------------------------------

-- Listar provinciaperu
DROP procedure IF EXISTS `listProvinciaPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listProvinciaPeru` ()
BEGIN
		select * from provinciaperu;
END$$

DELIMITER ;


-- Buscar provinciaperu
DROP procedure IF EXISTS `findProvinciaPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findProvinciaPeru` (id_dep varchar(50))
BEGIN
		select * from provinciaperu p
       where p.id_dep like id_dep;
END$$

DELIMITER ;


-- Buscar provinciaperu
DROP procedure IF EXISTS `findProvinciaPeruID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findProvinciaPeruID` (id int)
BEGIN
		select * from provinciaperu p
       where p.id like id;
END$$

DELIMITER ;


-- agregar provinciaperu
DROP procedure IF EXISTS `newProvinciaPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newProvinciaPeru` (id int, id_dep int, des varchar(50))
BEGIN
		insert provinciaperu values(id, id_dep, des);
END$$

DELIMITER ;


-- actualizar provinciaperu
DROP procedure IF EXISTS `setProvinciaPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setProvinciaPeru` (oldid int, id int, id_dep int, des varchar(50))
BEGIN
		update provinciaperu set
id = id,
id_dep = id_dep,
des = des where provinciaperu.id = id;

		update provinciaperu set
provinciaperu.id = id where provinciaperu.id = oldid;
END$$

DELIMITER ;


-- eliminar provinciaperu
DROP procedure IF EXISTS `deleteProvinciaPeru`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteProvinciaPeru` (id int)
BEGIN
	delete from provinciaperu where provinciaperu.id = id;
END$$

DELIMITER ;



-- ------------------------------------------------------------ Paciente ------------------------------------------------------------

-- Listar paciente
DROP procedure IF EXISTS `listPaciente`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listPaciente` ()
BEGIN
		select * from paciente;
END$$

DELIMITER ;


-- Buscar paciente
DROP procedure IF EXISTS `findPaciente`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPaciente` (nom varchar(50))
BEGIN
		select * from paciente p
       where p.nom like concat('%', nom, '%');
END$$

DELIMITER ;


-- Buscar paciente
DROP procedure IF EXISTS `findPacienteID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPacienteID` (id int)
BEGIN
		select * from paciente p
       where p.id like id;
END$$

DELIMITER ;

-- Buscar paciente
DROP procedure IF EXISTS `findPacienteNDOC`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findPacienteNDOC` (numdoc varchar(20))
BEGIN
		select * from paciente p
       where p.numdoc like numdoc;
END$$

DELIMITER ;


-- agregar paciente
DROP procedure IF EXISTS `newPaciente`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newPaciente` (id int, nom varchar(50), ape varchar(50), dir varchar(120), fecnac datetime, sexo varchar(10), pais int, dep varchar(25), prov varchar(50), cel varchar(25), tel varchar(25), grusan varchar(3), tipdoc varchar(25), numdoc varchar(20), ruc varchar(11), email varchar(120), tit boolean, titid int, par varchar(10), ocu varchar(20), estciv varchar(20), instru varchar(20), emp int, npol int, ncer varchar(10), ncar varchar(20))
BEGIN
		insert paciente values(null, nom, ape, dir, fecnac, sexo, pais, dep, prov, cel, tel, grusan, tipdoc, numdoc, ruc, email, tit, titid, par, ocu, estciv, instru, emp, npol, ncer, ncar);
END$$

DELIMITER ;


-- actualizar paciente
DROP procedure IF EXISTS `setPaciente`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setPaciente` (oldid int, id int, nom varchar(50), ape varchar(50), dir varchar(120), fecnac datetime, sexo varchar(10), pais int, dep varchar(25), prov varchar(50), cel varchar(25), tel varchar(25), grusan varchar(3), tipdoc varchar(25), numdoc varchar(20), ruc varchar(11), email varchar(120), tit boolean, titid int, par varchar(10), ocu varchar(20), estciv varchar(20), instru varchar(20), emp int, npol int, ncer varchar(10), ncar varchar(20))
BEGIN
		update paciente set
id = id,
nom = nom,
ape = ape,
dir = dir,
fecnac = fecnac,
sexo = sexo,
pais = pais,
dep = dep,
prov = prov,
cel = cel,
tel = tel,
grusan = grusan,
tipdoc = tipdoc,
numdoc = numdoc,
ruc = ruc,
email = email,
tit = tit,
titid = titid,
par = par,
ocu = ocu,
estciv = estciv,
instru = instru,
emp = emp,
npol = npol,
ncer = ncer,
ncar = ncar where paciente.id = id;

		update paciente set
paciente.id = id where paciente.id = oldid;
END$$

DELIMITER ;


-- eliminar paciente
DROP procedure IF EXISTS `deletePaciente`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deletePaciente` (id int)
BEGIN
	delete from paciente where paciente.id = id;
END$$

DELIMITER ;


-- ------------------------------------------------------------ Beneficio ------------------------------------------------------------

-- Listar beneficio
DROP procedure IF EXISTS `listBeneficio`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listBeneficio` ()
BEGIN
		select * from beneficio;
END$$

DELIMITER ;


-- Buscar beneficio
DROP procedure IF EXISTS `findBeneficio`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findBeneficio` (des varchar(50))
BEGIN
		select * from beneficio b
       where b.des like concat('%', des, '%');
END$$

DELIMITER ;


-- Buscar beneficio
DROP procedure IF EXISTS `findBeneficioNOM`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findBeneficioNOM` (des varchar(50))
BEGIN
		select * from beneficio b
       where b.des like des;
END$$

DELIMITER ;

-- Buscar beneficio
DROP procedure IF EXISTS `findBeneficioID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findBeneficioID` (cod int)
BEGIN
		select * from beneficio b
       where b.cod like cod;
END$$

DELIMITER ;


-- agregar beneficio
DROP procedure IF EXISTS `newBeneficio`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newBeneficio` (cod int, des varchar(50), tiping int, est boolean, esta1 boolean, esta2 boolean, esta3 boolean, esta4 boolean, esta5 boolean, esta6 boolean, esta7 boolean, esta8 boolean, esta9 boolean, esta10 boolean, esta11 boolean, esta12 boolean, esta13 boolean)
BEGIN
		insert beneficio values(null, des, tiping, est, esta1, esta2, esta3, esta4, esta5, esta6, esta7, esta8, esta9, esta10, esta11, esta12, esta13);
END$$

DELIMITER ;


-- actualizar beneficio
DROP procedure IF EXISTS `setBeneficio`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setBeneficio` (oldcod int, cod int, des varchar(50), tiping int, est boolean, esta1 boolean, esta2 boolean, esta3 boolean, esta4 boolean, esta5 boolean, esta6 boolean, esta7 boolean, esta8 boolean, esta9 boolean, esta10 boolean, esta11 boolean, esta12 boolean, esta13 boolean)
BEGIN
		update beneficio set
cod = cod,
des = des,
tiping = tiping,
est = est,
esta1 = esta1,
esta2 = esta2,
esta3 = esta3,
esta4 = esta4,
esta5 = esta5,
esta6 = esta6,
esta7 = esta7,
esta8 = esta8,
esta9 = esta9,
esta10 = esta10,
esta11 = esta11,
esta12 = esta12,
esta13 = esta13 where beneficio.cod = cod;

		update beneficio set
beneficio.cod = cod where beneficio.cod = oldcod;
END$$

DELIMITER ;


-- eliminar beneficio
DROP procedure IF EXISTS `deleteBeneficio`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteBeneficio` (cod int)
BEGIN
	delete from beneficio where beneficio.cod = cod;
END$$

DELIMITER ;



-- ------------------------------------------------------------ Chequeo ------------------------------------------------------------

-- Listar chequeo
DROP procedure IF EXISTS `listChequeo`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listChequeo` ()
BEGIN
		select * from chequeo;
END$$

DELIMITER ;


-- Buscar chequeo
DROP procedure IF EXISTS `findChequeo`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findChequeo` (bene int)
BEGIN
		select * from chequeo c
       where c.bene = bene;
END$$

DELIMITER ;

-- Buscar chequeo
DROP procedure IF EXISTS `findChequeoNOM`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findChequeoNOM` (des varchar(50))
BEGIN
		select * from chequeo c
       where c.des like des;
END$$

DELIMITER ;


-- Buscar chequeo
DROP procedure IF EXISTS `findChequeoID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findChequeoID` (id int)
BEGIN
		select * from chequeo c
       where c.id like id;
END$$

DELIMITER ;


-- agregar chequeo
DROP procedure IF EXISTS `newChequeo`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newChequeo` (id int, des varchar(50), solser boolean, iteacu boolean, est boolean, bene int)
BEGIN
		insert chequeo values(null, des, solser, iteacu, est, bene);
END$$

DELIMITER ;


-- actualizar chequeo
DROP procedure IF EXISTS `setChequeo`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setChequeo` (oldid int, id int, des varchar(50), solser boolean, iteacu boolean, est boolean, bene int)
BEGIN
		update chequeo set
id = id,
des = des,
solser = solser,
iteacu = iteacu,
est = est,
bene = bene where chequeo.id = id;

		update chequeo set
chequeo.id = id where chequeo.id = oldid;
END$$

DELIMITER ;


-- eliminar chequeo
DROP procedure IF EXISTS `deleteChequeo`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteChequeo` (id int)
BEGIN
	delete from chequeo where chequeo.id = id;
END$$

DELIMITER ;



-- ------------------------------------------------------------ CondicionCheck ------------------------------------------------------------

-- Listar condicioncheck
DROP procedure IF EXISTS `listCondicionCheck`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listCondicionCheck` ()
BEGIN
		select * from condicioncheck;
END$$

DELIMITER ;


-- Buscar condicioncheck
DROP procedure IF EXISTS `findCondicionCheck`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findCondicionCheck` (che int)
BEGIN
		select * from condicioncheck c
       where c.che = che;
END$$

DELIMITER ;


-- Buscar condicioncheck
DROP procedure IF EXISTS `findCondicionCheckID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findCondicionCheckID` (id int)
BEGIN
		select * from condicioncheck c
       where c.id like id;
END$$

DELIMITER ;


-- agregar condicioncheck
DROP procedure IF EXISTS `newCondicionCheck`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newCondicionCheck` (id int, afesex int, montot double, desde int, hasta int, che int)
BEGIN
		insert condicioncheck values(null, afesex, montot, desde, hasta, che);
END$$

DELIMITER ;


-- actualizar condicioncheck
DROP procedure IF EXISTS `setCondicionCheck`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setCondicionCheck` (oldid int, id int, afesex int, montot double, desde int, hasta int, che int)
BEGIN
		update condicioncheck set
id = id,
afesex = afesex,
montot = montot,
desde = desde,
hasta = hasta,
che = che where condicioncheck.id = id;

		update condicioncheck set
condicioncheck.id = id where condicioncheck.id = oldid;
END$$

DELIMITER ;


-- eliminar condicioncheck
DROP procedure IF EXISTS `deleteCondicionCheck`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteCondicionCheck` (id int)
BEGIN
	delete from condicioncheck where condicioncheck.id = id;
END$$

DELIMITER ;



-- ------------------------------------------------------------ Especialidad ------------------------------------------------------------

-- Listar especialidad
DROP procedure IF EXISTS `listEspecialidad`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listEspecialidad` ()
BEGIN
		select * from especialidad;
END$$

DELIMITER ;


-- Buscar especialidad
DROP procedure IF EXISTS `findEspecialidad`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findEspecialidad` (des varchar(50))
BEGIN
		select * from especialidad e
       where e.des like concat('%', des, '%');
END$$

DELIMITER ;


-- Buscar especialidad
DROP procedure IF EXISTS `findEspecialidadNOM`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findEspecialidadNOM` (des varchar(50))
BEGIN
		select * from especialidad e
       where e.des like des;
END$$

DELIMITER ;


-- Buscar especialidad
DROP procedure IF EXISTS `findEspecialidadID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findEspecialidadID` (id int)
BEGIN
		select * from especialidad e
       where e.id like id;
END$$

DELIMITER ;


-- agregar especialidad
DROP procedure IF EXISTS `newEspecialidad`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newEspecialidad` (id int, des varchar(50), ipress varchar(6), solben varchar(3), ups varchar(6), upscon varchar(10), upseme varchar(10), upshos varchar(10), upsqui varchar(10))
BEGIN
		insert especialidad values(null, des, ipress, solben, ups, upscon, upseme, upshos, upsqui);
END$$

DELIMITER ;


-- actualizar especialidad
DROP procedure IF EXISTS `setEspecialidad`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setEspecialidad` (oldid int, id int, des varchar(50), ipress varchar(6), solben varchar(3), ups varchar(6), upscon varchar(10), upseme varchar(10), upshos varchar(10), upsqui varchar(10))
BEGIN
		update especialidad set
id = id,
des = des,
ipress = ipress,
solben = solben,
ups = ups,
upscon = upscon,
upseme = upseme,
upshos = upshos,
upsqui = upsqui where especialidad.id = id;

		update especialidad set
especialidad.id = id where especialidad.id = oldid;
END$$

DELIMITER ;


-- eliminar especialidad
DROP procedure IF EXISTS `deleteEspecialidad`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteEspecialidad` (id int)
BEGIN
	delete from especialidad where especialidad.id = id;
END$$

DELIMITER ;


-- ------------------------------------------------------------ Moneda ------------------------------------------------------------

-- Listar moneda
DROP procedure IF EXISTS `listMoneda`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listMoneda` ()
BEGIN
		select * from moneda;
END$$

DELIMITER ;


-- Buscar moneda
DROP procedure IF EXISTS `findMoneda`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findMoneda` (des varchar(50))
BEGIN
		select * from moneda m
       where m.des like concat('%', des, '%');
END$$

DELIMITER ;


-- Buscar moneda
DROP procedure IF EXISTS `findMonedaID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findMonedaID` (id int)
BEGIN
		select * from moneda m
       where m.id like id;
END$$

DELIMITER ;


-- agregar moneda
DROP procedure IF EXISTS `newMoneda`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newMoneda` (id int, des varchar(50), precom double, preven double, imp varchar(20))
BEGIN
		insert moneda values(null, des, precom, preven, imp);
END$$

DELIMITER ;


-- actualizar moneda
DROP procedure IF EXISTS `setMoneda`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setMoneda` (oldid int, id int, des varchar(50), precom double, preven double, imp varchar(20))
BEGIN
		update moneda set
id = id,
des = des,
precom = precom,
preven = preven,
imp = imp where moneda.id = id;

		update moneda set
moneda.id = id where moneda.id = oldid;
END$$

DELIMITER ;


-- eliminar moneda
DROP procedure IF EXISTS `deleteMoneda`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteMoneda` (id int)
BEGIN
	delete from moneda where moneda.id = id;
END$$

DELIMITER ;



-- ------------------------------------------------------------ Admision ------------------------------------------------------------

-- Listar admision
DROP procedure IF EXISTS `listAdmision`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `listAdmision` ()
BEGIN
		select * from admision;
END$$

DELIMITER ;


-- Buscar admision
DROP procedure IF EXISTS `findAdmision`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findAdmision` (numate varchar(20))
BEGIN
		select * from admision a
       where a.numate like concat('%', numate, '%');
END$$

DELIMITER ;

-- Buscar admision
DROP procedure IF EXISTS `findAdmisionNUM`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findAdmisionNUM` (numate varchar(20))
BEGIN
		select * from admision a
       where a.numate like numate;
END$$

DELIMITER ;


-- Buscar admision
DROP procedure IF EXISTS `findAdmisionID`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `findAdmisionID` (numate int)
BEGIN
		select * from admision a
       where a.numate like numate;
END$$

DELIMITER ;


-- agregar admision
DROP procedure IF EXISTS `newAdmision`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `newAdmision` (numate int, numhis varchar(20), fecing datetime, empre int, asegura int, numcar varchar(20), pol int, tipafi int, tipaut int, numaut varchar(20), mugar varchar(10), ficweb varchar(8), bene int, tipcob int, tipche int, espe int, desfar double, incfar double, desser double, consul double, facfar double, facser double, habdia boolean, dedtip int, dedmon double, coa double, coafar double, fecpol datetime, est int, obs varchar(250), tipcam double, estadm int)
BEGIN
		insert admision values(null, numhis, fecing, empre, asegura, numcar, pol, tipafi, tipaut, numaut, mugar, ficweb, bene, tipcob, tipche, espe, desfar, incfar, desser, consul, facfar, facser, habdia, dedtip, dedmon, coa, coafar, fecpol, est, obs, tipcam, estadm);
END$$

DELIMITER ;


-- actualizar admision
DROP procedure IF EXISTS `setAdmision`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `setAdmision` (oldnumate int, numate int, numhis varchar(20), fecing datetime, empre int, asegura int, numcar varchar(20), pol int, tipafi int, tipaut int, numaut varchar(20), mugar varchar(10), ficweb varchar(8), bene int, tipcob int, tipche int, espe int, desfar double, incfar double, desser double, consul double, facfar double, facser double, habdia boolean, dedtip int, dedmon double, coa double, coafar double, fecpol datetime, est int, obs varchar(250), tipcam double, estadm int)
BEGIN
		update admision set
numate = numate,
numhis = numhis,
fecing = fecing,
empre = empre,
asegura = asegura,
numcar = numcar,
pol = pol,
tipafi = tipafi,
tipaut = tipaut,
numaut = numaut,
mugar = mugar,
ficweb = ficweb,
bene = bene,
tipcob = tipcob,
tipche = tipche,
espe = espe,
desfar = desfar,
incfar = incfar,
desser = desser,
consul = consul,
facfar = facfar,
facser = facser,
habdia = habdia,
dedtip = dedtip,
dedmon = dedmon,
coa = coa,
coafar = coafar,
fecpol = fecpol,
est = est,
obs = obs,
tipcam = tipcam,
estadm = estadm where admision.numate = numate;

		update admision set
admision.numate = numate where admision.numate = oldnumate;
END$$

DELIMITER ;


-- eliminar admision
DROP procedure IF EXISTS `deleteAdmision`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `deleteAdmision` (numate int)
BEGIN
	delete from admision where admision.numate = numate;
END$$

DELIMITER ;


-- eliminar admision
DROP procedure IF EXISTS `executeQuery`;

DELIMITER $$
USE `soscli`$$
CREATE PROCEDURE `executeQuery` (texto varchar(1000))
BEGIN
	set @Expression = texto;
	PREPARE myquery FROM @Expression;
	EXECUTE myquery;
END$$

DELIMITER ;

