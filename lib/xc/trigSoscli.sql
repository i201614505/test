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


-- ------------------------------------------------------------ Triggerpoliza ------------------------------------------------------------

-- insertar poliza
DROP trigger IF EXISTS `insertPoliza`;

DELIMITER $$
CREATE TRIGGER insertPoliza
    BEFORE INSERT ON poliza
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Poliza en la base de datos');
END$$
DELIMITER ;

-- actualizar poliza
DROP trigger IF EXISTS `actualizarPoliza`;

DELIMITER $$
CREATE TRIGGER updatePoliza
    BEFORE UPDATE ON poliza
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Poliza en la base de datos');
END$$
DELIMITER ;

-- eliminar poliza
DROP trigger IF EXISTS `deletePoliza`;

DELIMITER $$
CREATE TRIGGER deletePoliza
    BEFORE DELETE ON poliza
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Poliza de la base de datos');
END$$
DELIMITER ;



-- ------------------------------------------------------------ Triggerempresa ------------------------------------------------------------

-- insertar empresa
DROP trigger IF EXISTS `insertEmpresa`;

DELIMITER $$
CREATE TRIGGER insertEmpresa
    BEFORE INSERT ON empresa
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Empresa en la base de datos');
END$$
DELIMITER ;

-- actualizar empresa
DROP trigger IF EXISTS `actualizarEmpresa`;

DELIMITER $$
CREATE TRIGGER updateEmpresa
    BEFORE UPDATE ON empresa
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Empresa en la base de datos');
END$$
DELIMITER ;

-- eliminar empresa
DROP trigger IF EXISTS `deleteEmpresa`;

DELIMITER $$
CREATE TRIGGER deleteEmpresa
    BEFORE DELETE ON empresa
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Empresa de la base de datos');
END$$
DELIMITER ;


-- ------------------------------------------------------------ Triggerpaciente ------------------------------------------------------------

-- insertar paciente
DROP trigger IF EXISTS `insertPaciente`;

DELIMITER $$
CREATE TRIGGER insertPaciente
    BEFORE INSERT ON paciente
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Paciente en la base de datos');
END$$
DELIMITER ;

-- actualizar paciente
DROP trigger IF EXISTS `actualizarPaciente`;

DELIMITER $$
CREATE TRIGGER updatePaciente
    BEFORE UPDATE ON paciente
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Paciente en la base de datos');
END$$
DELIMITER ;

-- eliminar paciente
DROP trigger IF EXISTS `deletePaciente`;

DELIMITER $$
CREATE TRIGGER deletePaciente
    BEFORE DELETE ON paciente
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Paciente de la base de datos');
END$$
DELIMITER ;



-- ------------------------------------------------------------ Triggerbeneficio ------------------------------------------------------------

-- insertar beneficio
DROP trigger IF EXISTS `insertBeneficio`;

DELIMITER $$
CREATE TRIGGER insertBeneficio
    BEFORE INSERT ON beneficio
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Beneficio en la base de datos');
END$$
DELIMITER ;

-- actualizar beneficio
DROP trigger IF EXISTS `actualizarBeneficio`;

DELIMITER $$
CREATE TRIGGER updateBeneficio
    BEFORE UPDATE ON beneficio
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Beneficio en la base de datos');
END$$
DELIMITER ;

-- eliminar beneficio
DROP trigger IF EXISTS `deleteBeneficio`;

DELIMITER $$
CREATE TRIGGER deleteBeneficio
    BEFORE DELETE ON beneficio
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Beneficio de la base de datos');
END$$
DELIMITER ;



-- ------------------------------------------------------------ Triggerchequeo ------------------------------------------------------------

-- insertar chequeo
DROP trigger IF EXISTS `insertChequeo`;

DELIMITER $$
CREATE TRIGGER insertChequeo
    BEFORE INSERT ON chequeo
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Chequeo en la base de datos');
END$$
DELIMITER ;

-- actualizar chequeo
DROP trigger IF EXISTS `actualizarChequeo`;

DELIMITER $$
CREATE TRIGGER updateChequeo
    BEFORE UPDATE ON chequeo
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Chequeo en la base de datos');
END$$
DELIMITER ;

-- eliminar chequeo
DROP trigger IF EXISTS `deleteChequeo`;

DELIMITER $$
CREATE TRIGGER deleteChequeo
    BEFORE DELETE ON chequeo
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Chequeo de la base de datos');
END$$
DELIMITER ;



-- ------------------------------------------------------------ Triggercondicioncheck ------------------------------------------------------------

-- insertar condicioncheck
DROP trigger IF EXISTS `insertCondicionCheck`;

DELIMITER $$
CREATE TRIGGER insertCondicionCheck
    BEFORE INSERT ON condicioncheck
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo CondicionCheck en la base de datos');
END$$
DELIMITER ;

-- actualizar condicioncheck
DROP trigger IF EXISTS `actualizarCondicionCheck`;

DELIMITER $$
CREATE TRIGGER updateCondicionCheck
    BEFORE UPDATE ON condicioncheck
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo CondicionCheck en la base de datos');
END$$
DELIMITER ;

-- eliminar condicioncheck
DROP trigger IF EXISTS `deleteCondicionCheck`;

DELIMITER $$
CREATE TRIGGER deleteCondicionCheck
    BEFORE DELETE ON condicioncheck
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino CondicionCheck de la base de datos');
END$$
DELIMITER ;


-- ------------------------------------------------------------ Triggermoneda ------------------------------------------------------------

-- insertar moneda
DROP trigger IF EXISTS `insertMoneda`;

DELIMITER $$
CREATE TRIGGER insertMoneda
    BEFORE INSERT ON moneda
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Moneda en la base de datos');
END$$
DELIMITER ;

-- actualizar moneda
DROP trigger IF EXISTS `updateMoneda`;

DELIMITER $$
CREATE TRIGGER updateMoneda
    BEFORE UPDATE ON moneda
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Moneda en la base de datos');
END$$
DELIMITER ;

-- eliminar moneda
DROP trigger IF EXISTS `deleteMoneda`;

DELIMITER $$
CREATE TRIGGER deleteMoneda
    BEFORE DELETE ON moneda
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Moneda de la base de datos');
END$$
DELIMITER ;



-- ------------------------------------------------------------ Triggeradmision ------------------------------------------------------------

-- insertar admision
DROP trigger IF EXISTS `insertAdmision`;

DELIMITER $$
CREATE TRIGGER insertAdmision
    BEFORE INSERT ON admision
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo Admision en la base de datos');
END$$
DELIMITER ;

-- actualizar admision
DROP trigger IF EXISTS `updateAdmision`;

DELIMITER $$
CREATE TRIGGER updateAdmision
    BEFORE UPDATE ON admision
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'actualizo Admision en la base de datos');
END$$
DELIMITER ;

-- eliminar admision
DROP trigger IF EXISTS `deleteAdmision`;

DELIMITER $$
CREATE TRIGGER deleteAdmision
    BEFORE DELETE ON admision
    FOR EACH ROW 
BEGIN
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'elimino Admision de la base de datos');
END$$
DELIMITER ;

