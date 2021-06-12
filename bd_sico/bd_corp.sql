/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : bd_corp

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 11/06/2021 22:42:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ci` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `celular` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Table structure for cuenta
-- ----------------------------
DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE `cuenta`  (
  `id_cuenta` int NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_usuario` int NOT NULL,
  `rol_cuenta` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_cuenta`) USING BTREE,
  INDEX `fk_idusuario`(`id_usuario`) USING BTREE,
  CONSTRAINT `fk_idusuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuenta
-- ----------------------------

-- ----------------------------
-- Table structure for documento
-- ----------------------------
DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento`  (
  `id_documento` int NOT NULL AUTO_INCREMENT,
  `nombre_doc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `id_tipodoc` int NOT NULL,
  PRIMARY KEY (`id_documento`) USING BTREE,
  INDEX `fk_tipodoc`(`id_tipodoc`) USING BTREE,
  CONSTRAINT `fk_tipodoc` FOREIGN KEY (`id_tipodoc`) REFERENCES `tipo` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documento
-- ----------------------------

-- ----------------------------
-- Table structure for registro
-- ----------------------------
DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro`  (
  `id_regisro` int NOT NULL AUTO_INCREMENT,
  `id_usuario_reg` int NOT NULL,
  `id_doc:_reg` int NOT NULL,
  `id_cliente_reg` int NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_regisro`) USING BTREE,
  INDEX `fk_idusuario_reg`(`id_usuario_reg`) USING BTREE,
  INDEX `fk_iddocumento`(`id_doc:_reg`) USING BTREE,
  INDEX `fk_idcliente`(`id_cliente_reg`) USING BTREE,
  CONSTRAINT `fk_idusuario_reg` FOREIGN KEY (`id_usuario_reg`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_iddocumento` FOREIGN KEY (`id_doc:_reg`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idcliente` FOREIGN KEY (`id_cliente_reg`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registro
-- ----------------------------

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo`  (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipo
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ci` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `correo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `celular` int NOT NULL,
  `cargo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
