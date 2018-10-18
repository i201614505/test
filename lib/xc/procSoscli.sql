
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