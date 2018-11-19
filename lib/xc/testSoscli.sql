SELECT * FROM sys.sys_config;

select * from mysql.user;

select * from mysql.user;

FLUSH PRIVILEGES;

describe mysql.user;
select host from mysql.user;

show processlist;

SELECT CURDATE();
SELECT CURTIME();    

INSERT INTO `mysql`.`user` (`Host`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `Create_tablespace_priv`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`, `plugin`, `password_expired`) VALUES ('localhost', 'admin', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '0', '0', '0', '0', NULL, NULL);

call newUsuario('99999999', false, 'admin', 'admin', null, 0, '192.168.1.14', '00:24:8C:89:F9:1E', true);

select * from usuario;

select ip from usuario where usuario.usu = 'admin';

select current_user();

call createUser('admin', 'admin');
call createUser('admin2', 'admin2');

-- call updateUser('admin2', 'ventas2', 'ventas2');

SELECT LEFT(SESSION_USER() , INSTR(SESSION_USER() , '@') - 1);

-- procedure
/*DROP PROCEDURE IF EXISTS `audita`;

DELIMITER $$
USE `soscli`$$

CREATE PROCEDURE `audita` () 
BEGIN 


	SELECT LEFT(SESSION_USER() , INSTR(SESSION_USER(), '@') - 1);
	select u.ip from usuario u where usu like concat('%', (SELECT LEFT(SESSION_USER() , INSTR(SESSION_USER() , '@') - 1)), '%');
    insert auditoria values(null, (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) ), (select ip from usuario where usuario.usu like (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1)) ), (select mac from usuario where usuario.usu = (SELECT LEFT(SESSION_USER(), INSTR(SESSION_USER(), '@') - 1) )), current_date(), current_time(), 'inserto un nuevo usuario en la base de datos');

END$$

DELIMITER ; */


select * from auditoria;

select * from aseguradora;

select * from departamentoPeru;






INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'EL PACIFICO VIDA CIA. DE SEGUROS Y REASEGUROS', '', 'AV.JUAN DE ARONA N830 ESQ.TAMAYO-SAN IS', '23', '', '20332970411', '', '', false, '', false, true, '40004', 'https://www.pacificoseguros.com/loginPacifico/login.aspx', true);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PACIFICO S.A ENTIDAD PRESTADORA DE SALUD', 'Pacif. EPS', 'AV.JUAN DE ARONA N830 ESQ.TAMAYO-SAN ISI', '23', '', '20431115825', '4333626', '', false, '', false, true, '20002', 'https://www.pacificoseguros.com/loginPacifico/login.aspx', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'RIMAC S.A. ENTIDAD PRESTADORA DE SALUD', '', 'CARPACIO 296 OFC. 202  SAN BORJA - 15', '15', '', '20414955020', '', '', false, '', false, true, '20001', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'NOVASALUD PERU S.A. EPS', 'Nova EPS', 'AV. SALAVERRY 2423 SAN ISIDRO', '15', '', '20418052938', '2151000-', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ONCOSALUD S.A.C.', 'OncoSalud', 'AV. GUARDIA CIVIL N. 571 SAN BORJA', '15', '', '20101039910', '5137900', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MAPFRE PERU COMPAÑIA DE SEGUROS Y REASEGUROS', 'Mafre Peru', 'AV. 28 DE JULIO 873 MIRAFLORES', '15', '', '20202380621', '', '', false, '', false, true, '40006', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'GENERALI PERU CIA DE SEGUROS Y REAS.', 'Generali', 'SANTO DOMINGO 123 OF. 301', '4', '', '20202380621', '214957 - 221913', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'RIMAC SEGUROS Y REASEGUROS', '', 'CARPACCIO 296 OF. 202 SAN BORJA 15', '15', '', '20100041953', '', '', false, '', false, true, '40007', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FONDOS DE EMPLEADOS DEL BCO. NACION', '', 'JIRON CAMANA  390', '1', '', '20122794424', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ALICORP S.A.', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ALTAS CUMBRES CIA. DE SEG. DE VIDA', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'BANCO CONTINENTAL', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'BHP BILLINTON TINTAYA S.A.', '', 'CALLE APURIMAC 209', '1', '', '20454073143', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LATINA SEGUROS Y REASEGUROS S.A.', '', 'CALLE SANTO DOMINGO 123 OF.3', '4', '', '20202380621', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CONSTRUCTORES TRANSMANTARO', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CONSTRUCTORES Y MINEROS CONTRATISTAS GENERALE', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CORPAC S.A.', '', 'CAR.PANAMERICANA SUR KM.5 VALLE PARA CHI', '23', '', '20100004675', '', '', false, '', false, true, '30006', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'F.B. CONTRATISTAS EIRL', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FBC MELGAR', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FONDO ASIST. AL PERS. GRUP CONTINENTAL', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FONDO DE SALUD DE LA FAP', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FONDO DE SALUD FAP', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PARTICULAR', '', 'JIRON CAMANA 390 1ER PISO', '23', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'GEODRILL S.A.C.', '', 'JUAN BARCLAY 261 PQUE. INDUSTRIAL', '4', '', '20273877569', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'GEOTEC S.A.', '', 'AV SANTA ANA 186 ATE', '15', '', '20100135699', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'GRUAS HIDRAULICAS S.A.', '', '', '1', '', '32898505', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'HUMANASALUD S.A.', '', 'LAS BEGONIAS 441 OF 702', '1', '', '20106495522', '4421097-4424360', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ICTESA CONSTRUCCIONES Y MONTAJES', '', 'AV CENTRAL 671 OF 504 SAN ISIDRO', '1', '', '20502482913', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INCALPACA TPX S.A.', '', 'CALLE CONDOR 100-TAHUAICANY -SACHACA', '4', '', '20100226813', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTEJ', '', 'AV SAN MARTIN 240-BARRANCO', '1', '', '20123485506', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTERBANK', '', '', '1', '', '0', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTERCONTINENTAL DE ASISTENCIA S.A.C.', '', 'GRAU 273 -MIRAFLORES', '1', '', '20466551504', '2410241-', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTERSEGUROS COMPAÑIA DE SEGUROS Y REASEGUROS S.A.', '', 'AV. PARDO Y ALIAGA 640 SAN ISIDRO', '1', '', '20382748566', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'J&H MARSH MCLENNAN CORREDORES', '', 'NICOLAS DE RIVERA 502', '1', '', '0', '4412805-4423411', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LOPEZ Y MALAGA CONTRATISTA S.R.L.', '', 'AV 15 203-YANAHUARA', '4', '', '41329793', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MARINA DE GUERRA DEL PERU', '', 'AV. LA MARINA CDRA. 26 S/N LA PERLA CALL', '1', '', '20555989912', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MARSH MCLENNAN', '', 'MALECON BALTA 934', '15', '', '0', '0144464-64', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MEDICINA EXTERNA S.A.', '', 'AV REPUBLICA DE PANAMA NRO 3065', '15', '', '20100339936', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MERCK SHARP & DOHMR PERU S.R.L.', '', '', '1', '', '26034434', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MICHEL Y CIA S.A.', '', '', '1', '', '0', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MINERA YAANCOCHA S.R.L.', '', '', '1', '', '20137291313', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MULTISEGUROS', '', 'CALLE STA LUISA 106 OF 1-SAN ISIDRO', '15', '', '0', '4215615-4212533', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MYH CONTRATISTAS GENERALES S.A.', '', 'PROLONGACION IQUITOS 2523 OF C-LINCE', '15', '', '34563918', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'NABISCO PERU S.A.', '', '', '1', '', '10016401', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PACIFICO VIDA COMPAÑIA DE SEGUROS Y REASEGUROS', '', 'AV. JUAN DE ARONA NO 830 ESQ.TAMAYO-SAN ISIDRO', '1', '', '20332970411', '4333626', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PLANSAFAM', '', 'Calle villafuerte 348 Miraflores', '4', '', '20498328858', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ROYAL SUNALLIANCE-SEGUROS FENIX', '', 'AV COMANDANTE ESPINAR 689(18)', '15', '', '20100101794', '2412430-511', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SAN MIGUEL EMERGENCIAS', '', 'MARISACL CASTILLA 320', '4', '', '22103016', '282773 -283330', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SANTA CRUZ S.A. ENTIDAD PRESTADORA DE SALUD', '', 'AV SANTA CRUZ 376-SAN ISIDRO', '15', '', '41669039', '4404146-4224900', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SERV. NAC. DE ADIEST. EN TRAB.INDUSTRIALES', '', 'AV MIGUEL FORJA NRO 246 PQUE IND', '4', '', '20131376503', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SERVICIOS MEDICOS INTEGRADOS S.R.L.', '', 'URB. D-1 YANAHUARA', '4', '', '20225684694', '251745 -282241', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SERVIPERU', '', '', '1', '', '20101275052', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SOCIEDAD MINERA CERRO VERDE S.A.', '', 'ASIENTO MINERO C.B.', '4', '', '17007246', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SOUTHERN PERU COPPER CORPORATION', '', 'AV CAMINOS DEL INCA 171 CHACARILLA DEL E', '15', '', '20100147514', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SUL AMERICA COMPAÑIA DE SEGUROS S.A.', '', 'JR SINCHI ROCA 2728 15 14', '15', '', '20100093759', '4210515-4418730', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SUPERINTENDENCIA NAC DE LOS REGISTROS PUBLICS', '', 'CALLE ARMANDO BLONDE NRO 260 SAN ISIDRO', '15', '', '20429840431', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SUPERINTENDENCIA NACIONAL DE ADUANAS S.A.', '', '', '1', '', '16476919', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'TECSA CONSTRUCCIONES MONTAJES', '', 'AV CENTRAL 671 OF 504 SAN ISIDRO', '15', '', '20429840431', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'TELEFONICA DEL PERU S.A.A.', '', 'LOS ARCES 200 CAYMA', '4', '', '20100017491', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'TURISMO EXPRESO PULMAN S.A.', '', 'TERMINAL TERRESTRE PAB. A OF. 1-2-3-4', '4', '', '20100174325', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'WIESE AETNA CIA. DE SEGUROS', '', 'TUDELA Y VARELA 102 SAN ISIDRO', '15', '', '20100142806', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LA POSITIVA SEGUROS Y REASEGUROS', '', 'FRANCISCO MASIAS 370 SAN ISIDRO', '15', '', '20100210909', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTERCONTINENTAL DE ASISTENCIA S.A.', '', 'GRAU 273 MIRAFLORES-LMA', '15', '', '20466551504', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'TARJETA PROMEDIC CARD', '', '', '1', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'EMPRESA DE GENERACION ELECTRICA DEL SUR S.A.', '', 'AV.EJERCITO S/N', '1', '', '20279889208', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AUTOMARKET DEL PERU S.A.', '', 'CAMINO REAL 456 TORRE REAL PISO 14 SAN ISIDRO', '15', '', '20504263780', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LA POSITIVA SEGUROS Y REASEGUROS', '', 'Agrup. Rosa Ara III Etapa Mz. F Lt. 02', '23', '', '20100210909', '411971', '', false, '', false, true, '40005', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LATINA SEGUROS Y REASEGUROS', '', 'PALACIO VIEJO 210 3ER PISO', '23', '', '20100093759', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AUTOMARKET DEL PERU S.A.', '', 'AV. CAMINO REAL 456', '15', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FESUNAT', '', 'CALLE OCHARAN N. 176 MIRAFLORES-15', '15', '', '20499030810', '', '', false, '', false, true, '30011', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ENAPU S.A.', '', 'AV. CONTRALMIRANTE RAYGADA 111', '7', '', '20100003199', '1005658-1258787', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FUERZA AEREA DEL PERU- SESAN', '', 'BILLINGURT NO 212', '23', '', '20144364059', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FUERZA AEREA DEL PERU - FONDO DE SALUD', '', 'BILLINGURT NO 212', '23', '', '20144364059', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LA POSITIVA VIDA SEGUROS Y REASEGUROS', '', 'Agrup. Rosa Ara III Etapa Mz. F Lt. 02', '1', '', '20454073143', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AFOCAT SUR PERU REGION 23', '', 'AV. INDUSTRIAL 1177', '23', '', '20520067168', '242201', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MINSUR S.A.', '', 'LAS BEGONIAS N.411 OF. 338 SAN ISIDRO 15', '4', '', '20100136741', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SISTEMA ALTERNATIVOS DE BENEFICIO S.A', '', '15', '4', '', '20101092306', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SENCICO', '', 'CALLA ZELA 578', '23', '', '20131377810', '425200', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CENTRO MEDICO MONTECARMELO SRLtda.', '', 'FRANCISCO JORGE DE LA TORRE 119 URB. LA VICTORIA', '4', '', '20163652201', '0542314-44', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MERCADOTECNICA S.R.L.', '', 'ROCA Y BOLOGNA 1165 MIRAFLORES 15', '15', '', '20331453146', '2427291-9710765', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MINISTERIO DE TRANSPORTES Y COMUNICACIONES', '', 'JIRON ZORRITO 1203 CERCADO DE 15', '1', '', '20131379944', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SEGUROS SURA ', '', 'CANAVAL Y MOREYRA 522 PISO 10', '15', '', '20463627488', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'BENEFICIENCIA PUBLICA DE 23  ', '', '', '23', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FONDO DE EMPLEADOS DEL BCO DE LA NACION', '', 'JIRON CAMANA 390', '23', '', '20122794424', '', '', false, '', false, true, '30004', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ASISALUD EIRL.', '', 'AV. PETIT THOUARS 4136 MIRAFLORES', '23', '', '20514152480', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MAPFRE PERU S.A ENTIDAD PRESTADORA DE SALUD', '', 'AV. 28 DE JULIO 873 MIRAFLORES', '23', '', '20517182673', '', '', false, '', false, true, '20004', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'BBVA BANCO CONTINENTAL ', '', 'AV. REP. DE PANAMA N. 3055 URB. EL PALOM', '15', '', '20100130204', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTERSEGUROS COMPAÑIA DE SEGUROS S.A.', '', 'PASEO DE LA REPUBLICA 3071 SAN ISIDRO', '15', '', '20382748566', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MAPFRE PERU VIDA COMPAÑIA DE SEGUROS Y REASEGUROS', '', 'AV. 28 DE JULIO 873 MIRAFLORES', '23', '', '20418896915', '', '', false, '', false, true, '40006', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PERSALUD S.A. EPS', '', 'AV.GENERAL MENDIBURU MIRAFLORES 881', '1', '', '20514372251', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FUNDACION ACADEMIA DIPLOMATICA DEL PERU ', '', 'AV. FAUSTINO SANCHEZ CARRION 335 SAN ISI', '15', '', '20108022451', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PROMUJER INC', '', 'JIRON LIBERTAD N. 345  PUNO', '21', '', '20405708290', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'INTERCONTINENTAL DE ASISTENCIA SAC', '', 'CALLE MIGUEL GRAU 273', '23', '', '20466551504', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AFP HORIZONTE S.A.', '', 'AV. REPUBLICA DE PANAMA 3055 SAN ISIDRO ', '15', '', '20143980821', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PERU ASISTENCIA S.A.C.', '', 'AV.28 DE JULIO 873 MIRAFLORES', '15', '', '20262207006', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PROFUTURO AFP', '', 'CALLE CORONEL ANDRES REYES', '23', '', '20142829551', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PETROLEOS DEL PERU-PETROPERU S.A.', '', 'AV. ENRIQUE CANAVAL MOREYRA N. 150  SAN ', '23', '', '20100128218', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ASSIST - CARD', '', 'MARTIN OLAYA 129 PISO 20 MIRAFLORES', '15', '', '20100970377', '14460710', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'RECOSAC', '', 'AV. VICTOR ANDRES BELAUNDE 147', '15', '', '20503840121', '12156225', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SODEXO PERU S.A.C.', '', 'AV. LOS LIBERTADORES 171 SAN ISIDRO', '15', '', '20414766308', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'FONDO DE SALUD PARA LA POLICIA NACIONAL', '', 'BLONDELL 110', '23', '', '20178922581', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'TAWA CONSULTING S.A.C.', '', 'CALLE DEAN VALDIVIA 148 OF. SAN ISIDRO', '15', '', '20512574212', '6264444', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ELECTROSUR S.A', '', 'CALLE ZELA 408', '23', '', '20119205949', '244911', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'EXSA S.A', '', 'ANTIGUA PANAMERICANA SUR KM. 38.5', '15', '', '20100094135', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'ELECTROSUR ', '', '', '23', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MI BANCO - BANCO DE LA MICROEMPRESA S.A.', '', 'CALLE DOMINGO ORUE N.165 SURQUILLO 15', '15', '', '20382036655', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SUPERMERCADOS PERUANOS S.A.', '', 'CALLE MORELLI 181 DISTRITO SAN BORJA', '15', '', '20100070970', '93548441-618800', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'EUROP ASSITANCE S.A.', '', 'LOS CONQUISTADORES 1700 PISO 8 OF.8', '15', '', '995734001', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LAN PERU S.A.', '', 'AV. JOSE PARDO 513 MIRAFLORES 15', '15', '', '20341841357', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PURATOS PERU S.A', '', 'AV. LOS CASTILLOS 340 URB. INDUSTRIAL', '15', '', '20100058503', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'BIONDI Y CIA DE 23 SAC', '', 'CALLE PATRICIO MELENDEZ 150 OF. 504', '23', '', '', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'JJC-SCHRADER CAMARGO SAC.', '', 'AV. REPUBLICA DE CHILE NO 388 JESUS MARI', '23', '', '20512277358', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'Cervecerias Peruanas Backus S.A.A.', '', 'Nicoläs Ayllön 3986- Ate- 15', '23', '', '20100113610', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AFOCAT SUR PERU', '', 'AV. INDUSTRIAL 1177', '23', '', '20520067168', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SALUS LABORIS S.A.C.', '', 'AV. 4 2645 SAN ISIDRO', '15', '', '20512609458', '990002618', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'GRUPO ESPECIALIZADO DE ASISTENCIA DEL PERU ', '', 'AV. REPUBLICA DE COLOMBIA N. 643 15 S ', '15', '', '20521582147', '16164500', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'BANCO INTERAMERICANO DE FINANZAS S.A.', '', 'AV. RICARDO RIVERA NAVARRETE N. 600 15', '15', '', '20101036813', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'OSINERGMIN', '', 'CALLE BERNARDO MONTEAGUDO 222 MAGDALENA', '15', '', '20376082114', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MAESTRO PERU S.A.', '', 'AV. REP. DE PANAMA 4679 SURQUILLO ', '15', '', '20112273922', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LA POSITIVA VIDA SEGUROS Y REASEGUROS', '', 'FRANCISCO MASIAS 370 SAN ISIDRO', '15', '', '20454073143', '15130692', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CAJA NUESTRA GENTE', '', 'GIRON INDEPENDENCIA 519 TRUJILLO', '23', '', '20228319768', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'SANITAS PERU S.A. EPS', '', 'AV. RICARDO RIVERA NAVARRETE 543 SAN ISI', '15', '', '20523470761', '', '', false, '', false, true, '20005', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AMERICA MOVIL PERU S.A.C.', '', 'AV. NICOLAS ARRIOLA N. 480', '15', '', '20467534026', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PACIFICO COMPAÑIA DE SEGUROS Y REASEGUROS S.A.', '', 'AV JUAN DE ARONA Nro. 830 SAN ISIDRO', '15', '', '20332970411', '', '', false, '', false, true, '40004', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'REPSOL COMERCIAL SAC.', '', 'Av. VIctor AndrEs BelaUnde 147 San Isidr', '15', '', '20503840121', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'OMNILIFE PERU SAC.', '', 'AV. JOSE GALVEZ BARRENECHEA N. 298 SAN I', '15', '', '20290314799', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CONSULTORA DE RECURSOS HUMANOS S.A.C', '', '15 - 15', '15', '', '20543830616', '575334', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'AFP INTEGRA', '', '', '15', '', '20157036794', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MILENIUM SALUD DALETH LAB. SAC.', '', 'AV. PETIT THOUARS 4136', '15', '', '20469942300', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MINISTERIO DE ECONOMIA Y FINANAZAS', '', 'JR. JUNIN 319 15 - 15', '15', '', '20131370645', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'IAFAS DE LA FUERZA AEREA DEL PERU - FOSFAP', '', 'AV. ARAMBURU N 200 MIRAFLORES-15', '23', '', '20492080811', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'WALSH PERU S.A.', '', 'CALLE ALEXANDER FLEMING 198 URB. HIGUETA', '15', '', '20260047567', '', '', false, '', false, false, '0', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CLINICA INTERNACIONAL S.A.', '', 'JR. WASHINGTON 1471', '23', '', '20100054184', '', '', false, '', false, true, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'MARINA DE GUERRA DEL PERU', '', 'AV. LA MARINA CDRA 26 S/N LA PERLA -CALL', '23', '', '20153408191', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'RECOSAC ', '', 'AV. VICTOR ANDRES BELAUNTDE N.147 IN 301', '15', '', '20503840121', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'PROMEDIC S. CIVIL R.L.', '', 'CALLE BLONDELL 425 ', '23', '', '20226013696', '242414', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CMAC 23 S.A.', '', 'CALLE FRANCISCO LAZO 297', '23', '', '20130098488', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'LA POSITIVA S.A.ENTIDAD PRESTADORA DE SALUD', '', 'CAL.FRANCISCO MASIAS  NO 370 15 ', '15', '', '20601978572', '', '', false, '', false, true, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'EMPRESA DE TRANSPORTE FLORES HERMANOS SRL.', '', 'AV. SAUCINI LOTE 6 Y 7', '23', '', '20119407738', '', '', false, '', false, true, '', '', true);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'IAFAS DE LA MARINA DE GUERRA DEL PERU', '', 'AV. VENEZUELA CDRA 24 S/N BELLAVISTA CAL', '15', '', '20555989912', '', '', false, '', false, false, '', '', false);
INSERT INTO `soscli`.`aseguradora` (`cod`, `nom`, `sig`, `dir`, `dep`, `res`, `ruc`, `tel`, `cel`, `tarpar`, `email`, `facapli`, `protra`, `iafa`, `url`, `siteds`) VALUES (NULL, 'CHUBB PERU S.A. CIA. DE SEGUROS Y REASEGUROS', '', 'AMADOR MERINO REYNA 267 - 15', '15', '', '', '', '', false, '', false, false, '', '', false);


select * from aseguradora where cod = 0256;

select * from poliza;

-- delete from aseguradora;


/*ALTER TABLE pais DROP id;
ALTER TABLE pais AUTO_INCREMENT = 1;
ALTER TABLE pais ADD id int NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;*/


/*ALTER TABLE pais DROP id;
ALTER TABLE pais AUTO_INCREMENT = 1;
ALTER TABLE pais ADD id bigint UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;*/

select * from departamentoperu;

select * from empresa;


select a.nom, a.dir, dp.des, a.ruc, a.tel from aseguradora a inner join departamentoperu dp on dp.id = a.dep;


Execute `select a.nom, a.dir, dp.des, a.ruc, a.tel from aseguradora a inner join departamentoperu dp on dp.id = a.dep`;

select * from view_aseguradora;

USE `soscli`;
CREATE  OR REPLACE VIEW `view_aseguradora` AS
select a.nom, a.dir, dp.des, a.ruc, a.tel from aseguradora a inner join departamentoperu dp on dp.id = a.dep;

select * from pais;

INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PERÚ');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'AFGANISTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ALBANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ALEMANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ANDORRA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ANGOLA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ANGUILLA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ANTIGUA Y BARBUDA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ANTILLAS HOLANDESAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ARABIA SAUDI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ARGELIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ARGENTINA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ARMENIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ARUBA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'AUSTRALIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'AUSTRIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'AZERBAIYAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BAHAMAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BAHREIN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BANGLADESH');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BARBADOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BELARUS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BELGICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BELICE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BENIN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BERMUDAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BHUTÓN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BOLIVIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BOSNIA Y HERZEGOVINA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BOTSWANA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BRASIL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BRUNEI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BULGARIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BURKINA FASO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'BURUNDI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CABO VERDE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CAMBOYA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CAMERUN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CANADA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CHAD');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CHILE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CHINA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CHIPRE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'COLOMBIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'COMORES');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CONGO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'COREA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'COREA DEL NORTE ');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'COSTA DE MARFIL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'COSTA RICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CROACIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'CUBA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'DINAMARCA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'DJIBOUTI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'DOMINICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ECUADOR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'EGIPTO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'EL SALVADOR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'EMIRATOS ARABES UNIDOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ERITREA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ESLOVENIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ESPAÑA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ESTADOS UNIDOS DE AMERICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ESTONIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ETIOPIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'FIJI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'FILIPINAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'FINLANDIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'FRANCIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GABON');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GAMBIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GEORGIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GHANA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GIBRALTAR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GRANADA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GRECIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GROENLANDIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUADALUPE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUAM');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUATEMALA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUAYANA FRANCESA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUERNESEY');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUINEA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUINEA ECUATORIAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUINEA-BISSAU');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'GUYANA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'HAITI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'HONDURAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'HONG KONG');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'HUNGRIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'INDIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'INDONESIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'IRAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'IRAQ');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'IRLANDA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLA DE MAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLA NORFOLK');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLANDIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS ALAND');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS CAIMÁN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS COOK');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS DEL CANAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS FEROE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS MALVINAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS MARIANAS DEL NORTE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS MARSHALL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS PITCAIRN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS SALOMON');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS TURCAS Y CAICOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS VIRGENES BRITANICAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ISRAEL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ITALIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'JAMAICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'JAPON');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'JERSEY');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'JORDANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'KAZAJSTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'KENIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'KIRGUISTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'KIRIBATI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'KUWAIT');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LAOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LESOTHO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LETONIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LIBANO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LIBERIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LIBIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LIECHTENSTEIN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LITUANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'LUXEMBURGO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MACAO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MACEDONIA ');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MADAGASCAR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MALASIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MALAWI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MALDIVAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MALI');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MALTA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MARRUECOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MARTINICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MAURICIO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MAURITANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MAYOTTE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MEXICO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MICRONESIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MOLDAVIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MONACO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MONGOLIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MONTENEGRO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MONTSERRAT');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MOZAMBIQUE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'MYANMAR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NAMIBIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NAURU');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NEPAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NICARAGUA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NIGER');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NIGERIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NIUE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NORUEGA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NUEVA CALEDONIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'NUEVA ZELANDA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OMAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES  O TERRITORIOS DE AMERICA DEL NORTE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS  DE SUDAMERICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS DE AFRICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS DE ASIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS DE LA UNION EUROPEA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS DE OCEANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS DEL CARIBE Y AMERICA CENTRAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'OTROS PAISES O TERRITORIOS DEL RESTO DE EUROPA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PAISES BAJOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PAKISTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PALAOS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PALESTINA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PANAMA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PAPUA NUEVA GUINEA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PARAGUAY');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PERU');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'POLINESIA FRANCESA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'POLONIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PORTUGAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'PUERTO RICO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'QATAR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REINO UNIDO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REP.DEMOCRATICA DEL CONGO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REPUBLICA CENTROAFRICANA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REPUBLICA CHECA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REPUBLICA DOMINICANA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REPUBLICA ESLOVACA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'REUNION');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'RUANDA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'RUMANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'RUSIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAHARA OCCIDENTAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAMOA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAMOA AMERICANA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAN BARTOLOME');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAN CRISTOBAL Y NIEVES');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAN MARINO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAN MARTIN (PARTE FRANCESA)');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAN PEDRO Y MIQUELON ');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SAN VICENTE Y LAS GRANADINAS');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SANTA HELENA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SANTA LUCIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SANTA SEDE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SANTO TOME Y PRINCIPE');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SENEGAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SERBIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SEYCHELLES');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SIERRA LEONA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SINGAPUR');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SIRIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SOMALIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SRI LANKA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SUDAFRICA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SUDAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SUECIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SUIZA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SURINAM');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SVALBARD Y JAN MAYEN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'SWAZILANDIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TADYIKISTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TAILANDIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TANZANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TIMOR ORIENTAL');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TOGO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TOKELAU');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TONGA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TRINIDAD Y TOBAGO');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TUNEZ');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TURKMENISTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TURQUIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'TUVALU');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'UCRANIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'UGANDA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'URUGUAY');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'UZBEKISTAN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'VANUATU');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'VENEZUELA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'VIETNAM');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'WALLIS Y FORTUNA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'YEMEN');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ZAMBIA');
INSERT INTO `soscli`.`pais` (`id`, `des`) VALUES (NULL, 'ZIMBABWE');


select * from provinciaperu;

select * from departamentoperu;


/*ALTER TABLE empresa DROP cod;
ALTER TABLE empresa AUTO_INCREMENT = 1;
ALTER TABLE empresa ADD cod int NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;*/


select * from empresa;

select * from paciente;

select * from pais;

select * from poliza;

call findPacienteNDOC('46412134');

select * from aseguradora;

select * from beneficio;

select * from chequeo;

call findChequeoNOM('');

call newMoneda(1, "Dolar", 3.32, 3.4, '3.366');
call newMoneda(2, "Euro", 3.55, 4.05, 'Sin impuesto');
call newMoneda(3, "Peso Colombiano", 0.001, 0.00155, 'Sin impuesto');
call newMoneda(4, "Real Brasilero", 0.7, 1.05, 'Sin impuesto');

select * from moneda;

select * from paciente;

select * from admision;

select a.numate, a.numhis, p.nom, p.ape, po.pol, p.ncar, b.des, c.des, e.des from admision a inner join paciente p
on a.numhis = p.numdoc inner join poliza po
on p.npol = po.cod inner join beneficio b
on a.bene = b.cod inner join chequeo c
on b.cod = c.bene inner join especialidad e
on a.espe = e.id;

call executeQuery('select a.nom, d.des, a.ruc from aseguradora a inner join departamentoperu d
on a.dep = d.id where a.nom like concat(\'%\', \'paci\', \'%\')');

select a.nom, d.des, a.ruc from aseguradora a inner join departamentoperu d
on a.dep = d.id where a.nom like concat('%', 'paci', '%');

