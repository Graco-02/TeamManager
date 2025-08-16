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

 Date: 02/08/2025 18:28:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for usu001
-- ----------------------------
DROP TABLE IF EXISTS usu001;
CREATE TABLE usu001  (
  usuario varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  clave varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000',
  tipo int(1) NOT NULL DEFAULT 0,
  nombres varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Fulanito',
  apellidos varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'De Tal',
  identificacion varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  municipio varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sector varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  calle varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  lugar varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecalta date NULL DEFAULT NULL,
  estado int(1) NOT NULL DEFAULT 0,
  url_img varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (usuario) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;


-- ----------------------------
-- Table structure for equipos
-- ----------------------------
DROP TABLE IF EXISTS equipos;
CREATE TABLE equipos  (
  id int(5) NOT NULL AUTO_INCREMENT,
  nombre varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  municipio varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sector varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  url_logo varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado int(1) NOT NULL DEFAULT 0,
  entrenador varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  delegado varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  categoria varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  circunscripcion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  anio varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  rama varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  entrenador_tel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  delegado_tel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  equipo_tel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE,
  UNIQUE INDEX equipo_name(nombre) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for eventos
-- ----------------------------
DROP TABLE IF EXISTS eventos;
CREATE TABLE eventos  (
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  cantidad_equipos int(3) NOT NULL,
  cantidad_jugadores_equipo int(3) NOT NULL,
  descripcion varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_incio date NULL DEFAULT NULL,
  estado int(1) NULL DEFAULT 0 COMMENT '0-abierto 1-cerrado',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for histori_log
-- ----------------------------
DROP TABLE IF EXISTS histori_log;
CREATE TABLE histori_log  (
  usuario varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  fecha datetime(0) NOT NULL,
  accion varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  regant varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  regnew varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  modulo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX usu_log(usuario) USING BTREE,
  INDEX usuario_log_fecha(usuario, fecha) USING BTREE,
  CONSTRAINT usuario_log_indx FOREIGN KEY (usuario) REFERENCES usu001 (usuario) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jugadores
-- ----------------------------
DROP TABLE IF EXISTS jugadores;
CREATE TABLE jugadores  (
  id int(7) NOT NULL AUTO_INCREMENT,
  nombres varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  apellidos varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  identificacion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  fecha_nacimiento date NOT NULL,
  direccion varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  equipo int(11) NOT NULL,
  url_img varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  url_adjunto1 varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estatus varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  centro varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  telefono varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE,
  UNIQUE INDEX identificacion_jugador(identificacion) USING BTREE,
  INDEX jugador_equipo(equipo) USING BTREE,
  CONSTRAINT jugador_equipo FOREIGN KEY (equipo) REFERENCES equipos (id) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for relacion_equipo_evento
-- ----------------------------
DROP TABLE IF EXISTS relacion_equipo_evento;
CREATE TABLE relacion_equipo_evento  (
  id int(11) NOT NULL AUTO_INCREMENT,
  equipo int(5) NOT NULL,
  evento int(11) NOT NULL,
  indpago int(1) NOT NULL DEFAULT 0,
  ruta_volante varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE,
  UNIQUE INDEX equipo_evento(equipo, evento) USING BTREE,
  INDEX relacion_evento(evento) USING BTREE,
  CONSTRAINT relacion_equipo FOREIGN KEY (equipo) REFERENCES equipos (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT relacion_evento FOREIGN KEY (evento) REFERENCES eventos (id) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for relacion_equipo_jugador_evento
-- ----------------------------
DROP TABLE IF EXISTS relacion_equipo_jugador_evento;
CREATE TABLE relacion_equipo_jugador_evento  (
  equipo int(9) NOT NULL,
  evento int(9) NOT NULL,
  jugador int(9) NOT NULL,
  UNIQUE INDEX relacion_evento_unica(equipo, evento, jugador) USING BTREE,
  INDEX jugador_evento(jugador) USING BTREE,
  INDEX evento_jugador(evento) USING BTREE,
  CONSTRAINT equipo_jugador_evento FOREIGN KEY (equipo) REFERENCES equipos (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT evento_jugador FOREIGN KEY (evento) REFERENCES eventos (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT jugador_evento FOREIGN KEY (jugador) REFERENCES jugadores (id) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO usu001(usuario, clave, tipo, nombres, apellidos, identificacion, municipio, sector, calle, lugar, fecalta, estado, url_img) VALUES ('Admin', '0000', 0, 'Fulanito', 'De Tal', '00118329580', '', NULL, NULL, NULL, '2025-08-02', 0, NULL);
