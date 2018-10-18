-- ------------------------------------------------------------ Triggerusuario ------------------------------------------------------------

-- insertar usuario
DROP trigger IF EXISTS `insertUsuario`;

DELIMITER $$
CREATE TRIGGER insertUsuario
    BEFORE INSERT ON usuario
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo usuario en la base de datos');
END$$
DELIMITER ;

-- actualizar usuario
DROP trigger IF EXISTS `updateUsuario`;

DELIMITER $$
CREATE TRIGGER updateUsuario
    BEFORE UPDATE ON usuario
    FOR EACH ROW 
BEGIN
    -- insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo usuario en la base de datos');
END$$
DELIMITER ;

-- eliminar usuario
DROP trigger IF EXISTS `deleteUsuario`;

DELIMITER $$
CREATE TRIGGER deleteUsuario
    BEFORE DELETE ON usuario
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino usuario de la base de datos');
END$$
DELIMITER ;


-- ------------------------------------------------------------ Triggeraseguradora ------------------------------------------------------------

-- insertar aseguradora
DROP trigger IF EXISTS `insertAseguradora`;

DELIMITER $$
CREATE TRIGGER insertAseguradora
    BEFORE INSERT ON aseguradora
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nueva Aseguradora en la base de datos');
END$$
DELIMITER ;

-- actualizar aseguradora
DROP trigger IF EXISTS `actualizarAseguradora`;

DELIMITER $$
CREATE TRIGGER updateAseguradora
    BEFORE UPDATE ON aseguradora
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Aseguradora en la base de datos');
END$$
DELIMITER ;

-- eliminar aseguradora
DROP trigger IF EXISTS `deleteAseguradora`;

DELIMITER $$
CREATE TRIGGER deleteAseguradora
    BEFORE DELETE ON aseguradora
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Aseguradora de la base de datos');
END$$
DELIMITER ;

