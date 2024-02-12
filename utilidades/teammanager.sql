/*
 Navicat Premium Data Transfer

 Source Server         : acapsisrl
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : teammanager

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 12/02/2024 15:29:12
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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `equipo_name`(`nombre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipos
-- ----------------------------
INSERT INTO `equipos` VALUES (5, 'los campeones', 'distrito nacional', 'villas agricolas', 'Houston-Rockets-logo.png', 0);
INSERT INTO `equipos` VALUES (6, 'argonautas', 'xxx', 'xxx', '', 0);
INSERT INTO `equipos` VALUES (7, 'los principes', 'Santo domingo', 'capotillo', 'GRACO - WIN_20150408_113956.JPG', 0);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eventos
-- ----------------------------
INSERT INTO `eventos` VALUES (1, 'Prueba', 3, 11, '', '2024-01-22');
INSERT INTO `eventos` VALUES (2, 'pruebas2', 2, 5, 'nuevo descriptivo', '2024-01-29');
INSERT INTO `eventos` VALUES (4, 'Torneo x', 5, 16, 'Torneo de basquetbol 2024', '2024-02-10');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identificacion_jugador`(`identificacion`) USING BTREE,
  INDEX `jugador_equipo`(`equipo`) USING BTREE,
  CONSTRAINT `jugador_equipo` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jugadores
-- ----------------------------
INSERT INTO `jugadores` VALUES (2, 'francis graco', 'ferrer hierro', '00118329580', '1987-10-02', 'nicolas de ovando', 6, 'Houston-Rockets-logo.png', 'Houston-Rockets-logo.png');
INSERT INTO `jugadores` VALUES (5, 'glennis', 'reyes', '00225889850', '2024-02-08', 'xxxxxxxxx', 5, 'fondo_android.jpg', '');
INSERT INTO `jugadores` VALUES (6, 'brisneylis', 'robles reyes', '00000000000', '2014-05-15', 'xxxxxxxxxxx', 5, 'GRACO - WIN_20150208_120307.JPG', '');
INSERT INTO `jugadores` VALUES (7, 'Alfonso', 'Reyes', '00012114782', '2024-02-08', 'xxxxxxxxxx', 5, 'GRACO - WIN_20150208_120307.JPG', '');
INSERT INTO `jugadores` VALUES (8, 'Marta', 'Castillo', '77781569580', '2024-02-08', 'xxxxx', 5, '', '');
INSERT INTO `jugadores` VALUES (9, 'Luigy', 'Castillo', '44456898780', '2024-02-08', 'xxxxxxxxx', 5, '', '');
INSERT INTO `jugadores` VALUES (10, 'uno de mas', 'xxxxxx', '77415478950', '2024-02-08', 'xxxxxxxxxxxxx', 5, '', '');
INSERT INTO `jugadores` VALUES (11, 'tomas ', 'berroa', '00478965452', '2024-02-12', 'xxxxxxxxxxx', 7, 'GRACO - WIN_20150330_171830.JPG', 'GRACO - WIN_20150208_120307.JPG');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `equipo_evento`(`equipo`, `evento`) USING BTREE,
  INDEX `relacion_evento`(`evento`) USING BTREE,
  CONSTRAINT `relacion_equipo` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `relacion_evento` FOREIGN KEY (`evento`) REFERENCES `eventos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relacion_equipo_evento
-- ----------------------------
INSERT INTO `relacion_equipo_evento` VALUES (10, 5, 1);
INSERT INTO `relacion_equipo_evento` VALUES (8, 5, 4);
INSERT INTO `relacion_equipo_evento` VALUES (12, 6, 2);
INSERT INTO `relacion_equipo_evento` VALUES (7, 6, 4);

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
INSERT INTO `usu001` VALUES ('admin', '0000', 0, 'Fulanito', 'De Tal', '', NULL, NULL, NULL, NULL, NULL, 0, 'GRACO - WIN_20150330_171744.JPG');
INSERT INTO `usu001` VALUES ('argonautas', '0000', 1, 'Fulanito', 'De Tal', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `usu001` VALUES ('graco', '0101', 0, 'Francis', 'Ferrer', '001-1832958-0', NULL, NULL, NULL, NULL, '2024-01-11', 0, NULL);
INSERT INTO `usu001` VALUES ('los campeones', '0101', 1, 'pruebas', 'pruebas', '', NULL, NULL, NULL, NULL, '2024-01-15', 0, 'GRACO - WIN_20210515_221943.JPG');
INSERT INTO `usu001` VALUES ('los principes', '9af15b336e6a9619928537df30b2e6a2376569fcf9d7e773eccede65606529a0', 1, 'los principes', '', '', NULL, NULL, NULL, NULL, '2024-02-12', 0, 'GRACO - WIN_20150408_113956.JPG');

SET FOREIGN_KEY_CHECKS = 1;
