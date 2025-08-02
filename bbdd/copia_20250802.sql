/*
 Navicat Premium Data Transfer

 Source Server         : pruebas
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : teammanager

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 02/08/2025 18:27:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for equipos
-- ----------------------------
DROP TABLE IF EXISTS `equipos`;
CREATE TABLE `equipos`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `municipio` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sector` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url_logo` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT 0,
  `entrenador` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delegado` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoria` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `circunscripcion` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anio` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rama` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entrenador_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delegado_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `equipo_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `equipo_name`(`nombre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipos
-- ----------------------------
INSERT INTO `equipos` VALUES (5, 'los campeones', 'distrito nacional', 'villas agricolas', 'Houston-Rockets-logo.png', 0, 'XXXX', 'XXXX', 'XXX', 'XXX', 'XXX', 'XXX', 'XXXXXXX', 'XXXXXX', NULL);
INSERT INTO `equipos` VALUES (6, 'argonautas', 'xxx', 'xxx', '', 0, 'Graco', 'Francis', 'ADD', 'MILUNA', '2010', 'JUVENIL', '8094041896', '8094041896', NULL);
INSERT INTO `equipos` VALUES (7, 'los principes', 'Santo domingo', 'capotillo', 'GRACO - WIN_20150408_113956.JPG', 0, 'SSSS', 'SSSS', 'SSSS', 'SSSSS', 'SSSS', 'SSSS', 'SSSS', 'SSSS', NULL);
INSERT INTO `equipos` VALUES (8, 'Sembrando el futuro U15', 'xxxxxx', 'xxxxxx', 'Houston-Rockets-logo.png', 0, 'Juanito', 'Perenceo', 'Infantil 8-15', 'Distrito', '2000', 'bb', '9999999999', '9999999999', NULL);
INSERT INTO `equipos` VALUES (9, 'ABASADOS A', 'AAA', 'AAA', 'Houston-Rockets-logo.png', 0, 'Fulano', 'Perenceo', 'AAA', 'AAA', '2025', 'AAA', '809-111-1111', '809-111-1111', NULL);
INSERT INTO `equipos` VALUES (10, 'LOS INTOCABLES', 'XXX', 'XXX', '', 0, 'XXX', 'XXX', 'XXX', 'XXX', 'XXXX', 'XXX', 'XXXXXXX', 'XXXXXXX', NULL);
INSERT INTO `equipos` VALUES (11, 'RENACIMIENTO', 'BOCA CHICA', 'XXX', '', 0, 'JUAN PEREZ', 'MARIO PEREZ', 'TODAS', 'XXX', '2025', 'XXX', '8095555555', '8094444444', NULL);

-- ----------------------------
-- Table structure for eventos
-- ----------------------------
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE `eventos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cantidad_equipos` int(3) NOT NULL,
  `cantidad_jugadores_equipo` int(3) NOT NULL,
  `descripcion` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha_incio` date NULL DEFAULT NULL,
  `estado` int(1) NULL DEFAULT 0 COMMENT '0-abierto 1-cerrado',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eventos
-- ----------------------------
INSERT INTO `eventos` VALUES (1, 'Prueba', 3, 11, '', '2025-05-30', 1);
INSERT INTO `eventos` VALUES (2, 'pruebas2', 2, 5, 'nuevo descriptivo', '2024-01-29', 1);
INSERT INTO `eventos` VALUES (4, 'Torneo x', 5, 16, 'Torneo de basquetbol 2024', '2024-02-10', 1);
INSERT INTO `eventos` VALUES (5, 'Torneo Balonecesto U15 anio base 2009', 5, 12, 'TBU2009', '2025-07-15', 0);
INSERT INTO `eventos` VALUES (6, 'Torneo Pruebas 1', 2, 12, 'TPB', '2025-05-01', 1);
INSERT INTO `eventos` VALUES (7, 'INTERMEDIO U16 MASCULINO', 32, 12, 'U16', '2025-08-08', 0);
INSERT INTO `eventos` VALUES (8, 'Juvenil 2006', 40, 15, 'torneo de pruebas ', '2025-07-31', 0);

-- ----------------------------
-- Table structure for histori_log
-- ----------------------------
DROP TABLE IF EXISTS `histori_log`;
CREATE TABLE `histori_log`  (
  `usuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha` datetime(0) NOT NULL,
  `accion` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regant` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regnew` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `usu_log`(`usuario`) USING BTREE,
  INDEX `usuario_log_fecha`(`usuario`, `fecha`) USING BTREE,
  CONSTRAINT `usuario_log_indx` FOREIGN KEY (`usuario`) REFERENCES `usu001` (`usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of histori_log
-- ----------------------------
INSERT INTO `histori_log` VALUES ('admin', '2024-04-21 05:32:34', 'M', 'Torneo Balonecesto U15 anio base 2009512TBU20092024-05-31', 'Torneo Balonecesto U15 anio base 2009512TBU20092024-05-30', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2024-04-21 05:32:42', 'M', 'Torneo Balonecesto U15 anio base 2009512TBU20092024-05-30', 'Torneo Balonecesto U15 anio base 2009512TBU20092024-05-31', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:03:05', 'M', 'NaNInfantilDistrito2000bbJuanito9999999999Perenceo9999999999xxxxxxxxxxxx', 'NaNInfantil 8-15Distrito2000bbJuanito9999999999Perenceo9999999999xxxxxxxxxxxx', 'EQUIPOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:17:32', 'M', 'Torneo Pruebas 1212TPB2024-04-30', 'Torneo Pruebas 1212TPB2025-07-05', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:21:42', 'M', 'Torneo Pruebas 1212TPB2025-07-05', 'Torneo Pruebas 1212TPB2025-07-01', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:22:08', 'M', 'Torneo Pruebas 1212TPB2025-07-01', 'Torneo Pruebas 1212TPB2025-07-01', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:22:53', 'M', 'Torneo Pruebas 1212TPB2025-07-01', 'Torneo Pruebas 1212TPB2025-05-01', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:23:59', 'M', 'Glennisreyes002258898502024-02-08xxxxxxxxx5XXXXXXXXXXXXX', 'GlennisReyes002258898502024-02-08xxxxxxxxx5XXXXXXXXXXXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-11 03:24:36', 'M', 'brisneylisrobles reyes000000000002014-05-15xxxxxxxxxxx5', 'BrisneylisRobles Reyes000000000002014-05-15xxxxxxxxxxx5ZZZVVVXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-05-11 03:30:03', 'M', 'uno de masxxxxxx774154789502024-02-08xxxxxxxxxxxxx5', 'uno de mas 1xxxxxx774154789502024-02-08xxxxxxxxxxxxx5AAAAAAAAA', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:13:56', 'M', 'Francis GracoFerrer Hierro001183295801987-10-02nicolas de ovando6DA29992222222CNE', 'Francis GracoFerrer Hierro001183295801987-10-02nicolas de ovando6DA29992322222CNE', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:31:25', 'M', 'Prueba3111970-01-01', 'Prueba3111970-01-011', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:31:35', 'M', 'Prueba3111970-01-01', 'Prueba3111970-01-010', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:31:40', 'M', 'Prueba3111970-01-01', 'Prueba3111970-01-011', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:32:33', 'M', 'Prueba3111970-01-01', 'Prueba3112025-05-300', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:33:12', 'M', 'pruebas225nuevo descriptivo2024-01-29', 'pruebas225nuevo descriptivo2024-01-291', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-17 06:34:23', 'M', 'Prueba3112025-05-30', 'Prueba3112025-05-300', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-05-21 11:12:39', 'M', 'argonautasDe Talargonautas8340d822bb35d453a7065a0cc5cf96e6a89846d6e7c446bd75f97c447be750851', 'argonautasDe Tal00222222222argonautas8340d822bb35d453a7065a0cc5cf96e6a89846d6e7c446bd75f97c447be750851', 'USUARIOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-08 04:38:46', 'M', 'NaNdistrito nacionalvillas agricolas', 'NaNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXdistrito nacionalvillas agricolas', 'EQUIPOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-08 04:39:04', 'M', 'NaNSanto domingocapotillo', 'NaNSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSanto domingocapotillo', 'EQUIPOS');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 05:59:26', 'M', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 06:05:44', 'M', 'GlennisReyes002258898502024-02-08xxxxxxxxx5XXXXXXXXXXXXX', 'GlennisReyes002258898502024-02-08xxxxxxxxx5XXXXXXXXXXXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 06:06:00', 'M', 'AlfonsoReyes000121147822024-02-08xxxxxxxxxx5', 'AlfonsoReyes000121147822024-02-08xxxxxxxxxx5ASSASSXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 06:24:40', 'M', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 06:27:19', 'M', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 06:27:30', 'M', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'LuigyCastillo444568987802024-02-08xxxxxxxxx5ASSSSSSSAAAA', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('los campeones', '2025-06-08 06:27:44', 'M', 'GlennisReyes002258898502024-02-08xxxxxxxxx5XXXXXXXXXXXXX', 'GlennisReyes002258898502024-02-08xxxxxxxxx5XXXXXXXXXXXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('argonautas', '2025-06-08 06:42:09', 'M', 'Francis GracoFerrer Hierro001183295801987-10-02nicolas de ovando6DA29992322222CNE', 'Francis GracoFerrer Hierro001183295801987-10-02nicolas de ovando6DA29992322222CNE', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('argonautas', '2025-06-08 06:44:28', 'A', '', 'GracoHierro001-0002225-02025-06-08XXXXXX6SUB188092222222NNA', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-15 03:30:57', 'A', '', 'Usuario administradorEjemplo administrador001-9996699-0admin200000', 'USUARIOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-15 03:49:35', 'A', '', 'presidente club pruebas222-2226655-2clubpruebas00001', 'USUARIOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-15 03:55:11', 'A', '', 'NaNAAAAAA2025AAAFulano809-111-1111Perenceo809-111-1111AAAAAA', 'EQUIPOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-19 02:22:36', 'A', '', 'INTERMEDIO U16 MASCULINO3212U162025-08-080', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-06-19 02:24:12', 'A', '', 'NaNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'EQUIPOS');
INSERT INTO `histori_log` VALUES ('LOS INTOCABLES', '2025-06-19 02:28:54', 'A', '', 'MichaelJordan00215850002025-06-18XXXXXXX10XXX809000000XXXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('LOS INTOCABLES', '2025-06-19 02:32:38', 'M', 'MichaelJordan00215850002025-06-18XXXXXXX10XXX809000000XXXXX', 'MichaelJordan00215850002025-06-18XXXXXXX10XXX809000000XXXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('LOS INTOCABLES', '2025-07-17 06:06:48', 'M', 'MichaelJordan00215850002025-06-18XXXXXXX10XXX809000000XXXXX', 'MichaelJordan00215850002025-06-18XXXXXX110XXX809000000XXXXX', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('admin', '2025-07-26 08:58:13', 'M', 'Prueba3112025-05-30', 'Prueba3112025-05-301', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-07-26 08:58:30', 'M', 'Torneo x516Torneo de basquetbol 20242024-02-10', 'Torneo x516Torneo de basquetbol 20242024-02-101', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-07-26 08:58:36', 'M', 'Torneo Pruebas 1212TPB2025-05-01', 'Torneo Pruebas 1212TPB2025-05-011', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-07-26 10:27:03', 'A', '', 'Juvenil 20064015torneo de pruebas 2025-07-310', 'EVENTOS');
INSERT INTO `histori_log` VALUES ('admin', '2025-07-26 10:29:16', 'A', '', 'NaNTODASXXX2025XXXJUAN PEREZ8095555555MARIO PEREZ8094444444BOCA CHICAXXX', 'EQUIPOS');
INSERT INTO `histori_log` VALUES ('RENACIMIENTO', '2025-07-26 11:04:05', 'M', 'JUANFELIX001222333302007-06-20xxxxxxxxxxx11xxxxxxxxxxxxxCOLEGIO ANGEL', 'JUANFELIX001222333302007-06-20xxxxxxxxxxx11xxxxxxxxxxxxxCOLEGIO ANGEL', 'JUGADORES');
INSERT INTO `histori_log` VALUES ('LOS INTOCABLES', '2025-07-26 11:21:45', 'A', '', 'ninoxxxxx001777888892025-07-25xxxxxxxxxxxxx10xxxxx8095555555xxxxxxxxxxxx', 'JUGADORES');

-- ----------------------------
-- Table structure for jugadores
-- ----------------------------
DROP TABLE IF EXISTS `jugadores`;
CREATE TABLE `jugadores`  (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellidos` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identificacion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `equipo` int(11) NOT NULL,
  `url_img` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url_adjunto1` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estatus` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `centro` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefono` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identificacion_jugador`(`identificacion`) USING BTREE,
  INDEX `jugador_equipo`(`equipo`) USING BTREE,
  CONSTRAINT `jugador_equipo` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jugadores
-- ----------------------------
INSERT INTO `jugadores` VALUES (2, 'Francis Graco', 'Ferrer Hierro', '00118329580', '1987-10-02', 'nicolas de ovando', 6, 'Houston-Rockets-logo.png', 'GRACO - WIN_20150208_120307.JPG', 'DA2', 'CNE', '9992322222');
INSERT INTO `jugadores` VALUES (5, 'Glennis', 'Reyes', '00225889850', '2024-02-08', 'xxxxxxxxx', 5, 'fondo_android.jpg', '', 'XXX', 'XXXX', 'XXXXXX');
INSERT INTO `jugadores` VALUES (6, 'Brisneylis', 'Robles Reyes', '00000000000', '2014-05-15', 'xxxxxxxxxxx', 5, 'GRACO - WIN_20150208_120307.JPG', '', 'ZZZ', 'XXX', 'VVV');
INSERT INTO `jugadores` VALUES (7, 'Alfonso', 'Reyes', '00012114782', '2024-02-08', 'xxxxxxxxxx', 5, 'GRACO - WIN_20150208_120307.JPG', '', 'ASS', 'XXX', 'ASS');
INSERT INTO `jugadores` VALUES (8, 'Marta', 'Castillo', '77781569580', '2024-02-08', 'xxxxx', 5, '', '', '', '', NULL);
INSERT INTO `jugadores` VALUES (9, 'Luigy', 'Castillo', '44456898780', '2024-02-08', 'xxxxxxxxx', 5, '', '', 'ASS', 'AAAA', 'SSSSS');
INSERT INTO `jugadores` VALUES (10, 'uno de mas 1', 'xxxxxx', '77415478950', '2024-02-08', 'xxxxxxxxxxxxx', 5, '', '', 'AAA', 'AAA', 'AAA');
INSERT INTO `jugadores` VALUES (11, 'tomas ', 'berroa', '00478965452', '2024-02-12', 'xxxxxxxxxxx', 7, 'GRACO - WIN_20150330_171830.JPG', 'GRACO - WIN_20150208_120307.JPG', '', '', NULL);
INSERT INTO `jugadores` VALUES (13, 'Graco', 'Hierro', '001-0002225-0', '2025-06-08', 'XXXXXX', 6, 'logo-abasado.png', 'FICHA.pdf', 'SUB18', 'NNA', '8092222222');
INSERT INTO `jugadores` VALUES (14, 'Michael', 'Jordan', '0021585000', '2025-06-18', 'XXXXXX1', 10, 'fondo_android.jpg', 'IcsContrac.docx', 'XXX', 'XXXXX', '809000000');
INSERT INTO `jugadores` VALUES (15, 'JUAN', 'FELIX', '00122233330', '2007-06-20', 'xxxxxxxxxxx', 11, 'images.jfif', 'IcsContrac.docx', 'xxx', 'COLEGIO ANGEL', 'xxxxxxxxxx');
INSERT INTO `jugadores` VALUES (17, 'JUAN', 'FELIX', '00122233331', '2007-06-20', 'xxxxxxxxxxx', 11, 'images.jfif', 'IcsContrac.docx', 'xxx', 'COLEGIO ANGEL', '0004442222');
INSERT INTO `jugadores` VALUES (18, 'JUAN', 'FELIX', '00128233331', '2007-06-20', 'xxxxxxxxxxx', 11, 'images.jfif', 'IcsContrac.docx', 'xxx', 'COLEGIO ANGEL', '0004442222');
INSERT INTO `jugadores` VALUES (19, 'nino', 'xxxxx', '00177788889', '2025-07-25', 'xxxxxxxxxxxxx', 10, 'NINO.jpeg', 'acta-de-nacimiento.jpg', 'xxxxx', 'xxxxxxxxxxxx', '8095555555');

-- ----------------------------
-- Table structure for padron
-- ----------------------------
DROP TABLE IF EXISTS `padron`;
CREATE TABLE `padron`  (
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `identificacion` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `colegio` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ubicacion_colegio` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccion` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url_img` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`identificacion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of padron
-- ----------------------------
INSERT INTO `padron` VALUES ('jose francisco', 'Paulino Ferrer', '001-0000000-1', '600A', '', '', 'GRACO - WIN_20150330_171744.JPG');

-- ----------------------------
-- Table structure for relacion_equipo_evento
-- ----------------------------
DROP TABLE IF EXISTS `relacion_equipo_evento`;
CREATE TABLE `relacion_equipo_evento`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo` int(5) NOT NULL,
  `evento` int(11) NOT NULL,
  `indpago` int(1) NOT NULL DEFAULT 0,
  `ruta_volante` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `equipo_evento`(`equipo`, `evento`) USING BTREE,
  INDEX `relacion_evento`(`evento`) USING BTREE,
  CONSTRAINT `relacion_equipo` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `relacion_evento` FOREIGN KEY (`evento`) REFERENCES `eventos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relacion_equipo_evento
-- ----------------------------
INSERT INTO `relacion_equipo_evento` VALUES (7, 6, 4, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (8, 5, 4, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (10, 5, 1, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (12, 6, 2, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (13, 8, 5, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (14, 5, 5, 1, 'LogoXXXXX_quick.png');
INSERT INTO `relacion_equipo_evento` VALUES (15, 6, 5, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (16, 7, 5, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (17, 5, 6, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (18, 10, 7, 1, 'images.jfif');
INSERT INTO `relacion_equipo_evento` VALUES (19, 10, 5, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (20, 9, 7, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (21, 6, 7, 0, NULL);
INSERT INTO `relacion_equipo_evento` VALUES (22, 11, 8, 1, 'basquet-fondo1.avif');
INSERT INTO `relacion_equipo_evento` VALUES (23, 10, 8, 0, NULL);

-- ----------------------------
-- Table structure for relacion_equipo_jugador_evento
-- ----------------------------
DROP TABLE IF EXISTS `relacion_equipo_jugador_evento`;
CREATE TABLE `relacion_equipo_jugador_evento`  (
  `equipo` int(9) NOT NULL,
  `evento` int(9) NOT NULL,
  `jugador` int(9) NOT NULL,
  UNIQUE INDEX `relacion_evento_unica`(`equipo`, `evento`, `jugador`) USING BTREE,
  INDEX `jugador_evento`(`jugador`) USING BTREE,
  INDEX `evento_jugador`(`evento`) USING BTREE,
  CONSTRAINT `equipo_jugador_evento` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `evento_jugador` FOREIGN KEY (`evento`) REFERENCES `eventos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `jugador_evento` FOREIGN KEY (`jugador`) REFERENCES `jugadores` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relacion_equipo_jugador_evento
-- ----------------------------
INSERT INTO `relacion_equipo_jugador_evento` VALUES (6, 5, 2);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (5, 5, 5);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (5, 5, 9);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (6, 5, 13);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (10, 5, 14);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (10, 7, 14);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (11, 8, 15);
INSERT INTO `relacion_equipo_jugador_evento` VALUES (10, 7, 19);

-- ----------------------------
-- Table structure for usu001
-- ----------------------------
DROP TABLE IF EXISTS `usu001`;
CREATE TABLE `usu001`  (
  `usuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clave` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000',
  `tipo` int(1) NOT NULL DEFAULT 0,
  `nombres` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Fulanito',
  `apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'De Tal',
  `identificacion` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `municipio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `calle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lugar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecalta` date NULL DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT 0,
  `url_img` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`usuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usu001
-- ----------------------------
INSERT INTO `usu001` VALUES ('ABASADOS A', '881ac9765fa5c9d8e887cbe5a94415bf48e804abf859080aff36f854677ac81e', 1, 'ABASADOS A', '', '', NULL, NULL, NULL, NULL, '2025-06-15', 0, 'Houston-Rockets-logo.png');
INSERT INTO `usu001` VALUES ('admin', '0000', 0, 'Fulanito ', 'De Tal', '001-0002958-0', NULL, NULL, NULL, NULL, NULL, 0, 'loging_2.png');
INSERT INTO `usu001` VALUES ('admin2', '0000', 0, 'Usuario administrador', 'Ejemplo administrador', '001-9996699-0', NULL, NULL, NULL, NULL, '2025-06-15', 0, 'fradiz1.jpg');
INSERT INTO `usu001` VALUES ('argonautas', '0000', 1, 'argonautas', 'De Tal', '00222222222', NULL, NULL, NULL, NULL, NULL, 0, '<br />\n<b>Warning</b>:  Undefined array key \"file\" in <b>C:xampphtdocsxampp	eammanagerutilidadesupload.php</b> on line <b>7</b><br />\n<br />\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocsxampp	eammanagerutilidadesupload.php</b> on line <b>7</b><br />\n<br />\n<b>Warning</b>:  Undefined array key \"file\" in <b>C:xampphtdocsxampp	eammanagerutilidadesupload.php</b> on line <b>7</b><br />\n<br />\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocsxampp	eammanagerutilidadesupload.php</b> on line <b>7</b><br />\n<br />\n<b>Warning</b>:  Undefined array key \"file\" in <b>C:xampphtdocsxampp	eammanagerutilidadesupload.php</b> on line <b>8</b><br />\n<br />\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocsxampp	eammanagerutilidadesupload.php</b> on line <b>8</b><br />\n');
INSERT INTO `usu001` VALUES ('clubpruebas', '0000', 1, 'presidente ', 'club pruebas', '222-2226655-2', NULL, NULL, NULL, NULL, '2025-06-15', 0, 'Houston-Rockets-logo.png');
INSERT INTO `usu001` VALUES ('graco', '0101', 0, 'Francis', 'Ferrer', '001-1832958-0', NULL, NULL, NULL, NULL, '2024-01-11', 0, NULL);
INSERT INTO `usu001` VALUES ('los campeones', '0000', 1, 'los campeones', 'pruebas', '', NULL, NULL, NULL, NULL, '2024-01-15', 0, 'GRACO - WIN_20210515_221943.JPG');
INSERT INTO `usu001` VALUES ('LOS INTOCABLES', '9af15b336e6a9619928537df30b2e6a2376569fcf9d7e773eccede65606529a0', 1, 'LOS INTOCABLES', '', '', NULL, NULL, NULL, NULL, '2025-06-19', 0, '');
INSERT INTO `usu001` VALUES ('los principes', '0000', 1, 'los principes', '', '', NULL, NULL, NULL, NULL, '2024-02-12', 0, 'GRACO - WIN_20150408_113956.JPG');
INSERT INTO `usu001` VALUES ('RENACIMIENTO', '9af15b336e6a9619928537df30b2e6a2376569fcf9d7e773eccede65606529a0', 1, 'RENACIMIENTO', '', '', NULL, NULL, NULL, NULL, '2025-07-26', 0, '');
INSERT INTO `usu001` VALUES ('Sembrando el futuro U15', '0000', 1, 'Sembrando el futuro U15', '', '', NULL, NULL, NULL, NULL, '2024-03-05', 0, 'Houston-Rockets-logo.png');

SET FOREIGN_KEY_CHECKS = 1;
