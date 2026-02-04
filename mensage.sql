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

 Date: 26/01/2026 10:49:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mensage
-- ----------------------------
DROP TABLE IF EXISTS mensage;
CREATE TABLE mensage  (
  id int(11) NOT NULL AUTO_INCREMENT,
  usuario varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  mensage varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  fecha_alta date NOT NULL,
  fecha_ini date NOT NULL,
  fecha_fin date NOT NULL,
  estado int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
